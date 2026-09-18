package com.aiquota.mobile.accounts

import android.app.Application
import android.content.Context
import androidx.test.core.app.ApplicationProvider
import com.aiquota.mobile.local.*
import java.util.UUID
import org.junit.Assert.*
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28], application = Application::class)
class RefreshAttemptStorageTest {
    private val context get() = ApplicationProvider.getApplicationContext<Context>()
    private val id = ProviderAccountId(ProviderId.CODEX, AccountKey.reservedDefault())
    private val entropy = AttemptNonce.parseOpaque("attempt_0000000000000001")
    private val demand = AccountDemandSet.of(AccountDemand.SCHEDULED)

    @Test fun newCollectionsDoNotGrowLegacyHistoryAndOldResponsesStayRejectedAfterReopen() {
        val name = "refresh-storage-${UUID.randomUUID()}.db"
        val issued = mutableSetOf<AttemptNonce>()
        lateinit var old: AttemptLease
        MainProcessAccountAuthority.open(context, name).use { authority ->
            authority.register(seed())
            val legacy = authority.beginAttempt(id, demand, entropy)
            authority.commitAttempt(legacy, snapshot(80))
            repeat(256) { index ->
                val attempt = authority.beginRefreshAttempt(id, demand, entropy)
                if (index == 0) old = attempt
                assertTrue(issued.add(attempt.nonce))
                assertTrue(authority.commitAttempt(attempt, snapshot(40)) is AttemptCommitResult.Committed)
            }
            assertEquals(1, count(name, "published_nonces"))
            assertEquals(1, count(name, "nonce_heads"))
        }
        MainProcessAccountAuthority.open(context, name).use { authority ->
            val current = authority.beginRefreshAttempt(id, demand, entropy)
            assertTrue(issued.add(current.nonce))
            val before = authority.canonicalDumpForTest()
            assertTrue(authority.commitAttempt(old, snapshot(99)) is AttemptCommitResult.Rejected)
            assertArrayEquals(before, authority.canonicalDumpForTest())
            assertThrows(IllegalArgumentException::class.java) { authority.beginAttempt(id, demand, old.nonce) }
            assertThrows(IllegalArgumentException::class.java) { authority.beginRefreshAttempt(id, demand, old.nonce) }
            assertThrows(IllegalArgumentException::class.java) { authority.beginAttempt(id, demand, entropy) }
            assertArrayEquals(before, authority.canonicalDumpForTest())
            assertTrue(authority.commitAttempt(current, snapshot(23)) is AttemptCommitResult.Committed)
            assertEquals(AttemptCommitResult.Rejected(StaleAttemptReason.NONCE_ALREADY_PUBLISHED),
                authority.commitAttempt(current, snapshot(99)))
            assertEquals(1, count(name, "published_nonces"))
            assertEquals("23%", authority.displayRecords(0, 1).single().snapshot.lines.single().remainingText)
        }
    }

    @Test fun issuedCommitRollsBackAtEveryExistingFaultBoundary() {
        AccountAuthorityFaultPoint.entries.forEach { point ->
            val name = "refresh-rollback-${UUID.randomUUID()}.db"
            val lease = MainProcessAccountAuthority.open(context, name).use { authority ->
                authority.register(seed())
                authority.beginRefreshAttempt(id, demand, entropy)
            }
            val injector = AccountAuthorityFaultInjector { if (it == point) throw IllegalStateException("injected $point") }
            MainProcessAccountAuthority.open(context, name, injector).use { authority ->
                val before = authority.canonicalDumpForTest()
                assertThrows(IllegalStateException::class.java) { authority.commitAttempt(lease, snapshot(1)) }
                assertArrayEquals(point.name, before, authority.canonicalDumpForTest())
            }
            MainProcessAccountAuthority.open(context, name).use { authority ->
                assertTrue(authority.commitAttempt(lease, snapshot(23)) is AttemptCommitResult.Committed)
                assertEquals(0, count(name, "published_nonces"))
            }
        }
    }

    @Test fun reauthenticationStillRejectsAnIssuedAttemptWithoutMutatingNewSession() {
        MainProcessAccountAuthority.openInMemoryForTest(context).use { authority ->
            authority.register(seed())
            val lease = authority.beginRefreshAttempt(id, demand, entropy)
            authority.beginAuthentication(id)
            val before = authority.canonicalDumpForTest()
            assertTrue(authority.commitAttempt(lease, snapshot(1)) is AttemptCommitResult.Rejected)
            assertFalse(authority.abandonAttempt(lease, true))
            assertArrayEquals(before, authority.canonicalDumpForTest())
        }
    }

    private fun count(name: String, table: String): Int = context.openOrCreateDatabase(name, 0, null).use { db ->
        db.rawQuery("SELECT COUNT(*) FROM $table", null).use { cursor -> cursor.moveToFirst(); cursor.getInt(0) }
    }

    private fun seed() = AuthorityAccountSeed(
        AccountRecord(id, AccountState.ACTIVE, AccountAuthState.AUTHENTICATED, AccountDeletionState.NONE,
            AccountGeneration.of(1), SessionRevision.of(1), alias = "Codex"), snapshot(80))

    private fun snapshot(remaining: Int) = ProviderUsageSnapshot(id.providerId,
        connectionState = ProviderConnectionState.CONNECTED, updatedAt = "2026-09-15T00:00:00Z",
        lines = listOf(ProviderUsageLine("Quota", remaining / 100f, "$remaining%", key = "quota")))
}
