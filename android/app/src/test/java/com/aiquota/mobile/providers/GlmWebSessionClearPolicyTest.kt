package com.aiquota.mobile.providers

import com.aiquota.mobile.local.ProviderId
import java.io.File
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class GlmWebSessionClearPolicyTest {
    @Test
    fun claudeCookieUrlsIncludeRootVariants() {
        val cookieUrls = ProviderWebSessionClearPolicy.cookieUrls(ProviderId.CLAUDE)

        assertTrue(cookieUrls.contains("https://claude.ai"))
        assertTrue(cookieUrls.contains("https://claude.ai/"))
        assertTrue(cookieUrls.contains("https://www.claude.ai"))
        assertTrue(cookieUrls.contains("https://www.claude.ai/"))
    }

    @Test
    fun glmLoginPreservesExistingWebSessionBeforeStarting() {
        assertFalse(
            ProviderWebSessionClearPolicy.shouldClearBeforeLogin(
                ProviderId.GLM,
                null
            )
        )
    }

    @Test
    fun glmDisconnectClearsZaiAuthSubdomains() {
        val cookieUrls = ProviderWebSessionClearPolicy.cookieUrls(ProviderId.GLM)

        assertTrue(cookieUrls.contains("https://z.ai"))
        assertTrue(cookieUrls.contains("https://www.z.ai"))
        assertTrue(cookieUrls.contains("https://chat.z.ai"))
        assertTrue(cookieUrls.contains("https://api.z.ai"))
        assertTrue(cookieUrls.contains("https://auth.z.ai"))
        assertTrue(cookieUrls.contains("https://login.z.ai"))
        assertTrue(cookieUrls.contains("https://accounts.z.ai"))
        assertTrue(cookieUrls.contains("https://account.z.ai"))
    }

    @Test
    fun glmDisconnectClearsGoogleSsoCookiesWithoutLoadingGoogleCleanupPages() {
        val cookieUrls = ProviderWebSessionClearPolicy.cookieUrls(ProviderId.GLM)
        val storageOrigins = ProviderWebSessionClearPolicy.storageOrigins(ProviderId.GLM)
        val browserStorageUrls = ProviderWebSessionClearPolicy.browserStorageCleanupUrls(ProviderId.GLM)

        assertTrue(cookieUrls.contains("https://accounts.google.com"))
        assertTrue(cookieUrls.contains("https://myaccount.google.com"))
        assertTrue(storageOrigins.contains("https://accounts.google.com"))
        assertTrue(storageOrigins.contains("https://myaccount.google.com"))
        assertFalse(browserStorageUrls.any { it.contains("google.com") || it.contains("googleapis.com") })
    }

    @Test
    fun glmDisconnectClearsZaiManageApiKeyPathCookies() {
        val cookieUrls = ProviderWebSessionClearPolicy.cookieUrls(ProviderId.GLM)

        assertTrue(cookieUrls.contains(GlmProviderUrls.WEB_OAUTH_URL))
        assertTrue(cookieUrls.contains(GlmProviderUrls.WEB_USAGE_URL))
        assertTrue(cookieUrls.contains("https://z.ai/manage-apikey"))
        assertTrue(cookieUrls.contains("https://z.ai/manage-apikey/coding-plan"))
        assertTrue(cookieUrls.contains("https://z.ai/manage-apikey/coding-plan/personal"))
        assertTrue(cookieUrls.contains(GlmProviderUrls.API_QUOTA_URL))
        assertTrue(cookieUrls.contains("https://api.z.ai/api/biz/subscription/list"))
    }

    @Test
    fun glmDisconnectClearsZaiAuthStorageOrigins() {
        val origins = ProviderWebSessionClearPolicy.storageOrigins(ProviderId.GLM)

        assertTrue(origins.contains("https://auth.z.ai"))
        assertTrue(origins.contains("https://login.z.ai"))
        assertTrue(origins.contains("https://accounts.z.ai"))
        assertTrue(origins.contains("https://account.z.ai"))
    }

    @Test
    fun glmBrowserStorageCleanupIsScopedToZaiOrigins() {
        val origins = ProviderWebSessionClearPolicy.browserStorageCleanupUrls(ProviderId.GLM)

        assertTrue(origins.contains("https://z.ai"))
        assertTrue(origins.contains("https://www.z.ai"))
        assertTrue(origins.contains("https://chat.z.ai"))
        assertTrue(origins.contains("https://auth.z.ai"))
        assertTrue(origins.contains("https://login.z.ai"))
        assertTrue(origins.contains("https://accounts.z.ai"))
        assertTrue(origins.contains("https://account.z.ai"))
        assertFalse(origins.any { !it.endsWith(".z.ai") && it != "https://z.ai" })
        assertTrue(ProviderWebSessionClearPolicy.browserStorageCleanupUrls(ProviderId.GEMINI).isEmpty())
    }

    @Test
    fun glmBrowserStorageCleanupScriptClearsDurableBrowserStores() {
        val script = ProviderWebSessionCleaner.browserStorageCleanupScript()

        assertTrue(script.contains("localStorage.clear()"))
        assertTrue(script.contains("sessionStorage.clear()"))
        assertTrue(script.contains("indexedDB.deleteDatabase"))
        assertTrue(script.contains("caches.delete"))
        assertTrue(script.contains("navigator.serviceWorker.getRegistrations"))
    }

    @Test
    fun glmWebLoginUsesIsolatedWebViewProfile() {
        val manifest = File("src/main/AndroidManifest.xml").readText()
        val loginActivity = File("src/main/java/com/aiquota/mobile/providers/WebLoginActivity.kt").readText()
        val glmLoginActivity = File("src/main/java/com/aiquota/mobile/providers/GlmWebLoginActivity.kt").readText()
        val application = File("src/main/java/com/aiquota/mobile/AIQuotaApplication.kt").readText()

        assertTrue(glmLoginActivity.contains("class GlmWebLoginActivity : WebLoginActivity()"))
        assertTrue(manifest.contains("android:name=\".providers.GlmWebLoginActivity\""))
        assertTrue(
            manifest.substringAfter("android:name=\".providers.GlmWebLoginActivity\"")
                .substringBefore("/>")
                .contains("android:process=\":glm_webview\"")
        )
        assertTrue(manifest.contains("android:name=\".providers.GlmIsolatedWebSessionService\""))
        assertTrue(manifest.contains("android:process=\":glm_webview\""))
        assertTrue(loginActivity.contains("ProviderId.GLM -> GlmWebLoginActivity::class.java"))
        assertTrue(loginActivity.contains("else -> WebLoginActivity::class.java"))
        assertTrue(application.contains("GlmIsolatedWebViewProfile.configureIfNeeded(this)"))
    }

    @Test
    fun glmIsolatedClearDoesNotKillProcessBeforeForegroundLoginLaunch() {
        val service = File("src/main/java/com/aiquota/mobile/providers/GlmIsolatedWebSessionService.kt").readText()
        val finishMethod = service.substringAfter("private fun finish(reason: String)")
            .substringBefore("private fun scheduleProcessExit")

        assertTrue(finishMethod.contains("if (reason != \"cleared\")"))
        assertTrue(finishMethod.contains("scheduleProcessExit(reason)"))
    }

    @Test
    fun glmIsolatedWebViewProcessSkipsMainProcessApplicationInitialization() {
        val application = File("src/main/java/com/aiquota/mobile/AIQuotaApplication.kt").readText()
        val profile = File("src/main/java/com/aiquota/mobile/providers/GlmIsolatedWebSession.kt").readText()

        assertTrue(profile.contains("fun configureIfNeeded(context: Context): Boolean"))
        assertTrue(application.contains("GlmIsolatedWebViewProfile.configureIfNeeded(this)"))
        assertTrue(application.contains("if (glmIsolatedProcess) return"))
        assertTrue(
            application.indexOf("if (glmIsolatedProcess) return") <
                application.indexOf("FirebaseGatewayBootstrap.install()")
        )
    }

    @Test
    fun glmWebOAuthBackgroundRefreshUsesStoredSessionNativeFetch() {
        val service = File("src/main/java/com/aiquota/mobile/providers/ProviderBackgroundRefreshService.kt").readText()
        val repository = File("src/main/java/com/aiquota/mobile/providers/GlmUsageRepository.kt").readText()

        assertTrue(service.contains("if (job.providerId == ProviderId.GLM)"))
        assertTrue(service.contains("GlmConnectionMode.WEB_OAUTH -> repository.fetchUsagePayloadFromWebSession()"))
        assertTrue(repository.contains("class GlmWebSessionRequestHeaderStore"))
        assertTrue(repository.contains("const val STORE_NAME = \"ai_quota_glm_web_session_headers\""))
        assertTrue(repository.contains("fun saveWebSessionRequestHeaders(headers: Map<String, String>)"))
        assertTrue(repository.contains("requestHeaders = webSessionRequestHeaderStore.headers()"))
        assertFalse(service.contains("GlmIsolatedWebSession.collectUsage("))
        assertFalse(service.contains("GlmWebSessionFallbackGate(applicationContext)"))
    }

    @Test
    fun glmNativeAuthRequiredKeepsLoginOpenAndReloadsLoginStart() {
        val login = File("src/main/java/com/aiquota/mobile/providers/WebLoginActivity.kt").readText()

        assertTrue(login.contains("errorKind == \"glm_auth_required\" && recoverGlmAuthRequiredFromNativeCollection()"))
        assertTrue(login.contains("glmAuthRecoveryAttempted"))
        assertTrue(login.contains("authRequiredRecovery=login"))
        assertTrue(login.contains("webView.loadUrl(GlmProviderUrls.WEB_LOGIN_URL)"))
    }

    @Test
    fun glmChatLoginUrlDoesNotStartNativeCollectionBeforeUsageRoute() {
        val login = File("src/main/java/com/aiquota/mobile/providers/WebLoginActivity.kt").readText()
        val nativeStart = login
            .substringAfter("private fun maybeStartGlmNativeCollection")
            .substringBefore("private fun recoverGlmAuthRequiredFromNativeCollection")

        assertTrue(nativeStart.contains("if (!isUsagePage && !isMyPlanPage) return false"))
        assertTrue(nativeStart.contains("if (isUsagePage && !hasGlmNativeFetchHeaders()) return false"))
        assertFalse(nativeStart.contains("isChatUrl"))
        assertFalse(nativeStart.contains("WEB_LOGIN_URL"))
    }

    @Test
    fun glmChatRedirectRequiresAuthenticatedCookieCapture() {
        val login = File("src/main/java/com/aiquota/mobile/providers/WebLoginActivity.kt").readText()
        val redirect = login
            .substringAfter("private fun maybeRedirectGlmToUsage")
            .substringBefore("private fun resetGeminiLoginRecoveryState")

        assertTrue(redirect.contains("GlmUsagePageRoutes.isChatUrl(url) && hasRetainedGlmWebSessionCookies()"))
        assertTrue(login.contains("glmAuthenticatedSessionSeen"))
        assertTrue(login.contains("GLM_AUTHENTICATED_COOKIE_MIN_COUNT"))
        assertTrue(login.contains("path == \"/api/auth/z/login\" || path == \"/api/auth/z/zaiAuthToken\""))
        assertFalse(login.contains("path == \"/api/auth/me\""))
        assertTrue(login.contains("captureGlmNativeFetchHeaders(request) && hasGlmNativeFetchHeaders()"))
        assertTrue(login.contains("it.equals(\"Authorization\", ignoreCase = true)"))
        assertTrue(login.contains("saveWebSessionRequestHeaders(headers)"))
        assertTrue(login.contains("provider=glm capturedNativeHeaders"))
    }

    @Test
    fun glmAuthenticatedChatResourceStartsAboutBlankNativeCollection() {
        val login = File("src/main/java/com/aiquota/mobile/providers/WebLoginActivity.kt").readText()
        val intercept = login
            .substringAfter("override fun shouldInterceptRequest")
            .substringBefore("if (captureGeminiUsageRpcId(url))")

        assertTrue(intercept.contains("captureGlmNativeFetchHeaders(request) && hasGlmNativeFetchHeaders()"))
        assertTrue(intercept.contains("GlmUsagePageRoutes.nativeCollectionUrlAfterAuthenticatedResource"))
        assertTrue(intercept.contains("maybeStartGlmNativeCollection"))
        assertTrue(login.contains("provider=glm nativeCollectorStart=aboutblank"))
    }

    @Test
    fun glmDisconnectClearsMainAndIsolatedWebViewProfiles() {
        val cleaner = File("src/main/java/com/aiquota/mobile/providers/ProviderWebSessionCleaner.kt").readText()
        val resetter = File("src/main/java/com/aiquota/mobile/providers/ProviderSessionResetter.kt").readText()
        val isolated = File("src/main/java/com/aiquota/mobile/providers/GlmIsolatedWebSessionService.kt").readText()

        assertTrue(cleaner.contains("if (providerId == ProviderId.GLM)"))
        assertTrue(cleaner.contains("GlmIsolatedWebSession.clearAndWait(context.applicationContext)"))
        assertTrue(cleaner.contains("clearProviderWebSessionCookiesAndWait(CookieManager.getInstance(), providerId)"))
        assertTrue(cleaner.contains("clearProviderWebStorageOrigins(WebStorage.getInstance(), providerId)"))
        assertTrue(resetter.contains("ProviderWebSessionCleaner.clearProviderWebSession(appContext, providerId)"))
        assertTrue(isolated.contains("cookieManager.removeAllCookies"))
        assertTrue(isolated.contains("WebStorage.getInstance().deleteAllData()"))
    }

    @Test
    fun disconnectAllUsesProviderScopedCleanupInsteadOfGlobalCookieWipe() {
        val resetter = File("src/main/java/com/aiquota/mobile/providers/ProviderSessionResetter.kt").readText()
        val cleaner = File("src/main/java/com/aiquota/mobile/providers/ProviderWebSessionCleaner.kt").readText()
        val disconnectAll = resetter.substringAfter("suspend fun disconnectAllAndWait")
            .substringBefore("private fun notifyProviderSessionReset")

        assertTrue(disconnectAll.contains("disconnectAndWait(providerId)"))
        assertFalse(disconnectAll.contains("clearAllProviderWebSessionsAndWait"))
        assertFalse(cleaner.contains("removeAllCookies"))
        assertFalse(cleaner.contains("deleteAllData"))
    }

    @Test
    fun webSessionCleanupAndHiddenRefreshUseSameMaintenanceGate() {
        val cleaner = File("src/main/java/com/aiquota/mobile/providers/ProviderWebSessionCleaner.kt").readText()
        val service = File("src/main/java/com/aiquota/mobile/providers/ProviderBackgroundRefreshService.kt").readText()
        val contextCleanup = cleaner.substringAfter("suspend fun clearProviderWebSessionAndWait(context: Context")
            .substringBefore("fun clearProviderWebSession(")
        val hiddenCollectorBranch = service.substringAfter("ProviderRefreshMode.HIDDEN_WEB_COLLECTOR ->")
            .substringBefore("}")

        assertTrue(cleaner.contains("internal object ProviderWebSessionMaintenanceGate"))
        assertTrue(contextCleanup.contains("ProviderWebSessionMaintenanceGate.withMaintenanceLock"))
        assertTrue(hiddenCollectorBranch.contains("ProviderWebSessionMaintenanceGate.withMaintenanceLock"))
    }
}
