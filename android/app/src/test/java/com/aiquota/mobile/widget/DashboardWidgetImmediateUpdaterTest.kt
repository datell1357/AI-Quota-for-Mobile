package com.aiquota.mobile.widget

import java.io.File
import org.junit.Assert.assertTrue
import org.junit.Test

class DashboardWidgetImmediateUpdaterTest {
    @Test
    fun dashboardImmediateUpdaterRendersDirectRemoteViewsWithoutImmediateGlanceOverwrite() {
        val source = File("src/main/java/com/aiquota/mobile/widget/DashboardWidgetImmediateUpdater.kt")
        val text = if (source.exists()) source.readText() else ""
        val directIndex = text.indexOf("DashboardWidgetImmediateRenderer.render(appContext, appWidgetId)")

        assertTrue(
            "Dashboard configuration should push direct RemoteViews for the configured appWidgetId.",
            source.exists() &&
                directIndex >= 0
        )
        assertTrue(
            "Dashboard immediate updater must not overwrite the direct RemoteViews payload with an immediate Glance retry.",
            !text.contains("GlanceAppWidgetManager") &&
                !text.contains("AIQuotaUnifiedGlanceWidget().update")
        )
    }

    @Test
    fun dashboardImmediateUpdaterDoesNotStartProviderRefreshOrRewriteSnapshots() {
        val source = File("src/main/java/com/aiquota/mobile/widget/DashboardWidgetImmediateUpdater.kt")
        val text = if (source.exists()) source.readText() else ""

        assertTrue(
            "Dashboard immediate updater source should exist so widget-only guardrails can be enforced.",
            source.exists()
        )
        listOf(
            "WidgetAutoRefreshStarter",
            "ProviderBackgroundRefreshService",
            "LocalUsageRepository",
            "WidgetSnapshotCache.write",
            "UsageSurfaceRefresher.refresh("
        ).forEach { forbidden ->
            assertTrue("Dashboard immediate updater must not reference $forbidden.", !text.contains(forbidden))
        }
    }
}
