package com.aiquota.mobile.widget

import java.io.File
import org.junit.Assert.assertTrue
import org.junit.Test

class DashboardWidgetImmediateUpdaterTest {
    @Test
    fun dashboardImmediateUpdaterUsesAppWidgetIdScopedGlanceUpdateWithBoundedRetries() {
        val source = File("src/main/java/com/aiquota/mobile/widget/DashboardWidgetImmediateUpdater.kt")
        val text = if (source.exists()) source.readText() else ""

        assertTrue(
            "Dashboard configuration should have a dashboard-specific immediate updater using the appWidgetId-scoped Glance route.",
            source.exists() &&
                text.contains("GlanceAppWidgetManager(appContext).getGlanceIdBy(appWidgetId)") &&
                text.contains("AIQuotaUnifiedGlanceWidget().update(appContext, glanceId)")
        )

        val delays = retryDelaysIn(text)
        assertTrue(
            "Dashboard immediate retries should start immediately and stay short enough for configuration-screen feedback.",
            delays.contains(0L) && delays.isNotEmpty() && delays.all { it <= 1_500L }
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

    private fun retryDelaysIn(source: String): List<Long> {
        val body = Regex("longArrayOf\\(([^)]*)\\)")
            .find(source)
            ?.groupValues
            ?.get(1)
            ?: return emptyList()
        return Regex("""\d[\d_]*L?""")
            .findAll(body)
            .map { it.value.removeSuffix("L").replace("_", "").toLong() }
            .toList()
    }
}
