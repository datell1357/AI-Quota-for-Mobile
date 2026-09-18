package com.aiquota.mobile.providers

import com.aiquota.mobile.accounts.*
import com.aiquota.mobile.local.*
import java.time.Instant
import org.junit.Assert.*
import org.junit.Test

class ExactClaudeSessionPrimeRuntimeTest {
    private val reset = Instant.parse("2026-09-10T00:00:00Z")
    private val credentials = ClaudeSessionPrimer.Credentials("lastActiveOrg=org", emptyMap(), "test")
    private fun binding(index: Int = 1, revision: Long = 1) = AccountLoginSessionBinding(
        ProviderAccountId(ProviderId.CLAUDE, AccountKey.parseOpaque("acct_${index.toString().padStart(32, '0')}")),
        AccountGeneration.of(1), SessionRevision.of(revision))
    private fun snapshot(at: Instant? = reset, state: ProviderConnectionState = ProviderConnectionState.CONNECTED) =
        ProviderUsageSnapshot(providerId = ProviderId.CLAUDE, connectionState = state,
            lines = listOf(ProviderUsageLine(key = "claude:session", label = "Session", resetsAt = at?.toString())))
    private class State : ExactClaudePrimeState {
        val pending = mutableMapOf<AccountLoginSessionBinding, Long?>()
        val attempted = mutableMapOf<AccountLoginSessionBinding, Long>()
        val primed = mutableMapOf<AccountLoginSessionBinding, Long>()
        override fun pending(binding: AccountLoginSessionBinding) = pending[binding]
        override fun savePending(binding: AccountLoginSessionBinding, value: Long?) { pending[binding] = value }
        override fun attempted(binding: AccountLoginSessionBinding) = attempted[binding]
        override fun claim(binding: AccountLoginSessionBinding, resetMillis: Long): Boolean {
            if (attempted[binding] == resetMillis) return false
            attempted[binding] = resetMillis
            return true
        }
        override fun recordPrimed(binding: AccountLoginSessionBinding, resetMillis: Long) { primed[binding] = resetMillis }
    }
    @Test fun watchesFutureBoundaryThenAttemptsOnceEvenWhenTheAttemptFails() {
        val state = State(); val runtime = ExactClaudeSessionPrimeRuntime(state); val id = binding(); var calls = 0
        val prime: (ClaudeSessionPrimer.Credentials, () -> Boolean) -> ClaudeSessionPrimer.Result = { _, _ ->
            calls++; ClaudeSessionPrimer.Result(false, "failed") }
        assertNull(runtime.run(id, snapshot(), credentials, { true }, reset.minusSeconds(1), prime))
        assertNotNull(runtime.run(id, snapshot(null), credentials, { true }, reset.plusSeconds(1), prime))
        assertNull(runtime.run(id, snapshot(null), credentials, { true }, reset.plusSeconds(2), prime))
        assertEquals(1, calls); assertNull(state.primed[id])
    }
    @Test fun accountsAndSessionRevisionsNeverSharePendingState() {
        val state = State(); val runtime = ExactClaudeSessionPrimeRuntime(state)
        runtime.run(binding(), snapshot(), credentials, { true }, reset.minusSeconds(1))
        assertNull(runtime.run(binding(2), snapshot(null), credentials, { true }, reset.plusSeconds(1)))
        assertNull(runtime.run(binding(revision = 2), snapshot(null), credentials, { true }, reset.plusSeconds(1)))
        assertEquals(1, state.pending.size)
    }
    @Test fun pastBoundaryWithoutPriorObservationDoesNotSend() {
        val state = State(); val runtime = ExactClaudeSessionPrimeRuntime(state)
        assertNull(runtime.run(binding(), snapshot(), credentials, { true }, reset.plusSeconds(1)))
        assertTrue(state.attempted.isEmpty())
    }
    @Test fun revokedAuthorizationOrStaleSnapshotDoesNotClaim() {
        val state = State(); val runtime = ExactClaudeSessionPrimeRuntime(state)
        state.pending[binding()] = reset.toEpochMilli()
        assertNull(runtime.run(binding(), snapshot(null), credentials, { false }, reset.plusSeconds(1)))
        assertNull(runtime.run(binding(), snapshot(null, ProviderConnectionState.STALE), credentials, { true }, reset.plusSeconds(1)))
        assertTrue(state.attempted.isEmpty())
    }
    @Test fun authorizationRevokedDuringRequestDoesNotRecordSuccess() {
        val state = State(); val runtime = ExactClaudeSessionPrimeRuntime(state); var allowed = true
        state.pending[binding()] = reset.toEpochMilli()
        runtime.run(binding(), snapshot(null), credentials, { allowed }, reset.plusSeconds(1)) { _, _ ->
            allowed = false; ClaudeSessionPrimer.Result(true, "ok") }
        assertTrue(state.primed.isEmpty()); assertEquals(reset.toEpochMilli(), state.attempted[binding()])
    }
}
