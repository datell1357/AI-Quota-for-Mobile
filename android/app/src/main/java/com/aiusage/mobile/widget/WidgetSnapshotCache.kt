package com.aiusage.mobile.widget

import android.content.Context

data class WidgetSnapshotState(
    val snapshotJson: String,
    val deviceName: String,
    val status: String,
    val updatedAt: String
)

class WidgetSnapshotCache(private val context: Context) {
    private val preferences = context.getSharedPreferences("ai_usage_widget_cache", Context.MODE_PRIVATE)

    fun write(snapshotJson: String, status: String = "NotLinked", deviceName: String = "", updatedAt: String = "") {
        preferences.edit()
            .putString("latest_snapshot", snapshotJson)
            .putString("status", status)
            .putString("device_name", deviceName)
            .putString("updated_at", updatedAt)
            .apply()
    }

    fun read(): String {
        return preferences.getString("latest_snapshot", "") ?: ""
    }

    fun readState(): WidgetSnapshotState {
        return WidgetSnapshotState(
            snapshotJson = read(),
            deviceName = preferences.getString("device_name", "") ?: "",
            status = preferences.getString("status", "NotLinked") ?: "NotLinked",
            updatedAt = preferences.getString("updated_at", "") ?: ""
        )
    }
}
