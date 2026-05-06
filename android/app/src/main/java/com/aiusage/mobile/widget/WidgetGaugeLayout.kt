package com.aiusage.mobile.widget

data class WidgetGaugeLayoutSpec(
    val iconSizeDp: Int,
    val gaugeWidthDp: Int,
    val gaugeHeightDp: Int,
    val gaugeRadiusDp: Int,
    val rowSpacerHeightDp: Int
)

fun compactGaugeLayoutSpec(visibleGaugeCount: Int): WidgetGaugeLayoutSpec {
    return when (visibleGaugeCount.coerceIn(1, 4)) {
        1 -> WidgetGaugeLayoutSpec(iconSizeDp = 10, gaugeWidthDp = 51, gaugeHeightDp = 12, gaugeRadiusDp = 6, rowSpacerHeightDp = 0)
        2 -> WidgetGaugeLayoutSpec(iconSizeDp = 10, gaugeWidthDp = 51, gaugeHeightDp = 9, gaugeRadiusDp = 5, rowSpacerHeightDp = 8)
        3 -> WidgetGaugeLayoutSpec(iconSizeDp = 9, gaugeWidthDp = 53, gaugeHeightDp = 7, gaugeRadiusDp = 4, rowSpacerHeightDp = 5)
        else -> WidgetGaugeLayoutSpec(iconSizeDp = 9, gaugeWidthDp = 53, gaugeHeightDp = 6, gaugeRadiusDp = 3, rowSpacerHeightDp = 3)
    }
}

fun expandedGaugeLayoutSpec(visibleGaugeCount: Int): WidgetGaugeLayoutSpec {
    return when (visibleGaugeCount.coerceIn(1, 4)) {
        1 -> WidgetGaugeLayoutSpec(iconSizeDp = 24, gaugeWidthDp = 220, gaugeHeightDp = 14, gaugeRadiusDp = 7, rowSpacerHeightDp = 0)
        2 -> WidgetGaugeLayoutSpec(iconSizeDp = 22, gaugeWidthDp = 220, gaugeHeightDp = 12, gaugeRadiusDp = 6, rowSpacerHeightDp = 12)
        3 -> WidgetGaugeLayoutSpec(iconSizeDp = 20, gaugeWidthDp = 220, gaugeHeightDp = 10, gaugeRadiusDp = 5, rowSpacerHeightDp = 7)
        else -> WidgetGaugeLayoutSpec(iconSizeDp = 18, gaugeWidthDp = 220, gaugeHeightDp = 8, gaugeRadiusDp = 4, rowSpacerHeightDp = 5)
    }
}
