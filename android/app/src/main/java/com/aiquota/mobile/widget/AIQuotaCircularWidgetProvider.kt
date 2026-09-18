package com.aiquota.mobile.widget

import com.aiquota.mobile.accounts.ProviderAccountIdStorageCodec
import com.aiquota.mobile.local.ProviderCardPreferencesRepository
import android.app.PendingIntent
import android.appwidget.AppWidgetManager
import android.appwidget.AppWidgetProvider
import android.content.ComponentName
import android.content.Context
import android.graphics.Bitmap
import android.graphics.Canvas
import android.graphics.Paint
import android.graphics.RectF
import android.os.Build
import android.os.Bundle
import android.util.SizeF
import android.view.View
import android.widget.RemoteViews
import androidx.compose.ui.graphics.toArgb
import androidx.core.content.ContextCompat
import com.aiquota.mobile.MainActivity
import com.aiquota.mobile.R
import com.aiquota.mobile.local.AppTheme
import com.aiquota.mobile.local.ProviderGaugeColor
import com.aiquota.mobile.local.ProviderPreferencesRepository
import com.aiquota.mobile.local.ThemePreferencesRepository
import com.aiquota.mobile.ui.provider.providerIconRes as sharedProviderIconRes
import kotlin.math.roundToInt

class AIQuotaCircularWidgetProvider : AppWidgetProvider() {
    override fun onUpdate(context: Context, appWidgetManager: AppWidgetManager, appWidgetIds: IntArray) {
        WidgetAutoRefreshStarter.requestBackgroundRefresh(context)
        updateWidgets(context, appWidgetManager, appWidgetIds)
    }

    override fun onAppWidgetOptionsChanged(
        context: Context,
        appWidgetManager: AppWidgetManager,
        appWidgetId: Int,
        newOptions: Bundle
    ) {
        updateWidgets(context, appWidgetManager, intArrayOf(appWidgetId))
    }

