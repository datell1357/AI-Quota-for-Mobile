package com.aiquota.mobile.accounts

import android.content.Context
import androidx.test.core.app.ApplicationProvider
import com.aiquota.mobile.local.ProviderConnectionState
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.local.ProviderUsageLine
import com.aiquota.mobile.local.ProviderUsageSnapshot
import java.security.MessageDigest
import java.util.concurrent.CountDownLatch
import java.util.concurrent.Executors
import java.util.concurrent.TimeUnit
import java.util.concurrent.atomic.AtomicInteger
import org.junit.After
import org.junit.Assert.assertArrayEquals
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNotEquals
import org.junit.Assert.assertThrows
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner

@RunWith(RobolectricTestRunner::class)
class AccountAuthorityTest {
    private lateinit var context: Context
    private lateinit var databaseName: String
    private lateinit var authority: MainProcessAccountAuthority

    @Before
    fun openDatabase() {
        context = ApplicationProvider.getApplicationContext()
        databaseName = "account-authority-${databaseCounter.incrementAndGet()}.db"
        context.deleteDatabase(databaseName)
        authority = MainProcessAccountAuthority.open(context, databaseName)
    }

    @After
    fun closeDatabase() {
        authority.close()
        context.deleteDatabase(databaseName)
    }

    @Test
    fun reverseCompletingClaudeAndCodexAccountsRetainsFourRows() {
        val ids = listOf(
            id(ProviderId.CLAUDE, 1),
            id(ProviderId.CLAUDE, 2),
            id(ProviderId.CODEX, 3),
            id(ProviderId.CODEX, 4)
        )
        ids.forEachIndexed { index, accountId -> authority.register(seed(accountId, 90 - index)) }
        val leases = ids.mapIndexed { index, accountId ->
            authority.beginAttempt(accountId, AccountDemandSet.of(AccountDemand.MANUAL), nonce(index + 1))
        }

        leases.indices.reversed().forEach { index ->
            val result = authority.commitAttempt(leases[index], snapshot(ids[index], 40 + index))
            assertTrue(result is AttemptCommitResult.Committed)
        }

        val rows = authority.displayRecords(0, 10)
        assertEquals(ids, rows.map { it.account.id })
        assertEquals(listOf(40, 41, 42, 43), rows.map { it.snapshot.lines.single().remainingText.removeSuffix("%").toInt() })
        assertEquals(DisplayVersion.of(12), authority.displayVersion())
        println("QA_REVERSE_ROWS=${rows.size};VERSION=${authority.displayVersion().value};HASH=${sha256(authority.canonicalDumpForTest())}")
    }

    @Test
    fun zeroOneFourAndThousandRowsHaveDeterministicPagingOrderAndVersion() {
        val observed = mutableListOf<String>()
        listOf(0, 1, 4, 1_000).forEach { count ->
            resetDatabase("paging-$count.db")
            val expected = (1..count).map { index ->
                id(if (index % 2 == 0) ProviderId.CODEX else ProviderId.CLAUDE, index)
            }.sortedWith(compareBy<ProviderAccountId>({ it.providerId.ordinal }, { it.accountKey }))
            expected.forEachIndexed { index, accountId -> authority.register(seed(accountId, index % 101)) }

            val actual = buildList {
                var offset = 0
                while (offset < count) {
                    val page = authority.catalog(offset, 137)
                    addAll(page.records.map { it.id })
                    offset += page.records.size
                }
            }
            val emptyPage = authority.catalog(count, 137)

            assertEquals(expected, actual)
            assertTrue(emptyPage.records.isEmpty())
            assertEquals(count, emptyPage.totalCount)
            assertEquals(DisplayVersion.of(count.toLong()), emptyPage.version)
            observed += "$count:${sha256(authority.canonicalDumpForTest())}"
        }
        println("QA_PAGING=" + observed.joinToString(","))
    }

