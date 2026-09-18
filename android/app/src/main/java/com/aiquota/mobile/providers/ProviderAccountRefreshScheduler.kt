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
import java.time.Instant

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
        if (
            snapshot.connectionState != ProviderConnectionState.CONNECTED &&
            snapshot.connectionState != ProviderConnectionState.UNAVAILABLE &&
            snapshot.connectionState != ProviderConnectionState.STALE &&
            snapshot.connectionState != ProviderConnectionState.ERROR
        ) return false
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
    /** A connected account is temporarily waiting; keep the next regular tick. */
    data object Deferred : ProviderRefreshTriggerResult
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
    private data class PlannedCard(val card: ProviderRefreshCard, val job: ProviderRefreshJob) {
        val accountId: ProviderAccountId get() = card.accountId
    }

    private val queued = ArrayDeque<PlannedCard>()
    private var active: ProviderRefreshAttempt? = null
    private val pendingCards = linkedMapOf<ProviderAccountId, ProviderRefreshCard>()
    private var pendingExactTarget: ProviderAccountId? = null
    private var pendingAutomatic = false
    private var attemptsInBatch = 0

    fun activeAttempt(): ProviderRefreshAttempt? = active

    fun trigger(
        cards: List<ProviderRefreshCard>,
        exactTarget: ProviderAccountId? = null,
        automatic: Boolean = false,
    ): ProviderRefreshTriggerResult {
        active?.let {
            cards.forEach { card -> pendingCards[card.accountId] = card }
            pendingExactTarget = exactTarget
            pendingAutomatic = automatic
            return ProviderRefreshTriggerResult.Coalesced(it)
        }
        queued.clear()
        attemptsInBatch = 0
        val eligible = planCards(cards, exactTarget, automatic)
        if (eligible.isEmpty()) {
            val now = Instant.ofEpochMilli(clock.nowMillis())
            val waiting = cards.any { card -> card.isEligible() && (
                (exactTarget != null && card.accountId != exactTarget) ||
                    (automatic && (GoogleUsagePendingRetryPolicy.retryDelayMillis(card.snapshot, now) ?: 0L) > 0L)
                ) }
            return if (waiting) ProviderRefreshTriggerResult.Deferred else ProviderRefreshTriggerResult.Idle
        }
        val selected = if (exactTarget == null) fairBatch(eligible) else eligible.take(1)
        queued.addAll(selected)
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
        val current = active
        try {
            current?.let { authority.abandon(it.lease, requeue = false) }
        } finally {
            active = null
            queued.clear()
            attemptsInBatch = 0
            pendingCards.clear()
            pendingExactTarget = null
            pendingAutomatic = false
        }
    }

    private fun planCards(
        cards: List<ProviderRefreshCard>,
        exactTarget: ProviderAccountId?,
        automatic: Boolean,
    ): List<PlannedCard> {
        val now = Instant.ofEpochMilli(clock.nowMillis())
        return cards.asSequence()
            .filter(ProviderRefreshCard::isEligible)
            .filter { exactTarget == null || it.accountId == exactTarget }
            .distinctBy(ProviderRefreshCard::accountId)
            .sortedBy(ProviderRefreshCard::activeRank)
            .mapNotNull { card ->
                val job = if (automatic) {
                    ProviderRefreshPlan.automaticJobFor(card.accountId, card.snapshot, now)
                } else {
                    ProviderRefreshPlan.manualJobFor(card.accountId)
                }
                job?.let { PlannedCard(card, it.copy(binding = card.binding)) }
            }.toList()
    }

    private fun fairBatch(cards: List<PlannedCard>): List<PlannedCard> {
        val last = cursorStore.read()
        val lastIndex = cards.indexOfFirst { it.accountId == last }
        val start = if (lastIndex < 0) 0 else (lastIndex + 1) % cards.size
        val selected = List(minOf(cards.size, ProviderRefreshQueuePolicy.MAX_ATTEMPTS_PER_BATCH)) { offset ->
            cards[(start + offset) % cards.size]
        }
        // Rotate before ordering reset work so an expired reset cannot starve other accounts.
        selected.lastOrNull()?.let { cursorStore.write(it.accountId) }
        return selected.sortedBy { it.job.qos }
    }

    private fun launchNext(): ProviderRefreshAttempt? {
        if (active != null) return active
        while (queued.isNotEmpty() && attemptsInBatch < ProviderRefreshQueuePolicy.MAX_ATTEMPTS_PER_BATCH) {
            val planned = queued.removeFirst()
            attemptsInBatch++
            val job = planned.job
            val lease = authority.begin(planned.card, nonces.next()) ?: continue
            val now = clock.nowMillis()
            return ProviderRefreshAttempt(job, lease, now, now + timeoutMillis(job)).also { active = it }
        }
        if (pendingCards.isNotEmpty()) {
            val target = pendingExactTarget
            val eligible = planCards(pendingCards.values.toList(), target, pendingAutomatic)
            pendingCards.clear()
            pendingExactTarget = null
            pendingAutomatic = false
            attemptsInBatch = 0
            val selected = if (target == null) fairBatch(eligible) else eligible.take(1)
            queued.addAll(selected)
            if (queued.isNotEmpty()) return launchNext()
        }
        return null
    }
}
