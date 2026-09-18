package com.aiquota.mobile.providers

import android.app.Application
import android.content.Context
import androidx.test.core.app.ApplicationProvider
import com.aiquota.mobile.accounts.*
import com.aiquota.mobile.local.*
import kotlinx.coroutines.runBlocking
import org.junit.Assert.*
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28], application = Application::class)
class V43RefreshRecoveryRegressionTest {
    private val context get() = ApplicationProvider.getApplicationContext<Context>()
    private val entropy = AttemptNonce.parseOpaque("attempt_0000000000000001")

    @Test fun automaticAuthFailurePreservesEveryReleasedProviderAndAllowsTheNextAttempt() = runBlocking {
        ProviderId.defaultOrder().filterNot { it == ProviderId.KIMI }.forEach { provider ->
            MainProcessAccountAuthority.openInMemoryForTest(context).use { authority ->
                val id = ProviderAccountId(provider, AccountKey.reservedDefault())
                authority.register(seed(id))
                val before = authority.displayRecords(0, 1).single()
                val attempt = attempt(authority, id)
                finishExactRefreshFailure(provider, ProviderRefreshFailure.interactiveAuthRequired(), true,
                    retryNextCycle = { assertTrue(authority.abandonAttempt(attempt.lease, true)); null },
                    requireReauthentication = { fail("Automatic failure must not invalidate $provider"); null })
                val after = authority.displayRecords(0, 1).single()
                assertEquals(AccountAuthState.AUTHENTICATED, after.account.authState)
                assertEquals(before.account.generation, after.account.generation)
                assertEquals(before.account.sessionRevision, after.account.sessionRevision)
                assertEquals(before.snapshot.lines, after.snapshot.lines)
                assertEquals(before.snapshot.updatedAt, after.snapshot.updatedAt)
                val retry = attempt(authority, id)
                assertTrue(authority.commitAttempt(retry.lease, before.snapshot.copy(lines = emptyList())) is AttemptCommitResult.Committed)
                assertTrue(authority.commitAttempt(attempt.lease, before.snapshot) is AttemptCommitResult.Rejected)
            }
        }
    }

    @Test fun manualAuthFailureStillRequiresLoginAndAutomaticFailureCannotUndoExplicitInvalidation(): Unit = runBlocking {
        MainProcessAccountAuthority.openInMemoryForTest(context).use { authority ->
            val id = ProviderAccountId(ProviderId.CODEX, AccountKey.reservedDefault())
            authority.register(seed(id))
            val attempt = attempt(authority, id)
            finishExactRefreshFailure(id.providerId, ProviderRefreshFailure.interactiveAuthRequired(), false,
                retryNextCycle = { fail("Manual auth failure must still require login"); null },
                requireReauthentication = { authority.requireReauthentication(id); null })
            val invalidated = authority.displayRecords(0, 1).single()
            assertEquals(AccountAuthState.REAUTH_REQUIRED, invalidated.account.authState)
            finishExactRefreshFailure(id.providerId, ProviderRefreshFailure.interactiveAuthRequired(), true,
                retryNextCycle = { assertFalse(authority.abandonAttempt(attempt.lease, true)); null },
                requireReauthentication = { fail("Late failure must not change the new state"); null })
            assertEquals(invalidated, authority.displayRecords(0, 1).single())
            assertThrows(IllegalArgumentException::class.java) {
                authority.beginRefreshAttempt(id, AccountDemandSet.of(AccountDemand.SCHEDULED), entropy)
            }
        }
    }

    @Test fun emptyExactCycleStopsInsteadOfSchedulingAnotherTick() = runBlocking {
        var running = true
        val ticks = mutableListOf<Long>()
        runRefreshCycleResiliently(
            runCycle = { stopIdleExactRefresh(ProviderRefreshTriggerResult.Idle, { false }) { running = false } },
            isRunning = { running }, hasPendingManualRefresh = { false },
            automaticDelayMillis = { 60_000 }, schedule = ticks::add, onFailure = { throw it })
        assertFalse(running)
        assertTrue(ticks.isEmpty())
    }

    @Test fun queuedManualRequestAndTemporaryWaitKeepTheirNextTick() = runBlocking {
        listOf(ProviderRefreshTriggerResult.Idle to true, ProviderRefreshTriggerResult.Deferred to false).forEach { (result, pending) ->
            var running = true
            val ticks = mutableListOf<Long>()
            runRefreshCycleResiliently(
                runCycle = { stopIdleExactRefresh(result, { pending }) { running = false } },
                isRunning = { running }, hasPendingManualRefresh = { pending },
                automaticDelayMillis = { 60_000 }, schedule = ticks::add, onFailure = { throw it })
            assertTrue(running)
            assertEquals(listOf(if (pending) 0L else 60_000L), ticks)
        }
    }

    private fun attempt(authority: MainProcessAccountAuthority, id: ProviderAccountId): ProviderRefreshAttempt {
        val lease = authority.beginRefreshAttempt(id, AccountDemandSet.of(AccountDemand.SCHEDULED), entropy)
        return ProviderRefreshAttempt(ProviderRefreshPlan.manualJobFor(id), lease, 0, 60_000)
    }

    private fun seed(id: ProviderAccountId) = AuthorityAccountSeed(
        AccountRecord(id, AccountState.ACTIVE, AccountAuthState.AUTHENTICATED, AccountDeletionState.NONE,
            AccountGeneration.of(1), SessionRevision.of(1), alias = "Account"),
        ProviderUsageSnapshot(id.providerId, connectionState = ProviderConnectionState.CONNECTED,
            updatedAt = "2026-09-15T00:00:00Z",
            lines = listOf(ProviderUsageLine("Quota", 0.63f, "63%", key = "quota"))))
}