    @Test
    fun accountKeysAreOpaqueImmutableAndNeverDerivedFromDisplayIdentity() {
        val key = AccountKey.parseOpaque("acct_00000000000000000000000000000001")
        val accountId = ProviderAccountId(ProviderId.CLAUDE, key)
        val record = activeRecord(accountId).copy(
            alias = "Personal",
            organization = "Example Org",
            remoteIdentity = "person@example.com"
        )

        authority.register(AuthorityAccountSeed(record, snapshot(accountId, 75)))
        val stored = authority.catalog(0, 1).records.single()

        assertEquals(accountId, stored.id)
        assertEquals("Personal", stored.alias)
        assertEquals("Example Org", stored.organization)
        assertEquals("person@example.com", stored.remoteIdentity)
        assertFalse(key.toString().contains("00000001"))
        assertThrows(IllegalArgumentException::class.java) { AccountKey.parseOpaque("person@example.com") }
        assertThrows(IllegalArgumentException::class.java) { AccountKey.parseOpaque("Personal") }
        assertThrows(IllegalArgumentException::class.java) { AccountKey.parseOpaque("default") }
        assertEquals("AccountKey([opaque])", AccountKey.reservedDefault().toString())
        val tokenField = AccountKey::class.java.declaredFields.single { it.name == "token" }
        assertTrue(java.lang.reflect.Modifier.isPrivate(tokenField.modifiers))
        assertTrue(java.lang.reflect.Modifier.isFinal(tokenField.modifiers))
    }

    @Test
    fun everyTransactionalFaultRollsBackCatalogSnapshotDemandAttemptNonceAndVersion() {
        AccountAuthorityFaultPoint.entries.forEachIndexed { index, point ->
            resetDatabase("fault-$index.db")
            authority.register(seed(id(ProviderId.CLAUDE, 1), 80))
            val accountId = id(ProviderId.CODEX, index + 10)
            val injector = AccountAuthorityFaultInjector { reached -> if (reached == point) throw InjectedFault(point) }
            authority.close()
            authority = MainProcessAccountAuthority.open(context, databaseName, injector)
            val before = authority.canonicalDumpForTest()
            val versionBefore = authority.displayVersion()

            assertThrows(InjectedFault::class.java) { authority.register(seed(accountId, 55)) }

            assertArrayEquals(point.name, before, authority.canonicalDumpForTest())
            assertEquals(point.name, versionBefore, authority.displayVersion())
            assertEquals(point.name, 1, authority.catalog(0, 10).totalCount)
        }
    }

    @Test
    fun commitFaultsAreAllOrNoneAtEveryDurableBoundary() {
        AccountAuthorityFaultPoint.entries.forEachIndexed { index, point ->
            resetDatabase("commit-fault-$index.db")
            val accountId = id(ProviderId.CLAUDE, index + 20)
            authority.register(seed(accountId, 90))
            val lease = authority.beginAttempt(accountId, AccountDemandSet.of(AccountDemand.MANUAL), nonce(index + 20))
            val injector = AccountAuthorityFaultInjector { reached -> if (reached == point) throw InjectedFault(point) }
            authority.close()
            authority = MainProcessAccountAuthority.open(context, databaseName, injector)
            val before = authority.canonicalDumpForTest()
            val displayBefore = authority.displayRecords(0, 1)

            assertThrows(InjectedFault::class.java) { authority.commitAttempt(lease, snapshot(accountId, 10)) }

            assertArrayEquals(point.name, before, authority.canonicalDumpForTest())
            assertEquals(point.name, displayBefore, authority.displayRecords(0, 1))
        }
        println("QA_FAULT_POINTS=${AccountAuthorityFaultPoint.entries.joinToString(",")}")
    }

