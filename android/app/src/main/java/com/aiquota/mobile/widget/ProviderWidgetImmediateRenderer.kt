package com.aiquota.mobile.widget

import android.app.PendingIntent
import android.appwidget.AppWidgetManager
import android.content.Context
import android.os.Build
import android.util.SizeF
import android.view.View
import android.widget.RemoteViews
import androidx.core.os.BundleCompat
import com.aiquota.mobile.MainActivity
import com.aiquota.mobile.R
import com.aiquota.mobile.accounts.ProviderAccountId
import com.aiquota.mobile.local.AppTheme
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.local.ThemePreferencesRepository
import com.aiquota.mobile.ui.AppRoute
import com.aiquota.mobile.ui.provider.providerIconRes
import kotlin.math.roundToInt

object ProviderWidgetImmediateRenderer {
    fun render(context: Context, appWidgetId: Int, providerId: ProviderId) {
        if (appWidgetId == AppWidgetManager.INVALID_APPWIDGET_ID) return
        val input = ProviderWidgetRenderInput(
            providerId = providerId,
            displayName = providerId.displayName,
            snapshotJson = WidgetSnapshotCache(context).read(),
            accountId = null,
        )
        AppWidgetManager.getInstance(context).updateAppWidget(
            appWidgetId,
            responsiveViews(context, appWidgetId, input),
        )
    }

    fun render(context: Context, appWidgetId: Int, accountId: ProviderAccountId) {
        if (appWidgetId == AppWidgetManager.INVALID_APPWIDGET_ID) return
        AppWidgetManager.getInstance(context).updateAppWidget(
            appWidgetId,
            remoteViews(context, appWidgetId, accountId),
        )
    }

    internal fun remoteViews(
        context: Context,
        appWidgetId: Int,
        accountId: ProviderAccountId,
    ): RemoteViews {
        val record = ProviderWidgetCardCatalog.activeRecord(context, accountId)
            ?: return unavailableRemoteViews(context)
        val snapshotJson = providerWidgetSnapshotJson(context, accountId, record)
        val presentation = providerWidgetPresentation(record, snapshotJson)
        return responsiveViews(
            context,
            appWidgetId,
            ProviderWidgetRenderInput(
                providerId = presentation.providerId,
                displayName = presentation.alias,
                snapshotJson = snapshotJson,
                accountId = accountId,
            ),
        )
    }

    fun renderUnavailable(context: Context, appWidgetId: Int) {
        if (appWidgetId == AppWidgetManager.INVALID_APPWIDGET_ID) return
        AppWidgetManager.getInstance(context).updateAppWidget(appWidgetId, unavailableRemoteViews(context))
    }

    internal fun unavailableRemoteViews(context: Context): RemoteViews =
        RemoteViews(context.packageName, R.layout.ai_quota_widget_provider_not_configured)

