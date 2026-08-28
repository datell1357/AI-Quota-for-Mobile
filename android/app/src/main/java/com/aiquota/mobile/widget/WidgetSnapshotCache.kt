package com.aiquota.mobile.widget

import android.content.Context
import com.aiquota.mobile.accounts.ProviderAccountId
import com.aiquota.mobile.accounts.ProviderAccountIdStorageCodec
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.local.WidgetCacheSanitizer
import com.aiquota.mobile.providers.ProviderSnapshotCodec

data class WidgetSnapshotState(
    val snapshotJson: String,
    val deviceName: String,
    val status: String,
    val updatedAt: String
)

class WidgetSnapshotCache(private val context: Context) {
    private val preferences = context.getSharedPreferences(PREFERENCES_NAME, Context.MODE_PRIVATE)

    fun write(snapshotJson: String, status: String = "NotLinked", deviceName: String = "", updatedAt: String = "") {
        preferences.edit()
            .putString(KEY_LATEST_SNAPSHOT, snapshotJson)
            .putString(KEY_STATUS, status)
            .putString(KEY_DEVICE_NAME, deviceName)
            .putString(KEY_UPDATED_AT, updatedAt)
            .apply()
    }

    fun writeLocalDisplaySnapshot(snapshotJson: String, updatedAt: String = "") {
        val sanitizedJson = WidgetCacheSanitizer.sanitizeDisplayOnlyJson(snapshotJson)
        preferences.edit()
            .putString(KEY_LOCAL_DISPLAY_SNAPSHOT, sanitizedJson)
            .putString(KEY_LOCAL_DISPLAY_UPDATED_AT, updatedAt)
            .apply()
    }

    fun read(): String {
        return readLocalDisplaySnapshot().ifBlank {
            preferences.getString(KEY_LATEST_SNAPSHOT, "") ?: ""
        }
    }

    fun readLocalDisplaySnapshot(): String {
        return preferences.getString(KEY_LOCAL_DISPLAY_SNAPSHOT, "") ?: ""
    }

    fun writeExactCardSnapshot(
        accountId: ProviderAccountId,
        snapshotJson: String,
        updatedAt: String = "",
    ): Boolean = synchronized(LOCK) {
        val sanitized = WidgetCacheSanitizer.sanitizeDisplayOnlyJson(snapshotJson)
        val encoded = ProviderAccountIdStorageCodec.encode(accountId)
        preferences.edit()
            .putString("$KEY_CARD_SNAPSHOT_PREFIX$encoded", sanitized)
            .putString("$KEY_CARD_UPDATED_AT_PREFIX$encoded", updatedAt)
            .commit()
    }

    fun readExactCardState(accountId: ProviderAccountId): WidgetSnapshotState? = synchronized(LOCK) {
        val encoded = ProviderAccountIdStorageCodec.encode(accountId)
        val snapshot = preferences.getString("$KEY_CARD_SNAPSHOT_PREFIX$encoded", null) ?: return@synchronized null
        WidgetSnapshotState(
            snapshotJson = snapshot,
            deviceName = LOCAL_DEVICE_NAME,
            status = LOCAL_STATUS,
            updatedAt = preferences.getString("$KEY_CARD_UPDATED_AT_PREFIX$encoded", "").orEmpty(),
        )
    }

    fun exactCardSnapshots(): Map<ProviderAccountId, WidgetSnapshotState> = synchronized(LOCK) {
        preferences.all.mapNotNull { (key, value) ->
            if (!key.startsWith(KEY_CARD_SNAPSHOT_PREFIX)) return@mapNotNull null
            val accountId = ProviderAccountIdStorageCodec.decodeOrNull(key.removePrefix(KEY_CARD_SNAPSHOT_PREFIX))
                ?: return@mapNotNull null
            val snapshot = value as? String ?: return@mapNotNull null
            val encoded = ProviderAccountIdStorageCodec.encode(accountId)
            accountId to WidgetSnapshotState(
                snapshot,
                LOCAL_DEVICE_NAME,
                LOCAL_STATUS,
                preferences.getString("$KEY_CARD_UPDATED_AT_PREFIX$encoded", "").orEmpty(),
            )
        }.toMap()
    }

    fun removeExactCard(accountId: ProviderAccountId): Boolean = synchronized(LOCK) {
        val encoded = ProviderAccountIdStorageCodec.encode(accountId)
        preferences.edit()
            .remove("$KEY_CARD_SNAPSHOT_PREFIX$encoded")
            .remove("$KEY_CARD_UPDATED_AT_PREFIX$encoded")
            .commit()
    }

    fun removeSingleAccountProvider(providerId: ProviderId): Boolean {
        val editor = preferences.edit()
        listOf(KEY_LATEST_SNAPSHOT, KEY_LOCAL_DISPLAY_SNAPSHOT).forEach { key ->
            val raw = preferences.getString(key, null) ?: return@forEach
            val snapshots = runCatching { ProviderSnapshotCodec.decode(raw) }.getOrElse { return false }
            editor.putString(
                key,
                ProviderSnapshotCodec.encode(snapshots.filterNot { it.providerId == providerId }),
            )
        }
        return editor.commit()
    }

    fun readState(): WidgetSnapshotState {
        val localSnapshot = readLocalDisplaySnapshot()
        if (localSnapshot.isNotBlank()) {
            return WidgetSnapshotState(
                snapshotJson = localSnapshot,
                deviceName = LOCAL_DEVICE_NAME,
                status = LOCAL_STATUS,
                updatedAt = preferences.getString(KEY_LOCAL_DISPLAY_UPDATED_AT, "") ?: ""
            )
        }
        return WidgetSnapshotState(
            snapshotJson = read(),
            deviceName = preferences.getString(KEY_DEVICE_NAME, "") ?: "",
            status = preferences.getString(KEY_STATUS, DEFAULT_STATUS) ?: DEFAULT_STATUS,
            updatedAt = preferences.getString(KEY_UPDATED_AT, "") ?: ""
        )
    }

    private companion object {
        val LOCK = Any()
        const val PREFERENCES_NAME = "ai_quota_widget_cache"
        const val KEY_LATEST_SNAPSHOT = "latest_snapshot"
        const val KEY_STATUS = "status"
        const val KEY_DEVICE_NAME = "device_name"
        const val KEY_UPDATED_AT = "updated_at"
        const val KEY_LOCAL_DISPLAY_SNAPSHOT = "local_display_snapshot"
        const val KEY_LOCAL_DISPLAY_UPDATED_AT = "local_display_updated_at"
        const val KEY_CARD_SNAPSHOT_PREFIX = "card_snapshot_v1_"
        const val KEY_CARD_UPDATED_AT_PREFIX = "card_updated_at_v1_"
        const val DEFAULT_STATUS = "NotLinked"
        const val LOCAL_STATUS = "LocalProviders"
        const val LOCAL_DEVICE_NAME = "This device"
    }
}
