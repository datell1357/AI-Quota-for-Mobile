package com.aiquota.mobile.providers

import com.aiquota.mobile.accounts.AccountAuthState
import com.aiquota.mobile.accounts.AccountDemand
import com.aiquota.mobile.accounts.AccountDemandSet
import com.aiquota.mobile.accounts.AccountDeletionState
import com.aiquota.mobile.accounts.AccountGeneration
import com.aiquota.mobile.accounts.AccountKey
import com.aiquota.mobile.accounts.AccountLoginSessionBinding
import com.aiquota.mobile.accounts.AccountRecord
import com.aiquota.mobile.accounts.AccountState
import com.aiquota.mobile.accounts.AttemptCommitResult
import com.aiquota.mobile.accounts.AttemptLease
import com.aiquota.mobile.accounts.AttemptNonce
import com.aiquota.mobile.accounts.DisplayVersion
import com.aiquota.mobile.accounts.ProviderAccountId
import com.aiquota.mobile.accounts.ProviderAccountIdStorageCodec
import com.aiquota.mobile.accounts.SessionRevision
import com.aiquota.mobile.accounts.StaleAttemptReason
import com.aiquota.mobile.local.ProviderConnectionState
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.local.ProviderUsageLine
import com.aiquota.mobile.local.ProviderUsageSnapshot
import java.io.File
import kotlinx.coroutines.CompletableDeferred
import kotlinx.coroutines.CoroutineStart
import kotlinx.coroutines.launch
import kotlinx.coroutines.runBlocking
import kotlinx.coroutines.withTimeout
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

class ProviderBackgroundRefreshServiceExactDispatchTest {
    @Test
    fun onlyMultiAccountProvidersRequireNamedProfilesForHiddenCollection() {
        assertTrue(exactHiddenCollectionNeedsNamedProfile(ProviderId.CLAUDE))
        assertTrue(exactHiddenCollectionNeedsNamedProfile(ProviderId.CODEX))
        ProviderId.entries
            .filterNot { it == ProviderId.CLAUDE || it == ProviderId.CODEX }
            .forEach { providerId ->
                assertFalse(providerId.storageId, exactHiddenCollectionNeedsNamedProfile(providerId))
            }
    }

    @Test
    fun scheduledSingletonJobKeepsSharedSessionWhileClaudeAndCodexRequireNamedProfile() {
        val cursorJob = attempt(binding(ProviderId.CURSOR, 1, generation = 1)).job
        val copilotJob = attempt(binding(ProviderId.COPILOT, 4, generation = 1)).job
        val kiroJob = attempt(binding(ProviderId.KIRO, 5, generation = 1)).job
        val claudeJob = attempt(binding(ProviderId.CLAUDE, 2, generation = 1)).job
        val codexJob = attempt(binding(ProviderId.CODEX, 3, generation = 1)).job

        assertFalse(jobUsesNamedProfileSession(cursorJob))
        assertTrue(jobUsesSharedWebSession(copilotJob))
        assertTrue(jobUsesSharedWebSession(kiroJob))
        assertTrue(jobUsesNamedProfileSession(claudeJob))
        assertTrue(jobUsesNamedProfileSession(codexJob))
        assertFalse(jobUsesSharedWebSession(claudeJob))
        assertFalse(jobUsesSharedWebSession(codexJob))
    }

    @Test
    fun nonNamedCursorBindingFeedsItsAccountIntoBridgeCooldownScope() {
        val cursorBinding = binding(ProviderId.CURSOR, 6, generation = 1)
        val cursorJob = attempt(cursorBinding).job
        val service = File("src/main/java/com/aiquota/mobile/providers/ProviderBackgroundRefreshService.kt").readText()
        val bridge = service.substringAfter("private inner class ServiceUsageBridge")
            .substringBefore("private class ServiceCollectorChromeClient")

        assertFalse(jobUsesNamedProfileSession(cursorJob))
        assertEquals(cursorBinding.accountId, cursorJob.binding?.accountId)
        assertTrue(bridge.contains("accountId = active.job.binding?.accountId"))
        assertFalse(bridge.contains("accountId = active.exactOperation?.binding?.accountId"))
    }

