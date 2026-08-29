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
import com.aiquota.mobile.accounts.VersionedDisplayRecord
import com.aiquota.mobile.local.ProviderConnectionState
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.local.ProviderUsageLine
import com.aiquota.mobile.local.ProviderUsageSnapshot
import java.security.MessageDigest
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNull
import org.junit.Assert.assertSame
import org.junit.Assert.assertTrue
import org.junit.Test

class ProviderAccountRefreshSchedulerTest {
    @Test
    fun zeroOneAndThousandEligibleCardsUseStableDurableFairCursor() {
        listOf(0, 1, 1_000).forEach { count ->
            val cards = (0 until count).map { index -> card(id(provider(index), index + 1), index) }
            val authority = FakeAttemptAuthority(cards)
            val cursor = MemoryCursor()
            val observed = mutableListOf<ProviderAccountId>()
            var scheduler = scheduler(authority, cursor)
            repeat(if (count == 0) 1 else (count + 3) / 4) { cycle ->
                if (cycle == 1) scheduler = scheduler(authority, cursor)
                var attempt = (scheduler.trigger(cards) as? ProviderRefreshTriggerResult.Launched)?.attempt
                while (attempt != null) {
                    observed += attempt.accountId
                    val result = scheduler.publish(attempt, usage(attempt.accountId)) as ProviderRefreshCallbackResult.Accepted
                    assertTrue(result.commit is AttemptCommitResult.Committed)
                    attempt = result.next
                }
            }
            assertEquals(cards.map(ProviderRefreshCard::accountId), observed)
            assertEquals(count, authority.beginCount)
            assertEquals(if (count == 0) 0 else 1, authority.maxActiveCount)
            if (count == 0) assertNull(cursor.read())
            val encoded = observed.joinToString("|") { ProviderAccountIdStorageCodec.encode(it) }
            println(
                "QA_TASK15_FAIRNESS=$count:${observed.size}:${sha256(encoded)}:" +
                    "${observed.firstOrNull()?.let(ProviderAccountIdStorageCodec::encode)}:" +
                    "${observed.lastOrNull()?.let(ProviderAccountIdStorageCodec::encode)}"
            )
        }
    }

    @Test
    fun repeatedCyclesWrapWithoutStarvingAnyCardAndKeepRankOrder() {
        val cards = (0 until 7).map { card(id(provider(it), it + 1), it) }
        val authority = FakeAttemptAuthority(cards)
        val cursor = MemoryCursor()
        val observed = mutableListOf<ProviderAccountId>()
        repeat(4) {
            val scheduler = scheduler(authority, cursor)
            var attempt = (scheduler.trigger(cards) as ProviderRefreshTriggerResult.Launched).attempt
            while (true) {
                observed += attempt.accountId
                val next = (scheduler.publish(attempt, usage(attempt.accountId)) as ProviderRefreshCallbackResult.Accepted).next
                    ?: break
                attempt = next
            }
        }
        assertEquals(
            listOf(0, 1, 2, 3, 4, 5, 6, 0, 1, 2, 3, 4, 5, 6, 0, 1).map { cards[it].accountId },
            observed,
        )
        assertTrue(cards.all { it.accountId in observed })
        println("QA_TASK15_WRAP=" + observed.joinToString(",", transform = ProviderAccountIdStorageCodec::encode))
    }

    @Test
    fun secondTriggerCoalescesWhileOneGlobalCollectorIsActive() {
        val a = card(id(ProviderId.CLAUDE, 1), 0)
        val c = card(id(ProviderId.CODEX, 2), 1)
        val authority = FakeAttemptAuthority(listOf(a, c))
        val scheduler = scheduler(authority, MemoryCursor())
        val first = (scheduler.trigger(listOf(a)) as ProviderRefreshTriggerResult.Launched).attempt

        val second = scheduler.trigger(listOf(c))

        assertTrue(second is ProviderRefreshTriggerResult.Coalesced)
        assertSame(first, (second as ProviderRefreshTriggerResult.Coalesced).active)
        assertEquals(1, authority.activeCount)
        assertEquals(1, authority.maxActiveCount)
        val queued = (scheduler.publish(first, usage(a.accountId)) as ProviderRefreshCallbackResult.Accepted).next
        assertEquals(c.accountId, requireNotNull(queued).accountId)
        assertEquals(1, authority.activeCount)
        assertEquals(1, authority.maxActiveCount)
    }

