package com.aiquota.mobile.widget

import android.appwidget.AppWidgetManager
import android.content.Context

object DashboardWidgetImmediateUpdater {
    fun schedule(context: Context, appWidgetId: Int) {
        if (appWidgetId == AppWidgetManager.INVALID_APPWIDGET_ID) return
        val appContext = context.applicationContext
        val providerClassName = AppWidgetManager.getInstance(appContext)
            .getAppWidgetInfo(appWidgetId)
            ?.provider
            ?.className
        if (providerClassName != AIQuotaUnifiedGlanceWidgetReceiver::class.java.name) return
        DashboardWidgetImmediateRenderer.render(appContext, appWidgetId)
    }
}
