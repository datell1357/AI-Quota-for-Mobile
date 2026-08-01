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
        disconnectAndWait(providerId, alsoDisconnecting = emptyList())
    }

    private suspend fun disconnectAndWait(providerId: ProviderId, alsoDisconnecting: Collection<ProviderId>) {
        clearStoredProviderCredentials(providerId)
        ProviderWebSessionCleaner.clearProviderWebSessionAndWait(appContext, providerId, alsoDisconnecting)
        notifyProviderSessionReset(providerId)
    }

    suspend fun awaitProviderWebSessionCleanup(providerId: ProviderId) {
        ProviderWebSessionCleanupJobs.await(providerId)
    }

    /**
     * 전체 연결 해제. 스냅샷 제거는 호출부가 나중에 하므로, 아직 연결 상태로 보이는
     * 나머지 대상까지 함께 넘겨야 공유 IdP 세션이 마지막 하나까지 정리된다.
     */
    suspend fun disconnectAllAndWait(providerIds: List<ProviderId>) {
        providerIds.forEach { providerId ->
            disconnectAndWait(providerId, alsoDisconnecting = providerIds)
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
            ProviderId.CODEX -> {
                CodexNativeAuthContextStore(appContext).clear()
            }
            ProviderId.CLAUDE -> {
                ClaudeNativeRequestContextStore(appContext).clear()
            }
            ProviderId.COPILOT,
            ProviderId.CURSOR,
            ProviderId.GROK,
            ProviderId.KIMI,
            ProviderId.KIRO -> Unit
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
