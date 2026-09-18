package com.aiquota.mobile.providers

import com.aiquota.mobile.accounts.ProviderAccountId
import com.aiquota.mobile.local.ProviderConnectionState
import com.aiquota.mobile.local.ProviderRefreshState

data class ThresholdNotificationEvaluation(
    val cards: List<ProviderCardNotificationSnapshot>,
    val enabledAccounts: Set<ProviderAccountId>,
    val thresholdPercents: Map<ProviderAccountId, Int>,
    val storedArmed: Map<ProviderAccountLineKey, Boolean>,
)

/** Exact-card low-usage transition policy. */
object ProviderUsageThresholdNotificationPolicy {
    private const val REARM_MARGIN_PERCENT = 3
    data class Result(
        val notifications: List<ProviderUsageThresholdNotification>,
        val armed: Map<ProviderAccountLineKey, Boolean>,
    )

    fun evaluate(input: ThresholdNotificationEvaluation): Result {
        val armed = input.storedArmed.toMutableMap()
        val notifications = mutableListOf<ProviderUsageThresholdNotification>()
        val accountsNeedingAlias = accountsNeedingAliasIn(input.cards)

        input.cards.forEach { card ->
            val snapshot = card.snapshot
            if (card.accountId !in input.enabledAccounts) return@forEach
            if (snapshot.refreshState == ProviderRefreshState.REFRESHING) return@forEach
            if (snapshot.connectionState != ProviderConnectionState.CONNECTED &&
                snapshot.connectionState != ProviderConnectionState.STALE
            ) return@forEach
            val threshold = input.thresholdPercents[card.accountId] ?: return@forEach

            snapshot.lines.forEachIndexed { index, line ->
                val remaining = line.remainingPercent ?: return@forEachIndexed
                val key = runCatching { ProviderAccountLineKey(card.accountId, line.key) }.getOrNull()
                    ?: return@forEachIndexed
                if (!remaining.isFinite()) return@forEachIndexed
                val ratio = remaining.coerceIn(0f, 1f)
                val isLow = ratio <= threshold / 100f
                val recovered = ratio >= (threshold + REARM_MARGIN_PERCENT).coerceAtMost(100) / 100f
                if (key !in armed) {
                    armed[key] = !isLow
                    return@forEachIndexed
                }
                if (isLow && armed[key] == true) {
                    notifications += ProviderUsageThresholdNotification(
                        key,
                        card.alias,
                        line.label,
                        index,
                        threshold,
                        card.generation,
                        card.sessionRevision,
                        card.version,
                        disambiguateAccount = card.accountId in accountsNeedingAlias,
                    )
                    armed[key] = false
                } else if (recovered) {
                    armed[key] = true
                }
            }
        }
        return Result(notifications, armed)
    }
}
