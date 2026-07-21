package com.aiquota.mobile.providers

import com.aiquota.mobile.local.ProviderConnectionState
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.local.ProviderRefreshState
import com.aiquota.mobile.local.ProviderUsageLine
import com.aiquota.mobile.local.ProviderUsageSnapshot
import java.time.Instant
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Test

class ClaudeSessionPrimePolicyTest {
    private val resetAt = Instant.parse("2026-05-21T00:00:00Z")

    @Test
    fun watchesFutureResetWithoutPrimingYet() {
        val decision = ClaudeSessionPrimePolicy.evaluate(
            snapshot = claudeSnapshot(resetsAt = resetAt.toString()),
            enabled = true,
            storedPendingMillis = null,
            lastPrimedMillis = null,
            now = resetAt.minusSeconds(60)
        )

        assertEquals(resetAt.toEpochMilli(), decision.pendingResetMillis)
        assertNull(decision.primeTargetMillis)
    }

    @Test
    fun primesWhenWallClockCrossesTheWatchedReset() {
        val decision = ClaudeSessionPrimePolicy.evaluate(
            snapshot = claudeSnapshot(resetsAt = resetAt.toString()),
            enabled = true,
            storedPendingMillis = resetAt.toEpochMilli(),
            lastPrimedMillis = null,
            now = resetAt.plusSeconds(1)
        )

        assertEquals(resetAt.toEpochMilli(), decision.primeTargetMillis)
    }

    @Test
    fun primesUsingStoredPendingEvenWhenApiNoLongerReportsReset() {
        // Window lapsed: the 5-hour line no longer carries a reset timestamp.
        val decision = ClaudeSessionPrimePolicy.evaluate(
            snapshot = claudeSnapshot(resetsAt = null),
            enabled = true,
            storedPendingMillis = resetAt.toEpochMilli(),
            lastPrimedMillis = null,
            now = resetAt.plusSeconds(1)
        )

        assertEquals(resetAt.toEpochMilli(), decision.primeTargetMillis)
    }

    @Test
    fun doesNotPrimeSameBoundaryTwice() {
        val decision = ClaudeSessionPrimePolicy.evaluate(
            snapshot = claudeSnapshot(resetsAt = resetAt.toString()),
            enabled = true,
            storedPendingMillis = resetAt.toEpochMilli(),
            lastPrimedMillis = resetAt.toEpochMilli(),
            now = resetAt.plusSeconds(1)
        )

        assertNull(decision.primeTargetMillis)
    }

    @Test
    fun disabledKeepsStoredPendingAndNeverPrimes() {
        val decision = ClaudeSessionPrimePolicy.evaluate(
            snapshot = claudeSnapshot(resetsAt = resetAt.toString()),
            enabled = false,
            storedPendingMillis = 123L,
            lastPrimedMillis = null,
            now = resetAt.plusSeconds(1)
        )

        assertEquals(123L, decision.pendingResetMillis)
        assertNull(decision.primeTargetMillis)
    }

    @Test
    fun ignoresWeeklyLineForWatching() {
        val snapshot = ProviderUsageSnapshot(
            providerId = ProviderId.CLAUDE,
            connectionState = ProviderConnectionState.CONNECTED,
            lines = listOf(
                ProviderUsageLine(key = "claude:weekly", label = "Claude Weekly", resetsAt = resetAt.toString())
            )
        )

        val decision = ClaudeSessionPrimePolicy.evaluate(
            snapshot = snapshot,
            enabled = true,
            storedPendingMillis = null,
            lastPrimedMillis = null,
            now = resetAt.plusSeconds(1)
        )

        assertNull(decision.pendingResetMillis)
        assertNull(decision.primeTargetMillis)
    }

    @Test
    fun doesNotPrimeWhileRefreshingOrDisconnected() {
        val refreshing = ClaudeSessionPrimePolicy.evaluate(
            snapshot = claudeSnapshot(resetsAt = resetAt.toString(), refreshState = ProviderRefreshState.REFRESHING),
            enabled = true,
            storedPendingMillis = resetAt.toEpochMilli(),
            lastPrimedMillis = null,
            now = resetAt.plusSeconds(1)
        )
        assertNull(refreshing.primeTargetMillis)

        val disconnected = ClaudeSessionPrimePolicy.evaluate(
            snapshot = claudeSnapshot(resetsAt = resetAt.toString(), state = ProviderConnectionState.INTERACTIVE_AUTH_REQUIRED),
            enabled = true,
            storedPendingMillis = resetAt.toEpochMilli(),
            lastPrimedMillis = null,
            now = resetAt.plusSeconds(1)
        )
        assertNull(disconnected.primeTargetMillis)
    }

    private fun claudeSnapshot(
        resetsAt: String?,
        state: ProviderConnectionState = ProviderConnectionState.CONNECTED,
        refreshState: ProviderRefreshState = ProviderRefreshState.IDLE
    ): ProviderUsageSnapshot {
        return ProviderUsageSnapshot(
            providerId = ProviderId.CLAUDE,
            connectionState = state,
            refreshState = refreshState,
            lines = listOf(
                ProviderUsageLine(
                    key = "claude:session",
                    label = "Claude Session",
                    remainingPercent = 0.5f,
                    resetsAt = resetsAt
                )
            )
        )
    }
}
