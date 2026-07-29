package com.aiquota.mobile.providers

import android.content.Context
import android.util.Log
import com.aiquota.mobile.BuildConfig
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
        logDisconnectEntry(providerId, "disconnect")
        clearStoredProviderCredentials(providerId)
        ProviderWebSessionCleaner.clearProviderWebSession(appContext, providerId)
        ProviderWebSessionCleanupJobs.schedule(providerId) {
            ProviderWebSessionCleaner.clearProviderWebSessionAndWait(appContext, providerId)
        }
        notifyProviderSessionReset(providerId)
    }

    suspend fun disconnectAndWait(providerId: ProviderId) {
        logDisconnectEntry(providerId, "disconnectAndWait")
        clearStoredProviderCredentials(providerId)
        ProviderWebSessionCleaner.clearProviderWebSessionAndWait(appContext, providerId)
        notifyProviderSessionReset(providerId)
    }

    /**
     * 연결 해제는 provider 웹 세션 쿠키를 지워 재로그인을 요구한다. 의도치 않은 호출을
     * 추적할 수 있도록 디버그 빌드에서만 호출 경로를 남긴다. 릴리스에서는 아무 일도 하지 않는다.
     */
    private fun logDisconnectEntry(providerId: ProviderId, entry: String) {
        if (!BuildConfig.DEBUG) return
        val caller = Throwable().stackTrace
            .drop(1)
            .take(8)
            .joinToString(" <- ") { "${it.className.substringAfterLast('.')}.${it.methodName}" }
        Log.i(
            "AIQuotaSessionReset",
            "provider=${providerId.storageId} entry=$entry caller=$caller"
        )
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