    @Test
    fun boundSingletonJobsKeepCopilotWarmUpAndKiroSessionRevive() {
        val copilotJob = attempt(binding(ProviderId.COPILOT, 4, generation = 1)).job
        val kiroJob = attempt(binding(ProviderId.KIRO, 5, generation = 1)).job
        val codexJob = attempt(binding(ProviderId.CODEX, 3, generation = 1)).job
        val kiroReviveUrl = "https://app.kiro.dev/settings/account"

        assertEquals(
            "https://github.com/",
            sharedWebSessionWarmUpUrl(copilotJob, copilotNeedsWarmUp = true, pendingReviveUrl = null),
        )
        assertEquals(
            kiroReviveUrl,
            sharedWebSessionWarmUpUrl(kiroJob, copilotNeedsWarmUp = false, pendingReviveUrl = kiroReviveUrl),
        )
        assertNull(
            sharedWebSessionWarmUpUrl(codexJob, copilotNeedsWarmUp = true, pendingReviveUrl = kiroReviveUrl),
        )
    }

    @Test
    fun serviceDispatchSerializesRealExternalCleanupWithoutBlockingSiblingBinding() = runBlocking {
        val bindingA = binding(ProviderId.CLAUDE, 1, generation = 1)
        val bindingB = binding(ProviderId.CLAUDE, 2, generation = 1)
        val events = mutableListOf<String>()
        val registry = registry(events)
        val cleanup = ExactProviderCollectorCleanupEntrypoints(registry)
        registry.retain(FakeOwned(bindingA, "A"))
        registry.retain(FakeOwned(bindingB, "B"))
        val collectorEntered = CompletableDeferred<Unit>()
        val releaseCollector = CompletableDeferred<Unit>()

        val collection = launch(start = CoroutineStart.UNDISPATCHED) {
            ProviderBackgroundRefreshService.dispatchExactHiddenCollection(
                attempt(bindingA),
                NoOpServiceAttemptCoordinator,
            ) {
                collectorEntered.complete(Unit)
                releaseCollector.await()
                "complete"
            }
        }
        collectorEntered.await()
        val cleanupA = launch(start = CoroutineStart.UNDISPATCHED) {
            cleanup.sessionReset(bindingA) { it }
        }
        val cleanupB = launch(start = CoroutineStart.UNDISPATCHED) {
            cleanup.logout(bindingB) { it }
        }

        assertFalse("close:A" in events)
        assertTrue("close:B" in events)
        releaseCollector.complete(Unit)
        withTimeout(1_000L) {
            collection.join()
            cleanupA.join()
            cleanupB.join()
        }
        assertEquals(listOf("close:B", "close:A"), events)
    }

    @Test
    fun serviceTimeoutClearsExactBBeforeRealRequeueAndRejectsLateCompletion() = runBlocking {
        val default = card(ProviderAccountId(ProviderId.CODEX, AccountKey.reservedDefault()), 0)
        val a = card(binding(ProviderId.CODEX, 1, 1).accountId, 1)
        val b = card(binding(ProviderId.CODEX, 2, 1).accountId, 2)
        val events = mutableListOf<String>()
        val registry = registry(events)
        val cleanup = ExactProviderCollectorCleanupEntrypoints(registry)
        listOf(
            FakeOwned(default.binding, "default"),
            FakeOwned(a.binding, "A"),
            FakeOwned(b.binding, "B"),
        ).forEach(registry::retain)
        val authority = ServiceFakeAuthority(listOf(default, a, b), events)
        val scheduler = ProviderAccountRefreshScheduler(
            authority,
            ServiceMemoryCursor(),
            ProviderRefreshClock { 10L },
            ServiceSequenceNonces(),
            timeoutMillis = { 100L },
            clearExactResources = cleanup::timeoutInsideMaintenance,
        )
        val coordinator = SchedulerServiceAttemptCoordinator(scheduler)
        val bAttempt = (scheduler.trigger(listOf(default, a, b), b.accountId) as ProviderRefreshTriggerResult.Launched).attempt
        val snapshotsBefore = authority.snapshots.toMap()

        val dispatch = ProviderBackgroundRefreshService.dispatchExactHiddenCollection(
            bAttempt,
            coordinator,
        ) { onTimeout ->
            onTimeout()
            "timed-out"
        }

        assertTrue(dispatch.timedOut)
        assertNull(dispatch.next)
        assertEquals(
            listOf(
                "close:B",
                "requeue:${ProviderAccountIdStorageCodec.encode(b.accountId)}",
            ),
            events,
        )
        assertNull(registry.read(b.binding))
        assertEquals("A", registry.read(a.binding)?.name)
        assertEquals("default", registry.read(default.binding)?.name)
        assertEquals(snapshotsBefore, authority.snapshots)
        assertEquals(
            ProviderRefreshCallbackResult.Rejected(StaleAttemptReason.ATTEMPT_MISMATCH),
            scheduler.publish(bAttempt, usage(b.accountId, 99)),
        )

        registry.retain(FakeOwned(b.binding, "B-fresh"))
        val fresh = (scheduler.trigger(listOf(default, a, b), b.accountId) as ProviderRefreshTriggerResult.Launched).attempt
        assertTrue(fresh.lease.nonce != bAttempt.lease.nonce)
        scheduler.resetCycle()
    }

