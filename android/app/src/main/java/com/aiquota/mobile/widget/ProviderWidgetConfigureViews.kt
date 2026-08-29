package com.aiquota.mobile.widget

import android.view.Gravity
import android.view.ViewGroup
import android.widget.ImageView
import android.widget.LinearLayout
import android.widget.ScrollView
import android.widget.TextView
import androidx.activity.ComponentActivity
import com.aiquota.mobile.R
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.ui.appLayoutMetrics
import com.aiquota.mobile.ui.provider.providerIconRes

internal fun providerWidgetSelectionGravity(): Int = Gravity.CENTER_VERTICAL

internal data class ProviderWidgetConfigureRow(
    val providerId: ProviderId,
    val label: String,
    val selected: () -> Unit,
)

internal fun ComponentActivity.showProviderWidgetSelection(
    rows: List<ProviderWidgetConfigureRow>,
    style: WidgetConfigureStyle,
) {
    applyWidgetConfigureWindow(style)
    val metrics = appLayoutMetrics(
        screenWidthDp = resources.configuration.screenWidthDp,
        screenHeightDp = resources.configuration.screenHeightDp,
    )
    title = getString(R.string.widget_label_provider)
    val root = LinearLayout(this).apply {
        orientation = LinearLayout.VERTICAL
        gravity = providerWidgetSelectionGravity()
        setBackgroundColor(style.backgroundColor)
        setPadding(
            metrics.contentHorizontalPaddingDp.widgetConfigureDp(this@showProviderWidgetSelection),
            metrics.contentVerticalPaddingDp.widgetConfigureDp(this@showProviderWidgetSelection) +
                widgetConfigureStatusBarInsetPx(),
            metrics.contentHorizontalPaddingDp.widgetConfigureDp(this@showProviderWidgetSelection),
            metrics.contentVerticalPaddingDp.widgetConfigureDp(this@showProviderWidgetSelection),
        )
    }
    root.addView(
        TextView(this).apply {
            text = getString(R.string.widget_label_provider)
            applyWidgetConfigureText(
                style = style,
                textSizeSp = if (resources.configuration.screenWidthDp >= 600) 20f else 18f,
                bold = true,
            )
        },
        LinearLayout.LayoutParams(
            ViewGroup.LayoutParams.MATCH_PARENT,
            ViewGroup.LayoutParams.WRAP_CONTENT,
        ),
    )
    rows.forEach { row ->
        root.addView(
            providerWidgetConfigureRow(row, style),
            LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.WRAP_CONTENT,
            ).apply {
                topMargin = metrics.cardSpacingDp.widgetConfigureDp(this@showProviderWidgetSelection)
            },
        )
    }
    setContentView(
        ScrollView(this).apply {
            setBackgroundColor(style.backgroundColor)
            isFillViewport = true
            addView(
                root,
                ViewGroup.LayoutParams(
                    ViewGroup.LayoutParams.MATCH_PARENT,
                    ViewGroup.LayoutParams.MATCH_PARENT,
                ),
            )
        },
    )
}

private fun ComponentActivity.providerWidgetConfigureRow(
    row: ProviderWidgetConfigureRow,
    style: WidgetConfigureStyle,
): LinearLayout = LinearLayout(this).apply {
    orientation = LinearLayout.HORIZONTAL
    gravity = Gravity.CENTER_VERTICAL
    isClickable = true
    isFocusable = true
    applyWidgetConfigureRowBackground(style)
    setPadding(
        14.widgetConfigureDp(this@providerWidgetConfigureRow),
        12.widgetConfigureDp(this@providerWidgetConfigureRow),
        14.widgetConfigureDp(this@providerWidgetConfigureRow),
        12.widgetConfigureDp(this@providerWidgetConfigureRow),
    )
    setOnClickListener { row.selected() }
    addView(
        ImageView(this@providerWidgetConfigureRow).apply {
            setImageResource(providerIconRes(row.providerId))
            scaleType = ImageView.ScaleType.FIT_CENTER
            contentDescription = row.providerId.displayName
        },
        LinearLayout.LayoutParams(
            32.widgetConfigureDp(this@providerWidgetConfigureRow),
            32.widgetConfigureDp(this@providerWidgetConfigureRow),
        ),
    )
    addView(
        TextView(this@providerWidgetConfigureRow).apply {
            text = row.label
            applyWidgetConfigureText(style, textSizeSp = 16f)
            gravity = Gravity.CENTER_VERTICAL
        },
        LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f).apply {
            marginStart = 12.widgetConfigureDp(this@providerWidgetConfigureRow)
        },
    )
    addView(
        TextView(this@providerWidgetConfigureRow).apply {
            text = ">"
            applyWidgetConfigureText(style, textSizeSp = 16f, muted = true)
            gravity = Gravity.CENTER
        },
        LinearLayout.LayoutParams(
            24.widgetConfigureDp(this@providerWidgetConfigureRow),
            24.widgetConfigureDp(this@providerWidgetConfigureRow),
        ),
    )
}
