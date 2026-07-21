package com.aiquota.mobile.debug

import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.util.Log
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.notification.ProviderResetNotificationController
import com.aiquota.mobile.providers.ProviderResetNotification

/**
 * Debug-only: posts fake "reset complete" notifications on demand so the layout/icons can be
 * checked instantly without waiting for a real reset.
 *
 *   adb shell am broadcast -a com.aiquota.mobile.debug.FAKE_RESET_NOTIFICATION \
 *     -n com.aiquota.mobile/.debug.DebugResetNotificationReceiver [--es provider_id claude]
 */
class DebugResetNotificationReceiver : BroadcastReceiver() {
    override fun onReceive(context: Context, intent: Intent?) {
        if (intent?.action != ACTION_FAKE_RESET_NOTIFICATION) return
        val appContext = context.applicationContext
        val providerId = ProviderId.fromStorageId(intent.getStringExtra(EXTRA_PROVIDER_ID))
            ?: ProviderId.CLAUDE

        fakeLines(providerId).forEachIndexed { index, (lineKey, lineLabel) ->
            ProviderResetNotificationController.notifyReset(
                appContext,
                ProviderResetNotification(
                    providerId = providerId,
                    lineKey = lineKey,
                    lineLabel = lineLabel,
                    lineIndex = index
                )
            )
        }
        Log.i(TAG, "debugFakeResetNotification=true provider=${providerId.storageId}")
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
        const val ACTION_FAKE_RESET_NOTIFICATION = "com.aiquota.mobile.debug.FAKE_RESET_NOTIFICATION"
        const val EXTRA_PROVIDER_ID = "provider_id"
        private const val TAG = "AIQuotaDebugResetNotif"
    }
}