    companion object {
        private val gaugeRowIds = intArrayOf(
            R.id.circular_gauge_row_0,
            R.id.circular_gauge_row_1,
            R.id.circular_gauge_row_2,
            R.id.circular_gauge_row_3,
        )

        private val gaugeGridViewIds = arrayOf(
            intArrayOf(
                R.id.circular_gauge_0,
                R.id.circular_gauge_1,
                R.id.circular_gauge_2
            ),
            intArrayOf(
                R.id.circular_gauge_3,
                R.id.circular_gauge_4,
                R.id.circular_gauge_5
            ),
            intArrayOf(
                R.id.circular_gauge_6,
                R.id.circular_gauge_7,
                R.id.circular_gauge_8
            ),
            intArrayOf(
                R.id.circular_gauge_9,
                R.id.circular_gauge_10,
                R.id.circular_gauge_11
            )
        )

        fun updateAll(context: Context) {
            val appWidgetManager = AppWidgetManager.getInstance(context)
            val component = ComponentName(context, AIQuotaCircularWidgetProvider::class.java)
            updateWidgets(context, appWidgetManager, appWidgetManager.getAppWidgetIds(component))
        }

        fun update(context: Context, appWidgetId: Int) {
            if (appWidgetId == AppWidgetManager.INVALID_APPWIDGET_ID) return
            val appContext = context.applicationContext
            val appWidgetManager = AppWidgetManager.getInstance(appContext)
            updateWidgets(appContext, appWidgetManager, intArrayOf(appWidgetId))
        }

        private fun updateWidgets(
            context: Context,
            appWidgetManager: AppWidgetManager,
            appWidgetIds: IntArray
        ) {
            if (appWidgetIds.isEmpty()) return
            val widgetState = WidgetSnapshotCache(context).readState()
            val preferences = ProviderPreferencesRepository(context.applicationContext)
            val theme = ThemePreferencesRepository(context).currentTheme()
            val themeColors = widgetThemeColors(theme)

            appWidgetIds.forEach { appWidgetId ->
                val payload = dashboardWidgetPayload(
                    snapshotJson = ProviderWidgetCardCatalog.authoritativeSnapshotJson(context),
                    order = preferences.dashboardWidgetProviderOrder(appWidgetId),
                    hidden = preferences.dashboardWidgetHiddenProviders(appWidgetId),
                    cardOrder = ProviderCardPreferencesRepository(context).dashboardWidgetCardOrder(appWidgetId),
                    hiddenCards = ProviderCardPreferencesRepository(context).dashboardWidgetHiddenCards(appWidgetId),
                )
                val isRefreshing = WidgetRefreshFeedback.isRefreshInProgress(
                    widgetRefreshActive = WidgetRefreshFeedback.isWidgetRefreshInProgress(context, appWidgetId)
                )
                val views = responsiveViews(
                    context = context,
                    appWidgetId = appWidgetId,
                    allGauges = payload.gauges,
                    isRefreshing = isRefreshing,
                    themeColors = themeColors,
                    theme = theme,
                    options = appWidgetManager.getAppWidgetOptions(appWidgetId)
                )
                appWidgetManager.updateAppWidget(appWidgetId, views)
            }
        }

        private fun responsiveViews(
            context: Context,
            appWidgetId: Int,
            allGauges: List<WidgetProviderGauge>,
            isRefreshing: Boolean,
            themeColors: WidgetThemeColors,
            theme: AppTheme,
            options: Bundle
        ): RemoteViews {
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.S) {
                val sizes = circularWidgetSizes(options)
                if (!sizes.isNullOrEmpty()) {
                    val sizeMappedViews = sizes.associateWith { size ->
                        buildViews(
                            context = context,
                            appWidgetId = appWidgetId,
                            allGauges = allGauges,
                            isRefreshing = isRefreshing,
                            themeColors = themeColors,
                            theme = theme,
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
                allGauges = allGauges,
                isRefreshing = isRefreshing,
                themeColors = themeColors,
                theme = theme,
                widthDp = options.dimensionDp(
                    minKey = AppWidgetManager.OPTION_APPWIDGET_MIN_WIDTH,
                    maxKey = AppWidgetManager.OPTION_APPWIDGET_MAX_WIDTH,
                    fallbackDp = CIRCULAR_DEFAULT_TWO_CELL_SIZE_DP
                ),
                heightDp = options.dimensionDp(
                    minKey = AppWidgetManager.OPTION_APPWIDGET_MIN_HEIGHT,
                    maxKey = AppWidgetManager.OPTION_APPWIDGET_MAX_HEIGHT,
                    fallbackDp = CIRCULAR_DEFAULT_TWO_CELL_SIZE_DP
                )
            )
        }

        @Suppress("DEPRECATION")
        private fun circularWidgetSizes(options: Bundle): ArrayList<SizeF>? {
            return options.getParcelableArrayList(AppWidgetManager.OPTION_APPWIDGET_SIZES)
        }

        private fun buildViews(
            context: Context,
            appWidgetId: Int,
            allGauges: List<WidgetProviderGauge>,
            isRefreshing: Boolean,
            themeColors: WidgetThemeColors,
            theme: AppTheme,
            widthDp: Int,
            heightDp: Int
        ): RemoteViews {
            val capacitySpec = circularWidgetLayoutSpecForSize(
                widthDp = widthDp,
                heightDp = heightDp,
                availableGaugeCount = Int.MAX_VALUE
            )
            val gauges = allGauges.take(capacitySpec.maxGaugeCount)
            val layoutSpec = circularWidgetLayoutSpecForSize(
                widthDp = widthDp,
                heightDp = heightDp,
                availableGaugeCount = gauges.size
            )
            val showRefreshControl = circularWidgetShowsRefreshControl(layoutSpec.maxGaugeCount)
            val hasProviderData = gauges.isNotEmpty()
            val views = RemoteViews(context.packageName, R.layout.ai_quota_widget_circular)
            views.setInt(R.id.circular_widget_root, "setBackgroundResource", widgetBackgroundRes(theme))
            if (layoutSpec.cellWidth == 1 && layoutSpec.cellHeight >= 3) {
                val compactPaddingPx = (4 * context.resources.displayMetrics.density).roundToInt()
                views.setViewPadding(
                    R.id.circular_widget_root,
                    compactPaddingPx,
                    compactPaddingPx,
                    compactPaddingPx,
                    compactPaddingPx,
                )
            }
            views.setTextColor(R.id.circular_login_message, themeColors.caption.toArgb())
            views.setOnClickPendingIntent(
                R.id.circular_widget_root,
                mainActivityPendingIntent(context)
            )
            views.setOnClickPendingIntent(
                R.id.circular_refresh_button,
                refreshPendingIntent(context, appWidgetId)
            )
            views.setViewVisibility(
                R.id.circular_refresh_button,
                if (showRefreshControl && !isRefreshing) View.VISIBLE else View.GONE
            )
            views.setViewVisibility(
                R.id.circular_refresh_progress,
                if (showRefreshControl && isRefreshing) View.VISIBLE else View.GONE
            )
            views.setViewVisibility(
                R.id.circular_login_message,
                if (hasProviderData) View.GONE else View.VISIBLE
            )
            gaugeRowIds.forEachIndexed { rowIndex, rowId ->
                views.setViewVisibility(
                    rowId,
                    if (rowIndex < layoutSpec.rowCount) View.VISIBLE else View.GONE
                )
            }
            gaugeGridViewIds.forEachIndexed { rowIndex, rowIds ->
                rowIds.forEachIndexed { columnIndex, viewId ->
                    val gaugeIndex = rowIndex * layoutSpec.columnCount + columnIndex
                    val gauge = if (
                        rowIndex < layoutSpec.rowCount &&
                        columnIndex < layoutSpec.columnCount
                    ) {
                        gauges.getOrNull(gaugeIndex)
                    } else {
                        null
                    }
                    if (gauge == null) {
                        views.setViewVisibility(viewId, View.GONE)
                    } else {
                        views.setViewVisibility(viewId, View.VISIBLE)
                        views.setImageViewBitmap(viewId, circularGaugeBitmap(context, gauge, themeColors, batteryAccountCaption(gauge, gauges)))
                        views.setContentDescription(viewId, gauge.accountLabel?.let { "$it · ${gauge.providerId}" } ?: gauge.providerId)
                        gauge.accountId?.let(ProviderAccountIdStorageCodec::decodeOrNull)?.let { accountId ->
                            views.setOnClickPendingIntent(viewId, PendingIntent.getActivity(
                                context, 72000 + accountId.hashCode(), MainActivity.createProviderDetailIntent(context, accountId),
                                PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_IMMUTABLE))
                        }
                    }
                }
            }
            return views
        }

        private fun mainActivityPendingIntent(context: Context): PendingIntent {
            val intent = MainActivity.createHomeIntent(context)
            return PendingIntent.getActivity(
                context,
                0,
                intent,
                PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_IMMUTABLE
            )
        }

        private fun refreshPendingIntent(context: Context, appWidgetId: Int): PendingIntent {
            return PendingIntent.getBroadcast(
                context,
                10_000 + appWidgetId,
                WidgetRefreshActions.widgetRefreshIntent(context, appWidgetId),
                PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_IMMUTABLE
            )
        }

        private fun circularGaugeBitmap(
            context: Context,
            gauge: WidgetProviderGauge,
            themeColors: WidgetThemeColors,
            caption: String? = null
        ): Bitmap {
            val bitmap = Bitmap.createBitmap(
                CIRCULAR_GAUGE_CANVAS_SIZE_PX,
                CIRCULAR_GAUGE_CANVAS_SIZE_PX,
                Bitmap.Config.ARGB_8888
            )
            val canvas = Canvas(bitmap)
            val rect = RectF(
                CIRCULAR_RING_PADDING_PX,
                CIRCULAR_RING_PADDING_PX,
                CIRCULAR_GAUGE_CANVAS_SIZE_PX - CIRCULAR_RING_PADDING_PX,
                CIRCULAR_GAUGE_CANVAS_SIZE_PX - CIRCULAR_RING_PADDING_PX
            )
            val ratio = gauge.remainingRatio.coerceIn(0f, 1f)
            val trackPaint = Paint(Paint.ANTI_ALIAS_FLAG).apply {
                color = themeColors.gaugeTrack.toArgb()
                style = Paint.Style.STROKE
                strokeCap = Paint.Cap.ROUND
                strokeWidth = CIRCULAR_RING_STROKE_WIDTH_PX
            }
            val activePaint = Paint(Paint.ANTI_ALIAS_FLAG).apply {
                color = ProviderGaugeColor.toArgbOrNull(gauge.gaugeColorHex)
                    ?: themeColors.gaugeColor(ratio).toArgb()
                style = Paint.Style.STROKE
                strokeCap = Paint.Cap.ROUND
                strokeWidth = CIRCULAR_RING_STROKE_WIDTH_PX
            }

            val consumedSweep = 360f * (1f - ratio)
            val remainingStartAngle = -90f + consumedSweep

            canvas.drawArc(rect, -90f, 360f, false, trackPaint)
            canvas.drawArc(rect, remainingStartAngle, 360f * ratio, false, activePaint)
            drawProviderIcon(context, canvas, gauge.providerId, caption != null)
            if (gauge.isStale) {
                // A small clock marks cached usage without changing the ring value or caption.
                val clockPaint = Paint(Paint.ANTI_ALIAS_FLAG).apply {
                    color = themeColors.caption.toArgb()
                    style = Paint.Style.STROKE
                    strokeWidth = 2.5f
                }
                canvas.drawCircle(98f, 30f, 9f, clockPaint)
                canvas.drawLine(98f, 30f, 98f, 24f, clockPaint)
                canvas.drawLine(98f, 30f, 102f, 33f, clockPaint)
            }
            if (caption != null) {
                val paint = android.text.TextPaint(Paint.ANTI_ALIAS_FLAG).apply {
                    color = themeColors.caption.toArgb()
                    textSize = 13f
                    textAlign = Paint.Align.CENTER
                    typeface = android.graphics.Typeface.create("sans-serif-medium", android.graphics.Typeface.NORMAL)
                }
                val text = android.text.TextUtils.ellipsize(caption, paint, 88f, android.text.TextUtils.TruncateAt.END)
                canvas.drawText(text.toString(), 64f, 96f, paint)
            }
            return bitmap
        }

        private fun drawProviderIcon(context: Context, canvas: Canvas, providerId: String, hasCaption: Boolean) {
            val drawable = ContextCompat.getDrawable(context, providerIconRes(providerId))?.mutate() ?: return
            val iconSize = if (hasCaption) 42 else CIRCULAR_GAUGE_ICON_SIZE_PX
            val left = (CIRCULAR_GAUGE_CANVAS_SIZE_PX - iconSize) / 2
            val top = if (hasCaption) 32 else (CIRCULAR_GAUGE_CANVAS_SIZE_PX - iconSize) / 2
            drawable.setBounds(
                left,
                top,
                left + iconSize,
                top + iconSize
            )
            drawable.draw(canvas)
        }

        private fun providerIconRes(providerId: String): Int {
            return sharedProviderIconRes(providerId)
        }

        private fun widgetBackgroundRes(theme: AppTheme): Int {
            return when (theme) {
                AppTheme.MACOS -> R.drawable.widget_background_macos_rounded
                AppTheme.WINDOWS -> R.drawable.widget_background_windows_rounded
            }
        }
    }
}

internal fun circularWidgetEstimatedBitmapPayloadBytes(gaugeCount: Int): Int {
    return gaugeCount
        .coerceIn(0, CIRCULAR_MAX_GAUGES) *
        CIRCULAR_GAUGE_CANVAS_SIZE_PX *
        CIRCULAR_GAUGE_CANVAS_SIZE_PX *
        CIRCULAR_BITMAP_BYTES_PER_PIXEL
}

internal data class CircularWidgetLayoutSpec(
    val cellWidth: Int,
    val cellHeight: Int,
    val maxGaugeCount: Int,
    val visibleGaugeCount: Int,
    val columnCount: Int,
    val rowCount: Int
)

internal fun circularWidgetLayoutSpec(options: Bundle?, availableGaugeCount: Int): CircularWidgetLayoutSpec {
    val widthDp = options.dimensionDp(
        minKey = AppWidgetManager.OPTION_APPWIDGET_MIN_WIDTH,
        maxKey = AppWidgetManager.OPTION_APPWIDGET_MAX_WIDTH,
        fallbackDp = CIRCULAR_DEFAULT_TWO_CELL_SIZE_DP
    )
    val heightDp = options.dimensionDp(
        minKey = AppWidgetManager.OPTION_APPWIDGET_MIN_HEIGHT,
        maxKey = AppWidgetManager.OPTION_APPWIDGET_MAX_HEIGHT,
        fallbackDp = CIRCULAR_DEFAULT_TWO_CELL_SIZE_DP
    )
    return circularWidgetLayoutSpecForSize(
        widthDp = widthDp,
        heightDp = heightDp,
        availableGaugeCount = availableGaugeCount
    )
}

internal fun circularWidgetLayoutSpecForSize(
    widthDp: Int,
    heightDp: Int,
    availableGaugeCount: Int
): CircularWidgetLayoutSpec {
    val cellWidth = circularWidgetEffectiveCellWidth(
        widthDp = widthDp,
        heightDp = heightDp,
        measuredCellWidth = circularWidgetCellSpanForDp(widthDp)
    )
    val cellHeight = circularWidgetCellSpanForDp(heightDp)
    val maxGaugeCount = when {
        cellWidth == 1 && cellHeight >= 3 -> 4
        else -> cellWidth * cellHeight
    }.coerceIn(1, CIRCULAR_MAX_GAUGES)
    val visibleGaugeCount = availableGaugeCount.coerceIn(0, maxGaugeCount)
    val columnCount = circularWidgetColumnCount(
        cellWidth = cellWidth,
        cellHeight = cellHeight,
        visibleGaugeCount = visibleGaugeCount
    )
    val maxRowCount = if (cellWidth == 1 && cellHeight >= 3) 4 else cellHeight
    val rowCount = if (visibleGaugeCount == 0) {
        0
    } else {
        ((visibleGaugeCount + columnCount - 1) / columnCount).coerceIn(1, maxRowCount)
    }
    return CircularWidgetLayoutSpec(
        cellWidth = cellWidth,
        cellHeight = cellHeight,
        maxGaugeCount = maxGaugeCount,
        visibleGaugeCount = visibleGaugeCount,
        columnCount = columnCount,
        rowCount = rowCount
    )
}

internal fun circularWidgetMaxGaugeCount(options: Bundle?): Int {
    return circularWidgetLayoutSpec(options, Int.MAX_VALUE).maxGaugeCount
}

internal fun circularWidgetMaxGaugeCountForSizeRange(
    minWidthDp: Int,
    maxWidthDp: Int,
    minHeightDp: Int,
    maxHeightDp: Int
): Int {
    return circularWidgetLayoutSpecForSize(
        widthDp = resolvedCircularWidgetDimensionDp(minWidthDp, maxWidthDp, CIRCULAR_DEFAULT_TWO_CELL_SIZE_DP),
        heightDp = resolvedCircularWidgetDimensionDp(minHeightDp, maxHeightDp, CIRCULAR_DEFAULT_TWO_CELL_SIZE_DP),
        availableGaugeCount = Int.MAX_VALUE
    ).maxGaugeCount
}

internal fun circularWidgetMaxGaugeCountForSizeDp(widthDp: Int, heightDp: Int): Int {
    return circularWidgetLayoutSpecForSize(
        widthDp = widthDp,
        heightDp = heightDp,
        availableGaugeCount = Int.MAX_VALUE
    ).maxGaugeCount
}

internal fun circularWidgetShowsRefreshControlForSizeDp(widthDp: Int, heightDp: Int): Boolean {
    return circularWidgetShowsRefreshControl(circularWidgetMaxGaugeCountForSizeDp(widthDp, heightDp))
}

private fun circularWidgetShowsRefreshControl(maxGaugeCount: Int): Boolean {
    return false
}

private fun Bundle?.dimensionDp(minKey: String, maxKey: String, fallbackDp: Int): Int {
    val min = this?.getInt(minKey, 0) ?: 0
    val max = this?.getInt(maxKey, 0) ?: 0
    return resolvedCircularWidgetDimensionDp(min, max, fallbackDp)
}

private fun resolvedCircularWidgetDimensionDp(minDp: Int, maxDp: Int, fallbackDp: Int): Int {
    return when {
        minDp > 0 -> minDp
        maxDp > 0 -> maxDp
        else -> fallbackDp
    }
}

private fun circularWidgetCellSpanForDp(sizeDp: Int): Int {
    val boundedSizeDp = sizeDp.coerceAtLeast(1)
    return when {
        boundedSizeDp < CIRCULAR_TWO_CELL_MIN_SIZE_DP -> 1
        boundedSizeDp < CIRCULAR_THREE_CELL_MIN_SIZE_DP -> 2
        else -> 3
    }
}

private fun circularWidgetEffectiveCellWidth(
    widthDp: Int,
    heightDp: Int,
    measuredCellWidth: Int
): Int {
    return if (heightDp > widthDp && widthDp < CIRCULAR_DEFAULT_TWO_CELL_SIZE_DP) {
        1
    } else {
        measuredCellWidth
    }
}

private fun circularWidgetColumnCount(
    cellWidth: Int,
    cellHeight: Int,
    visibleGaugeCount: Int
): Int {
    if (visibleGaugeCount <= 0) return 1
    return when {
        cellHeight == 1 -> visibleGaugeCount.coerceAtMost(cellWidth)
        cellWidth == 1 -> 1
        visibleGaugeCount >= 5 && cellWidth <= cellHeight -> 2
        visibleGaugeCount <= 2 -> visibleGaugeCount
        visibleGaugeCount == 3 -> if (cellWidth >= 3) 3 else 2
        visibleGaugeCount == 4 -> 2
        else -> cellWidth.coerceAtMost(3)
    }.coerceAtLeast(1)
}

private const val CIRCULAR_MAX_GAUGES = 6
private const val CIRCULAR_GAUGE_CANVAS_SIZE_PX = 128
private const val CIRCULAR_GAUGE_ICON_SIZE_PX = 48
private const val CIRCULAR_RING_STROKE_WIDTH_PX = 10f
private const val CIRCULAR_RING_PADDING_PX = 9f
private const val CIRCULAR_BITMAP_BYTES_PER_PIXEL = 4
private const val CIRCULAR_DEFAULT_TWO_CELL_SIZE_DP = 110
private const val CIRCULAR_TWO_CELL_MIN_SIZE_DP = 75
private const val CIRCULAR_THREE_CELL_MIN_SIZE_DP = 145
