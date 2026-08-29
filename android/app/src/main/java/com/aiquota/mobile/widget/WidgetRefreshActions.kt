package com.aiquota.mobile.widget

import android.appwidget.AppWidgetManager
import android.content.Context
import android.content.Intent
import com.aiquota.mobile.accounts.ProviderAccountId
import com.aiquota.mobile.accounts.ProviderAccountIdStorageCodec
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.providers.ProviderBackgroundRefreshService

object WidgetRefreshActions {
    const val ACTION_WIDGET_REFRESH = "u.sage.widget.action.REFRESH"
    const val EXTRA_APP_WIDGET_ID = "com.aiquota.mobile.widget.extra.APP_WIDGET_ID"
    const val EXTRA_PROVIDER_ID = "com.aiquota.mobile.widget.extra.PROVIDER_ID"
    const val EXTRA_PROVIDER_ACCOUNT_ID = "com.aiquota.mobile.widget.extra.PROVIDER_ACCOUNT_ID"

    fun internalActionForWidgetAction(action: String?): String? {
        return if (action == ACTION_WIDGET_REFRESH) {
            ProviderBackgroundRefreshService.ACTION_REFRESH
        } else {
            null
        }
    }

    fun widgetRefreshIntent(
        context: Context,
        appWidgetId: Int = AppWidgetManager.INVALID_APPWIDGET_ID,
        providerId: ProviderId? = null,
    ): Intent = Intent(context, WidgetManualRefreshReceiver::class.java)
        .setAction(ACTION_WIDGET_REFRESH)
        .putExtra(EXTRA_APP_WIDGET_ID, appWidgetId)
        .apply {
            providerId?.let { putExtra(EXTRA_PROVIDER_ID, it.storageId) }
        }

    fun widgetRefreshIntent(
        context: Context,
        appWidgetId: Int,
        accountId: ProviderAccountId,
    ): Intent = Intent(context, WidgetManualRefreshReceiver::class.java)
        .setAction(ACTION_WIDGET_REFRESH)
        .setData(widgetActionData("refresh", appWidgetId, accountId))
        .putExtra(EXTRA_APP_WIDGET_ID, appWidgetId)
        .putExtra(EXTRA_PROVIDER_ID, accountId.providerId.storageId)
        .putExtra(EXTRA_PROVIDER_ACCOUNT_ID, ProviderAccountIdStorageCodec.encode(accountId))

    fun internalRefreshIntent(context: Context, sourceIntent: Intent? = null): Intent =
        Intent(context, com.aiquota.mobile.providers.ProviderRefreshReceiver::class.java)
            .setAction(ProviderBackgroundRefreshService.ACTION_REFRESH)
            .putExtra(
                EXTRA_APP_WIDGET_ID,
                sourceIntent?.getIntExtra(EXTRA_APP_WIDGET_ID, AppWidgetManager.INVALID_APPWIDGET_ID)
                    ?: AppWidgetManager.INVALID_APPWIDGET_ID,
            )
            .apply {
                sourceIntent?.getStringExtra(EXTRA_PROVIDER_ID)?.let { putExtra(EXTRA_PROVIDER_ID, it) }
                sourceIntent?.getStringExtra(EXTRA_PROVIDER_ACCOUNT_ID)?.let {
                    putExtra(EXTRA_PROVIDER_ACCOUNT_ID, it)
                }
            }

    fun internalRefreshIntent(
        context: Context,
        appWidgetId: Int,
        resolution: ProviderWidgetActionResolution,
    ): Intent = Intent(context, com.aiquota.mobile.providers.ProviderRefreshReceiver::class.java)
        .setAction(ProviderBackgroundRefreshService.ACTION_REFRESH)
        .putExtra(EXTRA_APP_WIDGET_ID, appWidgetId)
        .apply {
            when (resolution) {
                ProviderWidgetActionResolution.Unified -> Unit
                is ProviderWidgetActionResolution.LegacyProvider ->
                    putExtra(EXTRA_PROVIDER_ID, resolution.providerId.storageId)
                is ProviderWidgetActionResolution.Exact -> {
                    putExtra(EXTRA_PROVIDER_ID, resolution.accountId.providerId.storageId)
                    putExtra(EXTRA_PROVIDER_ACCOUNT_ID, ProviderAccountIdStorageCodec.encode(resolution.accountId))
                }
                ProviderWidgetActionResolution.Rejected -> Unit
            }
        }
}
