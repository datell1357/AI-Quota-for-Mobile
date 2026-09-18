package com.aiquota.mobile.providers

import com.aiquota.mobile.accounts.AccountLoginSessionBinding
import com.aiquota.mobile.local.ProviderConnectionState
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.local.ProviderUsageSnapshot
import java.time.Instant

internal interface ExactClaudePrimeState {
    fun pending(binding: AccountLoginSessionBinding): Long?
    fun savePending(binding: AccountLoginSessionBinding, value: Long?)
    fun attempted(binding: AccountLoginSessionBinding): Long?
    fun claim(binding: AccountLoginSessionBinding, resetMillis: Long): Boolean
    fun recordPrimed(binding: AccountLoginSessionBinding, resetMillis: Long)
}

/** Restored from production 53: one attempt per account session and reset boundary. */
internal class ExactClaudeSessionPrimeRuntime(private val state: ExactClaudePrimeState) {
    fun run(
        binding: AccountLoginSessionBinding,
        snapshot: ProviderUsageSnapshot,
        credentials: ClaudeSessionPrimer.Credentials,
        authorized: () -> Boolean,
        now: Instant = Instant.now(),
        prime: (ClaudeSessionPrimer.Credentials, () -> Boolean) -> ClaudeSessionPrimer.Result =
            { value, guard -> ClaudeSessionPrimer.prime(value, guard) },
    ): ClaudeSessionPrimer.Result? {
        if (binding.accountId.providerId != ProviderId.CLAUDE || !authorized() ||
            snapshot.connectionState != ProviderConnectionState.CONNECTED) return null
        val pending = state.pending(binding)
        val decision = ClaudeSessionPrimePolicy.evaluate(snapshot, true, pending, state.attempted(binding), now)
        if (pending == null && (decision.pendingResetMillis == null || decision.pendingResetMillis <= now.toEpochMilli())) return null
        state.savePending(binding, decision.pendingResetMillis)
        val target = decision.primeTargetMillis ?: return null
        if (!authorized() || !state.claim(binding, target)) return null
        val result = prime(credentials, authorized)
        if (result.ok && authorized()) state.recordPrimed(binding, target)
        return result
    }
}
