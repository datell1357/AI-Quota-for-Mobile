package com.aiquota.mobile.widget

import android.app.PendingIntent
import android.appwidget.AppWidgetManager
import android.content.Context
import android.content.res.ColorStateList
import android.os.Build
import android.os.Bundle
import android.util.Log
import android.util.SizeF
import android.util.TypedValue
import android.view.View
import android.widget.RemoteViews
import androidx.compose.ui.graphics.toArgb
import com.aiquota.mobile.MainActivity
import com.aiquota.mobile.R
import com.aiquota.mobile.local.AppTheme
import com.aiquota.mobile.local.ProviderGaugeColor
import com.aiquota.mobile.local.ProviderPreferencesRepository
import com.aiquota.mobile.local.ThemePreferencesRepository
import com.aiquota.mobile.ui.provider.providerIconRes
import kotlin.math.roundToInt

object DashboardWidgetImmediateRenderer {
    private const val TAG = "DashboardWidgetImmediate"

    fun render(context: Context, appWidgetId: Int) {
        if (appWidgetId == AppWidgetManager.INVALID_APPWIDGET_ID) return
        val appContext = context.applicationContext
        val appWidgetManager = AppWidgetManager.getInstance(appContext)
        val views = responsiveViews(appContext, appWidgetId, appWidgetManager)
        Log.d(TAG, "updateAppWidget appWidgetId=$appWidgetId")
        appWidgetManager.updateAppWidget(appWidgetId, views)
    }

