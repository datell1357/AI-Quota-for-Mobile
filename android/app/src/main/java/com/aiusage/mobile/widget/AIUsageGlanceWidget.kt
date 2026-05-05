package com.aiusage.mobile.widget

import android.content.Context
import androidx.compose.runtime.Composable
import androidx.glance.GlanceId
import androidx.glance.GlanceModifier
import androidx.glance.appwidget.GlanceAppWidget
import androidx.glance.appwidget.GlanceAppWidgetReceiver
import androidx.glance.appwidget.provideContent
import androidx.glance.layout.Column
import androidx.glance.layout.fillMaxSize
import androidx.glance.text.Text
import org.json.JSONArray
import org.json.JSONObject

class AIUsageGlanceWidget : GlanceAppWidget() {
    override suspend fun provideGlance(context: Context, id: GlanceId) {
        provideContent {
            AIUsageWidgetContent(WidgetSnapshotCache(context).readState())
        }
    }
}

@Composable
private fun AIUsageWidgetContent(state: WidgetSnapshotState) {
    Column(modifier = GlanceModifier.fillMaxSize()) {
        Text("AI Usage")
        Text(state.deviceName.ifBlank { "No PC linked" })
        Text("Status: ${state.status}")
        parsePrimaryProvider(state.snapshotJson)?.let { Text(it) }
        if (state.updatedAt.isNotBlank()) {
            Text(state.updatedAt)
        } else {
            Text("Reads latest snapshot from local cache")
        }
    }
}

private fun parsePrimaryProvider(snapshotJson: String): String? {
    if (snapshotJson.isBlank()) return null
    return runCatching {
        val providers = JSONObject(snapshotJson).optJSONArray("providers") ?: JSONArray()
        val provider = providers.optJSONObject(0) ?: return null
        val name = provider.optString("displayName", provider.optString("providerId", "Provider"))
        val lines = provider.optJSONArray("lines") ?: JSONArray()
        val line = lines.optJSONObject(0)
        val used = line?.opt("used")?.toString()
        val limit = line?.opt("limit")?.toString()
        val remaining = line?.opt("remaining")?.toString()
        val remainingText = remainingLimitText(used, limit, remaining)
        when {
            !remainingText.isNullOrBlank() -> "$name $remainingText"
            provider.optString("errorCode").isNotBlank() -> "$name ${provider.optString("errorCode")}"
            else -> name
        }
    }.getOrNull()
}

private fun remainingLimitText(used: String?, limit: String?, remaining: String?): String? {
    val limitValue = limit?.toDoubleOrNull()
    val remainingValue = remaining?.toDoubleOrNull()
        ?: limitValue?.let { limitNumber ->
            used?.toDoubleOrNull()?.let { usedNumber -> (limitNumber - usedNumber).coerceAtLeast(0.0) }
        }
    if (remainingValue == null) return null
    if (limitValue != null && limitValue > 0.0) {
        val percent = (remainingValue / limitValue * 100).coerceIn(0.0, 100.0)
        val formatted = if (percent % 1.0 == 0.0) percent.toLong().toString() else percent.toString()
        return "$formatted% left"
    }
    val formatted = if (remainingValue % 1.0 == 0.0) remainingValue.toLong().toString() else remainingValue.toString()
    return "$formatted left"
}

class AIUsageGlanceWidgetReceiver : GlanceAppWidgetReceiver() {
    override val glanceAppWidget: GlanceAppWidget = AIUsageGlanceWidget()
}
