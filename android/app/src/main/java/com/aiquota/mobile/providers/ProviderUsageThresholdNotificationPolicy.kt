package com.aiquota.mobile.providers

import com.aiquota.mobile.local.ProviderConnectionState
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.local.ProviderRefreshState
import com.aiquota.mobile.local.ProviderUsageSnapshot

data class ProviderUsageThresholdNotification(
    val providerId: ProviderId,
    val lineKey: String,
    val lineLabel: String,
    val lineIndex: Int,
    val thresholdPercent: Int
)

/**
 * Decides which logged-in provider usage lines have just dropped to or below the user's
 * remaining-usage threshold so a "low usage" notification can be posted.
 *
 * Each line fires at most once per cycle: after notifying, it stays armed=false until the line
 * recovers back above the threshold (typically after its window resets), which re-arms it. This
 * mirrors the reset-notification policy's per-line tracking and avoids repeat spam while the
 * line sits low. A line first observed already at/below the threshold is suppressed (armed=false
 * without notifying) so enabling the option does not immediately fire on an already-low line.
 */
object ProviderUsageThresholdNotificationPolicy {
    data class Result(
        val notifications: List<ProviderUsageThresholdNotification>,
        val armed: Map<String, Boolean>
    )

    fun evaluate(
        snapshots: List<ProviderUsageSnapshot>,
        isEnabled: (ProviderId) -> Boolean,
        thresholdPercent: (ProviderId) -> Int,
        storedArmed: Map<String, Boolean>
    ): Result {
        val armed = storedArmed.toMutableMap()
        val notifications = mutableListOf<ProviderUsageThresholdNotification>()

        snapshots.forEach { snapshot ->
            if (!isEnabled(snapshot.providerId)) return@forEach
            if (snapshot.refreshState == ProviderRefreshState.REFRESHING) return@forEach
            if (snapshot.connectionState != ProviderConnectionState.CONNECTED &&
                snapshot.connectionState != ProviderConnectionState.STALE
            ) {
                return@forEach
            }

            val threshold = thresholdPercent(snapshot.providerId)

            snapshot.lines.forEachIndexed { index, line ->
                val remaining = line.remainingPercent ?: return@forEachIndexed
                val remainingPercent = (remaining.coerceIn(0f, 1f) * 100f)
                val trackingKey = "${snapshot.providerId.storageId}:${line.key}"
                val isLow = remainingPercent <= threshold.toFloat()

                if (!armed.containsKey(trackingKey)) {
                    // First observation: arm only if currently above the threshold, so an
                    // already-low line does not fire the moment tracking starts.
                    armed[trackingKey] = !isLow
                    return@forEachIndexed
                }

                if (isLow) {
                    if (armed[trackingKey] == true) {
                        notifications.add(
                            ProviderUsageThresholdNotification(
                                providerId = snapshot.providerId,
                                lineKey = line.key,
                                lineLabel = line.label,
                                lineIndex = index,
                                thresholdPercent = threshold
                            )
                        )
                        armed[trackingKey] = false
                    }
                } else {
                    // Recovered above the threshold (e.g. window reset) — re-arm.
                    armed[trackingKey] = true
                }
            }
        }

        return Result(notifications, armed)
    }
}