    @Test
    fun batchLaunchesAtMostFourAndFailureTimeoutCancelAdvanceExactQueue() {
        val cards = (0 until 5).map { card(id(provider(it), it + 1), it) }
        val authority = FakeAttemptAuthority(cards)
        val clock = MutableClock(100)
        val scheduler = scheduler(authority, MemoryCursor(), clock)
        var attempt = (scheduler.trigger(cards) as ProviderRefreshTriggerResult.Launched).attempt
        repeat(3) {
            attempt = requireNotNull(scheduler.fail(attempt, requeue = true))
        }
        assertNull(scheduler.fail(attempt, requeue = true))
        assertEquals(4, authority.beginCount)
        assertEquals(cards.take(4).map(ProviderRefreshCard::accountId), authority.abandoned.map { it.first })
        assertTrue(authority.abandoned.all { it.second })

        val nextCycle = scheduler(authority, MemoryCursor(cards[3].accountId), clock)
        val fifth = (nextCycle.trigger(cards) as ProviderRefreshTriggerResult.Launched).attempt
        assertEquals(cards[4].accountId, fifth.accountId)
        clock.value = fifth.timeoutAtMillis
        val afterTimeout = nextCycle.expireTimedOut()
        assertEquals(cards[0].accountId, requireNotNull(afterTimeout).accountId)
        assertEquals(cards[4].accountId to true, authority.abandoned.last())
        nextCycle.cancelExact(cards[0].accountId)
        assertEquals(cards[0].accountId to false, authority.abandoned.last())
    }

    @Test
    fun disconnectedReauthDeletedInactiveAndStaleBindingsAreNeverSelected() {
        val eligible = card(id(ProviderId.CLAUDE, 1), 0)
        val disconnected = card(id(ProviderId.CODEX, 2), 1).copy(
            snapshot = ProviderUsageSnapshot.disconnected(ProviderId.CODEX)
        )
        val reauth = card(id(ProviderId.CLAUDE, 3), 2, auth = AccountAuthState.REAUTH_REQUIRED)
        val deleted = card(
            id(ProviderId.CODEX, 4),
            3,
            state = AccountState.DELETED,
            auth = AccountAuthState.SIGNED_OUT,
            deletion = AccountDeletionState.TOMBSTONED,
        )
        val inactive = card(id(ProviderId.CLAUDE, 5), 4, state = AccountState.SUSPENDED)
        val stale = card(id(ProviderId.CODEX, 6), 5).let {
            it.copy(nativeContextBinding = it.binding.copy(sessionRevision = it.binding.sessionRevision.next()))
        }
        val cards = listOf(eligible, disconnected, reauth, deleted, inactive, stale)
        val scheduler = scheduler(FakeAttemptAuthority(cards), MemoryCursor())

        val attempt = (scheduler.trigger(cards) as ProviderRefreshTriggerResult.Launched).attempt

        assertEquals(eligible.accountId, attempt.accountId)
        assertNull((scheduler.publish(attempt, usage(attempt.accountId)) as ProviderRefreshCallbackResult.Accepted).next)
    }

    @Test
    fun deletedGenerationAndSessionBCallbacksAreRejectedWithoutChangingAOrB() {
        val a = card(id(ProviderId.CLAUDE, 1), 0)
        val b = card(id(ProviderId.CLAUDE, 2), 1)
        listOf(StaleAttemptReason.ACCOUNT_MISSING, StaleAttemptReason.GENERATION_MISMATCH, StaleAttemptReason.SESSION_MISMATCH)
            .forEach { expected ->
                val authority = FakeAttemptAuthority(listOf(a, b))
                val scheduler = scheduler(authority, MemoryCursor())
                val attempt = (scheduler.trigger(listOf(a, b), b.accountId) as ProviderRefreshTriggerResult.Launched).attempt
                val before = authority.snapshots.toMap()
                when (expected) {
                    StaleAttemptReason.ACCOUNT_MISSING -> authority.delete(b.accountId)
                    StaleAttemptReason.GENERATION_MISMATCH -> authority.bumpGeneration(b.accountId)
                    StaleAttemptReason.SESSION_MISMATCH -> authority.bumpSession(b.accountId)
                    else -> error("unexpected case")
                }

                val callback = scheduler.publish(attempt, usage(b.accountId, 9)) as ProviderRefreshCallbackResult.Accepted

                assertEquals(AttemptCommitResult.Rejected(expected), callback.commit)
                assertEquals(before, authority.snapshots)
                assertEquals(before.getValue(a.accountId), authority.snapshots.getValue(a.accountId))
                println("QA_TASK15_STALE=${expected.name}:A_UNCHANGED:B_UNCHANGED:COMPAT_UNTOUCHED")
            }
    }

