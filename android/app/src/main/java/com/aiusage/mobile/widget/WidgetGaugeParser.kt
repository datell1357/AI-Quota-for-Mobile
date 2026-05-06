package com.aiusage.mobile.widget

import org.json.JSONArray
import org.json.JSONObject
import java.time.Instant

data class WidgetProviderGauge(
    val providerId: String,
    val remainingRatio: Float,
    val remainingText: String,
    val resetText: String?
)

fun parseWidgetProviderGauges(snapshotJson: String, now: Instant = Instant.now()): List<WidgetProviderGauge> {
    if (snapshotJson.isBlank()) return emptyList()
    return runCatching {
        val providers = JSONObject(snapshotJson).optJSONArray("providers") ?: JSONArray()
        buildList {
            for (index in 0 until providers.length()) {
                if (size == MAX_WIDGET_GAUGES) break
                val provider = providers.optJSONObject(index) ?: continue
                if (!provider.isVisibleProvider()) continue
                val providerId = provider.optString("providerId", "unknown").ifBlank { "unknown" }
                val line = firstGaugeableLine(provider.optJSONArray("lines") ?: JSONArray(), now) ?: continue
                add(WidgetProviderGauge(providerId = providerId, remainingRatio = line.ratio, remainingText = line.remainingText, resetText = line.resetText))
            }
        }
    }.getOrDefault(emptyList())
}

private fun JSONObject.isVisibleProvider(): Boolean {
    val status = optString("status").trim().lowercase()
    if (status == "disabled") return false
    if (has("enabled") && !optBoolean("enabled", true)) return false
    if (has("active") && !optBoolean("active", true)) return false
    if (has("visible") && !optBoolean("visible", true)) return false
    return true
}

private fun firstGaugeableLine(lines: JSONArray, now: Instant): ParsedGaugeLine? {
    for (index in 0 until lines.length()) {
        val line = lines.optJSONObject(index) ?: continue
        val limit = line.optNullableDouble("limit") ?: continue
        if (limit <= 0.0) continue
        val remaining = line.optNullableDouble("remaining")
            ?: line.optNullableDouble("used")?.let { used -> limit - used }
            ?: continue
        val ratio = (remaining / limit).coerceIn(0.0, 1.0)
        return ParsedGaugeLine(
            ratio = ratio.toFloat(),
            remainingText = "${formatNumber(ratio * 100)}% left",
            resetText = line.optString("resetsAt").takeIf { it.isNotBlank() }?.let { resetText(it, now) }
        )
    }
    return null
}

private fun JSONObject.optNullableDouble(name: String): Double? {
    if (!has(name) || isNull(name)) return null
    return opt(name)?.toString()?.toDoubleOrNull()
}

private fun resetText(value: String, now: Instant): String? {
    return runCatching {
        val seconds = (Instant.parse(value).epochSecond - now.epochSecond).coerceAtLeast(0L)
        val days = seconds / (24 * 60 * 60)
        val hours = (seconds % (24 * 60 * 60)) / (60 * 60)
        val minutes = (seconds % (60 * 60)) / 60
        when {
            days > 0 -> "Resets in ${days}d ${hours}h"
            hours > 0 -> "Resets in ${hours}h ${minutes}m"
            else -> "Resets in ${minutes}m"
        }
    }.getOrNull()
}

private fun formatNumber(value: Double): String {
    return if (value % 1.0 == 0.0) value.toLong().toString() else value.toString()
}

private data class ParsedGaugeLine(
    val ratio: Float,
    val remainingText: String,
    val resetText: String?
)

private const val MAX_WIDGET_GAUGES = 4
