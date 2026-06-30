package com.aiquota.mobile.debug

import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.util.Log
import androidx.core.content.ContextCompat
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.providers.ProviderBackgroundRefreshService
import com.aiquota.mobile.widget.WidgetRefreshActions

class ProviderRefreshDebugReceiver : BroadcastReceiver() {
    override fun onReceive(context: Context, intent: Intent?) {
        if (intent?.action != ACTION_REFRESH_PROVIDER) return
        val appContext = context.applicationContext
        val providerId = ProviderId.fromStorageId(
            intent.getStringExtra(EXTRA_PROVIDER_ID)
                ?: intent.getStringExtra(WidgetRefreshActions.EXTRA_PROVIDER_ID)
        )
        val serviceIntent = ProviderBackgroundRefreshService.createRefreshIntent(appContext, providerId)
        runCatching {
            ContextCompat.startForegroundService(appContext, serviceIntent)
        }.onSuccess {
            Log.i(TAG, "debugProviderRefresh=true provider=${providerId?.storageId ?: "all"}")
        }.onFailure {
            Log.w(TAG, "debugProviderRefresh=false provider=${providerId?.storageId ?: "all"}", it)
        }
    }

    companion object {
        const val ACTION_REFRESH_PROVIDER = "com.aiquota.mobile.debug.REFRESH_PROVIDER"
        const val EXTRA_PROVIDER_ID = "provider_id"
        private const val TAG = "AIQuotaDebugRefresh"
    }
}
