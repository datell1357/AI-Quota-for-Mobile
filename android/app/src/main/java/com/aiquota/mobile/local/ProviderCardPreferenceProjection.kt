package com.aiquota.mobile.local

import android.content.Context
import android.content.SharedPreferences
import com.aiquota.mobile.accounts.ManagedPreferencesState
import com.aiquota.mobile.accounts.ManagedPreferencesStateStore
import com.aiquota.mobile.accounts.ProviderAccountId
import com.aiquota.mobile.accounts.ProviderAccountIdStorageCodec
import java.security.MessageDigest

sealed interface ProviderCardPreferenceProjectionResult {
    data object Applied : ProviderCardPreferenceProjectionResult
    data class Conflicted(val providers: Set<ProviderId>) : ProviderCardPreferenceProjectionResult
    data object WriteFailed : ProviderCardPreferenceProjectionResult
}

/**
 * Migrates provider-keyed card settings once and maintains only the explicit-primary legacy view.
 * Dashboard view mode and Claude auto-prime are genuine provider-wide defaults and are not managed here.
 */
class ProviderCardPreferenceProjection(context: Context) {
    private val preferences = context.applicationContext.getSharedPreferences(PREFERENCES_NAME, Context.MODE_PRIVATE)

    internal fun captureManagedState(): ManagedPreferencesState =
        ManagedPreferencesStateStore.capture(preferences, ::isManagedKey)

    internal fun restoreManagedState(
        before: ManagedPreferencesState,
        applied: ManagedPreferencesState,
    ): Boolean = ManagedPreferencesStateStore.restore(preferences, before, applied)

    fun reconcile(
        primaryAccounts: Map<ProviderId, ProviderAccountId?>,
        orderedAccounts: List<ProviderAccountId> = ProviderId.defaultOrder().mapNotNull(primaryAccounts::get),
    ): ProviderCardPreferenceProjectionResult = synchronized(ProviderCardPreferencesRepository.LOCK) {
            require(ProviderId.defaultOrder().all(primaryAccounts::containsKey))
            require(primaryAccounts.all { (provider, id) -> id == null || id.providerId == provider })
            require(orderedAccounts.distinct() == orderedAccounts)
            require(orderedAccounts.toSet() == primaryAccounts.values.filterNotNull().toSet())
            val editor = preferences.edit()
            val conflicts = linkedSetOf<ProviderId>()
            ProviderId.defaultOrder().forEach { provider ->
                val selected = primaryAccounts[provider]
                val target = selected?.let(ProviderAccountIdStorageCodec::encode) ?: NONE
                val priorTarget = preferences.getString(targetKey(provider), null)
                val priorHash = preferences.getString(hashKey(provider), null)
                val currentHash = legacyFingerprint(provider)
                val externalConflict = priorTarget != null && priorHash != null && priorHash != currentHash
                if (externalConflict && selected != null) {
                    conflicts += provider
                    return@forEach
                }
                if (priorTarget == null && selected != null) {
                    migrateLegacyScalars(editor, provider, selected)
                    migrateLegacyWidgetState(editor, provider, selected, primaryAccounts)
                } else {
                    projectScalars(editor, provider, selected)
                }
                projectLegacyWidgetState(editor, provider, selected, primaryAccounts)
                editor.putString(targetKey(provider), target)
                val desiredHash = if (priorTarget == null && selected != null) currentHash
                else desiredFingerprint(provider, selected)
                editor.putString(hashKey(provider), desiredHash)
            }
            val projectedProviders = orderedAccounts.map(ProviderAccountId::providerId).distinct()
            editor.putString(KEY_PROVIDER_ORDER, ProviderPreferencesCodec.encodeOrder(projectedProviders))
            editor.putString(
                KEY_HIDDEN_PROVIDERS,
                ProviderPreferencesCodec.encodeHidden((ProviderId.defaultOrder() - projectedProviders.toSet()).toSet()),
            )
            if (!editor.commit()) return@synchronized ProviderCardPreferenceProjectionResult.WriteFailed
            if (conflicts.isEmpty()) ProviderCardPreferenceProjectionResult.Applied
            else ProviderCardPreferenceProjectionResult.Conflicted(conflicts)
        }

