package com.aiquota.mobile.providers

import android.content.Context
import com.aiquota.mobile.accounts.ManagedPreferencesState
import com.aiquota.mobile.accounts.ManagedPreferencesStateStore
import com.aiquota.mobile.accounts.ProviderAccountId
import com.aiquota.mobile.accounts.ProviderAccountIdStorageCodec
import com.aiquota.mobile.local.ProviderId

internal data class ProviderNotificationManagedState(
    val reset: ManagedPreferencesState,
    val threshold: ManagedPreferencesState,
)

/** One-time exact-card migration plus explicit-primary cleanup for legacy notification state. */
class ProviderNotificationStateProjection(context: Context) {
    private val appContext = context.applicationContext
    private val reset = ProviderResetNotificationStateRepository(appContext)
    private val threshold = ProviderUsageThresholdNotificationStateRepository(appContext)
    private val resetPreferences = appContext.getSharedPreferences(RESET_PREFERENCES, Context.MODE_PRIVATE)
    private val thresholdPreferences = appContext.getSharedPreferences(THRESHOLD_PREFERENCES, Context.MODE_PRIVATE)

    internal fun captureManagedState() = ProviderNotificationManagedState(
        reset = ManagedPreferencesStateStore.capture(resetPreferences, ::isResetManaged),
        threshold = ManagedPreferencesStateStore.capture(thresholdPreferences, ::isThresholdManaged),
    )

    internal fun restoreManagedState(
        before: ProviderNotificationManagedState,
        applied: ProviderNotificationManagedState,
    ): Boolean {
        val resetRestored = ManagedPreferencesStateStore.restore(resetPreferences, before.reset, applied.reset)
        val thresholdRestored = ManagedPreferencesStateStore.restore(
            thresholdPreferences,
            before.threshold,
            applied.threshold,
        )
        return resetRestored && thresholdRestored
    }

    fun reconcile(primaryAccounts: Map<ProviderId, ProviderAccountId?>): Boolean = synchronized(LOCK) {
        require(ProviderId.defaultOrder().all(primaryAccounts::containsKey))
        require(primaryAccounts.all { (provider, id) -> id == null || id.providerId == provider })
        val pending = reset.readExactPending().toMutableMap()
        val notified = reset.readExactNotified().toMutableMap()
        val armed = threshold.readExactArmed().toMutableMap()
        val resetEditor = resetPreferences.edit()
        val thresholdEditor = thresholdPreferences.edit()
        var resetChanged = false
        var thresholdChanged = false

        ProviderId.defaultOrder().forEach { provider ->
            val selected = primaryAccounts[provider]
            val encoded = selected?.let(ProviderAccountIdStorageCodec::encode) ?: NONE
            val resetMarker = "$MARKER_PREFIX${provider.storageId}"
            val thresholdMarker = "$MARKER_PREFIX${provider.storageId}"
            if (!resetPreferences.contains(resetMarker) && selected != null) {
                migrateLongs(reset.readPending(), provider, selected).forEach { (key, value) -> pending.putIfAbsent(key, value) }
                migrateLongs(reset.readNotified(), provider, selected).forEach { (key, value) -> notified.putIfAbsent(key, value) }
                resetChanged = true
            }
            if (!thresholdPreferences.contains(thresholdMarker) && selected != null) {
                migrateBooleans(threshold.readArmed(), provider, selected).forEach { (key, value) -> armed.putIfAbsent(key, value) }
                thresholdChanged = true
            }
            if (selected == null) {
                val prefix = "${provider.storageId}:"
                val legacyPending = reset.readPending().filterKeys { !it.startsWith(prefix) }
                val legacyNotified = reset.readNotified().filterKeys { !it.startsWith(prefix) }
                reset.write(legacyPending, legacyNotified)
                threshold.writeArmed(threshold.readArmed().filterKeys { !it.startsWith(prefix) })
            }
            resetEditor.putString(resetMarker, encoded)
            thresholdEditor.putString(thresholdMarker, encoded)
        }
        if (resetChanged && !reset.writeExact(pending, notified)) return@synchronized false
        if (thresholdChanged && !threshold.writeExactArmed(armed)) return@synchronized false
        resetEditor.commit() && thresholdEditor.commit()
    }

    private fun isResetManaged(key: String): Boolean = key == RESET_PENDING || key == RESET_NOTIFIED ||
        key == RESET_EXACT_PENDING || key == RESET_EXACT_NOTIFIED || key.startsWith(MARKER_PREFIX)

    private fun isThresholdManaged(key: String): Boolean = key == THRESHOLD_ARMED ||
        key == THRESHOLD_EXACT_ARMED || key.startsWith(MARKER_PREFIX)

    private fun migrateLongs(
        legacy: Map<String, Long>,
        provider: ProviderId,
        selected: ProviderAccountId,
    ): Map<ProviderAccountLineKey, Long> = buildMap {
        val prefix = "${provider.storageId}:"
        legacy.forEach { (key, value) ->
            if (!key.startsWith(prefix)) return@forEach
            val line = key.removePrefix(prefix)
            runCatching { ProviderAccountLineKey(selected, line) }.getOrNull()?.let { put(it, value) }
        }
    }

    private fun migrateBooleans(
        legacy: Map<String, Boolean>,
        provider: ProviderId,
        selected: ProviderAccountId,
    ): Map<ProviderAccountLineKey, Boolean> = buildMap {
        val prefix = "${provider.storageId}:"
        legacy.forEach { (key, value) ->
            if (!key.startsWith(prefix)) return@forEach
            val line = key.removePrefix(prefix)
            runCatching { ProviderAccountLineKey(selected, line) }.getOrNull()?.let { put(it, value) }
        }
    }

    private companion object {
        val LOCK = Any()
        const val NONE = "none"
        const val MARKER_PREFIX = "card_projection_target_v1_"
        const val RESET_PREFERENCES = "ai_quota_reset_notifications"
        const val THRESHOLD_PREFERENCES = "ai_quota_usage_threshold_notifications"
        const val RESET_PENDING = "pending"
        const val RESET_NOTIFIED = "notified"
        const val RESET_EXACT_PENDING = "pending_cards_v1"
        const val RESET_EXACT_NOTIFIED = "notified_cards_v1"
        const val THRESHOLD_ARMED = "armed"
        const val THRESHOLD_EXACT_ARMED = "armed_cards_v1"
    }
}
