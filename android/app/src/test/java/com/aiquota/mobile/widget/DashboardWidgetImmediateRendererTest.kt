package com.aiquota.mobile.widget

import java.io.File
import org.junit.Assert.assertTrue
import org.junit.Test

class DashboardWidgetImmediateRendererTest {
    @Test
    fun dashboardReceiverKeepsManifestComponentButUsesRemoteViewsProviderOwnership() {
        val manifest = File("src/main/AndroidManifest.xml").readText()
        val source = File("src/main/java/com/aiquota/mobile/widget/AIQuotaGlanceWidget.kt").readText()
        val receiverBody = source.substringAfter("class AIQuotaUnifiedGlanceWidgetReceiver")
            .substringBefore("class AIQuotaLargeGlanceWidget")

        assertTrue(manifest.contains("android:name=\".widget.AIQuotaUnifiedGlanceWidgetReceiver\""))
        assertTrue(
            "Dashboard receiver should keep the component name while becoming a RemoteViews AppWidgetProvider.",
            source.contains("class AIQuotaUnifiedGlanceWidgetReceiver : AppWidgetProvider()") &&
                !receiverBody.contains("GlanceAppWidgetReceiver") &&
                !receiverBody.contains("GlanceAppWidget")
        )
        assertTrue(
            "Dashboard receiver should render dashboard RemoteViews on widget update and resize.",
            receiverBody.contains("DashboardWidgetImmediateRenderer.render(context, appWidgetId)") &&
                receiverBody.contains("DashboardWidgetImmediateRenderer.updateAll(context)")
        )
    }

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
    fun dashboardImmediateRendererCanUpdateAllDashboardComponentIds() {
        val source = File("src/main/java/com/aiquota/mobile/widget/DashboardWidgetImmediateRenderer.kt")
        val text = if (source.exists()) source.readText() else ""
        val updateAllBody = text.substringAfter("fun updateAll").substringBefore("private fun responsiveViews")

        assertTrue(
            "Dashboard RemoteViews renderer should own global dashboard updates by component.",
            updateAllBody.contains("ComponentName(appContext, AIQuotaUnifiedGlanceWidgetReceiver::class.java)") &&
                updateAllBody.contains("getAppWidgetIds(component)") &&
                updateAllBody.contains("render(appContext, appWidgetId)")
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

    @Test
    fun dashboardImmediateWidgetDoesNotExposeManualRefreshAffordance() {
        val layout = File("src/main/res/layout/ai_quota_widget_dashboard_immediate.xml").readText()
        val renderer = File("src/main/java/com/aiquota/mobile/widget/DashboardWidgetImmediateRenderer.kt").readText()

        assertTrue(
            "Dashboard layout must not declare dashboard_immediate_refresh.",
            !layout.contains("dashboard_immediate_refresh")
        )
        assertTrue(
            "Dashboard renderer must not bind dashboard_immediate_refresh.",
            !renderer.contains("dashboard_immediate_refresh")
        )
        assertTrue(
            "Dashboard renderer must not call the widget refresh action.",
            !renderer.contains("WidgetRefreshActions.widgetRefreshIntent(context, appWidgetId)")
        )
        assertTrue(
            "Dashboard root click should still open home.",
            renderer.contains("setOnClickPendingIntent(R.id.dashboard_immediate_root")
        )
    }

    @Test
    fun firstDashboardGaugeUsesSameWidthAsOtherRows() {
        val layout = File("src/main/res/layout/ai_quota_widget_dashboard_immediate.xml").readText()
        val firstRow = layout.substringAfter("android:id=\"@+id/dashboard_immediate_row_0\"")
            .substringBefore("android:id=\"@+id/dashboard_immediate_row_1\"")

        assertTrue(firstRow.contains("android:layout_width=\"match_parent\""))
        assertTrue(!firstRow.contains("android:paddingEnd"))
    }
}
