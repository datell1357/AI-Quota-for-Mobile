package com.aiquota.mobile.providers

import com.aiquota.mobile.local.ProviderId
import kotlinx.coroutines.CompletableDeferred
import kotlinx.coroutines.launch
import kotlinx.coroutines.runBlocking
import kotlinx.coroutines.withTimeout
import kotlinx.coroutines.yield
import org.junit.Assert.assertTrue
import org.junit.Assert.assertFalse
import org.junit.Test

class ProviderSessionResetterTest {
    @Test
    fun explicitDisconnectClearsOauthStoresBeforeWebSession() {
        val source = java.io.File("src/main/java/com/aiquota/mobile/providers/ProviderSessionResetter.kt").readText()
        val method = source.substringAfter("fun disconnect(providerId: ProviderId)")
            .substringBefore("private fun clearStoredProviderCredentials")

        assertTrue(method.contains("clearStoredProviderCredentials(providerId)"))
        assertTrue(method.contains("ProviderWebSessionCleaner.clearProviderWebSession(appContext, providerId)"))
        assertTrue(method.indexOf("clearStoredProviderCredentials(providerId)") < method.indexOf("ProviderWebSessionCleaner.clearProviderWebSession(appContext, providerId)"))
    }

    @Test
    fun disconnectAndWaitWaitsForDestructiveWebSessionCleanup() {
        val source = java.io.File("src/main/java/com/aiquota/mobile/providers/ProviderSessionResetter.kt").readText()
        val method = source.substringAfter("suspend fun disconnectAndWait(providerId: ProviderId)")
            .substringBefore("private fun clearStoredProviderCredentials")

        assertTrue(method.contains("clearStoredProviderCredentials(providerId)"))
        assertTrue(method.contains("ProviderWebSessionCleaner.clearProviderWebSessionAndWait(appContext, providerId, alsoDisconnecting)"))
        assertTrue(method.indexOf("clearStoredProviderCredentials(providerId)") < method.indexOf("ProviderWebSessionCleaner.clearProviderWebSessionAndWait(appContext, providerId, alsoDisconnecting)"))
    }

    @Test
    fun interactiveDisconnectKeepsReconnectBusyUntilWebSessionCleanupFinishes() {
        val appShell = java.io.File("src/main/java/com/aiquota/mobile/ui/AIQuotaAppShell.kt").readText()
        val disconnectFlow = appShell.substringAfter("fun disconnectProvider(providerId: ProviderId)")
            .substringBefore("fun disconnectAllProviders")

        assertTrue(disconnectFlow.contains("providerSessionResetter.disconnectAndWait(providerId)"))
        assertTrue(disconnectFlow.contains("localUsageRepository.removeProviderSnapshot(providerId)"))
        assertTrue(disconnectFlow.contains("busyProvider = null"))
        assertTrue(
            disconnectFlow.indexOf("providerSessionResetter.disconnectAndWait(providerId)") <
                disconnectFlow.indexOf("localUsageRepository.removeProviderSnapshot(providerId)")
        )
        assertTrue(
            disconnectFlow.indexOf("providerSessionResetter.disconnectAndWait(providerId)") <
                disconnectFlow.indexOf("busyProvider = null")
        )
        assertFalse(disconnectFlow.contains("providerSessionResetter.disconnect(providerId)"))
        assertFalse(disconnectFlow.contains("providerSessionResetter.awaitProviderWebSessionCleanup(providerId)"))
    }

    @Test
    fun webSessionCleanupGateIsProviderScoped() {
        val cleaner = java.io.File("src/main/java/com/aiquota/mobile/providers/ProviderWebSessionCleaner.kt").readText()
        val service = java.io.File("src/main/java/com/aiquota/mobile/providers/ProviderBackgroundRefreshService.kt").readText()

        assertTrue(cleaner.contains("private val providerMutexes = ConcurrentHashMap<ProviderId, Mutex>()"))
        assertTrue(cleaner.contains("withMaintenanceLock(providerId: ProviderId"))
        assertTrue(cleaner.contains("providerMutexes.getOrPut(providerId)"))
        assertFalse(cleaner.contains("private val mutex = Mutex()"))
        assertTrue(service.contains("ProviderWebSessionMaintenanceGate.withMaintenanceLock(effectiveJob.providerId)"))
    }

