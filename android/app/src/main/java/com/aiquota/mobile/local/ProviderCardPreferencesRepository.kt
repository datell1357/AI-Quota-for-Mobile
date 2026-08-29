package com.aiquota.mobile.local

import android.content.Context
import android.content.SharedPreferences
import com.aiquota.mobile.accounts.ProviderAccountId
import com.aiquota.mobile.accounts.ProviderAccountIdStorageCodec

/** Card-scoped dashboard preferences. Provider-wide defaults remain in [ProviderPreferencesRepository]. */
class ProviderCardPreferencesRepository(context: Context) {
    private val preferences = context.applicationContext.getSharedPreferences(PREFERENCES_NAME, Context.MODE_PRIVATE)

    fun dashboardWidgetCardOrder(appWidgetId: Int): List<ProviderAccountId> = synchronized(LOCK) {
        ProviderCardPreferencesCodec.decode(preferences.getString(widgetOrderKey(appWidgetId), null))
    }

    fun dashboardWidgetHiddenCards(appWidgetId: Int): Set<ProviderAccountId> = synchronized(LOCK) {
        ProviderCardPreferencesCodec.decode(preferences.getString(widgetHiddenKey(appWidgetId), null)).toSet()
    }

    fun saveDashboardWidgetCardOrder(appWidgetId: Int, order: List<ProviderAccountId>): Boolean = synchronized(LOCK) {
        preferences.edit().putString(widgetOrderKey(appWidgetId), ProviderCardPreferencesCodec.encode(order)).commit()
    }

    fun saveDashboardWidgetHiddenCards(appWidgetId: Int, hidden: Set<ProviderAccountId>): Boolean = synchronized(LOCK) {
        preferences.edit().putString(widgetHiddenKey(appWidgetId), ProviderCardPreferencesCodec.encode(hidden)).commit()
    }

    fun providerWidgetSelection(appWidgetId: Int): ProviderAccountId? = synchronized(LOCK) {
        ProviderAccountIdStorageCodec.decodeOrNull(preferences.getString(widgetSelectionKey(appWidgetId), null))
    }

    fun saveProviderWidgetSelection(appWidgetId: Int, accountId: ProviderAccountId): Boolean = synchronized(LOCK) {
        preferences.edit().putString(widgetSelectionKey(appWidgetId), ProviderAccountIdStorageCodec.encode(accountId)).commit()
    }

    fun providerWidgetIds(accountId: ProviderAccountId): Set<Int> = synchronized(LOCK) {
        preferences.all.mapNotNull { (key, value) ->
            if (!key.startsWith(WIDGET_SELECTION_PREFIX) ||
                ProviderAccountIdStorageCodec.decodeOrNull(value as? String) != accountId
            ) return@mapNotNull null
            key.removePrefix(WIDGET_SELECTION_PREFIX).toIntOrNull()
        }.toSet()
    }

    fun clearProviderWidgetSelection(appWidgetId: Int): Boolean = synchronized(LOCK) {
        preferences.edit().remove(widgetSelectionKey(appWidgetId)).commit()
    }

    fun isResetNotificationEnabled(accountId: ProviderAccountId): Boolean = synchronized(LOCK) {
        preferences.getBoolean(cardKey(RESET_PREFIX, accountId), true)
    }

    fun setResetNotificationEnabled(accountId: ProviderAccountId, enabled: Boolean): Boolean = synchronized(LOCK) {
        preferences.edit().putBoolean(cardKey(RESET_PREFIX, accountId), enabled).commit()
    }

    fun isUsageThresholdNotificationEnabled(accountId: ProviderAccountId): Boolean = synchronized(LOCK) {
        preferences.getBoolean(cardKey(THRESHOLD_ENABLED_PREFIX, accountId), false)
    }

    fun setUsageThresholdNotificationEnabled(accountId: ProviderAccountId, enabled: Boolean): Boolean = synchronized(LOCK) {
        preferences.edit().putBoolean(cardKey(THRESHOLD_ENABLED_PREFIX, accountId), enabled).commit()
    }

    fun usageThresholdPercent(accountId: ProviderAccountId): Int = synchronized(LOCK) {
        preferences.getInt(cardKey(THRESHOLD_PERCENT_PREFIX, accountId), DEFAULT_USAGE_THRESHOLD_PERCENT)
            .coerceIn(MIN_USAGE_THRESHOLD_PERCENT, MAX_USAGE_THRESHOLD_PERCENT)
    }

