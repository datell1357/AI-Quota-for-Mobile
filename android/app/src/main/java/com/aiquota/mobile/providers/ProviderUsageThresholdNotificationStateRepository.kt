package com.aiquota.mobile.providers

import android.content.Context
import com.aiquota.mobile.accounts.ProviderAccountId
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
            .putString(KEY_ARMED, encode(armed))
            .apply()
    }

    fun readExactArmed(): Map<ProviderAccountLineKey, Boolean> {
        val raw = preferences.getString(KEY_EXACT_ARMED, null)?.takeIf { it.isNotBlank() } ?: return emptyMap()
        val root = runCatching { JSONObject(raw) }.getOrNull() ?: return emptyMap()
        return buildMap {
            val names = root.keys()
            while (names.hasNext()) {
                val encoded = names.next()
                ProviderAccountLineKeyCodec.decodeOrNull(encoded)?.let { put(it, root.optBoolean(encoded, true)) }
            }
        }
    }

    fun writeExactArmed(armed: Map<ProviderAccountLineKey, Boolean>): Boolean = synchronized(LOCK) {
        preferences.edit().putString(KEY_EXACT_ARMED, encodeExact(armed)).commit()
    }

    fun clearProvider(providerId: com.aiquota.mobile.local.ProviderId): Boolean {
        val prefix = "${providerId.storageId}:"
        return preferences.edit()
            .putString(KEY_ARMED, encode(readArmed().filterKeys { !it.startsWith(prefix) }))
            .commit()
    }

    fun clearExact(accountId: ProviderAccountId): Boolean = synchronized(LOCK) {
        val raw = preferences.getString(KEY_EXACT_ARMED, null) ?: "{}"
        val root = runCatching { JSONObject(raw) }.getOrNull() ?: return@synchronized true
        root.keys().asSequence().toList().forEach { encoded ->
            if (ProviderAccountLineKeyCodec.decodeOrNull(encoded)?.accountId == accountId) root.remove(encoded)
        }
        preferences.edit().putString(KEY_EXACT_ARMED, root.toString()).commit()
    }

    private fun encode(armed: Map<String, Boolean>): String = JSONObject().also { json ->
        armed.forEach { (key, value) -> json.put(key, value) }
    }.toString()

    private fun encodeExact(armed: Map<ProviderAccountLineKey, Boolean>): String = JSONObject().also { json ->
        armed.toSortedMap(compareBy(ProviderAccountLineKeyCodec::encode)).forEach { (key, value) ->
            json.put(ProviderAccountLineKeyCodec.encode(key), value)
        }
    }.toString()

    private companion object {
        val LOCK = Any()
        const val PREFERENCES_NAME = "ai_quota_usage_threshold_notifications"
        const val KEY_ARMED = "armed"
        const val KEY_EXACT_ARMED = "armed_cards_v1"
    }
}
