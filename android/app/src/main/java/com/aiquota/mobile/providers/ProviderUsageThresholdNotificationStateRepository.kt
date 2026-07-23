package com.aiquota.mobile.providers

import android.content.Context
import org.json.JSONObject

/** Persists per-line armed state for [ProviderUsageThresholdNotificationPolicy]. */
class ProviderUsageThresholdNotificationStateRepository(context: Context) {
    private val preferences = context.applicationContext
        .getSharedPreferences(PREFERENCES_NAME, Context.MODE_PRIVATE)

    fun readArmed(): Map<String, Boolean> {
        val raw = preferences.getString(KEY_ARMED, null)?.takeIf { it.isNotBlank() } ?: return emptyMap()
        val root = runCatching { JSONObject(raw) }.getOrNull() ?: return emptyMap()
        val result = linkedMapOf<String, Boolean>()
        val names = root.keys()
        while (names.hasNext()) {
            val name = names.next()
            result[name] = root.optBoolean(name, true)
        }
        return result
    }

    fun writeArmed(armed: Map<String, Boolean>) {
        preferences.edit()
            .putString(KEY_ARMED, JSONObject().also { json ->
                armed.forEach { (key, value) -> json.put(key, value) }
            }.toString())
            .apply()
    }

    private companion object {
        const val PREFERENCES_NAME = "ai_quota_usage_threshold_notifications"
        const val KEY_ARMED = "armed"
    }
}
