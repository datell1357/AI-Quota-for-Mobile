package com.aiquota.mobile.widget

import android.appwidget.AppWidgetManager
import android.content.Context
import android.util.Log
import androidx.glance.appwidget.GlanceAppWidgetManager
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.SupervisorJob
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch

object DashboardWidgetImmediateUpdater {
    private const val TAG = "DashboardWidgetImmediateUpdater"
    private val scope = CoroutineScope(SupervisorJob() + Dispatchers.Main)

    fun schedule(context: Context, appWidgetId: Int) {
        if (appWidgetId == AppWidgetManager.INVALID_APPWIDGET_ID) return
        val appContext = context.applicationContext
        scope.launch {
            dashboardWidgetImmediateRetryDelaysMs().forEach { delayMs ->
                if (delayMs > 0L) delay(delayMs)
                runCatching {
                    val glanceId = GlanceAppWidgetManager(appContext).getGlanceIdBy(appWidgetId)
                    AIQuotaUnifiedGlanceWidget().update(appContext, glanceId)
                }.onFailure { error ->
                    Log.d(TAG, "Dashboard widget immediate update skipped for $appWidgetId", error)
                }
            }
        }
    }
}

internal fun dashboardWidgetImmediateRetryDelaysMs(): LongArray {
    return longArrayOf(0L, 250L, 750L, 1_500L)
}
