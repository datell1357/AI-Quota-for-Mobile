package com.aiusage.mobile.widget

import android.content.Context
import androidx.compose.runtime.Composable
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.DpSize
import androidx.compose.ui.unit.dp
import androidx.glance.Image
import androidx.glance.ImageProvider
import androidx.glance.LocalSize
import androidx.glance.GlanceId
import androidx.glance.GlanceModifier
import androidx.glance.appwidget.SizeMode
import androidx.glance.appwidget.GlanceAppWidget
import androidx.glance.appwidget.GlanceAppWidgetReceiver
import androidx.glance.appwidget.cornerRadius
import androidx.glance.appwidget.provideContent
import androidx.glance.background
import androidx.glance.layout.Alignment
import androidx.glance.layout.Box
import androidx.glance.layout.Column
import androidx.glance.layout.Row
import androidx.glance.layout.Spacer
import androidx.glance.layout.fillMaxSize
import androidx.glance.layout.height
import androidx.glance.layout.padding
import androidx.glance.layout.size
import androidx.glance.layout.width
import androidx.glance.text.Text
import androidx.glance.text.TextAlign
import androidx.glance.text.TextStyle
import androidx.glance.unit.ColorProvider
import com.aiusage.mobile.R

class AIUsageGlanceWidget : GlanceAppWidget() {
    override val sizeMode: SizeMode = SizeMode.Responsive(
        setOf(
            DpSize(width = 64.dp, height = 64.dp),
            DpSize(width = 180.dp, height = 110.dp)
        )
    )

    override suspend fun provideGlance(context: Context, id: GlanceId) {
        provideContent {
            AIUsageWidgetContent(parseWidgetProviderGauges(WidgetSnapshotCache(context).readState().snapshotJson))
        }
    }
}

@Composable
private fun AIUsageWidgetContent(gauges: List<WidgetProviderGauge>) {
    val currentSize = LocalSize.current
    val isCompact = currentSize.width < 140.dp || currentSize.height < 100.dp
    val visibleGauges = gauges.take(MAX_VISIBLE_GAUGES)

    Column(
        modifier = GlanceModifier
            .fillMaxSize()
            .background(Color(0xFF0F172A))
            .padding(if (isCompact) 4.dp else 10.dp),
        verticalAlignment = Alignment.Vertical.CenterVertically
    ) {
        if (visibleGauges.isEmpty()) {
            Text("No data")
            return@Column
        }

        visibleGauges.forEach { gauge ->
            if (isCompact) {
                CompactGauge(gauge)
            } else {
                IconGauge(gauge)
            }
            Spacer(modifier = GlanceModifier.height(if (isCompact) 3.dp else 5.dp))
        }
    }
}

@Composable
private fun CompactGauge(gauge: WidgetProviderGauge) {
    GaugeBar(
        ratio = gauge.remainingRatio,
        width = 42.dp,
        height = 5.dp,
        radius = 2.dp
    )
}

@Composable
private fun IconGauge(gauge: WidgetProviderGauge) {
    Row(verticalAlignment = Alignment.Vertical.CenterVertically) {
        Image(
            provider = ImageProvider(providerIconRes(gauge.providerId)),
            contentDescription = gauge.providerId,
            modifier = GlanceModifier.size(18.dp)
        )
        Spacer(modifier = GlanceModifier.width(8.dp))
        Column {
            GaugeBar(
                ratio = gauge.remainingRatio,
                width = 220.dp,
                height = 8.dp,
                radius = 4.dp
            )
            Spacer(modifier = GlanceModifier.height(2.dp))
            Row {
                Text(
                    text = gauge.remainingText,
                    modifier = GlanceModifier.width(92.dp),
                    style = WidgetCaptionStyle
                )
                Spacer(modifier = GlanceModifier.width(8.dp))
                Text(
                    text = gauge.resetText.orEmpty(),
                    modifier = GlanceModifier.width(120.dp),
                    style = WidgetCaptionStyle.copy(textAlign = TextAlign.End)
                )
            }
        }
    }
}

@Composable
private fun GaugeBar(ratio: Float, width: Dp, height: Dp, radius: Dp) {
    val activeWidth = width * ratio.coerceIn(0f, 1f)
    val activeColor = gaugeColor(ratio)
    Box(
        modifier = GlanceModifier
            .width(width)
            .height(height)
            .cornerRadius(radius)
            .background(Color(0xFF334155))
    ) {
        if (activeWidth > 0.dp) {
            Box(
                modifier = GlanceModifier
                    .width(activeWidth)
                    .height(height)
                    .cornerRadius(radius)
                    .background(activeColor)
            ) {}
        }
    }
}

private fun providerIconRes(providerId: String): Int {
    return when (providerId.lowercase()) {
        "claude" -> R.drawable.ic_provider_claude
        "codex", "openai" -> R.drawable.ic_provider_openai
        "gemini" -> R.drawable.ic_provider_gemini
        "antigravity" -> R.drawable.ic_provider_antigravity
        else -> R.drawable.ic_provider_unknown
    }
}

private fun gaugeColor(ratio: Float): Color {
    return when {
        ratio < 0.15f -> Color(0xFFEF4444)
        ratio < 0.35f -> Color(0xFFF59E0B)
        else -> Color(0xFF22C55E)
    }
}

private const val MAX_VISIBLE_GAUGES = 4

private val WidgetCaptionStyle = TextStyle(
    color = ColorProvider(Color(0xFFCBD5E1)),
    textAlign = TextAlign.Start
)

class AIUsageGlanceWidgetReceiver : GlanceAppWidgetReceiver() {
    override val glanceAppWidget: GlanceAppWidget = AIUsageGlanceWidget()
}
