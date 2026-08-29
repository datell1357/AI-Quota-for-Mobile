package com.aiquota.mobile.notification

import android.app.PendingIntent
import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import androidx.core.content.ContextCompat
import com.aiquota.mobile.accounts.AccountAuthState
import com.aiquota.mobile.accounts.AccountDeletionState
import com.aiquota.mobile.accounts.AccountDemand
import com.aiquota.mobile.accounts.AccountGeneration
import com.aiquota.mobile.accounts.AccountRefreshRequest
import com.aiquota.mobile.accounts.AccountRefreshRequestResult
import com.aiquota.mobile.accounts.AccountState
import com.aiquota.mobile.accounts.AccountUsageRepository
import com.aiquota.mobile.accounts.DisplayVersion
import com.aiquota.mobile.accounts.ProviderAccountIdStorageCodec
import com.aiquota.mobile.accounts.SessionRevision
import com.aiquota.mobile.accounts.VersionedDisplayRecord
import com.aiquota.mobile.providers.ProviderAccountLineKey
import com.aiquota.mobile.providers.ProviderAccountLineKeyCodec
import com.aiquota.mobile.providers.ProviderBackgroundRefreshService
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.SupervisorJob
import kotlinx.coroutines.cancel
import kotlinx.coroutines.launch

data class ProviderNotificationResetAction(
    val accountLineKey: ProviderAccountLineKey,
    val expectedVersion: DisplayVersion,
    val expectedGeneration: AccountGeneration,
    val expectedSessionRevision: SessionRevision,
)

sealed interface ProviderNotificationResetActionResolution {
    data class Accepted(val request: AccountRefreshRequest) : ProviderNotificationResetActionResolution
    data object Rejected : ProviderNotificationResetActionResolution
}

object ProviderNotificationResetActionBoundary {
    fun resolve(
        action: ProviderNotificationResetAction,
        current: VersionedDisplayRecord?,
    ): ProviderNotificationResetActionResolution {
        val record = current ?: return ProviderNotificationResetActionResolution.Rejected
        val account = record.account
        if (account.id != action.accountLineKey.accountId ||
            account.state != AccountState.ACTIVE ||
            account.authState != AccountAuthState.AUTHENTICATED ||
            account.deletionState != AccountDeletionState.NONE ||
            record.version != action.expectedVersion ||
            account.generation != action.expectedGeneration ||
            account.sessionRevision != action.expectedSessionRevision ||
            record.snapshot.lines.none { it.key == action.accountLineKey.lineKey }
        ) return ProviderNotificationResetActionResolution.Rejected
        return ProviderNotificationResetActionResolution.Accepted(
            AccountRefreshRequest(
                account.id,
                record.version,
                account.generation,
                account.sessionRevision,
                AccountDemand.RESET,
            )
        )
    }
}

internal object ProviderNotificationResetActionIntent {
    fun pendingIntent(
        context: Context,
        identity: ProviderNotificationIdentity,
        action: ProviderNotificationResetAction,
    ): PendingIntent = PendingIntent.getBroadcast(
        context,
        identity.requestCode,
        Intent(context, ProviderNotificationResetReceiver::class.java)
            .setAction(ACTION_RESET_REFRESH)
            .setData(identity.data.buildUpon().appendPath("refresh").build())
            .putExtra(EXTRA_ACCOUNT_LINE_KEY, ProviderAccountLineKeyCodec.encode(action.accountLineKey))
            .putExtra(EXTRA_VERSION, action.expectedVersion.value)
            .putExtra(EXTRA_GENERATION, action.expectedGeneration.value)
            .putExtra(EXTRA_SESSION, action.expectedSessionRevision.value),
        PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_IMMUTABLE,
    )

    fun decode(intent: Intent?): ProviderNotificationResetAction? {
        if (intent?.action != ACTION_RESET_REFRESH) return null
        val key = ProviderAccountLineKeyCodec.decodeOrNull(
            intent.getStringExtra(EXTRA_ACCOUNT_LINE_KEY) ?: return null,
        ) ?: return null
        val version = intent.getLongExtra(EXTRA_VERSION, -1L).takeIf { it >= 0L } ?: return null
        val generation = intent.getLongExtra(EXTRA_GENERATION, -1L).takeIf { it > 0L } ?: return null
        val session = intent.getLongExtra(EXTRA_SESSION, -1L).takeIf { it > 0L } ?: return null
        return runCatching {
            ProviderNotificationResetAction(
                key,
                DisplayVersion.of(version),
                AccountGeneration.of(generation),
                SessionRevision.of(session),
            )
        }.getOrNull()
    }

    const val ACTION_RESET_REFRESH = "com.aiquota.mobile.notification.action.RESET_REFRESH"
    private const val EXTRA_ACCOUNT_LINE_KEY = "com.aiquota.mobile.notification.extra.ACCOUNT_LINE_KEY"
    private const val EXTRA_VERSION = "com.aiquota.mobile.notification.extra.VERSION"
    private const val EXTRA_GENERATION = "com.aiquota.mobile.notification.extra.GENERATION"
    private const val EXTRA_SESSION = "com.aiquota.mobile.notification.extra.SESSION"
}

class ProviderNotificationResetReceiver : BroadcastReceiver() {
    override fun onReceive(context: Context, intent: Intent?) {
        val action = ProviderNotificationResetActionIntent.decode(intent) ?: return
        val pendingResult = goAsync()
        val scope = CoroutineScope(SupervisorJob() + Dispatchers.IO)
        scope.launch {
            try {
                val appContext = context.applicationContext
                val result = AccountUsageRepository.open(appContext).use { repository ->
                    when (val resolution = ProviderNotificationResetActionBoundary.resolve(
                        action,
                        repository.read(action.accountLineKey.accountId),
                    )) {
                        is ProviderNotificationResetActionResolution.Accepted ->
                            repository.requestRefresh(resolution.request)
                        ProviderNotificationResetActionResolution.Rejected -> null
                    }
                }
                if (result is AccountRefreshRequestResult.Accepted) {
                    ContextCompat.startForegroundService(
                        appContext,
                        ProviderBackgroundRefreshService.createRefreshIntent(
                            appContext,
                            action.accountLineKey.accountId,
                        ),
                    )
                }
            } finally {
                pendingResult.finish()
                scope.cancel()
            }
        }
    }
}
