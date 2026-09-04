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
import com.aiquota.mobile.notification.ProviderResetNotificationController
import com.aiquota.mobile.providers.ProviderAccountLineKey
import com.aiquota.mobile.providers.ProviderResetNotification

/** Debug-only exact-card reset notification fixture. */
class DebugResetNotificationReceiver : BroadcastReceiver() {
    override fun onReceive(context: Context, intent: Intent?) {
        if (intent?.action != ACTION_FAKE_RESET_NOTIFICATION) return
        val providerId = ProviderId.fromStorageId(intent.getStringExtra(EXTRA_PROVIDER_ID)) ?: ProviderId.CLAUDE
        val accountId = ProviderAccountIdStorageCodec.decodeOrNull(intent.getStringExtra(EXTRA_ACCOUNT_ID))
            ?.takeIf { it.providerId == providerId }
            ?: ProviderAccountId(providerId, AccountKey.reservedDefault())
        val requestedAlias = intent.getStringExtra(EXTRA_ALIAS)?.takeIf(String::isNotBlank)
        val alias = requestedAlias ?: providerId.displayName
        fakeLines(providerId).forEachIndexed { index, line ->
            ProviderResetNotificationController.notifyReset(
                context.applicationContext,
                ProviderResetNotification(
                    ProviderAccountLineKey(accountId, line.first),
                    alias,
                    line.second,
                    index,
                    AccountGeneration.of(1),
                    SessionRevision.of(1),
                    DisplayVersion.of(1),
                    disambiguateAccount = requestedAlias != null,
                )
            )
        }
        Log.i(TAG, "debugFakeResetNotification=true account=${ProviderAccountIdStorageCodec.encode(accountId)}")
    }

    private fun fakeLines(providerId: ProviderId): List<Pair<String, String>> = listOf(
        "${providerId.storageId}:session" to "${providerId.displayName} Session",
        "${providerId.storageId}:weekly" to "${providerId.displayName} Weekly",
    )

    companion object {
        const val ACTION_FAKE_RESET_NOTIFICATION = "com.aiquota.mobile.debug.FAKE_RESET_NOTIFICATION"
        const val EXTRA_PROVIDER_ID = "provider_id"
        const val EXTRA_ACCOUNT_ID = "provider_account_id"
        const val EXTRA_ALIAS = "alias"
        private const val TAG = "AIQuotaDebugResetNotif"
    }
}
