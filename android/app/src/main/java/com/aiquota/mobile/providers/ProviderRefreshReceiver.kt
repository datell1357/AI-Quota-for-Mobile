package com.aiquota.mobile.providers

import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import androidx.core.content.ContextCompat
import com.aiquota.mobile.BuildConfig
import com.aiquota.mobile.local.LocalUsageRepository
import com.aiquota.mobile.widget.ProviderWidgetActionRequest
import com.aiquota.mobile.widget.ProviderWidgetActionResolution
import com.aiquota.mobile.widget.WidgetRefreshActions
import com.aiquota.mobile.widget.resolveProviderWidgetAction
import com.aiquota.mobile.widget.WidgetRefreshFeedback

class ProviderRefreshReceiver : BroadcastReceiver() {
    override fun onReceive(context: Context, intent: Intent?) {
        if (intent?.action != ProviderBackgroundRefreshService.ACTION_REFRESH) return
        val appContext = context.applicationContext
        val appWidgetId = intent.getIntExtra(
            WidgetRefreshActions.EXTRA_APP_WIDGET_ID,
            android.appwidget.AppWidgetManager.INVALID_APPWIDGET_ID
        )
        val resolution = resolveProviderWidgetAction(
            appContext,
            ProviderWidgetActionRequest(
                appWidgetId,
                intent.getStringExtra(WidgetRefreshActions.EXTRA_PROVIDER_ID),
                intent.getStringExtra(WidgetRefreshActions.EXTRA_PROVIDER_ACCOUNT_ID),
                BuildConfig.MULTI_ACCOUNT_ENABLED,
            ),
        )
        val serviceIntent = when (resolution) {
            ProviderWidgetActionResolution.Unified ->
                ProviderBackgroundRefreshService.createRefreshIntent(
                    appContext,
                    providerId = null,
                    appWidgetId = appWidgetId,
                )
            is ProviderWidgetActionResolution.LegacyProvider ->
                ProviderBackgroundRefreshService.createRefreshIntent(appContext, resolution.providerId, appWidgetId)
            is ProviderWidgetActionResolution.Exact ->
                ProviderBackgroundRefreshService.createRefreshIntent(appContext, resolution.accountId, appWidgetId)
            ProviderWidgetActionResolution.Rejected -> {
                WidgetRefreshFeedback.clearWidgetRefresh(appContext, appWidgetId)
                return
            }
        }
        runCatching {
            ContextCompat.startForegroundService(appContext, serviceIntent)
        }.onFailure {
            WidgetRefreshFeedback.clearWidgetRefresh(appContext, appWidgetId)
            UsageSurfaceRefresher.refresh(appContext, LocalUsageRepository(appContext))
        }
    }
}
