package com.aiquota.mobile.providers

import com.aiquota.mobile.accounts.AccountAuthState
import com.aiquota.mobile.accounts.AccountDemandSet
import com.aiquota.mobile.accounts.AccountDeletionState
import com.aiquota.mobile.accounts.AccountLoginSessionBinding
import com.aiquota.mobile.accounts.AccountRecord
import com.aiquota.mobile.accounts.AccountState
import com.aiquota.mobile.accounts.AttemptCommitResult
import com.aiquota.mobile.accounts.AttemptLease
import com.aiquota.mobile.accounts.AttemptNonce
import com.aiquota.mobile.accounts.ProviderAccountId
import com.aiquota.mobile.accounts.StaleAttemptReason
import com.aiquota.mobile.local.ProviderConnectionState
import com.aiquota.mobile.local.ProviderUsageSnapshot

fun interface ProviderRefreshClock {
    fun nowMillis(): Long
}

fun interface ProviderRefreshNonceSource {
    fun next(): AttemptNonce
}

interface ProviderRefreshCursorStore {
    fun read(): ProviderAccountId?
    fun write(accountId: ProviderAccountId)
}

interface ProviderRefreshAttemptAuthority {
    fun begin(card: ProviderRefreshCard, nonce: AttemptNonce): AttemptLease?
    fun publish(lease: AttemptLease, snapshot: ProviderUsageSnapshot): AttemptCommitResult
    fun abandon(lease: AttemptLease, requeue: Boolean): Boolean
}

data class ProviderRefreshCard(
    val account: AccountRecord,
    val snapshot: ProviderUsageSnapshot,
    val demand: AccountDemandSet,
    val activeRank: Int,
    val credentialBinding: AccountLoginSessionBinding?,
    val profileLeaseBinding: AccountLoginSessionBinding?,
    val nativeContextBinding: AccountLoginSessionBinding?,
) {
    val accountId: ProviderAccountId get() = account.id
    val binding: AccountLoginSessionBinding
        get() = AccountLoginSessionBinding(accountId, account.generation, account.sessionRevision)

    fun isEligible(): Boolean {
        if (demand == AccountDemandSet.NONE || activeRank < 0) return false
        if (snapshot.providerId != accountId.providerId) return false
        if (snapshot.connectionState != ProviderConnectionState.CONNECTED) return false
        if (account.state != AccountState.ACTIVE || account.authState != AccountAuthState.AUTHENTICATED) return false
        if (account.deletionState != AccountDeletionState.NONE) return false
        if (credentialBinding != binding) return false
        if (accountId.providerId !in NAMED_PROFILE_PROVIDERS) return true
        return profileLeaseBinding == binding && nativeContextBinding == binding
    }
}

data class ProviderRefreshAttempt(
    val job: ProviderRefreshJob,
    val lease: AttemptLease,
    val launchedAtMillis: Long,
    val timeoutAtMillis: Long,
) {
    val accountId: ProviderAccountId get() = lease.accountId
}

sealed interface ProviderRefreshTriggerResult {
    data object Idle : ProviderRefreshTriggerResult
    data class Launched(val attempt: ProviderRefreshAttempt) : ProviderRefreshTriggerResult
    data class Coalesced(val active: ProviderRefreshAttempt) : ProviderRefreshTriggerResult
}

sealed interface ProviderRefreshCallbackResult {
    data class Accepted(
        val commit: AttemptCommitResult,
        val next: ProviderRefreshAttempt?,
    ) : ProviderRefreshCallbackResult

    data class Rejected(val reason: StaleAttemptReason) : ProviderRefreshCallbackResult
}

