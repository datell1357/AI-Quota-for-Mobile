package com.aiquota.mobile.local

import android.content.Context
import android.content.SharedPreferences

class ProviderPreferencesRepository(context: Context) {
    private val preferences: SharedPreferences = context.getSharedPreferences(
        PREFERENCES_NAME,
        Context.MODE_PRIVATE
    )

    fun providerOrder(): List<ProviderId> {
        return ProviderPreferencesCodec.decodeOrder(preferences.getString(KEY_PROVIDER_ORDER, "").orEmpty())
    }

    fun hiddenProviders(): Set<ProviderId> {
        return ProviderPreferencesCodec.decodeHidden(preferences.getString(KEY_HIDDEN_PROVIDERS, "").orEmpty())
    }

    fun visibleProviders(): List<ProviderId> {
        return ProviderPreferencesCodec.visibleProviders(providerOrder(), hiddenProviders())
    }

    fun saveProviderOrder(order: List<ProviderId>) {
        preferences.edit()
            .putString(KEY_PROVIDER_ORDER, ProviderPreferencesCodec.encodeOrder(order))
            .apply()
    }

    fun moveProvider(providerId: ProviderId, targetIndex: Int) {
        saveProviderOrder(ProviderPreferencesCodec.moveProvider(providerOrder(), providerId, targetIndex))
    }

    fun setProviderHidden(providerId: ProviderId, hiddenState: Boolean) {
        val nextHidden = ProviderPreferencesCodec.setHidden(hiddenProviders(), providerId, hiddenState)
        preferences.edit()
            .putString(KEY_HIDDEN_PROVIDERS, ProviderPreferencesCodec.encodeHidden(nextHidden))
            .apply()
    }

    fun dashboardWidgetProviderOrder(appWidgetId: Int): List<ProviderId> {
        val key = "$KEY_DASHBOARD_WIDGET_PROVIDER_ORDER_PREFIX$appWidgetId"
        val value = preferences.getString(key, null)
        return if (value == null) {
            providerOrder()
        } else {
            ProviderPreferencesCodec.decodeOrder(value)
        }
    }

    fun dashboardWidgetHiddenProviders(appWidgetId: Int): Set<ProviderId> {
        val key = "$KEY_DASHBOARD_WIDGET_HIDDEN_PROVIDERS_PREFIX$appWidgetId"
        val value = preferences.getString(key, null)
        return if (value == null) {
            hiddenProviders()
        } else {
            ProviderPreferencesCodec.decodeHidden(value)
        }
    }

    fun saveDashboardWidgetProviderOrder(appWidgetId: Int, order: List<ProviderId>) {
        val key = "$KEY_DASHBOARD_WIDGET_PROVIDER_ORDER_PREFIX$appWidgetId"
        preferences.edit()
            .putString(key, ProviderPreferencesCodec.encodeOrder(order))
            .apply()
    }

    fun saveDashboardWidgetHiddenProviders(appWidgetId: Int, hidden: Set<ProviderId>) {
        val key = "$KEY_DASHBOARD_WIDGET_HIDDEN_PROVIDERS_PREFIX$appWidgetId"
        preferences.edit()
            .putString(key, ProviderPreferencesCodec.encodeHidden(hidden))
            .apply()
    }

    fun setDashboardWidgetProviderHidden(appWidgetId: Int, providerId: ProviderId, hiddenState: Boolean) {
        val nextHidden = ProviderPreferencesCodec.setHidden(
            dashboardWidgetHiddenProviders(appWidgetId),
            providerId,
            hiddenState
        )
        saveDashboardWidgetHiddenProviders(appWidgetId, nextHidden)
    }

    fun clearDashboardWidgetConfiguration(appWidgetId: Int) {
        preferences.edit()
            .remove("$KEY_DASHBOARD_WIDGET_PROVIDER_ORDER_PREFIX$appWidgetId")
            .remove("$KEY_DASHBOARD_WIDGET_HIDDEN_PROVIDERS_PREFIX$appWidgetId")
            .apply()
    }

    fun providerWidgetSelection(appWidgetId: Int): ProviderId? {
        val key = "$KEY_PROVIDER_WIDGET_SELECTION_PREFIX$appWidgetId"
        return ProviderId.fromStorageId(preferences.getString(key, "").orEmpty())
    }

    fun saveProviderWidgetSelection(appWidgetId: Int, providerId: ProviderId) {
        val key = "$KEY_PROVIDER_WIDGET_SELECTION_PREFIX$appWidgetId"
        preferences.edit()
            .putString(key, providerId.storageId)
            .apply()
    }

    fun clearProviderWidgetSelection(appWidgetId: Int) {
        val key = "$KEY_PROVIDER_WIDGET_SELECTION_PREFIX$appWidgetId"
        preferences.edit()
            .remove(key)
            .apply()
    }

    fun dashboardViewMode(): DashboardViewMode {
        return DashboardViewMode.fromStorageId(preferences.getString(KEY_DASHBOARD_VIEW_MODE, null))
    }

    fun setDashboardViewMode(mode: DashboardViewMode) {
        preferences.edit()
            .putString(KEY_DASHBOARD_VIEW_MODE, mode.name)
            .apply()
    }

    fun isClaudeAutoResetPrimeEnabled(): Boolean {
        return preferences.getBoolean(KEY_CLAUDE_AUTO_RESET_PRIME, false)
    }

    fun setClaudeAutoResetPrimeEnabled(enabled: Boolean) {
        preferences.edit()
            .putBoolean(KEY_CLAUDE_AUTO_RESET_PRIME, enabled)
            .apply()
    }