    private fun migrateLegacyScalars(
        editor: SharedPreferences.Editor,
        provider: ProviderId,
        selected: ProviderAccountId,
    ) {
        copyString(editor, legacyGaugeKey(provider), exactKey(ProviderCardPreferencesRepository.GAUGE_COLOR_PREFIX, selected))
        copyBoolean(editor, legacyResetKey(provider), exactKey(ProviderCardPreferencesRepository.RESET_PREFIX, selected))
        copyBoolean(editor, legacyThresholdEnabledKey(provider), exactKey(ProviderCardPreferencesRepository.THRESHOLD_ENABLED_PREFIX, selected))
        copyInt(editor, legacyThresholdPercentKey(provider), exactKey(ProviderCardPreferencesRepository.THRESHOLD_PERCENT_PREFIX, selected))
    }

    private fun projectScalars(editor: SharedPreferences.Editor, provider: ProviderId, selected: ProviderAccountId?) {
        projectString(editor, legacyGaugeKey(provider), selected?.let { exactKey(ProviderCardPreferencesRepository.GAUGE_COLOR_PREFIX, it) })
        projectBoolean(editor, legacyResetKey(provider), selected?.let { exactKey(ProviderCardPreferencesRepository.RESET_PREFIX, it) })
        projectBoolean(editor, legacyThresholdEnabledKey(provider), selected?.let { exactKey(ProviderCardPreferencesRepository.THRESHOLD_ENABLED_PREFIX, it) })
        projectInt(editor, legacyThresholdPercentKey(provider), selected?.let { exactKey(ProviderCardPreferencesRepository.THRESHOLD_PERCENT_PREFIX, it) })
    }

    private fun migrateLegacyWidgetState(
        editor: SharedPreferences.Editor,
        provider: ProviderId,
        selected: ProviderAccountId,
        primaries: Map<ProviderId, ProviderAccountId?>,
    ) {
        preferences.all.forEach { (key, value) ->
            when {
                key.startsWith(LEGACY_WIDGET_SELECTION_PREFIX) && value == provider.storageId -> {
                    val exactKey = ProviderCardPreferencesRepository.WIDGET_SELECTION_PREFIX +
                        key.removePrefix(LEGACY_WIDGET_SELECTION_PREFIX)
                    if (!preferences.contains(exactKey)) {
                        editor.putString(exactKey, ProviderAccountIdStorageCodec.encode(selected))
                    }
                }
                key.startsWith(LEGACY_WIDGET_ORDER_PREFIX) -> migrateWidgetCollection(editor, key, value, primaries, hidden = false)
                key.startsWith(LEGACY_WIDGET_HIDDEN_PREFIX) -> migrateWidgetCollection(editor, key, value, primaries, hidden = true)
            }
        }
    }

    private fun migrateWidgetCollection(
        editor: SharedPreferences.Editor,
        legacyKey: String,
        value: Any?,
        primaries: Map<ProviderId, ProviderAccountId?>,
        hidden: Boolean,
    ) {
        val raw = value as? String ?: return
        val providers = if (hidden) ProviderPreferencesCodec.decodeHidden(raw).toList()
        else ProviderPreferencesCodec.decodeOrder(raw)
        val cards = providers.mapNotNull(primaries::get)
        val suffix = legacyKey.substringAfterLast('_')
        val key = (if (hidden) ProviderCardPreferencesRepository.WIDGET_HIDDEN_PREFIX
        else ProviderCardPreferencesRepository.WIDGET_ORDER_PREFIX) + suffix
        if (!preferences.contains(key)) editor.putString(key, ProviderCardPreferencesCodec.encode(cards))
    }