    @Test
    fun sameProviderReconnectWaitsForPendingCleanupBeforeLaunchingLogin() {
        val appShell = java.io.File("src/main/java/com/aiquota/mobile/ui/AIQuotaAppShell.kt").readText()
        val resetter = java.io.File("src/main/java/com/aiquota/mobile/providers/ProviderSessionResetter.kt").readText()
        val connectFlow = appShell.substringAfter("fun connectProvider(providerId: ProviderId)")
            .substringBefore("fun disconnectProvider(providerId: ProviderId)")

        assertTrue(resetter.contains("ProviderWebSessionCleanupJobs.await(providerId)"))
        assertTrue(connectFlow.contains("providerSessionResetter.awaitProviderWebSessionCleanup(providerId)"))
        assertTrue(connectFlow.indexOf("providerSessionResetter.awaitProviderWebSessionCleanup(providerId)") < connectFlow.indexOf("startActivity"))
    }

    @Test
    fun pendingCleanupWaitIsSharedAcrossResetterInstances() = runBlocking {
        val releaseCleanup = CompletableDeferred<Unit>()
        var awaitCompleted = false

        ProviderWebSessionCleanupJobs.schedule(ProviderId.GLM) {
            releaseCleanup.await()
        }
        val waiter = launch {
            ProviderWebSessionCleanupJobs.await(ProviderId.GLM)
            awaitCompleted = true
        }
        yield()

        assertFalse(awaitCompleted)
        releaseCleanup.complete(Unit)
        withTimeout(1_000L) {
            waiter.join()
        }
        assertTrue(awaitCompleted)
    }

    @Test
    fun pendingCleanupFailureDoesNotBlockReconnectWaiter() = runBlocking {
        ProviderWebSessionCleanupJobs.schedule(ProviderId.GLM) {
            error("cleanup failed")
        }

        withTimeout(1_000L) {
            ProviderWebSessionCleanupJobs.await(ProviderId.GLM)
        }
    }

    @Test
    fun providerScopedMaintenanceGateSerializesOnlySameProvider() = runBlocking {
        val sameProviderRelease = CompletableDeferred<Unit>()
        val firstEntered = CompletableDeferred<Unit>()
        var sameProviderSecondEntered = false
        var otherProviderEntered = false

        val first = launch {
            ProviderWebSessionMaintenanceGate.withMaintenanceLock(ProviderId.GLM) {
                firstEntered.complete(Unit)
                sameProviderRelease.await()
            }
        }
        firstEntered.await()

        val sameProviderSecond = launch {
            ProviderWebSessionMaintenanceGate.withMaintenanceLock(ProviderId.GLM) {
                sameProviderSecondEntered = true
            }
        }
        yield()
        assertFalse(sameProviderSecondEntered)

        val otherProvider = launch {
            ProviderWebSessionMaintenanceGate.withMaintenanceLock(ProviderId.CODEX) {
                otherProviderEntered = true
            }
        }
        withTimeout(1_000L) {
            otherProvider.join()
        }
        assertTrue(otherProviderEntered)

        sameProviderRelease.complete(Unit)
        withTimeout(1_000L) {
            first.join()
            sameProviderSecond.join()
        }
        assertTrue(sameProviderSecondEntered)
    }

