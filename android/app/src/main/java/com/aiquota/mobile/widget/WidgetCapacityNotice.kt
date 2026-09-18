package com.aiquota.mobile.widget

import android.appwidget.AppWidgetManager
import android.os.Build
import android.os.Bundle
import android.util.SizeF
import kotlin.math.roundToInt

/** Uses the same size policies as the two RemoteViews renderers. */
internal data class WidgetCapacityNotice(val minimum: Int, val maximum: Int) {
    fun potentiallyOverflowing(orderedAliases: List<String>): List<String> = orderedAliases.drop(minimum)
}

internal fun UnifiedWidgetPayload.capacityAccountIds(battery: Boolean): Set<String> =
    (if (battery) gauges.mapNotNull { it.accountId } else providers.mapNotNull { it.accountId }).toSet()

@Suppress("DEPRECATION")
internal fun widgetCapacityNotice(options: Bundle, battery: Boolean): WidgetCapacityNotice {
    val sizes = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.S) {
        options.getParcelableArrayList<SizeF>(AppWidgetManager.OPTION_APPWIDGET_SIZES)
    } else null
    val capacities = if (!sizes.isNullOrEmpty()) {
        sizes.map { size ->
            if (battery) circularWidgetMaxGaugeCountForSizeDp(size.width.roundToInt(), size.height.roundToInt())
            else dashboardWidgetMaxAccountCount(size.width.roundToInt(), size.height.roundToInt())
        }
    } else listOf(if (battery) circularWidgetMaxGaugeCount(options) else dashboardWidgetMaxAccountCount(
        maxOf(options.getInt(AppWidgetManager.OPTION_APPWIDGET_MIN_WIDTH),
            options.getInt(AppWidgetManager.OPTION_APPWIDGET_MAX_WIDTH)).coerceAtLeast(160),
        maxOf(options.getInt(AppWidgetManager.OPTION_APPWIDGET_MIN_HEIGHT),
            options.getInt(AppWidgetManager.OPTION_APPWIDGET_MAX_HEIGHT)).coerceAtLeast(160),
    ))
    return WidgetCapacityNotice(capacities.min(), capacities.max())
}

internal fun dashboardWidgetMaxAccountCount(widthDp: Int, heightDp: Int): Int = unifiedWidgetLayoutSpec(
    cellWidth = (widthDp / 80f).roundToInt().coerceIn(2, 3),
    cellHeight = unifiedWidgetCellHeightForDp(heightDp),
    widgetHeightDp = heightDp,
).maxProviderCount

internal fun widgetCanSelectAccount(selectedCount: Int): Boolean = selectedCount < 6

internal fun <T> widgetHiddenCardsWithinLimit(order: List<T>, hidden: Set<T>): Set<T> =
    hidden + order.filterNot { it in hidden }.drop(6)

internal fun batteryAccountCaption(gauge: WidgetProviderGauge, displayed: List<WidgetProviderGauge>): String? =
    gauge.accountLabel?.takeIf { label -> label.isNotBlank() && displayed.count { it.providerId == gauge.providerId } > 1 }
