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
import com.aiquota.mobile.notification.ProviderNotificationAliasUpdater
import com.aiquota.mobile.notification.ProviderResetNotificationController
import com.aiquota.mobile.notification.ProviderUsageThresholdNotificationController

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
        val reset = ProviderResetNotificationPolicy.evaluate(
            ResetNotificationEvaluation(
                cards,
                resetEnabled,
                resetState.readExactPending(),
                resetState.readExactNotified(),
            )
        )
        val postedReset = if (resetState.writeExact(reset.pending, reset.notified)) {
            reset.notifications.count { ProviderResetNotificationController.notifyReset(appContext, it) != null }
        } else {
            0
        }

        val thresholdState = ProviderUsageThresholdNotificationStateRepository(appContext)
        val threshold = ProviderUsageThresholdNotificationPolicy.evaluate(
            ThresholdNotificationEvaluation(
                cards,
                thresholdEnabled,
                thresholdPercents,
                thresholdState.readExactArmed(),
            )
        )
        val postedThreshold = if (thresholdState.writeExactArmed(threshold.armed)) {
            threshold.notifications.count {
                ProviderUsageThresholdNotificationController.notifyLowUsage(appContext, it) != null
            }
        } else {
            0
        }
        ProviderCardNotificationRuntimeResult(postedReset, postedThreshold)
    }

    private val LOCK = Any()
}

internal fun selectProviderNotificationCards(
    cards: List<ProviderCardDisplayRecord>,
    multiAccountEnabled: Boolean,
    compatibility: Map<ProviderId, ProviderAccountId?>,
): List<ProviderCardDisplayRecord> {
    require(ProviderId.defaultOrder().all(compatibility::containsKey))
    return if (multiAccountEnabled) cards else cards.filter { it.accountId == compatibility[it.accountId.providerId] }
}
