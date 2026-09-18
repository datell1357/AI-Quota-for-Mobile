package com.aiquota.mobile.providers

import android.content.Context
import com.aiquota.mobile.accounts.AccountUsageRepository
import com.aiquota.mobile.accounts.ProviderAccountId
import com.aiquota.mobile.accounts.ProviderCardCatalogLoadResult
import com.aiquota.mobile.accounts.ProviderCardCatalogLoader
import com.aiquota.mobile.accounts.ProviderCardDisplayRecord
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.local.ProviderCardPreferencesRepository
import com.aiquota.mobile.local.ProviderPreferencesRepository
import com.aiquota.mobile.local.ProviderUsageFreshness
import com.aiquota.mobile.local.usageFreshness
import com.aiquota.mobile.notification.ProviderNotificationAliasUpdater
import com.aiquota.mobile.notification.ProviderResetNotificationController
import com.aiquota.mobile.notification.ProviderUsageThresholdNotificationController
import java.time.Instant

internal data class ProviderCardNotificationRuntimeResult(
    val resetCount: Int,
    val thresholdCount: Int,
)

/** Loads one authority-consistent card catalog and evaluates both exact notification policies. */
internal object ProviderCardNotificationRuntime {
    fun evaluate(
        context: Context,
        multiAccountEnabled: Boolean,
    ): ProviderCardNotificationRuntimeResult = synchronized(LOCK) {
        val appContext = context.applicationContext
        val cards = AccountUsageRepository.open(appContext).use { repository ->
            val loaded = ProviderCardCatalogLoader(repository).load()
            val catalog = (loaded as? ProviderCardCatalogLoadResult.Loaded)?.snapshot
                ?: return@synchronized ProviderCardNotificationRuntimeResult(0, 0)
            val compatibility = ProviderId.defaultOrder().associateWith(repository::compatibilityAccount)
            selectProviderNotificationCards(catalog.cards, multiAccountEnabled, compatibility)
        }.map { card ->
            val record = card.displayRecord
            ProviderCardNotificationSnapshot(
                card.accountId,
                card.alias,
                card.generation,
                card.sessionRevision,
                record.version,
                record.snapshot,
            )
        }
        evaluateCards(appContext, cards, multiAccountEnabled)
    }

    internal fun evaluateCards(
        appContext: Context,
        cards: List<ProviderCardNotificationSnapshot>,
        multiAccountEnabled: Boolean,
        now: Instant = Instant.now(),
        postReset: (ProviderResetNotification) -> Boolean = { ProviderResetNotificationController.notifyReset(appContext, it) != null },
        postThreshold: (ProviderUsageThresholdNotification) -> Boolean = { ProviderUsageThresholdNotificationController.notifyLowUsage(appContext, it) != null },
    ): ProviderCardNotificationRuntimeResult = synchronized(LOCK) {
        if (cards.isEmpty()) return@synchronized ProviderCardNotificationRuntimeResult(0, 0)
        cards.forEach { card -> ProviderNotificationAliasUpdater.update(appContext, card) }

        val cardPreferences = ProviderCardPreferencesRepository(appContext)
        val legacyPreferences = ProviderPreferencesRepository(appContext)
        val resetEnabled = cards.filterTo(mutableSetOf()) { card ->
            if (multiAccountEnabled) cardPreferences.isResetNotificationEnabled(card.accountId)
            else legacyPreferences.isResetNotificationEnabled(card.accountId.providerId)
        }.mapTo(mutableSetOf(), ProviderCardNotificationSnapshot::accountId)
        val thresholdEnabled = cards.filterTo(mutableSetOf()) { card ->
            if (multiAccountEnabled) cardPreferences.isUsageThresholdNotificationEnabled(card.accountId)
            else legacyPreferences.isUsageThresholdNotificationEnabled(card.accountId.providerId)
        }.mapTo(mutableSetOf(), ProviderCardNotificationSnapshot::accountId)
        val thresholdPercents = cards.associate { card ->
            card.accountId to if (multiAccountEnabled) {
                cardPreferences.usageThresholdPercent(card.accountId)
            } else {
                legacyPreferences.usageThresholdPercent(card.accountId.providerId)
            }
        }

        val resetState = ProviderResetNotificationStateRepository(appContext)
        val oldPending = resetState.readExactPending()
        val oldNotified = resetState.readExactNotified()
        val reset = ProviderResetNotificationPolicy.evaluate(
            ResetNotificationEvaluation(
                cards,
                resetEnabled,
                oldPending,
                oldNotified,
                now,
            )
        )
        val pending = reset.pending.toMutableMap()
        val notified = reset.notified.toMutableMap()
        var postedReset = 0
        reset.notifications.forEach { event ->
            val key = event.accountLineKey
            val boundary = reset.notified.getValue(key)
            // Expire old missed resets; permission restoration must not replay an old backlog.
            if (now.toEpochMilli() - boundary > MAX_RESET_DELIVERY_AGE_MILLIS) return@forEach
            if (runCatching { postReset(event) }.getOrDefault(false)) {
                postedReset++
            } else {
                // Keep watching the undelivered boundary even when the provider reports its next one.
                oldPending[key]?.let { pending[key] = it }
                oldNotified[key]?.let { notified[key] = it } ?: notified.remove(key)
            }
        }
        if (!resetState.writeExact(pending, notified)) {
            android.util.Log.w("AIQuotaNotification", "Reset delivery state persistence failed")
        }

        val thresholdState = ProviderUsageThresholdNotificationStateRepository(appContext)
        val threshold = ProviderUsageThresholdNotificationPolicy.evaluate(
            ThresholdNotificationEvaluation(
                cards.filter { it.snapshot.usageFreshness(now) == ProviderUsageFreshness.FRESH },
                thresholdEnabled,
                thresholdPercents,
                thresholdState.readExactArmed(),
            )
        )
        val armed = threshold.armed.toMutableMap()
        var postedThreshold = 0
        threshold.notifications.forEach { event ->
            if (runCatching { postThreshold(event) }.getOrDefault(false)) {
                postedThreshold++
            } else {
                // Retry against the latest quota. A blocked/failed post is not a delivered alert.
                armed[event.accountLineKey] = true
            }
        }
        if (!thresholdState.writeExactArmed(armed)) {
            android.util.Log.w("AIQuotaNotification", "Threshold delivery state persistence failed")
        }
        ProviderCardNotificationRuntimeResult(postedReset, postedThreshold)
    }

    private val LOCK = Any()
    private const val MAX_RESET_DELIVERY_AGE_MILLIS = 10 * 60_000L
}

internal fun selectProviderNotificationCards(
    cards: List<ProviderCardDisplayRecord>,
    multiAccountEnabled: Boolean,
    compatibility: Map<ProviderId, ProviderAccountId?>,
): List<ProviderCardDisplayRecord> {
    require(ProviderId.defaultOrder().all(compatibility::containsKey))
    return if (multiAccountEnabled) cards else cards.filter { it.accountId == compatibility[it.accountId.providerId] }
}