    fun setUsageThresholdPercent(accountId: ProviderAccountId, percent: Int): Boolean = synchronized(LOCK) {
        preferences.edit().putInt(
            cardKey(THRESHOLD_PERCENT_PREFIX, accountId),
            percent.coerceIn(MIN_USAGE_THRESHOLD_PERCENT, MAX_USAGE_THRESHOLD_PERCENT),
        ).commit()
    }

    fun providerGaugeColor(accountId: ProviderAccountId): String? = synchronized(LOCK) {
        ProviderGaugeColor.normalize(preferences.getString(cardKey(GAUGE_COLOR_PREFIX, accountId), null))
    }

    fun providerGaugeColors(): Map<ProviderAccountId, String> = synchronized(LOCK) {
        preferences.all.mapNotNull { (key, value) ->
            if (!key.startsWith(GAUGE_COLOR_PREFIX)) return@mapNotNull null
            val accountId = ProviderAccountIdStorageCodec.decodeOrNull(key.removePrefix(GAUGE_COLOR_PREFIX))
                ?: return@mapNotNull null
            ProviderGaugeColor.normalize(value as? String)?.let { accountId to it }
        }.toMap()
    }

    fun saveProviderGaugeColor(accountId: ProviderAccountId, color: String?): Boolean = synchronized(LOCK) {
        val key = cardKey(GAUGE_COLOR_PREFIX, accountId)
        val normalized = ProviderGaugeColor.normalize(color)
        preferences.edit().apply {
            if (normalized == null) remove(key) else putString(key, normalized)
        }.commit()
    }

    fun clearExactCardArtifacts(accountId: ProviderAccountId): Boolean = synchronized(LOCK) {
        val encoded = ProviderAccountIdStorageCodec.encode(accountId)
        val editor = preferences.edit()
            .remove("$GAUGE_COLOR_PREFIX$encoded")
            .remove("$RESET_PREFIX$encoded")
            .remove("$THRESHOLD_ENABLED_PREFIX$encoded")
            .remove("$THRESHOLD_PERCENT_PREFIX$encoded")
        preferences.all.forEach { (key, value) ->
            when {
                key.startsWith(WIDGET_SELECTION_PREFIX) && ProviderAccountIdStorageCodec.decodeOrNull(value as? String) == accountId ->
                    editor.remove(key)
                key.startsWith(WIDGET_ORDER_PREFIX) || key.startsWith(WIDGET_HIDDEN_PREFIX) -> {
                    val raw = value as? String ?: return@forEach
                    val filtered = ProviderCardPreferencesCodec.remove(raw, accountId)
                    if (filtered != raw) editor.putString(key, filtered)
                }
            }
        }
        editor.commit()
    }

    private fun cardKey(prefix: String, accountId: ProviderAccountId) = prefix + ProviderAccountIdStorageCodec.encode(accountId)
    private fun widgetSelectionKey(id: Int) = "$WIDGET_SELECTION_PREFIX$id"
    private fun widgetOrderKey(id: Int) = "$WIDGET_ORDER_PREFIX$id"
    private fun widgetHiddenKey(id: Int) = "$WIDGET_HIDDEN_PREFIX$id"

    companion object {
        internal val LOCK = Any()
        internal const val PREFERENCES_NAME = "ai_quota_provider_preferences"
        internal const val WIDGET_SELECTION_PREFIX = "provider_widget_card_selection_v1_"
        internal const val WIDGET_ORDER_PREFIX = "dashboard_widget_card_order_v1_"
        internal const val WIDGET_HIDDEN_PREFIX = "dashboard_widget_hidden_cards_v1_"
        internal const val GAUGE_COLOR_PREFIX = "card_gauge_color_v1_"
        internal const val RESET_PREFIX = "card_reset_notification_enabled_v1_"
        internal const val THRESHOLD_ENABLED_PREFIX = "card_usage_threshold_enabled_v1_"
        internal const val THRESHOLD_PERCENT_PREFIX = "card_usage_threshold_percent_v1_"
        const val DEFAULT_USAGE_THRESHOLD_PERCENT = 5
        const val MIN_USAGE_THRESHOLD_PERCENT = 1
        const val MAX_USAGE_THRESHOLD_PERCENT = 99
    }
}