    private fun projectLegacyWidgetState(
        editor: SharedPreferences.Editor,
        provider: ProviderId,
        selected: ProviderAccountId?,
        primaries: Map<ProviderId, ProviderAccountId?>,
    ) {
        if (selected != null) return
        preferences.all.forEach { (key, value) ->
            when {
                key.startsWith(LEGACY_WIDGET_SELECTION_PREFIX) && value == provider.storageId -> editor.remove(key)
                key.startsWith(LEGACY_WIDGET_ORDER_PREFIX) -> filterLegacyProvider(editor, key, value, provider, primaries, false)
                key.startsWith(LEGACY_WIDGET_HIDDEN_PREFIX) -> filterLegacyProvider(editor, key, value, provider, primaries, true)
            }
        }
    }

    private fun filterLegacyProvider(
        editor: SharedPreferences.Editor,
        key: String,
        value: Any?,
        removed: ProviderId,
        primaries: Map<ProviderId, ProviderAccountId?>,
        hidden: Boolean,
    ) {
        val raw = value as? String ?: return
        val providers = if (hidden) ProviderPreferencesCodec.decodeHidden(raw).toList()
        else ProviderPreferencesCodec.decodeOrder(raw)
        val filtered = providers.filter { it != removed && primaries[it] != null }
        editor.putString(key, if (hidden) ProviderPreferencesCodec.encodeHidden(filtered.toSet()) else ProviderPreferencesCodec.encodeOrder(filtered))
    }

    private fun copyString(editor: SharedPreferences.Editor, legacy: String, exact: String) {
        if (!preferences.contains(exact) && preferences.contains(legacy)) editor.putString(exact, preferences.getString(legacy, null))
    }

    private fun copyBoolean(editor: SharedPreferences.Editor, legacy: String, exact: String) {
        if (!preferences.contains(exact) && preferences.contains(legacy)) editor.putBoolean(exact, preferences.getBoolean(legacy, false))
    }

    private fun copyInt(editor: SharedPreferences.Editor, legacy: String, exact: String) {
        if (!preferences.contains(exact) && preferences.contains(legacy)) editor.putInt(exact, preferences.getInt(legacy, 0))
    }

    private fun projectString(editor: SharedPreferences.Editor, legacy: String, exact: String?) {
        if (exact != null && preferences.contains(exact)) editor.putString(legacy, preferences.getString(exact, null)) else editor.remove(legacy)
    }

    private fun projectBoolean(editor: SharedPreferences.Editor, legacy: String, exact: String?) {
        if (exact != null && preferences.contains(exact)) editor.putBoolean(legacy, preferences.getBoolean(exact, false)) else editor.remove(legacy)
    }

    private fun projectInt(editor: SharedPreferences.Editor, legacy: String, exact: String?) {
        if (exact != null && preferences.contains(exact)) editor.putInt(legacy, preferences.getInt(exact, 0)) else editor.remove(legacy)
    }

    private fun desiredFingerprint(provider: ProviderId, selected: ProviderAccountId?): String {
        val values = selected?.let { id ->
            listOf(
                exactValue(ProviderCardPreferencesRepository.GAUGE_COLOR_PREFIX, id),
                exactValue(ProviderCardPreferencesRepository.RESET_PREFIX, id),
                exactValue(ProviderCardPreferencesRepository.THRESHOLD_ENABLED_PREFIX, id),
                exactValue(ProviderCardPreferencesRepository.THRESHOLD_PERCENT_PREFIX, id),
            )
        } ?: listOf(null, null, null, null)
        return hash(provider.storageId + values.joinToString("|") { it?.toString() ?: "<absent>" })
    }

    private fun legacyFingerprint(provider: ProviderId): String = hash(
        provider.storageId + listOf(
            preferences.all[legacyGaugeKey(provider)],
            preferences.all[legacyResetKey(provider)],
            preferences.all[legacyThresholdEnabledKey(provider)],
            preferences.all[legacyThresholdPercentKey(provider)],
        ).joinToString("|") { it?.toString() ?: "<absent>" }
    )