    private fun responsiveViews(
        context: Context,
        appWidgetId: Int,
        input: ProviderWidgetRenderInput,
    ): RemoteViews {
        val appWidgetManager = AppWidgetManager.getInstance(context)
        val options = appWidgetManager.getAppWidgetOptions(appWidgetId)
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.S) {
            val sizes = providerWidgetSizes(options)
            if (!sizes.isNullOrEmpty()) {
                val sizeMappedViews = sizes.associateWith { size ->
                    buildViews(
                        context = context,
                        appWidgetId = appWidgetId,
                        input = input,
                        widthDp = size.width.roundToInt(),
                        heightDp = size.height.roundToInt()
                    )
                }
                return RemoteViews(sizeMappedViews)
            }
        }
        return buildViews(
            context = context,
            appWidgetId = appWidgetId,
            input = input,
            widthDp = providerWidgetResolvedHostWidthDp(options),
            heightDp = providerWidgetResolvedHostHeightDp(
                minHeightDp = options.getInt(AppWidgetManager.OPTION_APPWIDGET_MIN_HEIGHT, 0),
                maxHeightDp = options.getInt(AppWidgetManager.OPTION_APPWIDGET_MAX_HEIGHT, 0)
            )
        )
    }

    private fun providerWidgetSizes(options: android.os.Bundle): ArrayList<SizeF>? =
        BundleCompat.getParcelableArrayList(
            options,
            OPTION_APPWIDGET_SIZES,
            SizeF::class.java,
        )

    private fun buildViews(
        context: Context,
        appWidgetId: Int,
        input: ProviderWidgetRenderInput,
        widthDp: Int,
        heightDp: Int
    ): RemoteViews {
        val payload = providerWidgetPayload(
            snapshotJson = input.snapshotJson,
            providerId = input.providerId.storageId,
        )
        val cellWidth = providerWidgetCellWidthForDp(widthDp)
        val cellHeight = providerWidgetCellHeightForDp(heightDp)
        val spec = providerWidgetLayoutSpec(
            cellWidth = cellWidth,
            cellHeight = cellHeight,
            widgetHeightDp = heightDp
        )
        val themeColors = widgetThemeColors(context)
        val views = RemoteViews(context.packageName, R.layout.ai_quota_widget_provider_immediate)
        val isRefreshing = WidgetRefreshFeedback.isRefreshInProgress(
            widgetRefreshActive = WidgetRefreshFeedback.isWidgetRefreshInProgress(context, appWidgetId)
        )

        views.setInt(
            R.id.provider_immediate_root,
            "setBackgroundResource",
            providerImmediateBackgroundRes(ThemePreferencesRepository(context).currentTheme())
        )
        views.setImageViewResource(R.id.provider_immediate_icon, providerIconRes(input.providerId))
        views.setTextViewText(R.id.provider_immediate_name, input.displayName)
        views.setTextViewText(R.id.provider_immediate_status, "")
        views.setViewVisibility(R.id.provider_immediate_status, View.GONE)
        views.setImageViewResource(
            R.id.provider_immediate_refresh,
            if (isRefreshing) R.drawable.widget_refresh_spinner_dots else R.drawable.ic_refresh
        )
        views.setOnClickPendingIntent(
            R.id.provider_immediate_root,
            providerPendingIntent(context, appWidgetId, input),
        )
        val refreshIntent = input.accountId?.let {
            WidgetRefreshActions.widgetRefreshIntent(context, appWidgetId, it)
        } ?: WidgetRefreshActions.widgetRefreshIntent(context, appWidgetId, input.providerId)
        views.setOnClickPendingIntent(
            R.id.provider_immediate_refresh,
            PendingIntent.getBroadcast(
                context,
                50_000 + appWidgetId,
                refreshIntent,
                PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_IMMUTABLE,
            ),
        )

        views.applyProviderWidgetContent(payload, spec, themeColors)

        return views
    }

    private fun providerPendingIntent(
        context: Context,
        appWidgetId: Int,
        input: ProviderWidgetRenderInput,
    ): PendingIntent {
        val intent = input.accountId?.let {
            providerWidgetDetailIntent(context, appWidgetId, it)
        } ?: MainActivity.createHomeIntent(context).apply {
            putExtra(AppRoute.EXTRA_ROUTE, AppRoute.ROUTE_PROVIDER)
            putExtra(AppRoute.EXTRA_PROVIDER_ID, input.providerId.storageId)
            putExtra(AppRoute.EXTRA_PROVIDER_ID_LEGACY, input.providerId.storageId)
        }
        return if (input.accountId == null) {
            PendingIntent.getActivity(
                context,
                30_000 + appWidgetId,
                intent,
                PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_IMMUTABLE,
            )
        } else {
            PendingIntent.getBroadcast(
                context,
                30_000 + appWidgetId,
                intent,
                PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_IMMUTABLE,
            )
        }
    }

    private fun providerImmediateBackgroundRes(theme: AppTheme): Int {
        return when (theme) {
            AppTheme.MACOS -> R.drawable.widget_background_macos_rounded
            AppTheme.WINDOWS -> R.drawable.widget_background_windows_rounded
        }
    }

    private fun providerWidgetResolvedHostWidthDp(options: android.os.Bundle): Int {
        return maxOf(
            options.getInt(AppWidgetManager.OPTION_APPWIDGET_MIN_WIDTH, 0),
            options.getInt(AppWidgetManager.OPTION_APPWIDGET_MAX_WIDTH, 0)
        ).coerceAtLeast(PROVIDER_DEFAULT_WIDTH_DP)
    }

    private fun providerWidgetCellWidthForDp(widthDp: Int): Int {
        return (widthDp / PROVIDER_WIDGET_CELL_DP.toFloat()).roundToInt().coerceIn(2, 3)
    }

    private const val OPTION_APPWIDGET_SIZES = "appWidgetSizes"
    private const val PROVIDER_WIDGET_CELL_DP = 80
    private const val PROVIDER_DEFAULT_WIDTH_DP = 160
}
