package com.aiquota.mobile.providers

import com.aiquota.mobile.local.ProviderConnectionState
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.local.ProviderRefreshState
import com.aiquota.mobile.local.ProviderUsageLine
import com.aiquota.mobile.local.ProviderUsageSnapshot
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class ProviderUsageThresholdNotificationPolicyTest {
    private val enabledAll: (ProviderId) -> Boolean = { true }
    private val threshold5: (ProviderId) -> Int = { 5 }

    @Test
    fun aboveThresholdArmsWithoutNotifying() {
        val result = evaluate(remaining = 0.8f, storedArmed = emptyMap())

        assertTrue(result.notifications.isEmpty())
        assertEquals(true, result.armed["claude:claude:session"])
    }

    @Test
    fun droppingToThresholdNotifiesOnceAndDisarms() {
        val armed = mapOf("claude:claude:session" to true)
        val result = evaluate(remaining = 0.05f, storedArmed = armed)

        assertEquals(1, result.notifications.size)
        assertEquals(5, result.notifications.first().thresholdPercent)
        assertEquals(false, result.armed["claude:claude:session"])
    }

    @Test
    fun stayingLowDoesNotNotifyAgain() {
        val armed = mapOf("claude:claude:session" to false)
        val result = evaluate(remaining = 0.03f, storedArmed = armed)

        assertTrue(result.notifications.isEmpty())
        assertEquals(false, result.armed["claude:claude:session"])
    }

    @Test
    fun recoveringAboveThresholdReArms() {
        val armed = mapOf("claude:claude:session" to false)
        val result = evaluate(remaining = 1.0f, storedArmed = armed)

        assertTrue(result.notifications.isEmpty())
        assertEquals(true, result.armed["claude:claude:session"])
    }

    @Test
    fun firstObservationAlreadyLowIsSuppressed() {
        val result = evaluate(remaining = 0.02f, storedArmed = emptyMap())

        assertTrue(result.notifications.isEmpty())
        assertEquals(false, result.armed["claude:claude:session"])
    }

    @Test
    fun disabledProviderIsIgnored() {
        val result = ProviderUsageThresholdNotificationPolicy.evaluate(
            snapshots = listOf(snapshot(remaining = 0.05f)),
            isEnabled = { false },
            thresholdPercent = threshold5,
            storedArmed = mapOf("claude:claude:session" to true)
        )

        assertTrue(result.notifications.isEmpty())
        // Untouched providers keep their prior armed state.
        assertEquals(true, result.armed["claude:claude:session"])
    }

    @Test
    fun refreshingSnapshotIsSkipped() {
        val result = ProviderUsageThresholdNotificationPolicy.evaluate(
            snapshots = listOf(snapshot(remaining = 0.05f, refreshState = ProviderRefreshState.REFRESHING)),
            isEnabled = enabledAll,
            thresholdPercent = threshold5,
            storedArmed = mapOf("claude:claude:session" to true)
        )

        assertTrue(result.notifications.isEmpty())
    }

    @Test
    fun disconnectedSnapshotIsSkipped() {
        val result = ProviderUsageThresholdNotificationPolicy.evaluate(
            snapshots = listOf(snapshot(remaining = 0.05f, state = ProviderConnectionState.DISCONNECTED)),
            isEnabled = enabledAll,
            thresholdPercent = threshold5,
            storedArmed = mapOf("claude:claude:session" to true)
        )

        assertTrue(result.notifications.isEmpty())
    }

    @Test
    fun perLineTrackingIsIndependent() {
        val snapshot = ProviderUsageSnapshot(
            providerId = ProviderId.CLAUDE,
            connectionState = ProviderConnectionState.CONNECTED,
            refreshState = ProviderRefreshState.IDLE,
            lines = listOf(
                ProviderUsageLine(key = "session", label = "5시간 세션", remainingPercent = 0.04f),
                ProviderUsageLine(key = "weekly", label = "주간 세션", remainingPercent = 0.5f)
            )
        )
        val result = ProviderUsageThresholdNotificationPolicy.evaluate(
            snapshots = listOf(snapshot),
            isEnabled = enabledAll,
            thresholdPercent = threshold5,
            storedArmed = mapOf("claude:session" to true, "claude:weekly" to true)
        )

        assertEquals(1, result.notifications.size)
        assertEquals("session", result.notifications.first().lineKey)
        assertEquals(false, result.armed["claude:session"])
        assertEquals(true, result.armed["claude:weekly"])
    }

    private fun evaluate(
        remaining: Float,
        storedArmed: Map<String, Boolean>
    ): ProviderUsageThresholdNotificationPolicy.Result {
        return ProviderUsageThresholdNotificationPolicy.evaluate(
            snapshots = listOf(snapshot(remaining = remaining)),
            isEnabled = enabledAll,
            thresholdPercent = threshold5,
            storedArmed = storedArmed
        )
    }

    private fun snapshot(
        remaining: Float,
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
                    label = "5시간 세션",
                    remainingPercent = remaining
                )
            )
        )
    }
}
