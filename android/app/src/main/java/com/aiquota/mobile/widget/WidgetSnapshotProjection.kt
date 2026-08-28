package com.aiquota.mobile.widget

import android.content.Context
import com.aiquota.mobile.accounts.ManagedPreferencesState
import com.aiquota.mobile.accounts.ManagedPreferencesStateStore
import com.aiquota.mobile.accounts.ProviderAccountId
import com.aiquota.mobile.accounts.ProviderAccountIdStorageCodec
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.providers.ProviderSnapshotCodec

/** Migrates provider snapshots to exact cards and removes legacy rows when no explicit primary exists. */
class WidgetSnapshotProjection(context: Context) {
    private val appContext = context.applicationContext
    private val cache = WidgetSnapshotCache(appContext)
    private val preferences = appContext.getSharedPreferences(PREFERENCES_NAME, Context.MODE_PRIVATE)

    internal fun captureManagedState(): ManagedPreferencesState =
        ManagedPreferencesStateStore.capture(preferences, ::isManagedKey)

    internal fun restoreManagedState(
        before: ManagedPreferencesState,
        applied: ManagedPreferencesState,
    ): Boolean = ManagedPreferencesStateStore.restore(preferences, before, applied)

    fun reconcile(primaryAccounts: Map<ProviderId, ProviderAccountId?>): Boolean = synchronized(LOCK) {
        require(ProviderId.defaultOrder().all(primaryAccounts::containsKey))
        require(primaryAccounts.all { (provider, id) -> id == null || id.providerId == provider })
        val raw = cache.read()
        val legacy = if (raw.isBlank()) emptyList()
        else runCatching { ProviderSnapshotCodec.decode(raw) }.getOrNull() ?: return@synchronized false
        val byProvider = legacy.groupBy { it.providerId }
        val editor = preferences.edit()
        ProviderId.defaultOrder().forEach { provider ->
            val selected = primaryAccounts[provider]
            val marker = "$MARKER_PREFIX${provider.storageId}"
            if (!preferences.contains(marker) && selected != null) {
                val snapshot = byProvider[provider]?.singleOrNull()
                if (snapshot != null && cache.readExactCardState(selected) == null) {
                    if (!cache.writeExactCardSnapshot(selected, ProviderSnapshotCodec.encode(listOf(snapshot)))) {
                        return@synchronized false
                    }
                }
            }
            if (selected == null && byProvider[provider].orEmpty().isNotEmpty()) {
                if (!cache.removeSingleAccountProvider(provider)) return@synchronized false
            }
            editor.putString(marker, selected?.let(ProviderAccountIdStorageCodec::encode) ?: NONE)
        }
        editor.commit()
    }

    private fun isManagedKey(key: String): Boolean = key == KEY_LATEST_SNAPSHOT ||
        key == KEY_LOCAL_DISPLAY_SNAPSHOT || key.startsWith(MARKER_PREFIX) ||
        key.startsWith(KEY_CARD_SNAPSHOT_PREFIX) || key.startsWith(KEY_CARD_UPDATED_AT_PREFIX)

    private companion object {
        val LOCK = Any()
        const val PREFERENCES_NAME = "ai_quota_widget_cache"
        const val MARKER_PREFIX = "card_projection_target_v1_"
        const val NONE = "none"
        const val KEY_LATEST_SNAPSHOT = "latest_snapshot"
        const val KEY_LOCAL_DISPLAY_SNAPSHOT = "local_display_snapshot"
        const val KEY_CARD_SNAPSHOT_PREFIX = "card_snapshot_v1_"
        const val KEY_CARD_UPDATED_AT_PREFIX = "card_updated_at_v1_"
    }
}
