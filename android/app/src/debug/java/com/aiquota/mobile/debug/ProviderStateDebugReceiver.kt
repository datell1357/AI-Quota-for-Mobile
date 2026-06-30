package com.aiquota.mobile.debug

import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.util.Log
import com.aiquota.mobile.local.LocalUsageRepository
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.providers.DebugProviderSessionCookieStore
import com.aiquota.mobile.widget.WidgetRefreshActions

class ProviderStateDebugReceiver : BroadcastReceiver() {
    override fun onReceive(context: Context, intent: Intent?) {
        if (intent?.action != ACTION_RESET_PROVIDER) return
        val appContext = context.applicationContext
        val requestedProvider = ProviderId.fromStorageId(
            intent.getStringExtra(EXTRA_PROVIDER_ID)
                ?: intent.getStringExtra(WidgetRefreshActions.EXTRA_PROVIDER_ID)
        )
        val providers = requestedProvider?.let(::listOf) ?: listOf(ProviderId.CLAUDE, ProviderId.CODEX, ProviderId.GEMINI, ProviderId.COPILOT)
        providers.forEach { providerId ->
            LocalUsageRepository(appContext).markSessionExpired(providerId, "Debug QA provider reset.")
            if (providerId == ProviderId.GEMINI) {
                DebugProviderSessionCookieStore.clear(appContext, providerId)
            }
        }
        Log.i(TAG, "debugProviderReset=true providers=${providers.joinToString(",") { it.storageId }}")
    }

    companion object {
        const val ACTION_RESET_PROVIDER = "com.aiquota.mobile.debug.RESET_PROVIDER"
        const val EXTRA_PROVIDER_ID = "provider_id"
        private const val TAG = "AIQuotaDebugState"
    }
}
