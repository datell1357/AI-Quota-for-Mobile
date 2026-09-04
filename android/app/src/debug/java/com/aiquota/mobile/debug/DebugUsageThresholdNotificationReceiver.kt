package com.aiquota.mobile.debug

import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.util.Log
import com.aiquota.mobile.accounts.AccountGeneration
import com.aiquota.mobile.accounts.AccountKey
import com.aiquota.mobile.accounts.DisplayVersion
import com.aiquota.mobile.accounts.ProviderAccountId
import com.aiquota.mobile.accounts.ProviderAccountIdStorageCodec
import com.aiquota.mobile.accounts.SessionRevision
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.notification.ProviderUsageThresholdNotificationController
import com.aiquota.mobile.providers.ProviderAccountLineKey
import com.aiquota.mobile.providers.ProviderUsageThresholdNotification

/** Debug-only exact-card low-usage notification fixture. */
class DebugUsageThresholdNotificationReceiver : BroadcastReceiver() {
    override fun onReceive(context: Context, intent: Intent?) {
        if (intent?.action != ACTION_FAKE_USAGE_THRESHOLD_NOTIFICATION) return
        val providerId = ProviderId.fromStorageId(intent.getStringExtra(EXTRA_PROVIDER_ID)) ?: ProviderId.CLAUDE
        val accountId = ProviderAccountIdStorageCodec.decodeOrNull(intent.getStringExtra(EXTRA_ACCOUNT_ID))
            ?.takeIf { it.providerId == providerId }
            ?: ProviderAccountId(providerId, AccountKey.reservedDefault())
        val requestedAlias = intent.getStringExtra(EXTRA_ALIAS)?.takeIf(String::isNotBlank)
        val alias = requestedAlias ?: providerId.displayName
        val threshold = intent.getIntExtra(EXTRA_THRESHOLD, 5)
        fakeLines(providerId).forEachIndexed { index, line ->
            ProviderUsageThresholdNotificationController.notifyLowUsage(
                context.applicationContext,
                ProviderUsageThresholdNotification(
                    ProviderAccountLineKey(accountId, line.first),
                    alias,
                    line.second,
                    index,
                    threshold,
                    AccountGeneration.of(1),
                    SessionRevision.of(1),
                    DisplayVersion.of(1),
                    disambiguateAccount = requestedAlias != null,
                )
            )
        }
        Log.i(TAG, "debugFakeUsageThreshold=true account=${ProviderAccountIdStorageCodec.encode(accountId)}")
    }

    private fun fakeLines(providerId: ProviderId): List<Pair<String, String>> = listOf(
        "${providerId.storageId}:session" to "${providerId.displayName} Session",
        "${providerId.storageId}:weekly" to "${providerId.displayName} Weekly",
    )

    companion object {
        const val ACTION_FAKE_USAGE_THRESHOLD_NOTIFICATION =
            "com.aiquota.mobile.debug.FAKE_USAGE_THRESHOLD_NOTIFICATION"
        const val EXTRA_PROVIDER_ID = "provider_id"
        const val EXTRA_ACCOUNT_ID = "provider_account_id"
        const val EXTRA_ALIAS = "alias"
        const val EXTRA_THRESHOLD = "threshold"
        private const val TAG = "AIQuotaDebugUsageThresholdNotif"
    }
}
