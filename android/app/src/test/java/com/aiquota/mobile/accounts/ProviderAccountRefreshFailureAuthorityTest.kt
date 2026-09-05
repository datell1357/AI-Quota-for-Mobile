package com.aiquota.mobile.accounts

import android.content.Context
import androidx.test.core.app.ApplicationProvider
import com.aiquota.mobile.local.ProviderConnectionState
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.local.ProviderUsageLine
import com.aiquota.mobile.local.ProviderUsageSnapshot
import org.junit.Assert.assertArrayEquals
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner

@RunWith(RobolectricTestRunner::class)
class ProviderAccountRefreshFailureAuthorityTest {
    @Test
    fun requeuedFailurePreservesTrustedUsageRecordsFailureAndRejectsStaleNonce() {
        val context = ApplicationProvider.getApplicationContext<Context>()
        MainProcessAccountAuthority.openInMemoryForTest(context).use { authority ->
            val accountId = id(ProviderId.CURSOR, 1)
            val trusted = snapshot(accountId, 73)
            authority.register(
                AuthorityAccountSeed(
                    account = activeRecord(accountId),
                    snapshot = trusted,
                    demand = AccountDemandSet.of(AccountDemand.MANUAL),
                )
            )

            val lease = authority.beginAttempt(
                accountId,
                AccountDemandSet.of(AccountDemand.MANUAL),
                nonce(1),
            )
            val persisted = authority.displayRecords(0, 1).single().snapshot
            val versionBeforeFailure = authority.displayVersion()

            assertTrue(authority.abandonAttempt(lease, requeue = true))

            val failed = authority.displayRecords(0, 1).single()
            assertEquals(ProviderConnectionState.CONNECTED, failed.snapshot.connectionState)
            assertEquals("Last refresh attempt failed; will retry.", failed.snapshot.message)
            assertEquals(persisted.lines, failed.snapshot.lines)
            assertEquals(trusted.account, failed.snapshot.account)
            assertEquals(trusted.updatedAt, failed.snapshot.updatedAt)
            assertEquals(
                AccountDemandSet.of(AccountDemand.MANUAL),
                authority.refreshDemandRecords().single().demand,
            )
            assertEquals(DisplayVersion.of(versionBeforeFailure.value + 1), authority.displayVersion())

            val retryLease = authority.beginAttempt(
                accountId,
                AccountDemandSet.of(AccountDemand.MANUAL),
                nonce(2),
            )
            val beforeStaleAbandon = authority.canonicalDumpForTest()
            val versionBeforeStaleAbandon = authority.displayVersion()

            assertFalse(authority.abandonAttempt(lease, requeue = true))

            assertArrayEquals(beforeStaleAbandon, authority.canonicalDumpForTest())
            assertEquals(versionBeforeStaleAbandon, authority.displayVersion())
            assertEquals(
                AccountDemandSet.of(AccountDemand.MANUAL),
                authority.refreshDemandRecords().single().demand,
            )
            assertTrue(authority.abandonAttempt(retryLease, requeue = false))
        }
    }

    @Test
    fun nonRequeuedCancelLeavesTrustedSnapshotAndDoesNotInventProviderFailure() {
        val context = ApplicationProvider.getApplicationContext<Context>()
        MainProcessAccountAuthority.openInMemoryForTest(context).use { authority ->
            val accountId = id(ProviderId.CLAUDE, 2)
            val trusted = snapshot(accountId, 61)
            authority.register(AuthorityAccountSeed(activeRecord(accountId), trusted))
            val persisted = authority.displayRecords(0, 1).single().snapshot
            val lease = authority.beginAttempt(
                accountId,
                AccountDemandSet.of(AccountDemand.MANUAL),
                nonce(3),
            )

            assertTrue(authority.abandonAttempt(lease, requeue = false))

            val afterCancel = authority.displayRecords(0, 1).single()
            assertEquals(persisted, afterCancel.snapshot)
            assertEquals(AccountDemandSet.NONE, authority.refreshDemandRecords().single().demand)
        }
    }

    private fun activeRecord(accountId: ProviderAccountId) = AccountRecord(
        id = accountId,
        state = AccountState.ACTIVE,
        authState = AccountAuthState.AUTHENTICATED,
        deletionState = AccountDeletionState.NONE,
        generation = AccountGeneration.of(1),
        sessionRevision = SessionRevision.of(1),
    )

    private fun snapshot(accountId: ProviderAccountId, remaining: Int) = ProviderUsageSnapshot(
        providerId = accountId.providerId,
        connectionState = ProviderConnectionState.CONNECTED,
        account = "trusted@example.invalid",
        updatedAt = "2026-08-25T00:00:00Z",
        statusUpdatedAt = "2026-08-25T00:00:00Z",
        lines = listOf(
            ProviderUsageLine(
                key = "quota",
                label = "Quota",
                remainingPercent = remaining / 100f,
                remainingText = "$remaining%",
            )
        ),
    )

    private fun id(providerId: ProviderId, index: Int) = ProviderAccountId(
        providerId,
        AccountKey.parseOpaque("acct_${index.toString(16).padStart(32, '0')}"),
    )

    private fun nonce(index: Int) =
        AttemptNonce.parseOpaque("attempt_${index.toString().padStart(16, '0')}")
}
