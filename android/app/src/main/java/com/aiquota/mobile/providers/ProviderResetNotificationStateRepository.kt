package com.aiquota.mobile.providers

import android.content.Context
import org.json.JSONObject

/** Persists per-line reset tracking for [ProviderResetNotificationPolicy]. */
class ProviderResetNotificationStateRepository(context: Context) {
    private val preferences = context.applicationContext
        .getSharedPreferences(PREFERENCES_NAME, Context.MODE_PRIVATE)

    fun readPending(): Map<String, Long> = read(KEY_PENDING)

    fun readNotified(): Map<String, Long> = read(KEY_NOTIFIED)

    fun write(pending: Map<String, Long>, notified: Map<String, Long>) {
        preferences.edit()
            .putString(KEY_PENDING, encode(pending))
            .putString(KEY_NOTIFIED, encode(notified))
            .apply()
    }

    fun clearProvider(providerId: com.aiquota.mobile.local.ProviderId): Boolean {
        val prefix = "${providerId.storageId}:"
        return preferences.edit()
            .putString(KEY_PENDING, encode(readPending().filterKeys { !it.startsWith(prefix) }))
            .putString(KEY_NOTIFIED, encode(readNotified().filterKeys { !it.startsWith(prefix) }))
            .commit()
    }

    private fun read(key: String): Map<String, Long> {
        val raw = preferences.getString(key, null)?.takeIf { it.isNotBlank() } ?: return emptyMap()
        val root = runCatching { JSONObject(raw) }.getOrNull() ?: return emptyMap()
        val result = linkedMapOf<String, Long>()
        val names = root.keys()
        while (names.hasNext()) {
            val name = names.next()
            val value = root.optLong(name, -1L)
            if (value > 0L) result[name] = value
        }
        return result
    }

    private fun encode(values: Map<String, Long>): String {
        return JSONObject().also { json ->
            values.forEach { (key, value) -> json.put(key, value) }
        }.toString()
    }

    private companion object {
        const val PREFERENCES_NAME = "ai_quota_reset_notifications"
        const val KEY_PENDING = "pending"
        const val KEY_NOTIFIED = "notified"
    }
}
