package com.aiquota.mobile.providers

import com.aiquota.mobile.local.ProviderConnectionState
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.local.ProviderRefreshState
import com.aiquota.mobile.local.ProviderUsageSnapshot
import java.time.Instant

data class ProviderResetNotification(
    val providerId: ProviderId,
    val lineKey: String,
    val lineLabel: String,
    val lineIndex: Int
)

/**
 * Decides which logged-in provider usage lines have just crossed their reset time so a
 * "reset complete" notification can be posted.
 *
 * Like the Claude auto-prime policy, this watches the last-known future reset time per line
 * and fires when the wall clock passes it — so it works whether the API keeps reporting the
 * (now past) reset, drops it, or re-anchors. Reset instants are truncated to whole seconds
 * because the provider APIs return jittering sub-second fractions that would otherwise look
 * like a new reset each refresh and re-notify.
 */
object ProviderResetNotificationPolicy {
    data class Result(
        val notifications: List<ProviderResetNotification>,
        val pending: Map<String, Long>,
        val notified: Map<String, Long>
    )

    fun evaluate(
        snapshots: List<ProviderUsageSnapshot>,
        isEnabled: (ProviderId) -> Boolean,
        storedPending: Map<String, Long>,
        lastNotified: Map<String, Long>,
        now: Instant = Instant.now()
    ): Result {
        val pending = storedPending.toMutableMap()
        val notified = lastNotified.toMutableMap()
        val notifications = mutableListOf<ProviderResetNotification>()
        val nowMillis = now.toEpochMilli()

        snapshots.forEach { snapshot ->
            if (!isEnabled(snapshot.providerId)) return@forEach
            if (snapshot.refreshState == ProviderRefreshState.REFRESHING) return@forEach
            if (snapshot.connectionState != ProviderConnectionState.CONNECTED &&
                snapshot.connectionState != ProviderConnectionState.STALE
            ) {
                return@forEach
            }

            snapshot.lines.forEachIndexed { index, line ->
                val trackingKey = "${snapshot.providerId.storageId}:${line.key}"
                val observedReset = ProviderResetRefreshPolicy.resetInstant(line.resetsAt)
                    ?.toEpochMilli()
                    ?.let { (it / 1000L) * 1000L }

                if (!pending.containsKey(trackingKey)) {
                    // First time watching this line. Start tracking its reset, but suppress a
                    // notification for a reset that is already in the past at this point.
                    if (observedReset != null) {
                        pending[trackingKey] = observedReset
                        if (observedReset <= nowMillis) {
                            notified[trackingKey] = observedReset
                        }
                    }
                    return@forEachIndexed
                }

                val watchedReset = pending.getValue(trackingKey)
                if (nowMillis >= watchedReset && notified[trackingKey] != watchedReset) {
                    notifications.add(
                        ProviderResetNotification(
                            providerId = snapshot.providerId,
                            lineKey = line.key,
                            lineLabel = line.label,
                            lineIndex = index
                        )
                    )
                    notified[trackingKey] = watchedReset
                }
                pending[trackingKey] = observedReset ?: watchedReset
            }
        }

        return Result(notifications, pending, notified)
    }
}