    @Test
    fun staleGenerationSessionAndAttemptCommitsAreByteIdenticalNoOps() {
        val accountId = id(ProviderId.CODEX, 50)
        authority.register(seed(accountId, 88))
        val lease = authority.beginAttempt(accountId, AccountDemandSet.of(AccountDemand.SCHEDULED), nonce(50))
        val staleLeases = listOf(
            lease.copy(generation = lease.generation.next()) to StaleAttemptReason.GENERATION_MISMATCH,
            lease.copy(sessionRevision = lease.sessionRevision.next()) to StaleAttemptReason.SESSION_MISMATCH,
            lease.copy(nonce = nonce(51)) to StaleAttemptReason.ATTEMPT_MISMATCH
        )

        staleLeases.forEach { (staleLease, expectedReason) ->
            val before = authority.canonicalDumpForTest()
            val versionBefore = authority.displayVersion()
            val displayBefore = authority.displayRecords(0, 1)

            val result = authority.commitAttempt(staleLease, snapshot(accountId, 1))

            assertEquals(AttemptCommitResult.Rejected(expectedReason), result)
            assertArrayEquals(before, authority.canonicalDumpForTest())
            assertEquals(versionBefore, authority.displayVersion())
            assertEquals(displayBefore, authority.displayRecords(0, 1))
        }
        println("QA_STALE_NOOP_HASH=${sha256(authority.canonicalDumpForTest())};VERSION=${authority.displayVersion().value}")
    }

    @Test
    fun exactAttemptAbandonRequeuesOrClearsOnlyItsOwnDemand() {
        val a = id(ProviderId.CLAUDE, 60)
        val b = id(ProviderId.CLAUDE, 61)
        authority.register(seed(a, 80))
        authority.register(seed(b, 70))
        val aLease = authority.beginAttempt(a, AccountDemandSet.of(AccountDemand.SCHEDULED), nonce(60))
        val bLease = authority.beginAttempt(b, AccountDemandSet.of(AccountDemand.MANUAL), nonce(61))

        assertTrue(authority.abandonAttempt(bLease, requeue = true))
        assertEquals(
            AccountDemandSet.of(AccountDemand.MANUAL),
            authority.refreshDemandRecords().single { it.card.accountId == b }.demand,
        )
        assertTrue(authority.commitAttempt(aLease, snapshot(a, 44)) is AttemptCommitResult.Committed)
        assertEquals(
            AttemptCommitResult.Rejected(StaleAttemptReason.ATTEMPT_MISMATCH),
            authority.commitAttempt(bLease, snapshot(b, 1)),
        )

        val retried = authority.beginAttempt(b, AccountDemandSet.of(AccountDemand.MANUAL), nonce(62))
        assertTrue(authority.abandonAttempt(retried, requeue = false))
        assertEquals(
            AccountDemandSet.NONE,
            authority.refreshDemandRecords().single { it.card.accountId == b }.demand,
        )
        assertEquals(44, authority.displayRecords(0, 10).single { it.account.id == a }.snapshot.lines.single().remainingText.removeSuffix("%").toInt())
        assertEquals(70, authority.displayRecords(0, 10).single { it.account.id == b }.snapshot.lines.single().remainingText.removeSuffix("%").toInt())
    }

    @Test
    fun malformedInputsAndInvalidStateTransitionsFailClosed() {
        val accountId = id(ProviderId.CLAUDE, 70)
        val active = activeRecord(accountId)
        assertThrows(IllegalArgumentException::class.java) { AccountDemandSet.fromMask(1 shl 20) }
        assertThrows(IllegalArgumentException::class.java) {
            active.copy(state = AccountState.DELETED, deletionState = AccountDeletionState.NONE)
        }
        assertThrows(IllegalArgumentException::class.java) {
            active.transitionTo(AccountState.ENROLLING, AccountAuthState.AUTHENTICATED, AccountDeletionState.NONE)
        }
        assertThrows(IllegalArgumentException::class.java) {
            active.transitionTo(
                AccountState.DELETED,
                AccountAuthState.SIGNED_OUT,
                AccountDeletionState.ERASED,
                nextGeneration = active.generation.next()
            )
        }

        authority.register(seed(accountId, 80))
        val before = authority.canonicalDumpForTest()
        val lease = authority.beginAttempt(accountId, AccountDemandSet.NONE, nonce(70))
        val afterAttempt = authority.canonicalDumpForTest()
        assertNotEquals(sha256(before), sha256(afterAttempt))
        assertThrows(IllegalArgumentException::class.java) {
            authority.commitAttempt(lease, snapshot(id(ProviderId.CODEX, 71), 5))
        }
        assertArrayEquals(afterAttempt, authority.canonicalDumpForTest())

        val signedOutId = id(ProviderId.CLAUDE, 72)
        authority.register(
            AuthorityAccountSeed(
                activeRecord(signedOutId).copy(authState = AccountAuthState.REAUTH_REQUIRED),
                snapshot(signedOutId, 70)
            )
        )
        val beforeRejectedAttempt = authority.canonicalDumpForTest()
        assertThrows(IllegalArgumentException::class.java) {
            authority.beginAttempt(signedOutId, AccountDemandSet.NONE, nonce(72))
        }
        assertArrayEquals(beforeRejectedAttempt, authority.canonicalDumpForTest())
    }

