package com.aiquota.mobile.widget

import android.content.res.ColorStateList
import android.os.Build
import android.util.TypedValue
import android.view.View
import android.widget.RemoteViews
import androidx.compose.ui.graphics.toArgb
import com.aiquota.mobile.R
import com.aiquota.mobile.local.ProviderGaugeColor
import kotlin.math.roundToInt

internal fun RemoteViews.applyProviderWidgetContent(
    payload: ProviderWidgetPayload,
    spec: ProviderWidgetLayoutSpec,
    themeColors: WidgetThemeColors,
) {
    val textColor = themeColors.caption.toArgb()
    setTextColor(R.id.provider_immediate_name, textColor)
    setTextColor(R.id.provider_immediate_status, textColor)
    setTextViewTextSize(
        R.id.provider_immediate_name,
        TypedValue.COMPLEX_UNIT_SP,
        spec.displayNameTextSizeSp.toFloat(),
    )
    setTextViewTextSize(
        R.id.provider_immediate_status,
        TypedValue.COMPLEX_UNIT_SP,
        spec.statusTextSizeSp.toFloat(),
    )
    applyProviderRows(payload, spec, themeColors)
}

private fun RemoteViews.applyProviderRows(
    payload: ProviderWidgetPayload,
    spec: ProviderWidgetLayoutSpec,
    themeColors: WidgetThemeColors,
) {
    val rows = providerWidgetRowIds()
    val visibleLines = payload.lines.take(spec.maxLineCount)
    if (visibleLines.isEmpty()) {
        applyProviderEmptyRow(rows.first(), payload.status, spec)
        rows.drop(1).forEach { setViewVisibility(it.containerId, View.GONE) }
        return
    }
    rows.forEachIndexed { index, ids ->
        val line = visibleLines.getOrNull(index)
        if (line == null) {
            setViewVisibility(ids.containerId, View.GONE)
        } else {
            setViewVisibility(ids.containerId, View.VISIBLE)
            applyProviderLineRow(
                ids,
                line,
                ProviderWidgetRowRenderSpec(spec, themeColors, index, payload.gaugeColorHex),
            )
        }
    }
}

private fun RemoteViews.applyProviderEmptyRow(
    ids: ProviderWidgetRowIds,
    status: String,
    spec: ProviderWidgetLayoutSpec,
) {
    setViewVisibility(ids.containerId, View.VISIBLE)
    applyProviderLineLayout(ids.containerId, spec.lineRowHeightDp, PROVIDER_HEADER_SPACER_MARGIN_DP)
    setTextViewText(
        ids.labelId,
        if (status.equals(DISCONNECTED_STATUS, ignoreCase = true)) {
            providerWidgetStatusLabel(DISCONNECTED_STATUS)
        } else {
            "데이터 없음"
        },
    )
    setTextViewText(ids.remainingId, "")
    setTextViewText(ids.resetId, "")
    setViewVisibility(ids.progressId, View.GONE)
}

private data class ProviderWidgetRowRenderSpec(
    val layout: ProviderWidgetLayoutSpec,
    val colors: WidgetThemeColors,
    val rowIndex: Int,
    val gaugeColorHex: String?,
)