    private fun isManagedKey(key: String): Boolean = key == KEY_PROVIDER_ORDER || key == KEY_HIDDEN_PROVIDERS ||
        MANAGED_PREFIXES.any(key::startsWith)

    private fun exactValue(prefix: String, id: ProviderAccountId): Any? = preferences.all[exactKey(prefix, id)]
    private fun exactKey(prefix: String, id: ProviderAccountId) = prefix + ProviderAccountIdStorageCodec.encode(id)
    private fun targetKey(provider: ProviderId) = "$PROJECTION_TARGET_PREFIX${provider.storageId}"
    private fun hashKey(provider: ProviderId) = "$PROJECTION_HASH_PREFIX${provider.storageId}"
    private fun legacyGaugeKey(provider: ProviderId) = "$LEGACY_GAUGE_PREFIX${provider.storageId}"
    private fun legacyResetKey(provider: ProviderId) = "$LEGACY_RESET_PREFIX${provider.storageId}"
    private fun legacyThresholdEnabledKey(provider: ProviderId) = "$LEGACY_THRESHOLD_ENABLED_PREFIX${provider.storageId}"
    private fun legacyThresholdPercentKey(provider: ProviderId) = "$LEGACY_THRESHOLD_PERCENT_PREFIX${provider.storageId}"
    private fun hash(value: String) = MessageDigest.getInstance("SHA-256").digest(value.toByteArray()).joinToString("") { "%02x".format(it) }

    private companion object {
        const val PREFERENCES_NAME = "ai_quota_provider_preferences"
        const val NONE = "none"
        const val PROJECTION_TARGET_PREFIX = "card_projection_target_v1_"
        const val PROJECTION_HASH_PREFIX = "card_projection_hash_v1_"
        const val KEY_PROVIDER_ORDER = "provider_order"
        const val KEY_HIDDEN_PROVIDERS = "hidden_providers"
        const val LEGACY_WIDGET_SELECTION_PREFIX = "provider_widget_selection_"
        const val LEGACY_WIDGET_ORDER_PREFIX = "dashboard_widget_provider_order_"
        const val LEGACY_WIDGET_HIDDEN_PREFIX = "dashboard_widget_hidden_providers_"
        const val LEGACY_GAUGE_PREFIX = "provider_gauge_color_"
        const val LEGACY_RESET_PREFIX = "reset_notification_enabled_"
        const val LEGACY_THRESHOLD_ENABLED_PREFIX = "usage_threshold_enabled_"
        const val LEGACY_THRESHOLD_PERCENT_PREFIX = "usage_threshold_percent_"
        val MANAGED_PREFIXES = listOf(
            PROJECTION_TARGET_PREFIX,
            PROJECTION_HASH_PREFIX,
            LEGACY_WIDGET_SELECTION_PREFIX,
            LEGACY_WIDGET_ORDER_PREFIX,
            LEGACY_WIDGET_HIDDEN_PREFIX,
            LEGACY_GAUGE_PREFIX,
            LEGACY_RESET_PREFIX,
            LEGACY_THRESHOLD_ENABLED_PREFIX,
            LEGACY_THRESHOLD_PERCENT_PREFIX,
            ProviderCardPreferencesRepository.WIDGET_SELECTION_PREFIX,
            ProviderCardPreferencesRepository.WIDGET_ORDER_PREFIX,
            ProviderCardPreferencesRepository.WIDGET_HIDDEN_PREFIX,
            ProviderCardPreferencesRepository.GAUGE_COLOR_PREFIX,
            ProviderCardPreferencesRepository.RESET_PREFIX,
            ProviderCardPreferencesRepository.THRESHOLD_ENABLED_PREFIX,
            ProviderCardPreferencesRepository.THRESHOLD_PERCENT_PREFIX,
        )
    }
}