    @Test
    fun exactProfileLossRequiresOnlyMissingAccountReauthentication() {
        val sibling = id(ProviderId.CLAUDE, 80)
        val missing = id(ProviderId.CLAUDE, 81)
        authority.register(seed(sibling, 80))
        authority.register(seed(missing, 20))
        val staleLease =
            authority.beginAttempt(missing, AccountDemandSet.of(AccountDemand.MANUAL), nonce(81))
        val siblingBefore = authority.displayRecords(0, 10).single { it.account.id == sibling }
        val missingBefore = authority.displayRecords(0, 10).single { it.account.id == missing }

        val requireReauthentication =
            authority.javaClass.methods.single { it.name == "requireReauthentication" }
        val transitioned =
            requireReauthentication.invoke(authority, missing) as AccountRecord

        val records = authority.displayRecords(0, 10)
        val siblingAfter = records.single { it.account.id == sibling }
        val missingAfter = records.single { it.account.id == missing }
        assertEquals(AccountAuthState.REAUTH_REQUIRED, transitioned.authState)
        assertEquals(missingBefore.account.sessionRevision.next(), transitioned.sessionRevision)
        assertEquals(siblingBefore, siblingAfter)
        assertEquals(missingBefore.snapshot, missingAfter.snapshot)
        assertEquals(AccountAuthState.REAUTH_REQUIRED, missingAfter.account.authState)
        assertThrows(IllegalArgumentException::class.java) {
            authority.beginAttempt(missing, AccountDemandSet.NONE, nonce(82))
        }
        assertEquals(
            AttemptCommitResult.Rejected(StaleAttemptReason.ACCOUNT_INACTIVE),
            authority.commitAttempt(staleLease, snapshot(missing, 10)),
        )

        val beforeIdempotent = authority.canonicalDumpForTest()
        val versionBeforeIdempotent = authority.displayVersion()
        val repeated = requireReauthentication.invoke(authority, missing) as AccountRecord
        assertEquals(transitioned, repeated)
        assertArrayEquals(beforeIdempotent, authority.canonicalDumpForTest())
        assertEquals(versionBeforeIdempotent, authority.displayVersion())
    }

    @Test
    fun exactReauthenticationFaultsRollbackAcrossRepeatedInterruptions() {
        listOf(
            AccountAuthorityFaultPoint.CATALOG,
            AccountAuthorityFaultPoint.ATTEMPT,
            AccountAuthorityFaultPoint.VERSION,
        ).forEachIndexed { index, point ->
            resetDatabase("reauth-fault-$index.db")
            val sibling = id(ProviderId.CLAUDE, 90 + index * 2)
            val missing = id(ProviderId.CLAUDE, 91 + index * 2)
            authority.register(seed(sibling, 80))
            authority.register(seed(missing, 20))
            authority.close()
            authority =
                MainProcessAccountAuthority.open(
                    context,
                    databaseName,
                    AccountAuthorityFaultInjector { reached ->
                        if (reached == point) throw InjectedFault(point)
                    },
                )
            val before = authority.canonicalDumpForTest()
            val siblingBefore = authority.displayRecords(0, 10).single { it.account.id == sibling }

            repeat(2) {
                assertThrows(InjectedFault::class.java) {
                    authority.requireReauthentication(missing)
                }
                assertArrayEquals(point.name, before, authority.canonicalDumpForTest())
                assertEquals(
                    siblingBefore,
                    authority.displayRecords(0, 10).single { it.account.id == sibling },
                )
            }
        }
    }

