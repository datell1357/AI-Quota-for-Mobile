package com.aiquota.mobile.widget

import java.io.File
import org.junit.Assert.assertTrue
import org.junit.Test

class DashboardWidgetImmediateRendererTest {
    @Test
    fun dashboardImmediateRendererPushesAppWidgetIdScopedRemoteViews() {
        val source = File("src/main/java/com/aiquota/mobile/widget/DashboardWidgetImmediateRenderer.kt")
        val text = if (source.exists()) source.readText() else ""

        assertTrue(
            "Dashboard immediate renderer should exist and push RemoteViews directly to the configured appWidgetId.",
            source.exists() &&
                text.contains("RemoteViews") &&
                text.contains("AppWidgetManager.getInstance") &&
                text.contains("updateAppWidget(appWidgetId") &&
                text.contains("dashboardWidgetPayload(") &&
                text.contains("unifiedWidgetLayoutSpec(") &&
                text.contains("dashboardWidgetProviderOrder(appWidgetId)") &&
                text.contains("dashboardWidgetHiddenProviders(appWidgetId)")
        )
    }

    @Test
    fun dashboardImmediateRendererReadsCacheOnlyAndDoesNotStartProviderWork() {
        val source = File("src/main/java/com/aiquota/mobile/widget/DashboardWidgetImmediateRenderer.kt")
        val text = if (source.exists()) source.readText() else ""

        assertTrue(
            "Dashboard immediate renderer source should exist so widget-only guardrails can be enforced.",
            source.exists()
        )
        assertTrue(text.contains("WidgetSnapshotCache(context).read()"))
        listOf(
            "ProviderBackgroundRefreshService",
            "LocalUsageRepository",
            "WidgetSnapshotCache.write",
            "WidgetAutoRefreshStarter",
            "UsageSurfaceRefresher.refresh("
        ).forEach { forbidden ->
            assertTrue("Dashboard immediate renderer must not reference $forbidden.", !text.contains(forbidden))
        }
    }
}