    @Test
    fun exactNoncePublishesOnceToBAndDuplicateOrLateCallbackIsRejected() {
        val a = card(id(ProviderId.CODEX, 1), 0)
        val b = card(id(ProviderId.CODEX, 2), 1)
        val authority = FakeAttemptAuthority(listOf(a, b))
        val scheduler = scheduler(authority, MemoryCursor())
        val attempt = (scheduler.trigger(listOf(a, b), b.accountId) as ProviderRefreshTriggerResult.Launched).attempt

        val first = scheduler.publish(attempt, usage(b.accountId, 17)) as ProviderRefreshCallbackResult.Accepted
        val duplicate = scheduler.publish(attempt, usage(b.accountId, 2))

        assertTrue(first.commit is AttemptCommitResult.Committed)
        assertEquals(ProviderRefreshCallbackResult.Rejected(StaleAttemptReason.ATTEMPT_MISMATCH), duplicate)
        assertEquals(0.17f, authority.snapshots.getValue(b.accountId).lines.single().remainingPercent)
        assertEquals(0.5f, authority.snapshots.getValue(a.accountId).lines.single().remainingPercent)
        assertEquals(listOf(b.accountId), authority.publishedAccounts)
    }

    @Test
    fun retainedWebViewProfileAndNativeHeadersAreExactBindingKeyed() {
        val a = binding(id(ProviderId.CLAUDE, 1), 1, 1)
        val b = binding(id(ProviderId.CLAUDE, 2), 1, 1)
        val store = ExactProviderCollectorResourceStore<String, String>()
        store.retain(resources(a, "web-a", "profile-a", "nonce-a"))
        store.retain(resources(b, "web-b", "profile-b", "nonce-b"))

        assertEquals("web-a", store.read(a)?.retainedWebView)
        assertEquals("profile-b", store.read(b)?.profileLease)
        assertEquals("nonce-b", store.read(b)?.nativeHeaders?.get("synthetic://context")?.get("X-Nonce"))
        assertNull(store.read(b.copy(sessionRevision = b.sessionRevision.next())))
        assertEquals("web-a", store.clear(b)?.let { store.read(a)?.retainedWebView })
        assertEquals(1, store.size())
    }

    @Test
    fun schedulerTimeoutCleanupCallbackTargetsOnlyExactB() {
        val default = card(ProviderAccountId(ProviderId.CODEX, AccountKey.reservedDefault()), 0)
        val a = card(id(ProviderId.CODEX, 1), 1)
        val b = card(id(ProviderId.CODEX, 2), 2)
        val events = mutableListOf<String>()
        val authority = FakeAttemptAuthority(listOf(default, a, b), events)
        val clock = MutableClock(50)
        val siblingScheduler = scheduler(authority, MemoryCursor(), clock)
        val aAttempt = (siblingScheduler.trigger(listOf(default, a, b), a.accountId) as ProviderRefreshTriggerResult.Launched).attempt
        assertSame(aAttempt, siblingScheduler.cancelExact(b.accountId))
        assertTrue(authority.abandoned.isEmpty())
        siblingScheduler.resetCycle()
        authority.abandoned.clear()
        events.clear()

        val resources = ExactProviderCollectorResourceStore<String, String>()
        resources.retain(resources(default.binding, "web-default", "profile-default", "default"))
        resources.retain(resources(a.binding, "web-a", "profile-a", "a"))
        resources.retain(resources(b.binding, "web-b", "profile-b", "b"))
        val scheduler = scheduler(authority, MemoryCursor(), clock) { binding ->
            events += "clear:${ProviderAccountIdStorageCodec.encode(binding.accountId)}"
            resources.clear(binding)
        }
        val bAttempt = (scheduler.trigger(listOf(default, a, b), b.accountId) as ProviderRefreshTriggerResult.Launched).attempt
        val beforeSnapshots = authority.snapshots.toMap()
        clock.value = bAttempt.timeoutAtMillis

        assertNull(scheduler.expireTimedOut())
        assertEquals(
            listOf(
                "clear:${ProviderAccountIdStorageCodec.encode(b.accountId)}",
                "abandon:${ProviderAccountIdStorageCodec.encode(b.accountId)}:true",
            ),
            events,
        )
        assertEquals(b.accountId to true, authority.abandoned.single())
        assertNull(resources.read(b.binding))
        assertEquals("web-a", resources.read(a.binding)?.retainedWebView)
        assertEquals("web-default", resources.read(default.binding)?.retainedWebView)
        assertEquals(beforeSnapshots, authority.snapshots)
        assertEquals(
            ProviderRefreshCallbackResult.Rejected(StaleAttemptReason.ATTEMPT_MISMATCH),
            scheduler.publish(bAttempt, usage(b.accountId, 99)),
        )

        resources.retain(resources(b.binding, "web-b-fresh", "profile-b-fresh", "b-fresh"))
        val freshAttempt = (scheduler.trigger(listOf(default, a, b), b.accountId) as ProviderRefreshTriggerResult.Launched).attempt
        assertTrue(freshAttempt.lease.nonce != bAttempt.lease.nonce)
        println("QA_TASK15_CLEANUP=B_CLEAR_BEFORE_REQUEUE:A_DEFAULT_RETAINED:LATE_B_REJECTED:FRESH_NONCE")
        scheduler.resetCycle()
    }

