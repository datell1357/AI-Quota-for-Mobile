package com.aiquota.mobile.debug

import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.util.Log
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.notification.ProviderUsageThresholdNotificationController
import com.aiquota.mobile.providers.ProviderUsageThresholdNotification

/**
 * Debug-only: posts fake "low usage" notifications on demand so the layout/icons can be checked
 * instantly without driving a real usage line below its threshold.
 *
 *   adb shell am broadcast -a com.aiquota.mobile.debug.FAKE_USAGE_THRESHOLD_NOTIFICATION \
 *     -n com.aiquota.mobile/.debug.DebugUsageThresholdNotificationReceiver \
 *     [--es provider_id claude] [--ei threshold 5]
 */
class DebugUsageThresholdNotificationReceiver : BroadcastReceiver() {
    override fun onReceive(context: Context, intent: Intent?) {
        if (intent?.action != ACTION_FAKE_USAGE_THRESHOLD_NOTIFICATION) return
        val appContext = context.applicationContext
        val providerId = ProviderId.fromStorageId(intent.getStringExtra(EXTRA_PROVIDER_ID))
            ?: ProviderId.CLAUDE
        val threshold = intent.getIntExtra(EXTRA_THRESHOLD, 5)

        fakeLines(providerId).forEachIndexed { index, (lineKey, lineLabel) ->
            ProviderUsageThresholdNotificationController.notifyLowUsage(
                appContext,
                ProviderUsageThresholdNotification(
                    providerId = providerId,
                    lineKey = lineKey,
                    lineLabel = lineLabel,
                    lineIndex = index,
                    thresholdPercent = threshold
                )
            )
        }
        Log.i(TAG, "debugFakeUsageThresholdNotification=true provider=${providerId.storageId} threshold=$threshold")
    }

    private fun fakeLines(providerId: ProviderId): List<Pair<String, String>> {
        return if (providerId == ProviderId.CLAUDE) {
            listOf(
                "claude:session" to "Claude Session",
                "claude:weekly" to "Claude Weekly"
            )
        } else {
            listOf(
                "${providerId.storageId}:session" to "${providerId.displayName} Session",
                "${providerId.storageId}:weekly" to "${providerId.displayName} Weekly"
            )
        }
    }

    companion object {
        const val ACTION_FAKE_USAGE_THRESHOLD_NOTIFICATION =
            "com.aiquota.mobile.debug.FAKE_USAGE_THRESHOLD_NOTIFICATION"
        const val EXTRA_PROVIDER_ID = "provider_id"
        const val EXTRA_THRESHOLD = "threshold"
        private const val TAG = "AIQuotaDebugUsageThresholdNotif"
    }
}