    private fun responsiveViews(
        context: Context,
        appWidgetId: Int,
        appWidgetManager: AppWidgetManager
    ): RemoteViews {
        val options = appWidgetManager.getAppWidgetOptions(appWidgetId)
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.S) {
            val sizes = dashboardWidgetSizes(options)
            if (!sizes.isNullOrEmpty()) {
                return RemoteViews(
                    sizes.associateWith { size ->
                        buildViews(
                            context = context,
                            appWidgetId = appWidgetId,
                            widthDp = size.width.roundToInt(),
                            heightDp = size.height.roundToInt()
                        )
                    }
                )
            }
        }
        return buildViews(
            context = context,
            appWidgetId = appWidgetId,
            widthDp = dashboardWidgetResolvedHostWidthDp(options),
            heightDp = dashboardWidgetResolvedHostHeightDp(options)
        )
    }

    @Suppress("DEPRECATION")
    private fun dashboardWidgetSizes(options: Bundle): ArrayList<SizeF>? {
        return options.getParcelableArrayList(AppWidgetManager.OPTION_APPWIDGET_SIZES)
    }

    private fun buildViews(
        context: Context,
        appWidgetId: Int,
        widthDp: Int,
        heightDp: Int
    ): RemoteViews {
        val preferences = ProviderPreferencesRepository(context.applicationContext)
        val payload = dashboardWidgetPayload(
            snapshotJson = WidgetSnapshotCache(context).read(),
            order = preferences.dashboardWidgetProviderOrder(appWidgetId),
            hidden = preferences.dashboardWidgetHiddenProviders(appWidgetId)
        )
        val capacitySpec = unifiedWidgetLayoutSpec(
            cellWidth = dashboardWidgetCellWidthForDp(widthDp),
            cellHeight = unifiedWidgetCellHeightForDp(heightDp),
            widgetHeightDp = heightDp
        )
        val providers = payload.providers.take(capacitySpec.maxProviderCount)
        val spec = unifiedWidgetLayoutSpec(
            cellWidth = dashboardWidgetCellWidthForDp(widthDp),
            cellHeight = unifiedWidgetCellHeightForDp(heightDp),
            widgetHeightDp = heightDp,
            visibleProviderCount = providers.size
        )
        val theme = ThemePreferencesRepository(context).currentTheme()
        val themeColors = widgetThemeColors(theme)
        val isRefreshing = WidgetRefreshFeedback.isRefreshInProgress(
            widgetRefreshActive = WidgetRefreshFeedback.isWidgetRefreshInProgress(context, appWidgetId)
        )
        val views = RemoteViews(context.packageName, R.layout.ai_quota_widget_dashboard_immediate)

        views.setInt(
            R.id.dashboard_immediate_root,
            "setBackgroundResource",
            dashboardImmediateBackgroundRes(theme)
        )
        views.setViewPadding(
            R.id.dashboard_immediate_content,
            spec.horizontalPaddingDp.dp(context),
            spec.verticalPaddingDp.dp(context),
            spec.horizontalPaddingDp.dp(context),
            spec.verticalPaddingDp.dp(context)
        )
        views.setTextColor(R.id.dashboard_immediate_empty, themeColors.caption.toArgb())
        views.setTextViewText(R.id.dashboard_immediate_empty, context.getString(R.string.widget_no_data))
        views.setOnClickPendingIntent(R.id.dashboard_immediate_root, homePendingIntent(context, appWidgetId))
        views.setImageViewResource(
            R.id.dashboard_immediate_refresh,
            if (isRefreshing) R.drawable.widget_refresh_spinner_dots else R.drawable.ic_refresh
        )
        views.setOnClickPendingIntent(
            R.id.dashboard_immediate_refresh,
            PendingIntent.getBroadcast(
                context,
                60_000 + appWidgetId,
                WidgetRefreshActions.widgetRefreshIntent(context, appWidgetId),
                PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_IMMUTABLE
            )
        )

        applyRows(views, providers, spec, themeColors)
        return views
    }

    private fun applyRows(
        views: RemoteViews,
        providers: List<ProviderWidgetPayload>,
        spec: UnifiedWidgetLayoutSpec,
        themeColors: WidgetThemeColors
    ) {
        val rowIds = dashboardRowIds()
        views.setViewVisibility(
            R.id.dashboard_immediate_empty,
            if (providers.isEmpty()) View.VISIBLE else View.GONE
        )
        rowIds.forEachIndexed { index, ids ->
            val provider = providers.getOrNull(index)
            if (provider == null) {
                views.setViewVisibility(ids.containerId, View.GONE)
            } else {
                views.setViewVisibility(ids.containerId, View.VISIBLE)
                applyProviderRow(views, ids, provider, spec, themeColors)
            }
        }
    }

    private fun applyProviderRow(
        views: RemoteViews,
        ids: DashboardRowIds,
        provider: ProviderWidgetPayload,
        spec: UnifiedWidgetLayoutSpec,
        themeColors: WidgetThemeColors
    ) {
        val line = provider.lines.firstOrNull { it.remainingPercent != null }
            ?: provider.lines.firstOrNull()
        val ratio = (line?.remainingPercent ?: 0f).coerceIn(0f, 1f)
        val remainingText = line?.remainingText
            ?.ifBlank { providerWidgetStatusLabel(provider.status) }
            ?: providerWidgetStatusLabel(provider.status)

        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.S) {
            views.setViewLayoutHeight(ids.containerId, spec.rowHeightDp.toFloat(), TypedValue.COMPLEX_UNIT_DIP)
            views.setViewLayoutHeight(ids.iconId, spec.providerIconSizeDp.toFloat(), TypedValue.COMPLEX_UNIT_DIP)
            views.setViewLayoutWidth(ids.iconId, spec.providerIconSizeDp.toFloat(), TypedValue.COMPLEX_UNIT_DIP)
            views.setViewLayoutHeight(ids.progressId, spec.gaugeHeightDp.toFloat(), TypedValue.COMPLEX_UNIT_DIP)
        }
        views.setImageViewResource(ids.iconId, providerIconRes(provider.providerId))
        views.setTextColor(ids.nameId, themeColors.caption.toArgb())
        views.setTextColor(ids.remainingId, themeColors.caption.toArgb())
        views.setTextViewTextSize(ids.nameId, TypedValue.COMPLEX_UNIT_SP, spec.providerTextSizeSp.toFloat())
        views.setTextViewTextSize(ids.remainingId, TypedValue.COMPLEX_UNIT_SP, spec.detailTextSizeSp.toFloat())
        views.setTextViewText(ids.nameId, provider.displayName)
        views.setTextViewText(ids.remainingId, remainingText)
        views.setProgressBar(ids.progressId, 100, (ratio * 100).roundToInt(), false)
        applyProgressColor(views, ids.progressId, dashboardGaugeColor(provider, ratio, themeColors))
    }

    private fun dashboardGaugeColor(
        provider: ProviderWidgetPayload,
        ratio: Float,
        themeColors: WidgetThemeColors
    ): Int {
        return ProviderGaugeColor.toArgbOrNull(provider.gaugeColorHex)
            ?: themeColors.gaugeColor(ratio).toArgb()
    }

    private fun applyProgressColor(views: RemoteViews, progressId: Int, color: Int) {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.S) {
            views.setColorStateList(progressId, "setProgressTintList", ColorStateList.valueOf(color))
        }
    }

    private fun homePendingIntent(context: Context, appWidgetId: Int): PendingIntent {
        return PendingIntent.getActivity(
            context,
            70_000 + appWidgetId,
            MainActivity.createHomeIntent(context),
            PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_IMMUTABLE
        )
    }

    private fun dashboardImmediateBackgroundRes(theme: AppTheme): Int {
        return when (theme) {
            AppTheme.MACOS -> R.drawable.widget_background_macos_rounded
            AppTheme.WINDOWS -> R.drawable.widget_background_windows_rounded
        }
    }

    private fun dashboardWidgetResolvedHostWidthDp(options: Bundle): Int {
        return maxOf(
            options.getInt(AppWidgetManager.OPTION_APPWIDGET_MIN_WIDTH, 0),
            options.getInt(AppWidgetManager.OPTION_APPWIDGET_MAX_WIDTH, 0)
        ).coerceAtLeast(DASHBOARD_DEFAULT_SIZE_DP)
    }

    private fun dashboardWidgetResolvedHostHeightDp(options: Bundle): Int {
        return maxOf(
            options.getInt(AppWidgetManager.OPTION_APPWIDGET_MIN_HEIGHT, 0),
            options.getInt(AppWidgetManager.OPTION_APPWIDGET_MAX_HEIGHT, 0)
        ).coerceAtLeast(DASHBOARD_DEFAULT_SIZE_DP)
    }

    private fun dashboardWidgetCellWidthForDp(widthDp: Int): Int {
        return (widthDp / DASHBOARD_WIDGET_CELL_DP.toFloat()).roundToInt().coerceIn(2, 3)
    }

    private fun Int.dp(context: Context): Int {
        return (this * context.resources.displayMetrics.density).roundToInt()
    }

    private data class DashboardRowIds(
        val containerId: Int,
        val iconId: Int,
        val nameId: Int,
        val remainingId: Int,
        val progressId: Int
    )

    private fun dashboardRowIds(): List<DashboardRowIds> {
        return listOf(
            DashboardRowIds(
                containerId = R.id.dashboard_immediate_row_0,
                iconId = R.id.dashboard_immediate_icon_0,
                nameId = R.id.dashboard_immediate_name_0,
                remainingId = R.id.dashboard_immediate_remaining_0,
                progressId = R.id.dashboard_immediate_progress_0
            ),
            DashboardRowIds(
                containerId = R.id.dashboard_immediate_row_1,
                iconId = R.id.dashboard_immediate_icon_1,
                nameId = R.id.dashboard_immediate_name_1,
                remainingId = R.id.dashboard_immediate_remaining_1,
                progressId = R.id.dashboard_immediate_progress_1
            ),
            DashboardRowIds(
                containerId = R.id.dashboard_immediate_row_2,
                iconId = R.id.dashboard_immediate_icon_2,
                nameId = R.id.dashboard_immediate_name_2,
                remainingId = R.id.dashboard_immediate_remaining_2,
                progressId = R.id.dashboard_immediate_progress_2
            ),
            DashboardRowIds(
                containerId = R.id.dashboard_immediate_row_3,
                iconId = R.id.dashboard_immediate_icon_3,
                nameId = R.id.dashboard_immediate_name_3,
                remainingId = R.id.dashboard_immediate_remaining_3,
                progressId = R.id.dashboard_immediate_progress_3
            ),
            DashboardRowIds(
                containerId = R.id.dashboard_immediate_row_4,
                iconId = R.id.dashboard_immediate_icon_4,
                nameId = R.id.dashboard_immediate_name_4,
                remainingId = R.id.dashboard_immediate_remaining_4,
                progressId = R.id.dashboard_immediate_progress_4
            ),
            DashboardRowIds(
                containerId = R.id.dashboard_immediate_row_5,
                iconId = R.id.dashboard_immediate_icon_5,
                nameId = R.id.dashboard_immediate_name_5,
                remainingId = R.id.dashboard_immediate_remaining_5,
                progressId = R.id.dashboard_immediate_progress_5
            )
        )
    }

    private const val DASHBOARD_WIDGET_CELL_DP = 80
    private const val DASHBOARD_DEFAULT_SIZE_DP = 160
}
