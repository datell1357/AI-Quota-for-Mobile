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
    fun glmAwaitedWebSessionClearKillsOldIsolatedWebViewProcessBeforeNextLogin() {
        val cleaner = File("src/main/java/com/aiquota/mobile/providers/ProviderWebSessionCleaner.kt").readText()
        val contextClear = cleaner
            .substringAfter("suspend fun clearProviderWebSessionAndWait(context: Context, providerId: ProviderId)")
            .substringBefore("fun clearProviderWebSession(")

        assertTrue(contextClear.contains("GlmIsolatedWebSession.clearAndWait(context.applicationContext)"))
        assertTrue(contextClear.contains("GlmIsolatedWebViewProfile.killIsolatedProcessIfRunning(context.applicationContext"))
        assertTrue(contextClear.indexOf("GlmIsolatedWebSession.clearAndWait") < contextClear.indexOf("killIsolatedProcessIfRunning"))
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
    fun glmWebOAuthBackgroundRefreshUsesStoredSessionNativeFetchBeforeIsolatedRenewal() {
        val service = File("src/main/java/com/aiquota/mobile/providers/ProviderBackgroundRefreshService.kt").readText()
        val repository = File("src/main/java/com/aiquota/mobile/providers/GlmUsageRepository.kt").readText()

        assertTrue(service.contains("if (job.providerId == ProviderId.GLM)"))
        assertTrue(service.contains("if (connectionMode == GlmConnectionMode.WEB_OAUTH)"))
        assertTrue(service.contains("repository.fetchUsagePayloadFromWebSession()"))
        assertTrue(repository.contains("class GlmWebSessionRequestHeaderStore"))
        assertTrue(repository.contains("const val STORE_NAME = \"ai_quota_glm_web_session_headers\""))
        assertTrue(repository.contains("fun saveWebSessionRequestHeaders(headers: Map<String, String>)"))
        assertTrue(repository.contains("requestHeaders = webSessionRequestHeaderStore.headers()"))
        assertTrue(service.contains("GlmIsolatedWebSession.collectUsage("))
        assertTrue(service.contains("fallbackGate.canRunFallback(automaticRefresh)"))
        assertTrue(service.contains("fallbackGate.recordFallbackAttempt()"))
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
    fun glmNativeAuthRequiredRecoveryWaitsForFullWebSessionCleanup() {
        val login = File("src/main/java/com/aiquota/mobile/providers/WebLoginActivity.kt").readText()
        val recovery = login
            .substringAfter("private fun recoverGlmAuthRequiredFromNativeCollection")
            .substringBefore("private fun isGlmAuthenticatedSessionResource")

        assertTrue(recovery.contains("ProviderWebSessionCleaner.clearProviderWebSessionAndWait(applicationContext, ProviderId.GLM)"))
        assertTrue(recovery.indexOf("clearProviderWebSessionAndWait") < recovery.indexOf("webView.loadUrl(GlmProviderUrls.WEB_LOGIN_URL)"))
        assertFalse(recovery.contains("clearProviderWebSession(CookieManager.getInstance(), providerId)"))
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
        val sessionResource = login
            .substringAfter("private fun isGlmAuthenticatedSessionResource")
            .substringBefore("private fun saveGlmWebSessionCookieHeader")

        assertTrue(redirect.contains("GlmUsagePageRoutes.isChatUrl(url) && hasRetainedGlmWebSessionCookies()"))
        assertTrue(login.contains("glmAuthenticatedSessionSeen"))
        assertTrue(login.contains("GLM_AUTHENTICATED_COOKIE_MIN_COUNT"))
        assertTrue(sessionResource.contains("path == \"/api/auth/z/login\" || path == \"/api/auth/z/zaiAuthToken\""))
        assertTrue(sessionResource.contains("path == \"/api/v1/auths\" || path == \"/api/v1/auths/\""))
        assertFalse(login.contains("path == \"/api/auth/me\""))
        assertTrue(login.contains("if (captureGlmNativeFetchHeaders(request))"))
        assertTrue(login.contains("if (!hasGlmNativeFetchHeaders()) return@post"))
        assertTrue(login.contains("it.equals(\"Authorization\", ignoreCase = true)"))
        assertTrue(login.contains("if (hasAuthorization && isGlmTrustedAuthenticatedResource(host, path))"))
        assertTrue(login.contains("glmAuthenticatedChatResourceSeen = true"))
        assertTrue(login.contains("saveWebSessionRequestHeaders(headers)"))
        assertTrue(login.contains("provider=glm capturedNativeHeaders"))
    }

    @Test
    fun glmAuthorizationCaptureRefreshesPairedWebSessionCookies() {
        val login = File("src/main/java/com/aiquota/mobile/providers/WebLoginActivity.kt").readText()
        val capture = login
            .substringAfter("private fun captureGlmNativeFetchHeaders")
            .substringBefore("private fun isGlmReplayableWebSessionResource")
        val cookieCapture = login
            .substringAfter("private fun captureGlmWebSessionCookieHeader")
            .substringBefore("private fun hasRetainedGlmWebSessionCookies")

        assertTrue(capture.contains("saveGlmWebSessionCookieHeader(\"auth_header_resource\", preferCurrent = true)"))
        assertTrue(login.contains("saveGlmWebSessionCookieHeader(\"auth_resource\", preferCurrent = true)"))
        assertTrue(cookieCapture.contains("preferCurrent: Boolean = false"))
        assertTrue(cookieCapture.contains("if (preferCurrent || cookieCount > retainedCookieCount)"))
    }

    @Test
    fun glmQuotaApiAuthorizationHeadersPrimeDurableNativeFetchHeaders() {
        val login = File("src/main/java/com/aiquota/mobile/providers/WebLoginActivity.kt").readText()
        val capture = login
            .substringAfter("private fun captureGlmNativeFetchHeaders")
            .substringBefore("private fun isGlmApiResource")
        val replayable = login
            .substringAfter("private fun isGlmReplayableWebSessionResource")
            .substringBefore("private fun isGlmTrustedAuthenticatedResource")

        assertTrue(capture.contains("if (hasAuthorization && isGlmReplayableWebSessionResource(host, path))"))
        assertTrue(capture.contains("glmNativeFetchHeaders.clear()"))
        assertTrue(capture.contains("glmNativeFetchHeaders.putAll(headers)"))
        assertTrue(capture.contains("GlmUsageRepository(applicationContext).saveWebSessionRequestHeaders(headers)"))
        assertTrue(capture.contains("isGlmTrustedAuthenticatedResource(host, path)"))
        assertTrue(login.contains("private fun isGlmReplayableWebSessionResource(host: String, path: String): Boolean"))
        assertTrue(replayable.contains("host == \"api.z.ai\""))
        assertFalse(replayable.contains("chat.z.ai"))
    }

    @Test
    fun glmChatBootstrapAuthorizationDoesNotCountAsLoginSuccess() {
        val login = File("src/main/java/com/aiquota/mobile/providers/WebLoginActivity.kt").readText()
        val capture = login
            .substringAfter("private fun captureGlmNativeFetchHeaders")
            .substringBefore("private fun isGlmReplayableWebSessionResource")
        val trusted = login
            .substringAfter("private fun isGlmTrustedAuthenticatedResource")
            .substringBefore("private fun isGlmChatAuthValidationResource")
        val chatValidation = login
            .substringAfter("private fun isGlmChatAuthValidationResource")
            .substringBefore("private fun isGlmApiResource")

        assertFalse(capture.contains("path.startsWith(\"/api/\")"))
        assertTrue(capture.contains("isGlmTrustedAuthenticatedResource(host, path)"))
        assertTrue(trusted.contains("host == \"api.z.ai\""))
        assertTrue(trusted.contains("host == \"chat.z.ai\" && isGlmChatAuthValidationResource(path)"))
        assertTrue(chatValidation.contains("path.trimEnd('/') == \"/api/v1/auths\""))
        assertFalse(chatValidation.contains("settings/update"))
    }

    @Test
    fun glmChatAuthorizationDoesNotPrimeQuotaReplayHeaders() {
        val login = File("src/main/java/com/aiquota/mobile/providers/WebLoginActivity.kt").readText()
        val replayable = login
            .substringAfter("private fun isGlmReplayableWebSessionResource")
            .substringBefore("private fun isGlmTrustedAuthenticatedResource")
        val trusted = login
            .substringAfter("private fun isGlmTrustedAuthenticatedResource")
            .substringBefore("private fun isGlmChatAuthValidationResource")

        assertTrue(replayable.contains("host == \"api.z.ai\""))
        assertFalse(replayable.contains("chat.z.ai"))
        assertFalse(replayable.contains("isGlmTrustedAuthenticatedResource(host, path)"))
        assertTrue(trusted.contains("host == \"chat.z.ai\" && isGlmChatAuthValidationResource(path)"))
    }

    @Test
    fun glmIsolatedWebSessionCollectsThroughAboutBlankNativeBridgeOnly() {
        val service = File("src/main/java/com/aiquota/mobile/providers/GlmIsolatedWebSessionService.kt").readText()

        assertTrue(service.contains("fun fetchProviderUsagePayload(): String"))
        assertTrue(service.contains("ProviderNativeUsagePayloadFetcher.bridgeUsagePayload("))
        assertTrue(service.contains("ProviderWebCollectorScripts.build("))
        assertTrue(service.contains("pageUrl = \"about:blank\""))
        assertTrue(service.contains("view.loadUrl(\"about:blank\")"))
        assertFalse(service.contains("PAGE_CAPTURE_SCRIPT"))
        assertFalse(service.contains("document.documentElement.innerText"))
        assertFalse(service.contains("pageText(view"))
    }

    @Test
    fun glmAuthenticatedChatResourceStartsAboutBlankNativeCollection() {
        val login = File("src/main/java/com/aiquota/mobile/providers/WebLoginActivity.kt").readText()
        val intercept = login
            .substringAfter("override fun shouldInterceptRequest")
            .substringBefore("if (captureGeminiUsageRpcId(url))")

        assertTrue(intercept.contains("if (captureGlmNativeFetchHeaders(request))"))
        assertTrue(intercept.contains("if (!hasGlmNativeFetchHeaders()) return@post"))
        assertTrue(intercept.contains("GlmUsagePageRoutes.nativeCollectionUrlAfterAuthenticatedResource"))
        assertTrue(intercept.contains("maybeStartGlmNativeCollection"))
        assertTrue(login.contains("provider=glm nativeCollectorStart=aboutblank"))
    }

    @Test
    fun glmAuthRouteResourcesRedirectToUsageBeforeAboutBlankNativeCollection() {
        val routes = File("src/main/java/com/aiquota/mobile/providers/GlmUsagePageRoutes.kt").readText()
        val login = File("src/main/java/com/aiquota/mobile/providers/WebLoginActivity.kt").readText()
        val intercept = login
            .substringAfter("override fun shouldInterceptRequest")
            .substringBefore("if (captureGeminiUsageRpcId(url))")
        val redirect = login
            .substringAfter("private fun maybeRedirectGlmAuthenticatedResourceToUsage")
            .substringBefore("private fun maybeStartGlmNativeCollection")
        val apiResource = login
            .substringAfter("private fun isGlmApiResource")
            .substringBefore("private fun hasGlmNativeFetchHeaders")

        assertTrue(routes.contains("fun isAuthenticatedChatAppUrl(url: String): Boolean"))
        assertTrue(routes.contains("fun usageRedirectUrlAfterAuthenticatedResource(currentUrl: String): String?"))
        assertTrue(routes.contains("\"chat.z.ai\""))
        assertTrue(routes.contains("path in setOf(\"\", \"/auth\")"))
        assertTrue(intercept.contains("if (maybeRedirectGlmAuthenticatedResourceToUsage(view, pageUrl)) return@post"))
        assertTrue(redirect.contains("GlmUsagePageRoutes.usageRedirectUrlAfterAuthenticatedResource(url) ?: return false"))
        assertTrue(redirect.contains("if (!glmAuthenticatedChatResourceSeen) return false"))
        assertTrue(redirect.contains("view.loadUrl(usageUrl)"))
        assertTrue(apiResource.contains("host == \"chat.z.ai\" && path.startsWith(\"/api/\")"))
        assertTrue(login.contains("private fun isGlmTrustedAuthenticatedResource(host: String, path: String): Boolean"))
        assertTrue(login.contains("private fun isGlmChatAuthValidationResource(path: String): Boolean"))
        assertTrue(apiResource.contains("host == \"api.z.ai\""))
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
