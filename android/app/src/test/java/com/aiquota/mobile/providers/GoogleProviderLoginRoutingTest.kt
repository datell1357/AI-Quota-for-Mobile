package com.aiquota.mobile.providers

import java.io.File
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class GoogleProviderLoginRoutingTest {
    @Test
    fun googleProviderLoginRoutingKeepsSecretsOutOfAppShell() {
        val source = File("src/main/java/com/aiquota/mobile/ui/AIQuotaAppShell.kt").readText()
        val connectProvider = source
            .substringAfter("fun connectProvider(providerId: ProviderId)")
            .substringBefore("fun finishProviderRefreshSurfaces()")

        assertFalse(source.contains("import com.aiquota.mobile.providers.CodexOAuthRepository"))
        assertFalse(connectProvider.contains("CodexOAuthRepository"))
        assertFalse(connectProvider.contains("GoogleAuthorizationActivity.createIntent"))
        assertTrue(connectProvider.contains("WebLoginActivity.createIntent(launchContext, providerId, loginStartUrl)"))
        assertFalse(connectProvider.contains("GeminiCliLoopbackOAuthActivity.createIntent(launchContext)"))
        assertTrue(connectProvider.contains("AntigravityLoopbackOAuthActivity.createIntent(launchContext)"))
        assertTrue(connectProvider.contains("providerId == ProviderId.ANTIGRAVITY"))
        assertFalse(connectProvider.contains("GeminiCliOAuthRepository.isLoopbackOAuthConfigured()"))
        assertFalse(connectProvider.contains("GeminiCliOAuthRepository(appContext).beginAuthorizationUrl()"))
        assertFalse(connectProvider.contains("AntigravityOAuthRepository(appContext).beginAuthorizationUrl()"))
        assertFalse(connectProvider.contains("http://127.0.0.1"))
        assertFalse(connectProvider.contains("requestOfflineAccess"))
        assertFalse(connectProvider.contains("client_secret"))
    }

    @Test
    fun glmApiKeyLoginBypassesWebHostAllowlist() {
        val source = File("src/main/java/com/aiquota/mobile/ui/AIQuotaAppShell.kt").readText()
        val connectProvider = source
            .substringAfter("fun connectProvider(providerId: ProviderId)")
            .substringBefore("fun finishProviderRefreshSurfaces()")

        assertTrue(connectProvider.contains("providerId != ProviderId.GLM"))
        assertTrue(connectProvider.contains("GlmApiKeyActivity.createIntent(launchContext)"))
        assertTrue(connectProvider.indexOf("providerId != ProviderId.GLM") < connectProvider.indexOf("ProviderHostAllowlist.isAllowed"))
    }

    @Test
    fun codexLoginAndCollectionDoNotUseOauthRepositoryOrCapturedBearerToken() {
        val appShell = File("src/main/java/com/aiquota/mobile/ui/AIQuotaAppShell.kt").readText()
        val login = File("src/main/java/com/aiquota/mobile/providers/WebLoginActivity.kt").readText()
        val backgroundService = File("src/main/java/com/aiquota/mobile/providers/ProviderBackgroundRefreshService.kt").readText()
        val backgroundCollector = File("src/main/java/com/aiquota/mobile/ui/BackgroundProviderWebCollector.kt").readText()
        val resetter = File("src/main/java/com/aiquota/mobile/providers/ProviderSessionResetter.kt").readText()

        listOf(appShell, login, backgroundService, backgroundCollector, resetter).forEach { source ->
            assertFalse(source.contains("CodexOAuthRepository"))
            assertFalse(source.contains("observedCodexAccessToken"))
            assertFalse(source.contains("captureCodexAccessToken"))
        }
    }

    @Test
    fun codexInteractiveLoginWaitsForUsagePayloadInsteadOfCollectorTimeout() {
        val login = File("src/main/java/com/aiquota/mobile/providers/WebLoginActivity.kt").readText()
        val collectorInjection = login.substringAfter("private fun injectCollectorIfReady")
            .substringBefore("private fun captureCodexAccountId")
        val collectorError = login.substringAfter("fun postCollectorError")
            .substringBefore("@JavascriptInterface\n        fun fetchCursorJson")

        assertTrue(collectorInjection.contains("awaitInteractiveLoginUsage = providerId == ProviderId.CODEX || providerId == ProviderId.GEMINI"))
        assertTrue(collectorError.contains("shouldKeepLoginOpenUntilUsagePayload(errorKind)"))
        assertTrue(collectorError.indexOf("shouldKeepLoginOpenUntilUsagePayload(errorKind)") < collectorError.indexOf("finishConnectedWithoutUsage"))
    }

    @Test
    fun geminiLoginWaitsForUsagePayloadInsteadOfReturningOnCollectorMiss() {
        val login = File("src/main/java/com/aiquota/mobile/providers/WebLoginActivity.kt").readText()
        val keepOpen = login.substringAfter("private fun shouldKeepLoginOpenUntilUsagePayload")
            .substringBefore("private fun captureCodexAccountId")

        assertTrue(keepOpen.contains("ProviderId.GEMINI"))
        assertTrue(keepOpen.contains("gemini_no_trusted_payload"))
        assertTrue(keepOpen.contains("gemini_collector_error"))
        assertTrue(keepOpen.contains("gemini_login_required"))
    }

    @Test
    fun geminiLoginRedirectsGoogleAccountOrGeminiHomeToUsagePage() {
        val login = File("src/main/java/com/aiquota/mobile/providers/WebLoginActivity.kt").readText()
        val pageStarted = login.substringAfter("override fun onPageStarted")
            .substringBefore("override fun shouldOverrideUrlLoading")
        val shouldOverride = login.substringAfter("override fun shouldOverrideUrlLoading")
            .substringBefore("override fun shouldInterceptRequest")
        val redirect = login.substringAfter("private fun maybeRedirectGeminiToUsage")
            .substringBefore("private fun maybeRedirectOpenCodeToGo")

        assertTrue(pageStarted.contains("maybeRedirectGeminiToUsage(view, url)"))
        assertTrue(shouldOverride.contains("maybeRedirectGeminiToUsage(view, url)"))
        assertTrue(redirect.contains("ProviderId.GEMINI"))
        assertTrue(redirect.contains("GeminiUsagePageRoutes.isUsageUrl(url)"))
        assertTrue(redirect.contains("GeminiUsagePageRoutes.usageUrlFrom(url)"))
        assertTrue(redirect.contains("view.loadUrl(usageUrl)"))
        assertTrue(redirect.contains("if (geminiNativeCollectionStarted || geminiNativeCollectionScheduled) return false"))
        assertTrue(
            redirect.indexOf("geminiNativeCollectionStarted || geminiNativeCollectionScheduled") <
                redirect.indexOf("GeminiUsagePageRoutes.usageUrlFrom(url)")
        )
        assertFalse(redirect.contains("|| geminiPostLoginRedirected"))
        assertTrue(redirect.contains("geminiUsageRedirectAttempts >= GEMINI_USAGE_REDIRECT_MAX_ATTEMPTS"))
    }

    @Test
    fun geminiGoogleServiceLoginDoesNotResetUsageRedirectBudgetBeforeAttemptLimit() {
        val login = File("src/main/java/com/aiquota/mobile/providers/WebLoginActivity.kt").readText()
        val redirect = login.substringAfter("private fun maybeRedirectGeminiToUsage")
            .substringBefore("private fun maybeClickGeminiSignIn")
        val reset = login.substringAfter("private fun maybeResetGeminiUsageRedirectBudget")
            .substringBefore("private fun maybeClickGeminiSignIn")

        assertTrue(redirect.contains("maybeResetGeminiUsageRedirectBudget(host)"))
        assertTrue(
            redirect.indexOf("maybeResetGeminiUsageRedirectBudget(host)") <
                redirect.indexOf("geminiUsageRedirectAttempts >= GEMINI_USAGE_REDIRECT_MAX_ATTEMPTS")
        )
        assertTrue(reset.contains("myaccount.google.com"))
        assertFalse(reset.contains("accounts.google."))
        assertTrue(reset.contains("geminiUsageRedirectAttempts = 0"))
        assertTrue(reset.contains("lastGeminiUsageRedirectKey = null"))
    }

    @Test
    fun geminiCookieMismatchRedirectsToUsageWithoutClearingSession() {
        val login = File("src/main/java/com/aiquota/mobile/providers/WebLoginActivity.kt").readText()
        val pageStarted = login.substringAfter("override fun onPageStarted")
            .substringBefore("override fun shouldOverrideUrlLoading")
        val shouldOverride = login.substringAfter("override fun shouldOverrideUrlLoading")
            .substringBefore("override fun shouldInterceptRequest")
        val recover = login.substringAfter("private fun maybeRecoverGeminiCookieMismatch")
            .substringBefore("private fun maybeRedirectGeminiToUsage")

        assertTrue(pageStarted.contains("maybeRecoverGoogleCookieMismatch(view, url)"))
        assertTrue(shouldOverride.contains("maybeRecoverGoogleCookieMismatch(view, url)"))
        assertTrue(recover.contains("ProviderId.GEMINI"))
        assertTrue(recover.contains("\"accounts.google.com\""))
        assertTrue(recover.contains("\"/CookieMismatch\""))
        assertTrue(recover.contains("geminiCookieMismatchRecoveryAttempted = true"))
        assertTrue(recover.contains("geminiCookieMismatchRecoveryUrl(url)"))
        assertTrue(recover.contains("view.loadUrl(recoveryUrl)"))
        assertTrue(recover.contains("cookieMismatchRecovery=usageRedirect"))
        assertFalse(recover.contains("clearProviderWebSession"))
        assertFalse(recover.contains("ProviderDefinitionRegistry.definitionFor(providerId).loginStartUrl"))
        assertFalse(recover.contains("removeAllCookies"))

        assertEquals(
            GeminiUsagePageRoutes.USAGE_URL,
            WebLoginActivity.geminiCookieMismatchRecoveryUrlForTest(
                "https://accounts.google.com/CookieMismatch?continue=https%3A%2F%2Fgemini.google.com%2Fapp%3Fpli%3D1"
            )
        )
        assertEquals(
            "https://gemini.google.com/u/1/usage",
            WebLoginActivity.geminiCookieMismatchRecoveryUrlForTest(
                "https://accounts.google.com/CookieMismatch?continue=https%3A%2F%2Fgemini.google.com%2Fu%2F1%2Fapp%3Fpli%3D1"
            )
        )
    }

    @Test
    fun glmCookieMismatchClearsOnlyGoogleSsoCookiesAndRetriesOauthUrl() {
        val login = File("src/main/java/com/aiquota/mobile/providers/WebLoginActivity.kt").readText()
        val pageStarted = login.substringAfter("override fun onPageStarted")
            .substringBefore("override fun shouldOverrideUrlLoading")
        val shouldOverride = login.substringAfter("override fun shouldOverrideUrlLoading")
            .substringBefore("override fun shouldInterceptRequest")
        val recover = login.substringAfter("private fun maybeRecoverGlmCookieMismatch")
            .substringBefore("private fun rememberGoogleOAuthStartUrl")
        val remember = login.substringAfter("private fun rememberGoogleOAuthStartUrl")
            .substringBefore("private fun clearGoogleAuthCookies")
        val clearGoogle = login.substringAfter("private fun clearGoogleAuthCookies")
            .substringBefore("private fun maybeRedirectGeminiToUsage")

        assertTrue(pageStarted.contains("rememberGoogleOAuthStartUrl(url)"))
        assertTrue(shouldOverride.contains("rememberGoogleOAuthStartUrl(url)"))
        assertTrue(pageStarted.contains("maybeRecoverGoogleCookieMismatch(view, url)"))
        assertTrue(shouldOverride.contains("maybeRecoverGoogleCookieMismatch(view, url)"))
        assertTrue(recover.contains("ProviderId.GLM"))
        assertTrue(recover.contains("\"accounts.google.com\""))
        assertTrue(recover.contains("\"/CookieMismatch\""))
        assertTrue(recover.contains("glmCookieMismatchRecoveryAttempts >= GLM_COOKIE_MISMATCH_MAX_RECOVERIES"))
        assertTrue(recover.contains("glmCookieMismatchRecoveryAttempts += 1"))
        assertTrue(recover.contains("clearGoogleAuthCookies(CookieManager.getInstance())"))
        assertTrue(recover.contains("lastGoogleOAuthUrl ?: GlmProviderUrls.WEB_LOGIN_URL"))
        assertTrue(recover.contains("cookieMismatchRecovery=google_sso_retry"))
        assertTrue(recover.contains("attempt=\$glmCookieMismatchRecoveryAttempts"))
        assertFalse(recover.contains("clearProviderWebSession"))
        assertFalse(recover.contains("removeAllCookies"))
        assertTrue(remember.contains("\"/o/oauth2/v2/auth\""))
        assertTrue(remember.contains("lastGoogleOAuthUrl = url"))
        assertTrue(clearGoogle.contains("ProviderWebSessionClearPolicy.googleAuthCookieUrls()"))
        assertTrue(clearGoogle.contains("includeSharedGoogleIdentityParent = true"))
        assertFalse(clearGoogle.contains("removeAllCookies"))
        assertFalse(clearGoogle.contains("ProviderWebSessionClearPolicy.cookieUrls(ProviderId.GLM)"))
    }

    @Test
    fun googleCookieParentDomainIsOnlyIncludedForExplicitRecovery() {
        val defaultHeaders = ProviderWebSessionClearPolicy.expiringCookieHeaders(
            cookieHeader = "SID=value",
            url = "https://accounts.google.com"
        )
        val recoveryHeaders = ProviderWebSessionClearPolicy.expiringCookieHeaders(
            cookieHeader = "SID=value",
            url = "https://accounts.google.com",
            includeSharedGoogleIdentityParent = true
        )

        assertFalse(defaultHeaders.any { it.contains("Domain=google.com") || it.contains("Domain=.google.com") })
        assertTrue(recoveryHeaders.any { it.contains("Domain=google.com") })
        assertTrue(recoveryHeaders.any { it.contains("Domain=.google.com") })
    }

    @Test
    fun geminiRedirectLoopClearsOnlyProviderWebSessionBeforeRetryingLogin() {
        val login = File("src/main/java/com/aiquota/mobile/providers/WebLoginActivity.kt").readText()
        val receivedError = login.substringAfter("override fun onReceivedError")
            .substringBefore("override fun onReceivedHttpError")
        val recover = login.substringAfter("private fun maybeRecoverGeminiRedirectLoop")
            .substringBefore("private fun maybeRecoverGeminiCookieMismatch")

        assertTrue(receivedError.contains("maybeRecoverGeminiRedirectLoop(view, request.url.toString(), error.errorCode)"))
        assertTrue(recover.contains("ProviderId.GEMINI"))
        assertTrue(recover.contains("WebViewClient.ERROR_REDIRECT_LOOP"))
        assertTrue(recover.contains("geminiRedirectLoopRecoveryAttempted = true"))
        assertTrue(recover.contains("resetGeminiLoginRecoveryState()"))
        assertTrue(recover.contains("clearProviderWebSession(CookieManager.getInstance(), providerId)"))
        assertTrue(recover.contains("ProviderDefinitionRegistry.definitionFor(providerId).loginStartUrl"))
        assertTrue(recover.contains("redirectLoopRecovery=true"))
        assertFalse(recover.contains("removeAllCookies"))
    }

    @Test
    fun geminiNetworkChangedRetriesUsagePageInsteadOfFailingLogin() {
        val login = File("src/main/java/com/aiquota/mobile/providers/WebLoginActivity.kt").readText()
        val receivedError = login.substringAfter("override fun onReceivedError")
            .substringBefore("override fun onReceivedHttpError")
        val recover = login.substringAfter("private fun maybeRecoverGeminiNetworkChanged")
            .substringBefore("private fun maybeRecoverGeminiRedirectLoop")

        assertTrue(receivedError.contains("maybeRecoverGeminiNetworkChanged(view, request.url.toString(), error.description.toString())"))
        assertTrue(recover.contains("ProviderId.GEMINI"))
        assertTrue(recover.contains("ERR_NETWORK_CHANGED"))
        assertTrue(recover.contains("\"gemini.google.com\""))
        assertTrue(recover.contains("geminiNetworkChangedRecoveryAttempted = true"))
        assertTrue(recover.contains("networkChangedRecovery=true"))
        assertTrue(recover.contains("view.postDelayed({ if (!finished) view.loadUrl(url) }"))
    }

    @Test
    fun geminiUsagePageResourceRpcIdsStartAboutBlankNativeCollection() {
        val login = File("src/main/java/com/aiquota/mobile/providers/WebLoginActivity.kt").readText()
        val intercept = login.substringAfter("override fun shouldInterceptRequest")
            .substringBefore("override fun onLoadResource")
        val capture = login.substringAfter("private fun captureGeminiUsageRpcId")
            .substringBefore("private fun maybeScheduleGeminiNativeCollectionFromResource")
        val schedule = login.substringAfter("private fun maybeScheduleGeminiNativeCollectionFromResource")
            .substringBefore("private fun finishSuccessfulLogin")

        assertTrue(intercept.contains("captureGeminiUsageRpcId(url)"))
        assertTrue(intercept.contains("maybeScheduleGeminiNativeCollectionFromResource(view, url)"))
        assertTrue(capture.contains("\"gemini.google.com\""))
        assertTrue(capture.contains("\"/_/BardChatUi/data/batchexecute\""))
        assertTrue(capture.contains("\"rpcids\""))
        assertTrue(schedule.contains("GeminiUsagePageRoutes.isUsageUrl(pageUrl)"))
        assertTrue(schedule.contains("postDelayed"))
        assertTrue(login.contains("GEMINI_NATIVE_COLLECTION_RESOURCE_DELAY_MS = 8_000L"))
        assertTrue(schedule.contains("maybeStartGeminiNativeCollection(view, pageUrl, \"\", \"resource\")"))
    }

    @Test
    fun geminiInteractiveLoginClicksGeminiMarketingSignInBeforeWaitingForUsagePayload() {
        val login = File("src/main/java/com/aiquota/mobile/providers/WebLoginActivity.kt").readText()
        val pageFinished = login.substringAfter("override fun onPageFinished")
            .substringBefore("override fun onReceivedError")
        val signIn = login.substringAfter("private fun maybeClickGeminiSignIn")
            .substringBefore("private fun recoverCodexFromLocalAuthCallback")

        assertTrue(pageFinished.contains("maybeClickGeminiSignIn(view, url, pageText)"))
        assertTrue(pageFinished.indexOf("maybeClickGeminiSignIn(view, url, pageText)") < pageFinished.indexOf("injectCollectorIfReady(view, url, pageText)"))
        assertTrue(signIn.contains("ProviderId.GEMINI"))
        assertTrue(signIn.contains("host != \"gemini.google.com\""))
        assertTrue(signIn.contains("GeminiUsagePageRoutes.isLoginLandingUrl(url)"))
        assertTrue(signIn.contains("GeminiUsagePageRoutes.isUsageUrl(url)"))
        assertTrue(signIn.contains("ProviderWebCollectorScripts.isRefreshLoginPage(providerId, url, pageText)"))
        assertTrue(signIn.contains("geminiSignInClickAttempts >= GEMINI_SIGN_IN_CLICK_MAX_ATTEMPTS"))
        assertTrue(signIn.contains("elements[i].click()"))
    }

    @Test
    fun opencodeLoginRedirectsWorkspaceShellToGoUsagePage() {
        val login = File("src/main/java/com/aiquota/mobile/providers/WebLoginActivity.kt").readText()
        val pageStarted = login.substringAfter("override fun onPageStarted")
            .substringBefore("override fun shouldOverrideUrlLoading")
        val redirect = login.substringAfter("private fun maybeRedirectOpenCodeToGo")
            .substringBefore("private fun maybeRedirectCopilotToSettings")

        assertTrue(pageStarted.contains("maybeRedirectOpenCodeToGo(view, url)"))
        assertTrue(redirect.contains("OpenCodeUsagePageRoutes.goUsageUrlFrom(url)"))
        assertTrue(redirect.contains("view.loadUrl(goUsageUrl)"))
    }

    @Test
    fun googleInteractiveLoginSessionSignalUsesProviderSpecificReturnPolicy() {
        val login = File("src/main/java/com/aiquota/mobile/providers/WebLoginActivity.kt").readText()
        val intercept = login.substringAfter("override fun shouldInterceptRequest")
            .substringBefore("override fun onLoadResource")

        assertTrue(intercept.contains("ProviderLoginStrategy.isInteractiveLoginSessionReached(providerId, url)"))
        assertTrue(intercept.contains("ProviderLoginStrategy.shouldFinishOnInteractiveLoginSessionReached(providerId)"))
        assertTrue(intercept.contains("finishGoogleUsagePending"))
        assertTrue(intercept.indexOf("isInteractiveLoginSessionReached") < intercept.indexOf("return if (ProviderLoginWebViewPolicy.shouldInterceptRequest"))
    }
}
