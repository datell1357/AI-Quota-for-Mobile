package com.aiusage.mobile.widget

import android.content.Context

class WidgetSnapshotCache(private val context: Context) {
    private val preferences = context.getSharedPreferences("ai_usage_widget_cache", Context.MODE_PRIVATE)

    fun write(snapshotJson: String) {
        preferences.edit().putString("latest_snapshot", snapshotJson).apply()
    }

    fun read(): String {
        return preferences.getString("latest_snapshot", "{}") ?: "{}"
    }
}

