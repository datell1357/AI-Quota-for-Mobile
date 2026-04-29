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
        when {
            !used.isNullOrBlank() && !limit.isNullOrBlank() -> "$name $used/$limit"
            provider.optString("errorCode").isNotBlank() -> "$name ${provider.optString("errorCode")}"
            else -> name
        }
    }.getOrNull()
}

class AIUsageGlanceWidgetReceiver : GlanceAppWidgetReceiver() {
    override val glanceAppWidget: GlanceAppWidget = AIUsageGlanceWidget()
}