private fun RemoteViews.applyProviderLineRow(
    ids: ProviderWidgetRowIds,
    line: ProviderWidgetLine,
    render: ProviderWidgetRowRenderSpec,
) {
    val textColor = render.colors.caption.toArgb()
    val remainingText = line.remainingText.ifBlank { providerWidgetStatusLabel(line.severity) }
    val textStyle = providerWidgetLineTextStyleSpec(render.layout, line.label, remainingText)
    applyProviderLineLayout(
        ids.containerId,
        render.layout.lineRowHeightDp,
        if (render.rowIndex == 0) PROVIDER_HEADER_SPACER_MARGIN_DP else render.layout.lineGapDp,
    )
    setTextColor(ids.labelId, textColor)
    setTextColor(ids.remainingId, textColor)
    setTextColor(ids.resetId, textColor)
    setTextViewTextSize(ids.labelId, TypedValue.COMPLEX_UNIT_SP, textStyle.labelTextSizeSp)
    setTextViewTextSize(ids.remainingId, TypedValue.COMPLEX_UNIT_SP, textStyle.remainingTextSizeSp)
    setTextViewTextSize(ids.resetId, TypedValue.COMPLEX_UNIT_SP, render.layout.detailTextSizeSp.toFloat())
    setTextViewText(ids.labelId, line.label)
    setTextViewText(ids.remainingId, remainingText)
    setViewVisibility(ids.progressId, View.VISIBLE)
    applyProviderProgressHeight(ids.progressId, render.layout.gaugeHeightDp)
    applyProviderProgressColor(ids.progressId, providerGaugeColor(line, render.colors, render.gaugeColorHex))
    setProgressBar(
        ids.progressId,
        100,
        ((line.remainingPercent ?: 0f).coerceIn(0f, 1f) * 100).roundToInt(),
        false,
    )
    val detail = line.resetText ?: line.detailText
    when {
        !render.layout.showResetCaption -> {
            setTextViewText(ids.resetId, "")
            setViewVisibility(ids.resetId, View.GONE)
        }
        !detail.isNullOrBlank() -> {
            setTextViewText(ids.resetId, detail)
            setViewVisibility(ids.resetId, View.VISIBLE)
        }
        else -> {
            setTextViewText(ids.resetId, RESET_CAPTION_PLACEHOLDER)
            setViewVisibility(ids.resetId, View.INVISIBLE)
        }
    }
}

private fun providerGaugeColor(
    line: ProviderWidgetLine,
    colors: WidgetThemeColors,
    gaugeColorHex: String?,
): Int = ProviderGaugeColor.toArgbOrNull(gaugeColorHex)
    ?: colors.gaugeColor((line.remainingPercent ?: 0f).coerceIn(0f, 1f)).toArgb()

private fun RemoteViews.applyProviderProgressColor(progressId: Int, color: Int) {
    if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.S) {
        setColorStateList(progressId, "setProgressTintList", ColorStateList.valueOf(color))
    }
}

private fun RemoteViews.applyProviderLineLayout(containerId: Int, rowHeightDp: Int, topMarginDp: Int) {
    if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.S) {
        setViewLayoutHeight(containerId, rowHeightDp.toFloat(), TypedValue.COMPLEX_UNIT_DIP)
        setViewLayoutMargin(
            containerId,
            RemoteViews.MARGIN_TOP,
            topMarginDp.toFloat(),
            TypedValue.COMPLEX_UNIT_DIP,
        )
    }
}

private fun RemoteViews.applyProviderProgressHeight(progressId: Int, gaugeHeightDp: Int) {
    if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.S) {
        setViewLayoutHeight(progressId, gaugeHeightDp.toFloat(), TypedValue.COMPLEX_UNIT_DIP)
    }
}

private data class ProviderWidgetRowIds(
    val containerId: Int,
    val labelId: Int,
    val remainingId: Int,
    val progressId: Int,
    val resetId: Int,
)

private fun providerWidgetRowIds(): List<ProviderWidgetRowIds> = listOf(
    ProviderWidgetRowIds(R.id.provider_immediate_line_1, R.id.provider_immediate_label, R.id.provider_immediate_remaining, R.id.provider_immediate_progress, R.id.provider_immediate_reset),
    ProviderWidgetRowIds(R.id.provider_immediate_line_2, R.id.provider_immediate_label_2, R.id.provider_immediate_remaining_2, R.id.provider_immediate_progress_2, R.id.provider_immediate_reset_2),
    ProviderWidgetRowIds(R.id.provider_immediate_line_3, R.id.provider_immediate_label_3, R.id.provider_immediate_remaining_3, R.id.provider_immediate_progress_3, R.id.provider_immediate_reset_3),
    ProviderWidgetRowIds(R.id.provider_immediate_line_4, R.id.provider_immediate_label_4, R.id.provider_immediate_remaining_4, R.id.provider_immediate_progress_4, R.id.provider_immediate_reset_4),
    ProviderWidgetRowIds(R.id.provider_immediate_line_5, R.id.provider_immediate_label_5, R.id.provider_immediate_remaining_5, R.id.provider_immediate_progress_5, R.id.provider_immediate_reset_5),
)

private const val DISCONNECTED_STATUS = "DISCONNECTED"
private const val RESET_CAPTION_PLACEHOLDER = " "
private const val PROVIDER_HEADER_SPACER_MARGIN_DP = 4