    @Test
    fun externalCleanupEntrypointMatrixUsesServiceBindingGateAndStaleBindingIsIsolated() = runBlocking {
        ExactProviderCollectorCleanupEntrypoint.externalEntries.forEach { entrypoint ->
            val current = binding(ProviderId.CLAUDE, 7, generation = 2)
            val stale = current.copy(generation = AccountGeneration.of(1))
            val events = mutableListOf<String>()
            val registry = registry(events)
            val cleanup = ExactProviderCollectorCleanupEntrypoints(registry)
            registry.retain(FakeOwned(current, entrypoint.name))
            val entered = CompletableDeferred<Unit>()
            val release = CompletableDeferred<Unit>()
            val collection = launch(start = CoroutineStart.UNDISPATCHED) {
                ProviderBackgroundRefreshService.dispatchExactHiddenCollection(
                    attempt(current),
                    NoOpServiceAttemptCoordinator,
                ) {
                    entered.complete(Unit)
                    release.await()
                    Unit
                }
            }
            entered.await()
            val sameBindingCleanup = launch(start = CoroutineStart.UNDISPATCHED) {
                invokeExternalCleanup(cleanup, entrypoint, current)
            }
            val staleCleanup = launch(start = CoroutineStart.UNDISPATCHED) {
                invokeExternalCleanup(cleanup, entrypoint, stale)
            }

            staleCleanup.join()
            assertFalse(events.isNotEmpty())
            assertEquals(entrypoint.name, registry.read(current)?.name)
            release.complete(Unit)
            withTimeout(1_000L) {
                collection.join()
                sameBindingCleanup.join()
            }
            assertEquals(listOf("close:${entrypoint.name}"), events)
            assertNull(registry.read(current))
        }
    }

    private suspend fun invokeExternalCleanup(
        cleanup: ExactProviderCollectorCleanupEntrypoints<FakeOwned>,
        entrypoint: ExactProviderCollectorCleanupEntrypoint,
        binding: AccountLoginSessionBinding,
    ) {
        when (entrypoint) {
            ExactProviderCollectorCleanupEntrypoint.DELETION -> cleanup.deletion(binding) { it }
            ExactProviderCollectorCleanupEntrypoint.PROFILE_LOSS -> cleanup.profileLoss(binding) { it }
            ExactProviderCollectorCleanupEntrypoint.LOGOUT -> cleanup.logout(binding) { it }
            ExactProviderCollectorCleanupEntrypoint.DISCONNECT -> cleanup.disconnect(binding) { it }
            ExactProviderCollectorCleanupEntrypoint.SESSION_RESET -> cleanup.sessionReset(binding) { it }
            ExactProviderCollectorCleanupEntrypoint.MANUAL_CANCEL -> cleanup.manualCancel(binding) { it }
            ExactProviderCollectorCleanupEntrypoint.REAUTHENTICATION -> cleanup.reauthentication(binding) { it }
            ExactProviderCollectorCleanupEntrypoint.ACTIVITY_REPLACEMENT -> cleanup.activityReplacement(binding) { it }
            ExactProviderCollectorCleanupEntrypoint.TIMEOUT -> error("Timeout is owned by service dispatch")
        }
    }

    private fun registry(events: MutableList<String>) = ExactProviderCollectorResourceRegistry(
        bindingOf = FakeOwned::binding,
        close = { events += "close:${it.name}" },
    )
}

private data class FakeOwned(
    val binding: AccountLoginSessionBinding,
    val name: String,
)