    @Test
    fun malformedIntentFailsClosedAndDisabledModeUsesReservedDefaultOnly() {
        val b = id(ProviderId.CODEX, 2)
        val encoded = ProviderAccountIdStorageCodec.encode(b)

        assertEquals(
            ProviderRefreshIntentResolution.Exact(b),
            ProviderRefreshIntentBoundary.resolve("codex", encoded, true),
        )
        assertEquals(
            ProviderRefreshIntentResolution.Rejected(ProviderRefreshIntentRejection.MALFORMED_ACCOUNT_ID),
            ProviderRefreshIntentBoundary.resolve("codex", "codex/not-an-account", true),
        )
        assertEquals(
            ProviderRefreshIntentResolution.Rejected(ProviderRefreshIntentRejection.PROVIDER_MISMATCH),
            ProviderRefreshIntentBoundary.resolve("claude", encoded, true),
        )
        assertEquals(
            ProviderAccountId(ProviderId.CODEX, AccountKey.reservedDefault()),
            (ProviderRefreshIntentBoundary.resolve("codex", encoded, false) as ProviderRefreshIntentResolution.Exact).accountId,
        )
    }

    private fun scheduler(
        authority: FakeAttemptAuthority,
        cursor: MemoryCursor,
        clock: MutableClock = MutableClock(0),
        clearExactResources: (AccountLoginSessionBinding) -> Unit = {},
    ) = ProviderAccountRefreshScheduler(
        authority,
        cursor,
        clock,
        SequenceNonces(),
        timeoutMillis = { 100L },
        clearExactResources = clearExactResources,
    )

    private fun provider(index: Int) = if (index % 2 == 0) ProviderId.CLAUDE else ProviderId.CODEX
}

private class MutableClock(var value: Long) : ProviderRefreshClock {
    override fun nowMillis() = value
}

private class MemoryCursor(private var accountId: ProviderAccountId? = null) : ProviderRefreshCursorStore {
    override fun read() = accountId
    override fun write(accountId: ProviderAccountId) { this.accountId = accountId }
}

private class SequenceNonces : ProviderRefreshNonceSource {
    private var value = 0
    override fun next(): AttemptNonce {
        value++
        return AttemptNonce.parseOpaque("attempt_${value.toString(36).padStart(16, '0')}")
    }
}

