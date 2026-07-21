package com.aiquota.mobile.providers

import com.aiquota.mobile.local.ProviderConnectionState
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.local.ProviderRefreshState
import com.aiquota.mobile.local.ProviderUsageSnapshot
import java.time.Instant

/**
 * Result of evaluating whether to auto-prime the Claude 5-hour window.
 *
 * @param pendingResetMillis the reset boundary to persist and keep watching (null clears it).
 * @param primeTargetMillis  non-null means prime now for this boundary, then record it as primed.
 */
data class ClaudeSessionPrimeDecision(
    val pendingResetMillis: Long?,
    val primeTargetMillis: Long?
)

/**
 * Decides whether to send a throwaway Claude chat message so a fresh 5-hour cycle starts
 * as soon as the previous window resets.
 *
 * Claude's 5-hour window is a rolling window that only exists while it is being used: once
 * it lapses, the API stops reporting a past `resets_at` (it goes null, or re-anchors to the
 * future the moment a new message is sent). So we cannot detect "the reset already passed"
 * from the current snapshot. Instead we remember the last-known future reset time and prime
 * when the wall clock crosses it — matching how the reference app anchors the next cycle.
 */
object ClaudeSessionPrimePolicy {
    /** Canonical key of the Claude 5-hour line produced by ProviderUsageNormalizer. */
    const val FIVE_HOUR_LINE_KEY = "claude:session"

    fun evaluate(
        snapshot: ProviderUsageSnapshot?,
        enabled: Boolean,
        storedPendingMillis: Long?,
        lastPrimedMillis: Long?,
        now: Instant = Instant.now()
    ): ClaudeSessionPrimeDecision {
        val keepWatching = ClaudeSessionPrimeDecision(storedPendingMillis, null)
        if (!enabled) return keepWatching
        if (snapshot == null || snapshot.providerId != ProviderId.CLAUDE) return keepWatching
        if (snapshot.refreshState == ProviderRefreshState.REFRESHING) return keepWatching
        if (snapshot.connectionState != ProviderConnectionState.CONNECTED &&
            snapshot.connectionState != ProviderConnectionState.STALE
        ) {
            return keepWatching
        }

        val observedReset = snapshot.lines
            .firstOrNull { it.key == FIVE_HOUR_LINE_KEY }
            ?.let { ProviderResetRefreshPolicy.resetInstant(it.resetsAt) }
            ?.toEpochMilli()
        // Prefer a freshly observed reset; otherwise keep watching the one we already recorded.
        val pending = observedReset ?: storedPendingMillis ?: return ClaudeSessionPrimeDecision(null, null)

        if (now.toEpochMilli() < pending) return ClaudeSessionPrimeDecision(pending, null)
        if (pending == lastPrimedMillis) return ClaudeSessionPrimeDecision(pending, null)
        return ClaudeSessionPrimeDecision(pending, pending)
    }
}
