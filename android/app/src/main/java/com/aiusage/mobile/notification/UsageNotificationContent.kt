package com.aiusage.mobile.notification

import com.aiusage.mobile.widget.WidgetProviderGauge
import com.aiusage.mobile.widget.parseWidgetProviderGauges
import java.time.Instant

data class UsageNotificationContent(
    val title: String,
    val summary: String,
    val compactTitle: String,
    val compactText: String,
    val gauges: List<WidgetProviderGauge>
) {
    val gaugeRows: List<UsageNotificationGaugeRow> = gauges.map { gauge ->
        UsageNotificationGaugeRow(
            providerId = gauge.providerId,
            remainingRatio = gauge.remainingRatio,
            remainingText = gauge.remainingText,
            resetText = gauge.resetText.orEmpty()
        )
    }
}

data class UsageNotificationGaugeRow(
    val providerId: String,
    val remainingRatio: Float,
    val remainingText: String,
    val resetText: String
)

fun buildUsageNotificationContent(
    snapshotJson: String,
    now: Instant = Instant.now()
): UsageNotificationContent {
    val gauges = parseWidgetProviderGauges(snapshotJson, now).take(MAX_NOTIFICATION_GAUGES)
    val summary = notificationSummary(gauges)
    val compactLines = compactNotificationLines(summary)
    return UsageNotificationContent(
        title = "AI Usage",
        summary = summary,
        compactTitle = compactLines.first,
        compactText = compactLines.second,
        gauges = gauges
    )
}

private fun notificationSummary(gauges: List<WidgetProviderGauge>): String {
    if (gauges.isEmpty()) return "No active usage limits"
    val items = gauges
        .map { gauge -> "${providerLabel(gauge.providerId)} ${gauge.remainingText.removeSuffix(" left")}" }
    if (items.size <= NOTIFICATION_SINGLE_LINE_MAX_ITEMS) return items.joinToString(" | ")
    return items.chunked(NOTIFICATION_SUMMARY_ITEMS_PER_LINE)
        .joinToString("\n") { line -> line.joinToString(" | ") }
}

private fun compactNotificationLines(summary: String): Pair<String, String> {
    val lines = summary.lines()
    return if (lines.size > 1) {
        lines.first() to lines.drop(1).joinToString(" | ")
    } else {
        "AI Usage" to summary
    }
}

private fun providerLabel(providerId: String): String {
    return when (providerId.lowercase()) {
        "claude" -> "Claude"
        "codex", "openai" -> "Codex"
        "gemini" -> "Gemini"
        "copilot", "github-copilot", "github_copilot" -> "Copilot"
        "antigravity" -> "Antigravity"
        else -> providerId.replaceFirstChar { char -> char.uppercase() }
    }
}

private const val MAX_NOTIFICATION_GAUGES = 4
private const val NOTIFICATION_SINGLE_LINE_MAX_ITEMS = 3
private const val NOTIFICATION_SUMMARY_ITEMS_PER_LINE = 2