    @Test
    fun explicitDisconnectNotifiesRunningBackgroundCollectorsToDropRetainedWebViews() {
        val resetter = java.io.File("src/main/java/com/aiquota/mobile/providers/ProviderSessionResetter.kt").readText()
        val service = java.io.File("src/main/java/com/aiquota/mobile/providers/ProviderBackgroundRefreshService.kt").readText()
        val disconnectAndWait = resetter.substringAfter("suspend fun disconnectAndWait(providerId: ProviderId)")
            .substringBefore("private fun clearStoredProviderCredentials")

        assertTrue(disconnectAndWait.contains("notifyProviderSessionReset(providerId)"))
        assertTrue(resetter.contains("ProviderBackgroundRefreshService.createSessionResetIntent(appContext, providerId)"))
        assertTrue(service.contains("ACTION_PROVIDER_SESSION_RESET"))
        assertTrue(service.contains("registerReceiver(sessionResetReceiver"))
        assertTrue(service.contains("handleProviderSessionReset(providerId)"))
        assertTrue(service.contains("destroyProviderWebView(providerId)"))
        assertTrue(service.contains("repository.removeProviderSnapshot(providerId)"))
    }

    @Test
    fun awaitedWebSessionCleanupWaitsForCookieDeletionCallbacks() {
        val cleaner = java.io.File("src/main/java/com/aiquota/mobile/providers/ProviderWebSessionCleaner.kt").readText()
        val awaitedMethod = cleaner.substringAfter("suspend fun clearProviderWebSessionAndWait(")
            .substringBefore("fun clearProviderWebSessionCookies(providerId: ProviderId)")

        assertTrue(
            "Explicit user disconnect must wait for WebView cookie deletion before reconnect can start.",
            awaitedMethod.contains("withContext(Dispatchers.Main.immediate)") &&
                cleaner.contains("suspendCancellableCoroutine") &&
                cleaner.contains("ValueCallback<Boolean>") &&
                cleaner.contains("clearProviderWebSessionCookiesAndWait(cookieManager, providerId, retainedProviders)")
        )
    }

    @Test
    fun oauthProvidersExposeDisconnectTokenClearingMethods() {
        val gemini = java.io.File("src/main/java/com/aiquota/mobile/providers/GeminiCliOAuthRepository.kt").readText()
        val antigravity = java.io.File("src/main/java/com/aiquota/mobile/providers/AntigravityOAuthRepository.kt").readText()
        val resetter = java.io.File("src/main/java/com/aiquota/mobile/providers/ProviderSessionResetter.kt").readText()

        assertTrue(gemini.substringAfter("fun disconnect()").contains("KEY_REFRESH_TOKEN"))
        assertTrue(gemini.substringAfter("fun disconnect()").contains("KEY_ACCESS_TOKEN"))
        assertTrue(antigravity.substringAfter("fun disconnect()").contains("KEY_REFRESH_TOKEN"))
        assertTrue(antigravity.substringAfter("fun disconnect()").contains("KEY_ACCESS_TOKEN"))
        assertTrue(resetter.contains("GoogleAppAuthTokenStore(appContext).clear(providerId)"))
        assertTrue(resetter.contains("GoogleIdentityCredentialStore(appContext).clear(providerId)"))
        assertTrue(resetter.contains("GeminiCliOAuthRepository(appContext).disconnect()"))
        assertTrue(resetter.contains("AntigravityOAuthRepository(appContext).disconnect()"))
        assertFalse(resetter.contains("CodexOAuthRepository"))
    }

    @Test
    fun codexDisconnectClearsPersistedNativeAuthContext() {
        val resetter = java.io.File("src/main/java/com/aiquota/mobile/providers/ProviderSessionResetter.kt").readText()
        val codexBranch = resetter.substringAfter("ProviderId.CODEX ->")
            .substringBefore("ProviderId.CLAUDE")

        assertTrue(codexBranch.contains("CodexNativeAuthContextStore(appContext).clear()"))
    }

    @Test
    fun claudeDisconnectClearsPersistedNativeRequestContext() {
        val resetter = java.io.File("src/main/java/com/aiquota/mobile/providers/ProviderSessionResetter.kt").readText()
        val claudeBranch = resetter.substringAfter("ProviderId.CLAUDE ->")
            .substringBefore("ProviderId.COPILOT")

        assertTrue(claudeBranch.contains("ClaudeNativeRequestContextStore(appContext).clear()"))
    }
}