    @Test
    fun concurrentSiblingAttemptAndExactReauthenticationRemainIsolated() {
        val sibling = id(ProviderId.CLAUDE, 100)
        val missing = id(ProviderId.CLAUDE, 101)
        authority.register(seed(sibling, 80))
        authority.register(seed(missing, 20))
        val concurrentAuthority = MainProcessAccountAuthority.open(context, databaseName)
        val start = CountDownLatch(1)
        val executor = Executors.newFixedThreadPool(2)
        try {
            val reauthenticated =
                executor.submit<AccountRecord> {
                    assertTrue(start.await(10, TimeUnit.SECONDS))
                    authority.requireReauthentication(missing)
                }
            val siblingCommit =
                executor.submit<AttemptCommitResult> {
                    assertTrue(start.await(10, TimeUnit.SECONDS))
                    val lease =
                        concurrentAuthority.beginAttempt(
                            sibling,
                            AccountDemandSet.of(AccountDemand.MANUAL),
                            nonce(100),
                        )
                    concurrentAuthority.commitAttempt(lease, snapshot(sibling, 70))
                }
            start.countDown()

            assertEquals(
                AccountAuthState.REAUTH_REQUIRED,
                reauthenticated.get(10, TimeUnit.SECONDS).authState,
            )
            assertTrue(siblingCommit.get(10, TimeUnit.SECONDS) is AttemptCommitResult.Committed)
            val records = authority.displayRecords(0, 10)
            assertEquals(
                AccountAuthState.AUTHENTICATED,
                records.single { it.account.id == sibling }.account.authState,
            )
            assertEquals(
                AccountAuthState.REAUTH_REQUIRED,
                records.single { it.account.id == missing }.account.authState,
            )
            assertEquals(
                "70%",
                records.single { it.account.id == sibling }.snapshot.lines.single().remainingText,
            )
        } finally {
            executor.shutdownNow()
            concurrentAuthority.close()
        }
    }

    private fun resetDatabase(name: String) {
        authority.close()
        context.deleteDatabase(databaseName)
        databaseName = name
        context.deleteDatabase(databaseName)
        authority = MainProcessAccountAuthority.open(context, databaseName)
    }

    private fun seed(accountId: ProviderAccountId, remaining: Int) =
        AuthorityAccountSeed(activeRecord(accountId), snapshot(accountId, remaining))

    private fun activeRecord(accountId: ProviderAccountId) = AccountRecord(
        id = accountId,
        state = AccountState.ACTIVE,
        authState = AccountAuthState.AUTHENTICATED,
        deletionState = AccountDeletionState.NONE,
        generation = AccountGeneration.of(1),
        sessionRevision = SessionRevision.of(1)
    )

    private fun snapshot(accountId: ProviderAccountId, remaining: Int) = ProviderUsageSnapshot(
        providerId = accountId.providerId,
        connectionState = ProviderConnectionState.CONNECTED,
        account = "display-$remaining@example.invalid",
        updatedAt = "2026-08-25T00:00:00Z",
        statusUpdatedAt = "2026-08-25T00:00:00Z",
        lines = listOf(
            ProviderUsageLine(
                key = "quota",
                label = "Quota",
                remainingPercent = remaining / 100f,
                remainingText = "$remaining%"
            )
        )
    )

    private fun id(providerId: ProviderId, index: Int) = ProviderAccountId(
        providerId,
        AccountKey.parseOpaque("acct_${index.toString(16).padStart(32, '0')}")
    )

    private fun nonce(index: Int) =
        AttemptNonce.parseOpaque("attempt_${index.toString().padStart(16, '0')}")

    private fun sha256(bytes: ByteArray): String = MessageDigest.getInstance("SHA-256")
        .digest(bytes)
        .joinToString("") { "%02x".format(it) }

    private class InjectedFault(point: AccountAuthorityFaultPoint) : RuntimeException(point.name)

    private companion object {
        val databaseCounter = AtomicInteger()
    }
}
