package com.aiusage.mobile.notification

import com.aiusage.mobile.widget.WidgetProviderGauge
import com.aiusage.mobile.widget.parseWidgetProviderGauges
import java.time.Instant

data class UsageNotificationContent(
    val title: String,
    val summary: String,
    val gauges: List<WidgetProviderGauge>
)

fun buildUsageNotificationContent(
    snapshotJson: String,
    now: Instant = Instant.now()
): UsageNotificationContent {
    val gauges = parseWidgetProviderGauges(snapshotJson, now).take(MAX_NOTIFICATION_GAUGES)
    return UsageNotificationContent(
        title = "AI Usage",
        summary = gauges.joinToString(" | ") { gauge ->
            "${providerLabel(gauge.providerId)} ${gauge.remainingText.removeSuffix(" left")}"
        }.ifBlank { "No active usage limits" },
        gauges = gauges
    )
}

private fun providerLabel(providerId: String): String {
    return when (providerId.lowercase()) {
        "claude" -> "Claude"
        "codex", "openai" -> "Codex"
        "gemini" -> "Gemini"
        "antigravity" -> "Antigravity"
        else -> providerId.replaceFirstChar { char -> char.uppercase() }
    }
}

private const val MAX_NOTIFICATION_GAUGES = 4
