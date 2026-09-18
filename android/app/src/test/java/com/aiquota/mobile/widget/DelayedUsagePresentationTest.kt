package com.aiquota.mobile.widget

import com.aiquota.mobile.local.*
import com.aiquota.mobile.notification.buildUsageNotificationContent
import com.aiquota.mobile.providers.ProviderSnapshotCodec
import com.aiquota.mobile.providers.ProviderRefreshPlan
import com.aiquota.mobile.providers.runRefreshCycleResiliently
import kotlinx.coroutines.runBlocking
import org.junit.Assert.*
import org.junit.Test
import org.json.JSONObject
import java.time.Instant
import java.util.Locale

class DelayedUsagePresentationTest {
    private val now = Instant.parse("2026-09-15T00:20:00Z")

    @Test fun appWidgetsAndNotificationsDistinguishOldUsageWithoutChangingRatiosOrAccountOrder() {
        val previous = Locale.getDefault()
        Locale.setDefault(Locale.KOREAN)
        try {
            val old = snapshot(ProviderId.CLAUDE, now.minusSeconds(601))
            val fresh = snapshot(ProviderId.CODEX, now)
            val json = ProviderSnapshotCodec.encode(listOf(old, fresh))
            assertEquals(ProviderConnectionState.STALE, old.usageDisplayConnectionState(now))
            assertEquals(ProviderConnectionState.CONNECTED, fresh.usageDisplayConnectionState(now))
            val widgets = parseUnifiedWidgetPayload(json, now)
            assertEquals(listOf("claude", "codex"), widgets.gauges.map { it.providerId })
            assertTrue(widgets.gauges[0].isStale)
            assertFalse(widgets.gauges[1].isStale)
            assertEquals(0.8f, widgets.gauges[0].remainingRatio)
            assertEquals("STALE", widgets.providers[0].status)
            assertTrue(widgets.providers[0].lines.single().remainingText.endsWith(" · 지연"))
            assertFalse(widgets.providers[1].lines.single().remainingText.contains("지연"))
            assertTrue(parseWidgetProviderGauges(json, now).first().isStale)
            val notification = buildUsageNotificationContent(json, now)
            assertTrue(notification.gaugeRows.first().compactRemainingText.endsWith(" · 지연"))
            assertTrue(notification.gaugeRows.first().remainingText.endsWith(" · 지연"))
            assertFalse(notification.gaugeRows.last().remainingText.contains("지연"))
            assertEquals(ProviderConnectionState.CONNECTED, ProviderSnapshotCodec.decode(json).first().connectionState)
            val providers = JSONObject(json).getJSONArray("providers")
            assertEquals(old.updatedAt, providers.getJSONObject(0).getString("updatedAt"))
        } finally { Locale.setDefault(previous) }
    }

    @Test fun failureCountDoesNotExtendTheSixtySecondAutomaticInterval(): Unit = runBlocking {
        val scheduled = mutableListOf<Long>()
        repeat(12) {
            runRefreshCycleResiliently(
                runCycle = { error("Temporary collection failure") },
                isRunning = { true }, hasPendingManualRefresh = { false },
                automaticDelayMillis = { ProviderRefreshPlan.nextAutoRefreshDelayMillis(0) },
                schedule = scheduled::add, onFailure = {})
        }
        assertEquals(List(12) { 60_000L }, scheduled)
    }

    private fun snapshot(provider: ProviderId, collected: Instant) = ProviderUsageSnapshot(provider,
        connectionState = ProviderConnectionState.CONNECTED, updatedAt = collected.toString(),
        lines = listOf(ProviderUsageLine("Session", 0.8f, "80% left", key = "session")))
}
