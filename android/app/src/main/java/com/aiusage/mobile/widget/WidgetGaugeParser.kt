package com.aiusage.mobile.widget

import org.json.JSONArray
import org.json.JSONObject

data class WidgetProviderGauge(
    val providerId: String,
    val remainingRatio: Float
)

fun parseWidgetProviderGauges(snapshotJson: String): List<WidgetProviderGauge> {
    if (snapshotJson.isBlank()) return emptyList()
    return runCatching {
        val providers = JSONObject(snapshotJson).optJSONArray("providers") ?: JSONArray()
        buildList {
            for (index in 0 until providers.length()) {
                if (size == MAX_WIDGET_GAUGES) break
                val provider = providers.optJSONObject(index) ?: continue
                val providerId = provider.optString("providerId", "unknown").ifBlank { "unknown" }
                val line = firstGaugeableLine(provider.optJSONArray("lines") ?: JSONArray()) ?: continue
                add(WidgetProviderGauge(providerId = providerId, remainingRatio = line))
            }
        }
    }.getOrDefault(emptyList())
}

private fun firstGaugeableLine(lines: JSONArray): Float? {
    for (index in 0 until lines.length()) {
        val line = lines.optJSONObject(index) ?: continue
        val limit = line.optNullableDouble("limit") ?: continue
        if (limit <= 0.0) continue
        val remaining = line.optNullableDouble("remaining")
            ?: line.optNullableDouble("used")?.let { used -> limit - used }
            ?: continue
        return (remaining / limit).coerceIn(0.0, 1.0).toFloat()
    }
    return null
}

private fun JSONObject.optNullableDouble(name: String): Double? {
    if (!has(name) || isNull(name)) return null
    return opt(name)?.toString()?.toDoubleOrNull()
}

private const val MAX_WIDGET_GAUGES = 4