class ProviderAccountRefreshScheduler(
    private val authority: ProviderRefreshAttemptAuthority,
    private val cursorStore: ProviderRefreshCursorStore,
    private val clock: ProviderRefreshClock,
    private val nonces: ProviderRefreshNonceSource,
    private val timeoutMillis: (ProviderRefreshJob) -> Long = { ProviderRefreshPlan.timeoutMillisFor(it.providerId) },
    private val clearExactResources: (AccountLoginSessionBinding) -> Unit = {},
) {
    private val queued = ArrayDeque<ProviderRefreshCard>()
    private var active: ProviderRefreshAttempt? = null
    private val pendingCards = linkedMapOf<ProviderAccountId, ProviderRefreshCard>()
    private var pendingExactTarget: ProviderAccountId? = null
    private var attemptsInBatch = 0

    fun activeAttempt(): ProviderRefreshAttempt? = active

    fun trigger(
        cards: List<ProviderRefreshCard>,
        exactTarget: ProviderAccountId? = null,
    ): ProviderRefreshTriggerResult {
        active?.let {
            cards.forEach { card -> pendingCards[card.accountId] = card }
            pendingExactTarget = exactTarget
            return ProviderRefreshTriggerResult.Coalesced(it)
        }
        queued.clear()
        attemptsInBatch = 0
        val eligible = cards
            .asSequence()
            .filter(ProviderRefreshCard::isEligible)
            .filter { exactTarget == null || it.accountId == exactTarget }
            .distinctBy(ProviderRefreshCard::accountId)
            .sortedBy(ProviderRefreshCard::activeRank)
            .toList()
        if (eligible.isEmpty()) return ProviderRefreshTriggerResult.Idle
        val selected = if (exactTarget == null) fairBatch(eligible) else eligible.take(1)
        queued.addAll(selected)
        if (exactTarget == null && selected.isNotEmpty()) cursorStore.write(selected.last().accountId)
        val launched = launchNext() ?: return ProviderRefreshTriggerResult.Idle
        return ProviderRefreshTriggerResult.Launched(launched)
    }

    fun publish(
        attempt: ProviderRefreshAttempt,
        snapshot: ProviderUsageSnapshot,
    ): ProviderRefreshCallbackResult {
        val current = active
            ?: return ProviderRefreshCallbackResult.Rejected(StaleAttemptReason.ATTEMPT_MISMATCH)
        if (current != attempt || snapshot.providerId != attempt.accountId.providerId) {
            return ProviderRefreshCallbackResult.Rejected(StaleAttemptReason.ATTEMPT_MISMATCH)
        }
        val commit = authority.publish(attempt.lease, snapshot)
        active = null
        return ProviderRefreshCallbackResult.Accepted(commit, launchNext())
    }

    fun fail(attempt: ProviderRefreshAttempt, requeue: Boolean): ProviderRefreshAttempt? {
        if (active != attempt) return active
        authority.abandon(attempt.lease, requeue)
        active = null
        return launchNext()
    }

    fun timeout(attempt: ProviderRefreshAttempt): ProviderRefreshAttempt? {
        if (active != attempt) return active
        attempt.job.binding?.let(clearExactResources)
        return fail(attempt, requeue = true)
    }

    fun expireTimedOut(): ProviderRefreshAttempt? {
        val current = active ?: return null
        if (clock.nowMillis() < current.timeoutAtMillis) return current
        return timeout(current)
    }

    fun cancelExact(accountId: ProviderAccountId, requeue: Boolean = false): ProviderRefreshAttempt? {
        val retained = queued.filterNot { it.accountId == accountId }
        queued.clear()
        queued.addAll(retained)
        val current = active
        if (current?.accountId == accountId) {
            authority.abandon(current.lease, requeue)
            active = null
        }
        return launchNext()
    }

    fun resetCycle() {
        active?.let { authority.abandon(it.lease, requeue = false) }
        active = null
        queued.clear()
        attemptsInBatch = 0
        pendingCards.clear()
        pendingExactTarget = null
    }

    private fun fairBatch(cards: List<ProviderRefreshCard>): List<ProviderRefreshCard> {
        val last = cursorStore.read()
        val lastIndex = cards.indexOfFirst { it.accountId == last }
        val start = if (lastIndex < 0) 0 else (lastIndex + 1) % cards.size
        return List(minOf(cards.size, ProviderRefreshQueuePolicy.MAX_ATTEMPTS_PER_BATCH)) { offset ->
            cards[(start + offset) % cards.size]
        }
    }

    private fun launchNext(): ProviderRefreshAttempt? {
        if (active != null) return active
        while (queued.isNotEmpty() && attemptsInBatch < ProviderRefreshQueuePolicy.MAX_ATTEMPTS_PER_BATCH) {
            val card = queued.removeFirst()
            attemptsInBatch++
            val job = ProviderRefreshPlan.manualJobFor(card.accountId).copy(binding = card.binding)
            val lease = authority.begin(card, nonces.next()) ?: continue
            val now = clock.nowMillis()
            return ProviderRefreshAttempt(job, lease, now, now + timeoutMillis(job)).also { active = it }
        }
        if (pendingCards.isNotEmpty()) {
            val target = pendingExactTarget
            val eligible = pendingCards.values
                .asSequence()
                .filter(ProviderRefreshCard::isEligible)
                .filter { target == null || it.accountId == target }
                .sortedBy(ProviderRefreshCard::activeRank)
                .toList()
            pendingCards.clear()
            pendingExactTarget = null
            attemptsInBatch = 0
            val selected = if (target == null) fairBatch(eligible) else eligible.take(1)
            queued.addAll(selected)
            if (target == null && selected.isNotEmpty()) cursorStore.write(selected.last().accountId)
            if (queued.isNotEmpty()) return launchNext()
        }
        return null
    }
}