private object NoOpServiceAttemptCoordinator : ExactServiceAttemptCoordinator {
    override fun timeout(attempt: ProviderRefreshAttempt): ProviderRefreshAttempt? = null
    override fun fail(attempt: ProviderRefreshAttempt, requeue: Boolean): ProviderRefreshAttempt? = null
}

private class SchedulerServiceAttemptCoordinator(
    private val scheduler: ProviderAccountRefreshScheduler,
) : ExactServiceAttemptCoordinator {
    override fun timeout(attempt: ProviderRefreshAttempt) = scheduler.timeout(attempt)
    override fun fail(attempt: ProviderRefreshAttempt, requeue: Boolean) = scheduler.fail(attempt, requeue)
}

private class ServiceMemoryCursor : ProviderRefreshCursorStore {
    private var value: ProviderAccountId? = null
    override fun read() = value
    override fun write(accountId: ProviderAccountId) { value = accountId }
}

private class ServiceSequenceNonces : ProviderRefreshNonceSource {
    private var value = 0
    override fun next(): AttemptNonce {
        value++
        return AttemptNonce.parseOpaque("attempt_${value.toString(36).padStart(16, '0')}")
    }
}

private class ServiceFakeAuthority(
    cards: List<ProviderRefreshCard>,
    private val events: MutableList<String>,
) : ProviderRefreshAttemptAuthority {
    private val active = mutableMapOf<ProviderAccountId, AttemptLease>()
    val snapshots = cards.associate { it.accountId to it.snapshot }.toMutableMap()

    override fun begin(card: ProviderRefreshCard, nonce: AttemptNonce): AttemptLease {
        return AttemptLease(card.accountId, card.account.generation, card.account.sessionRevision, nonce)
            .also { active[card.accountId] = it }
    }

    override fun publish(lease: AttemptLease, snapshot: ProviderUsageSnapshot): AttemptCommitResult {
        if (active[lease.accountId] != lease) {
            return AttemptCommitResult.Rejected(StaleAttemptReason.ATTEMPT_MISMATCH)
        }
        snapshots[lease.accountId] = snapshot
        active.remove(lease.accountId)
        return AttemptCommitResult.Committed(
            com.aiquota.mobile.accounts.VersionedDisplayRecord(
                cardRecord(lease.accountId),
                snapshot,
                DisplayVersion.of(2),
            )
        )
    }

    override fun abandon(lease: AttemptLease, requeue: Boolean): Boolean {
        if (active.remove(lease.accountId) != lease) return false
        events += "requeue:${ProviderAccountIdStorageCodec.encode(lease.accountId)}"
        return true
    }
}

private fun card(id: ProviderAccountId, rank: Int): ProviderRefreshCard {
    val account = cardRecord(id, rank)
    val binding = AccountLoginSessionBinding(id, account.generation, account.sessionRevision)
    return ProviderRefreshCard(
        account,
        usage(id),
        AccountDemandSet.of(AccountDemand.SCHEDULED),
        rank,
        binding,
        binding,
        binding,
    )
}

private fun cardRecord(id: ProviderAccountId, rank: Int = 0) = AccountRecord(
    id,
    AccountState.ACTIVE,
    AccountAuthState.AUTHENTICATED,
    AccountDeletionState.NONE,
    AccountGeneration.of(1),
    SessionRevision.of(1),
    alias = "Card $rank",
    modifiedVersion = DisplayVersion.of(rank.toLong() + 1),
)

private fun binding(provider: ProviderId, key: Int, generation: Long) = AccountLoginSessionBinding(
    ProviderAccountId(provider, AccountKey.parseOpaque("acct_${key.toString(16).padStart(32, '0')}")),
    AccountGeneration.of(generation),
    SessionRevision.of(1),
)

private fun attempt(binding: AccountLoginSessionBinding) = ProviderRefreshAttempt(
    ProviderRefreshPlan.manualJobFor(binding.accountId).copy(binding = binding),
    AttemptLease(
        binding.accountId,
        binding.generation,
        binding.sessionRevision,
        AttemptNonce.parseOpaque("attempt_0000000000000001"),
    ),
    launchedAtMillis = 0,
    timeoutAtMillis = 100,
)

private fun usage(id: ProviderAccountId, remaining: Int = 50) = ProviderUsageSnapshot(
    providerId = id.providerId,
    connectionState = ProviderConnectionState.CONNECTED,
    lines = listOf(ProviderUsageLine("Usage", remainingPercent = remaining / 100f)),
)
