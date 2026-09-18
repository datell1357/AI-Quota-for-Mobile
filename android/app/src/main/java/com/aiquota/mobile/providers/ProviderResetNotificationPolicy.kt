package com.aiquota.mobile.providers

import com.aiquota.mobile.accounts.ProviderAccountId
import com.aiquota.mobile.local.ProviderConnectionState
import com.aiquota.mobile.local.ProviderRefreshState
import java.time.Instant

data class ResetNotificationEvaluation(
    val cards: List<ProviderCardNotificationSnapshot>,
    val enabledAccounts: Set<ProviderAccountId>,
    val storedPending: Map<ProviderAccountLineKey, Long>,
    val lastNotified: Map<ProviderAccountLineKey, Long>,
    val now: Instant = Instant.now(),
)

/** Exact-card reset transition policy. */
object ProviderResetNotificationPolicy {
    data class Result(
        val notifications: List<ProviderResetNotification>,
        val pending: Map<ProviderAccountLineKey, Long>,
        val notified: Map<ProviderAccountLineKey, Long>,
    )

    fun evaluate(input: ResetNotificationEvaluation): Result {
        val pending = input.storedPending.mapValues { (_, value) -> (value / 1_000L) * 1_000L }.toMutableMap()
        val notified = input.lastNotified.mapValues { (_, value) -> (value / 1_000L) * 1_000L }.toMutableMap()
        val notifications = mutableListOf<ProviderResetNotification>()
        val nowMillis = input.now.toEpochMilli()
        val accountsNeedingAlias = accountsNeedingAliasIn(input.cards)

        input.cards.forEach { card ->
            val snapshot = card.snapshot
            if (card.accountId !in input.enabledAccounts) return@forEach
            if (snapshot.refreshState == ProviderRefreshState.REFRESHING) return@forEach
            if (snapshot.connectionState != ProviderConnectionState.CONNECTED &&
                snapshot.connectionState != ProviderConnectionState.STALE
            ) return@forEach

            snapshot.lines.forEachIndexed { index, line ->
                val key = runCatching { ProviderAccountLineKey(card.accountId, line.key) }.getOrNull()
                    ?: return@forEachIndexed
                val observedReset = ProviderResetRefreshPolicy.resetInstant(line.resetsAt)
                    ?.toEpochMilli()
                    ?.let { (it / 1_000L) * 1_000L }
                if (key !in pending) {
                    if (observedReset != null) {
                        pending[key] = observedReset
                        if (observedReset <= nowMillis) notified[key] = maxOf(notified[key] ?: 0L, observedReset)
                    }
                    return@forEachIndexed
                }
                val watchedReset = pending.getValue(key)
                if (nowMillis >= watchedReset && watchedReset > (notified[key] ?: 0L)) {
                    notifications += ProviderResetNotification(
                        key,
                        card.alias,
                        line.label,
                        index,
                        card.generation,
                        card.sessionRevision,
                        card.version,
                        disambiguateAccount = card.accountId in accountsNeedingAlias,
                    )
                    notified[key] = watchedReset
                }
                // A newly observed past timestamp is not evidence of another completed window.
                // Only a future boundary may arm the next alert; keep the last notified watermark.
                if (observedReset != null && observedReset > nowMillis && observedReset > (notified[key] ?: 0L)) {
                    pending[key] = observedReset
                }
            }
        }
        return Result(notifications, pending, notified)
    }
}
