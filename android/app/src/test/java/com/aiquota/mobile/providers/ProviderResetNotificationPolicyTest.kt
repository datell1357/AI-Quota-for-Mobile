package com.aiquota.mobile.providers

import com.aiquota.mobile.local.ProviderConnectionState
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.local.ProviderRefreshState
import com.aiquota.mobile.local.ProviderUsageLine
import com.aiquota.mobile.local.ProviderUsageSnapshot
import java.time.Instant
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class ProviderResetNotificationPolicyTest {
    private val resetAt = Instant.parse("2026-05-21T00:00:00Z")
    private val enabledAll: (ProviderId) -> Boolean = { true }

    @Test
    fun watchesFutureResetWithoutNotifying() {
        val result = ProviderResetNotificationPolicy.evaluate(
            snapshots = listOf(claudeSnapshot(resetsAt = resetAt.toString())),
            isEnabled = enabledAll,
            storedPending = emptyMap(),
            lastNotified = emptyMap(),
            now = resetAt.minusSeconds(60)
        )

        assertTrue(result.notifications.isEmpty())
        assertEquals(resetAt.toEpochMilli(), result.pending["claude:claude:session"])
    }

    @Test
    fun notifiesOnceWhenWallClockCrossesWatchedReset() {
        val pending = mapOf("claude:claude:session" to resetAt.toEpochMilli())
        val result = ProviderResetNotificationPolicy.evaluate(
            snapshots = listOf(claudeSnapshot(resetsAt = resetAt.toString())),
            isEnabled = enabledAll,
            storedPending = pending,
            lastNotified = emptyMap(),
            now = resetAt.plusSeconds(1)
        )

        assertEquals(1, result.notifications.size)
        assertEquals("claude:session", result.notifications.single().lineKey)
        assertEquals(resetAt.toEpochMilli(), result.notified["claude:claude:session"])

        // A subsequent cycle must not notify again for the same reset.
        val second = ProviderResetNotificationPolicy.evaluate(
            snapshots = listOf(claudeSnapshot(resetsAt = resetAt.toString())),
            isEnabled = enabledAll,
            storedPending = result.pending,
            lastNotified = result.notified,
            now = resetAt.plusSeconds(2)
        )
        assertTrue(second.notifications.isEmpty())
    }

    @Test
    fun suppressesNotificationForResetAlreadyPastOnFirstObservation() {
        val result = ProviderResetNotificationPolicy.evaluate(
            snapshots = listOf(claudeSnapshot(resetsAt = resetAt.toString())),
            isEnabled = enabledAll,
            storedPending = emptyMap(),
            lastNotified = emptyMap(),
            now = resetAt.plusSeconds(5)
        )

        assertTrue(result.notifications.isEmpty())
        assertEquals(resetAt.toEpochMilli(), result.notified["claude:claude:session"])
    }

    @Test
    fun notifiesForStoredResetEvenWhenApiDropsResetsAt() {
        // Window lapsed: the line no longer carries a reset timestamp.
        val pending = mapOf("claude:claude:session" to resetAt.toEpochMilli())
        val result = ProviderResetNotificationPolicy.evaluate(
            snapshots = listOf(claudeSnapshot(resetsAt = null)),
            isEnabled = enabledAll,
            storedPending = pending,
            lastNotified = emptyMap(),
            now = resetAt.plusSeconds(1)
        )

        assertEquals(1, result.notifications.size)
    }

    @Test
    fun subSecondJitterDoesNotReNotify() {
        val jittered = "2026-05-21T00:00:00.481230Z"
        val notified = mapOf("claude:claude:session" to resetAt.toEpochMilli())
        val pending = mapOf("claude:claude:session" to resetAt.toEpochMilli())
        val result = ProviderResetNotificationPolicy.evaluate(
            snapshots = listOf(claudeSnapshot(resetsAt = jittered)),
            isEnabled = enabledAll,
            storedPending = pending,
            lastNotified = notified,
            now = resetAt.plusSeconds(30)
        )

        assertTrue(result.notifications.isEmpty())
    }

    @Test
    fun disabledProviderIsNotNotified() {
        val pending = mapOf("claude:claude:session" to resetAt.toEpochMilli())
        val result = ProviderResetNotificationPolicy.evaluate(
            snapshots = listOf(claudeSnapshot(resetsAt = resetAt.toString())),
            isEnabled = { false },
            storedPending = pending,
            lastNotified = emptyMap(),
            now = resetAt.plusSeconds(1)
        )

        assertTrue(result.notifications.isEmpty())
    }

    @Test
    fun weeklyLineNotifiesIndependently() {
        val snapshot = ProviderUsageSnapshot(
            providerId = ProviderId.CLAUDE,
            connectionState = ProviderConnectionState.CONNECTED,
            lines = listOf(
                ProviderUsageLine(key = "claude:session", label = "Claude Session", resetsAt = resetAt.toString()),
                ProviderUsageLine(key = "claude:weekly", label = "Claude Weekly", resetsAt = resetAt.toString())
            )
        )
        val pending = mapOf(
            "claude:claude:session" to resetAt.toEpochMilli(),
            "claude:claude:weekly" to resetAt.toEpochMilli()
        )
        val result = ProviderResetNotificationPolicy.evaluate(
            snapshots = listOf(snapshot),
            isEnabled = enabledAll,
            storedPending = pending,
            lastNotified = emptyMap(),
            now = resetAt.plusSeconds(1)
        )

        assertEquals(setOf("claude:session", "claude:weekly"), result.notifications.map { it.lineKey }.toSet())
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