private class FakeAttemptAuthority(
    cards: List<ProviderRefreshCard>,
    private val events: MutableList<String>? = null,
) : ProviderRefreshAttemptAuthority {
    private val accounts = cards.associate { it.accountId to it.account }.toMutableMap()
    val snapshots = cards.associate { it.accountId to it.snapshot }.toMutableMap()
    private val active = mutableMapOf<ProviderAccountId, AttemptLease>()
    private val published = mutableSetOf<Pair<ProviderAccountId, AttemptNonce>>()
    val abandoned = mutableListOf<Pair<ProviderAccountId, Boolean>>()
    val publishedAccounts = mutableListOf<ProviderAccountId>()
    var beginCount = 0
    var activeCount = 0
    var maxActiveCount = 0

    override fun begin(card: ProviderRefreshCard, nonce: AttemptNonce): AttemptLease? {
        val current = accounts[card.accountId] ?: return null
        if (!card.isEligible() || current.generation != card.account.generation || current.sessionRevision != card.account.sessionRevision) return null
        val lease = AttemptLease(card.accountId, current.generation, current.sessionRevision, nonce)
        active[card.accountId] = lease
        beginCount++
        activeCount++
        maxActiveCount = maxOf(maxActiveCount, activeCount)
        return lease
    }

    override fun publish(lease: AttemptLease, snapshot: ProviderUsageSnapshot): AttemptCommitResult {
        val account = accounts[lease.accountId]
            ?: return AttemptCommitResult.Rejected(StaleAttemptReason.ACCOUNT_MISSING)
        if (account.state != AccountState.ACTIVE || account.authState != AccountAuthState.AUTHENTICATED || account.deletionState != AccountDeletionState.NONE) {
            return AttemptCommitResult.Rejected(StaleAttemptReason.ACCOUNT_INACTIVE)
        }
        if (account.generation != lease.generation) return AttemptCommitResult.Rejected(StaleAttemptReason.GENERATION_MISMATCH)
        if (account.sessionRevision != lease.sessionRevision) return AttemptCommitResult.Rejected(StaleAttemptReason.SESSION_MISMATCH)
        if (lease.accountId to lease.nonce in published) return AttemptCommitResult.Rejected(StaleAttemptReason.NONCE_ALREADY_PUBLISHED)
        if (active[lease.accountId] != lease) return AttemptCommitResult.Rejected(StaleAttemptReason.ATTEMPT_MISMATCH)
        snapshots[lease.accountId] = snapshot
        published += lease.accountId to lease.nonce
        publishedAccounts += lease.accountId
        active.remove(lease.accountId)
        activeCount--
        val record = VersionedDisplayRecord(account, snapshot, account.modifiedVersion)
        return AttemptCommitResult.Committed(record)
    }

    override fun abandon(lease: AttemptLease, requeue: Boolean): Boolean {
        if (active[lease.accountId] != lease) return false
        active.remove(lease.accountId)
        activeCount--
        abandoned += lease.accountId to requeue
        events?.add("abandon:${ProviderAccountIdStorageCodec.encode(lease.accountId)}:$requeue")
        return true
    }

    fun delete(accountId: ProviderAccountId) { accounts.remove(accountId) }
    fun bumpGeneration(accountId: ProviderAccountId) {
        accounts[accountId] = accounts.getValue(accountId).copy(generation = accounts.getValue(accountId).generation.next())
    }
    fun bumpSession(accountId: ProviderAccountId) {
        accounts[accountId] = accounts.getValue(accountId).copy(sessionRevision = accounts.getValue(accountId).sessionRevision.next())
    }
}

private fun card(
    id: ProviderAccountId,
    rank: Int,
    state: AccountState = AccountState.ACTIVE,
    auth: AccountAuthState = AccountAuthState.AUTHENTICATED,
    deletion: AccountDeletionState = AccountDeletionState.NONE,
): ProviderRefreshCard {
    val account = AccountRecord(
        id,
        state,
        auth,
        deletion,
        AccountGeneration.of(1),
        SessionRevision.of(1),
        alias = "Card $rank",
        modifiedVersion = DisplayVersion.of(rank.toLong() + 1),
    )
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

private fun binding(id: ProviderAccountId, generation: Long, session: Long) = AccountLoginSessionBinding(
    id,
    AccountGeneration.of(generation),
    SessionRevision.of(session),
)

private fun resources(
    binding: AccountLoginSessionBinding,
    webView: String,
    profile: String,
    nonce: String,
) = ExactProviderCollectorResources(
    binding,
    webView,
    profile,
    mapOf("synthetic://context" to mapOf("X-Nonce" to nonce)),
)

private fun id(provider: ProviderId, value: Int) = ProviderAccountId(
    provider,
    AccountKey.parseOpaque("acct_${value.toString(16).padStart(32, '0')}"),
)

private fun sha256(value: String): String = MessageDigest.getInstance("SHA-256")
    .digest(value.toByteArray())
    .joinToString("") { "%02x".format(it) }

private fun usage(id: ProviderAccountId, remaining: Int = 50) = ProviderUsageSnapshot(
    providerId = id.providerId,
    connectionState = ProviderConnectionState.CONNECTED,
    lines = listOf(ProviderUsageLine(label = "Usage", remainingPercent = remaining / 100f)),
)
