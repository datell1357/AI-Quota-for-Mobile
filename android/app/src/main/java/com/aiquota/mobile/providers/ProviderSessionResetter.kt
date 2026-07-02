package com.aiquota.mobile.providers

import android.content.Context
import com.aiquota.mobile.local.ProviderId
import java.util.concurrent.ConcurrentHashMap
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Deferred
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.SupervisorJob
import kotlinx.coroutines.async

class ProviderSessionResetter(context: Context) {
    private val appContext = context.applicationContext

    fun disconnect(providerId: ProviderId) {
        clearStoredProviderCredentials(providerId)
        ProviderWebSessionCleaner.clearProviderWebSession(appContext, providerId)
        ProviderWebSessionCleanupJobs.schedule(providerId) {
            ProviderWebSessionCleaner.clearProviderWebSessionAndWait(appContext, providerId)
        }
        notifyProviderSessionReset(providerId)
    }

    suspend fun disconnectAndWait(providerId: ProviderId) {
        clearStoredProviderCredentials(providerId)
        ProviderWebSessionCleaner.clearProviderWebSessionAndWait(appContext, providerId)
        notifyProviderSessionReset(providerId)
    }

    suspend fun awaitProviderWebSessionCleanup(providerId: ProviderId) {
        ProviderWebSessionCleanupJobs.await(providerId)
    }

    suspend fun disconnectAllAndWait(providerIds: List<ProviderId>) {
        providerIds.forEach { providerId ->
            disconnectAndWait(providerId)
        }
    }

    private fun notifyProviderSessionReset(providerId: ProviderId) {
        appContext.sendBroadcast(
            ProviderBackgroundRefreshService.createSessionResetIntent(appContext, providerId)
        )
    }

    private fun clearStoredProviderCredentials(providerId: ProviderId) {
        when (providerId) {
            ProviderId.GEMINI -> {
                GoogleAppAuthTokenStore(appContext).clear(providerId)
                GoogleIdentityCredentialStore(appContext).clear(providerId)
                GeminiCliOAuthRepository(appContext).disconnect()
                ProviderScopedStateRepository(appContext).clearGeminiUsageUrl()
            }
            ProviderId.ANTIGRAVITY -> {
                GoogleAppAuthTokenStore(appContext).clear(providerId)
                GoogleIdentityCredentialStore(appContext).clear(providerId)
                AntigravityOAuthRepository(appContext).disconnect()
            }
            ProviderId.GLM -> {
                GlmUsageRepository(appContext).clear()
            }
            ProviderId.OPENCODE -> {
                ProviderScopedStateRepository(appContext).clearOpenCodeUsageUrl()
            }
            ProviderId.CODEX,
            ProviderId.CLAUDE,
            ProviderId.COPILOT,
            ProviderId.CURSOR -> Unit
        }
    }
}

internal object ProviderWebSessionCleanupJobs {
    private val cleanupScope = CoroutineScope(SupervisorJob() + Dispatchers.Default)
    private val cleanupJobs = ConcurrentHashMap<ProviderId, Deferred<Unit>>()

    fun schedule(providerId: ProviderId, block: suspend () -> Unit) {
        if (!ProviderWebSessionClearPolicy.shouldClearOnDisconnect(providerId)) return
        val cleanupJob = cleanupScope.async { block() }
        cleanupJobs[providerId] = cleanupJob
        cleanupJob.invokeOnCompletion {
            cleanupJobs.remove(providerId, cleanupJob)
        }
    }

    suspend fun await(providerId: ProviderId) {
        runCatching { cleanupJobs[providerId]?.await() }
    }
}