    fun isResetNotificationEnabled(providerId: ProviderId): Boolean {
        return preferences.getBoolean("$KEY_RESET_NOTIFICATION_PREFIX${providerId.storageId}", true)
    }

    fun resetNotificationEnabledProviders(): Set<ProviderId> {
        return ProviderId.defaultOrder().filterTo(mutableSetOf(), ::isResetNotificationEnabled)
    }

    fun setResetNotificationEnabled(providerId: ProviderId, enabled: Boolean) {
        preferences.edit()
            .putBoolean("$KEY_RESET_NOTIFICATION_PREFIX${providerId.storageId}", enabled)
            .apply()
    }

    fun isUsageThresholdNotificationEnabled(providerId: ProviderId): Boolean {
        return preferences.getBoolean("$KEY_USAGE_THRESHOLD_ENABLED_PREFIX${providerId.storageId}", false)
    }

    fun setUsageThresholdNotificationEnabled(providerId: ProviderId, enabled: Boolean) {
        preferences.edit()
            .putBoolean("$KEY_USAGE_THRESHOLD_ENABLED_PREFIX${providerId.storageId}", enabled)
            .apply()
    }

    fun usageThresholdEnabledProviders(): Set<ProviderId> {
        return ProviderId.defaultOrder().filterTo(mutableSetOf(), ::isUsageThresholdNotificationEnabled)
    }

    fun usageThresholdPercents(): Map<ProviderId, Int> {
        return ProviderId.defaultOrder().associateWith(::usageThresholdPercent)
    }

    fun usageThresholdPercent(providerId: ProviderId): Int {
        val stored = preferences.getInt("$KEY_USAGE_THRESHOLD_PERCENT_PREFIX${providerId.storageId}", DEFAULT_USAGE_THRESHOLD_PERCENT)
        return stored.coerceIn(MIN_USAGE_THRESHOLD_PERCENT, MAX_USAGE_THRESHOLD_PERCENT)
    }

    fun setUsageThresholdPercent(providerId: ProviderId, percent: Int) {
        preferences.edit()
            .putInt(
                "$KEY_USAGE_THRESHOLD_PERCENT_PREFIX${providerId.storageId}",
                percent.coerceIn(MIN_USAGE_THRESHOLD_PERCENT, MAX_USAGE_THRESHOLD_PERCENT)
            )
            .apply()
    }

    fun providerGaugeColor(providerId: ProviderId): String? {
        val key = "$KEY_PROVIDER_GAUGE_COLOR_PREFIX${providerId.storageId}"
        return ProviderGaugeColor.normalize(preferences.getString(key, null))
    }

    fun providerGaugeColors(): Map<ProviderId, String> {
        return ProviderId.defaultOrder().mapNotNull { providerId ->
            providerGaugeColor(providerId)?.let { color -> providerId to color }
        }.toMap()
    }

    fun saveProviderGaugeColor(providerId: ProviderId, color: String?) {
        val key = "$KEY_PROVIDER_GAUGE_COLOR_PREFIX${providerId.storageId}"
        val normalized = ProviderGaugeColor.normalize(color)
        preferences.edit().apply {
            if (normalized == null) {
                remove(key)
            } else {
                putString(key, normalized)
            }
        }.apply()
    }

    fun clearSingleAccountProviderArtifacts(providerId: ProviderId): Boolean {
        val editor = preferences.edit()
            .remove("$KEY_PROVIDER_GAUGE_COLOR_PREFIX${providerId.storageId}")
            .remove("$KEY_RESET_NOTIFICATION_PREFIX${providerId.storageId}")
            .remove("$KEY_USAGE_THRESHOLD_ENABLED_PREFIX${providerId.storageId}")
            .remove("$KEY_USAGE_THRESHOLD_PERCENT_PREFIX${providerId.storageId}")
        preferences.all.forEach { (key, value) ->
            if (key.startsWith(KEY_PROVIDER_WIDGET_SELECTION_PREFIX) &&
                value == providerId.storageId
            ) editor.remove(key)
        }
        return editor.commit()
    }

    companion object {
        private const val PREFERENCES_NAME = "ai_quota_provider_preferences"
        private const val KEY_PROVIDER_ORDER = "provider_order"
        private const val KEY_HIDDEN_PROVIDERS = "hidden_providers"
        private const val KEY_PROVIDER_WIDGET_SELECTION_PREFIX = "provider_widget_selection_"
        private const val KEY_DASHBOARD_WIDGET_PROVIDER_ORDER_PREFIX = "dashboard_widget_provider_order_"
        private const val KEY_DASHBOARD_WIDGET_HIDDEN_PROVIDERS_PREFIX = "dashboard_widget_hidden_providers_"
        private const val KEY_PROVIDER_GAUGE_COLOR_PREFIX = "provider_gauge_color_"
        private const val KEY_CLAUDE_AUTO_RESET_PRIME = "claude_auto_reset_prime_enabled"
        private const val KEY_DASHBOARD_VIEW_MODE = "dashboard_view_mode"
        private const val KEY_RESET_NOTIFICATION_PREFIX = "reset_notification_enabled_"
        private const val KEY_USAGE_THRESHOLD_ENABLED_PREFIX = "usage_threshold_enabled_"
        private const val KEY_USAGE_THRESHOLD_PERCENT_PREFIX = "usage_threshold_percent_"
        const val DEFAULT_USAGE_THRESHOLD_PERCENT = 5
        const val MIN_USAGE_THRESHOLD_PERCENT = 1
        const val MAX_USAGE_THRESHOLD_PERCENT = 99
    }
}
