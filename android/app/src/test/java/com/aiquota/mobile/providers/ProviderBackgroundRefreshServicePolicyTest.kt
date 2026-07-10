package com.aiquota.mobile.providers

import java.io.File
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class ProviderBackgroundRefreshServicePolicyTest {
    @Test
    fun providerRefreshServiceUsesSpecialUseUsageMonitorForegroundServiceOnly() {
        val manifest = File("src/main/AndroidManifest.xml").readText()
        val service = File("src/main/java/com/aiquota/mobile/providers/ProviderBackgroundRefreshService.kt").readText()

        assertTrue(manifest.contains("android.permission.FOREGROUND_SERVICE"))
        assertTrue(manifest.contains("android.permission.FOREGROUND_SERVICE_SPECIAL_USE"))
        assertTrue(manifest.contains("android:foregroundServiceType=\"specialUse\""))
        assertTrue(manifest.contains("android.app.PROPERTY_SPECIAL_USE_FGS_SUBTYPE"))
        assertTrue(manifest.contains("android:value=\"usage_monitor\""))
        assertFalse(manifest.contains("FOREGROUND_SERVICE_DATA_SYNC"))
        assertFalse(manifest.contains("foregroundServiceType=\"dataSync\""))
        assertTrue(service.contains("ServiceInfo.FOREGROUND_SERVICE_TYPE_SPECIAL_USE"))
        assertFalse(service.contains("ServiceInfo.FOREGROUND_SERVICE_TYPE_DATA_SYNC"))
    }

    @Test
    fun providerRefreshServiceKeepsSixtySecondCadenceAndHeartbeat() {
        val plan = File("src/main/java/com/aiquota/mobile/providers/ProviderRefreshPlan.kt").readText()
        val service = File("src/main/java/com/aiquota/mobile/providers/ProviderBackgroundRefreshService.kt").readText()
        val repository = File("src/main/java/com/aiquota/mobile/providers/ProviderBackgroundRefreshStateRepository.kt").readText()

        assertTrue(plan.contains("AUTO_REFRESH_INTERVAL_MILLIS = 60_000L"))
        assertTrue(service.contains("ProviderBackgroundRefreshStateRepository"))
        assertTrue(service.contains("recordHeartbeat"))
        assertTrue(service.contains("recordStopped"))
        assertTrue(repository.contains("fun heartbeatAtMillis"))
    }

    @Test
    fun webCollectorReactivatesSharedWebViewSessionBeforeRefreshLoad() {
        val service = File("src/main/java/com/aiquota/mobile/providers/ProviderBackgroundRefreshService.kt").readText()
        val startWebCollection = service.substringAfter("private fun startWebCollection")
            .substringBefore("private fun prepareSharedWebSessionForCollection")
        val sessionPreparation = service.substringAfter("private fun prepareSharedWebSessionForCollection")
            .substringBefore("private fun destroyProviderWebView")

        assertTrue(startWebCollection.contains("prepareSharedWebSessionForCollection(webView, job.providerId)"))
        assertTrue(sessionPreparation.contains("cookieManager.setAcceptCookie(true)"))
        assertTrue(sessionPreparation.contains("cookieManager.setAcceptThirdPartyCookies(webView, true)"))
        assertTrue(sessionPreparation.contains("CookieManager.getInstance().flush()"))
        assertTrue(sessionPreparation.contains("webView.onResume()"))
        assertTrue(sessionPreparation.contains("webView.resumeTimers()"))
        assertFalse(sessionPreparation.contains("removeAllCookies"))
        assertFalse(sessionPreparation.contains("deleteAllData"))
    }

    @Test
    fun liveRefreshHealthWorkerRestartsAndNotifiesWhenHeartbeatIsStale() {
        val worker = File("src/main/java/com/aiquota/mobile/sync/ForegroundRefreshHealthWorker.kt").readText()
        val scheduler = File("src/main/java/com/aiquota/mobile/sync/ForegroundRefreshHealthScheduler.kt").readText()
        val controller = File("src/main/java/com/aiquota/mobile/sync/ForegroundRefreshController.kt").readText()
        val notification = File("src/main/java/com/aiquota/mobile/notification/UsageLimitNotificationController.kt").readText()
        val build = File("build.gradle.kts").readText()
        val english = File("src/main/res/values/strings.xml").readText()
        val korean = File("src/main/res/values-ko/strings.xml").readText()

        assertTrue(build.contains("androidx.work:work-runtime-ktx"))
        assertTrue(worker.contains("class ForegroundRefreshHealthWorker"))
        assertTrue(worker.contains("ProviderBackgroundRefreshStateRepository"))
        assertTrue(worker.contains("isHeartbeatStale"))
        assertTrue(worker.contains("ForegroundRefreshController(context).startPreciseRefresh()"))
        assertTrue(worker.contains("notifyLiveRefreshIssue"))
        assertTrue(worker.contains("cancelLiveRefreshIssue"))
        assertTrue(scheduler.contains("PeriodicWorkRequestBuilder<ForegroundRefreshHealthWorker>"))
        assertTrue(scheduler.contains("15L"))
        assertTrue(scheduler.contains("setInitialDelay(STARTUP_CHECK_DELAY_MINUTES, TimeUnit.MINUTES)"))
        assertTrue(scheduler.contains("ExistingPeriodicWorkPolicy.KEEP"))
        assertTrue(scheduler.contains("ExistingWorkPolicy.KEEP"))
        assertTrue(controller.contains("ForegroundRefreshHealthScheduler.schedule"))
        assertTrue(controller.contains("ForegroundRefreshHealthScheduler.cancel"))
        assertTrue(notification.contains("LIVE_REFRESH_ISSUE_NOTIFICATION_ID = 1002"))
        assertTrue(notification.contains("fun notifyLiveRefreshIssue"))
        assertTrue(english.contains("Live monitoring needs attention"))
        assertTrue(korean.contains("라이브 모니터링 확인 필요"))
    }

    @Test
    fun automaticStaleRefreshDoesNotDisconnectAfterCollectorFailures() {
        val service = File("src/main/java/com/aiquota/mobile/providers/ProviderBackgroundRefreshService.kt").readText()

        assertTrue(service.contains("automaticRefresh = manualProviderId == null"))
        assertTrue(service.contains("repository.failKeepingPrevious(effectiveJob.providerId, outcome.failure.message)"))
        assertFalse(service.contains("MAX_STALE_REFRESH_FAILURES"))
        assertFalse(service.contains("staleRefreshFailureCounts"))
        assertFalse(service.contains("Provider session expired after repeated automatic refresh failures."))
    }

    @Test
    fun automaticAuthLikeRefreshFailuresKeepProviderRefreshable() {
        val service = File("src/main/java/com/aiquota/mobile/providers/ProviderBackgroundRefreshService.kt").readText()
        val authFailureHandler = service.substringAfter("private fun handleRefreshAuthFailure")
            .substringBefore("private suspend fun collectNativeProviderUsage")
        val geminiAutomaticBranch = authFailureHandler.substringAfter("if (automaticRefresh && providerId == ProviderId.GEMINI)")
            .substringBefore("if (automaticRefresh)")
        val automaticBranch = authFailureHandler.substringAfter("if (automaticRefresh)")
            .substringBefore("if (!ProviderRefreshSessionPolicy")
        val payloadBranch = service.substringAfter("is ServiceRefreshOutcome.Payload ->")
            .substringBefore("} else if (effectiveJob.providerId == ProviderId.GEMINI")
        val failureBranch = service.substringAfter("is ServiceRefreshOutcome.Failure ->")
            .substringBefore("if (ProviderHiddenWebViewRetentionPolicy")

        assertTrue(geminiAutomaticBranch.contains("repository.markGoogleUsagePending(providerId, GoogleUsagePendingRetryPolicy.PENDING_MESSAGE)"))
        assertTrue(automaticBranch.contains("repository.failKeepingPrevious(providerId, message)"))
        assertFalse(automaticBranch.contains("repository.markInteractiveAuthRequired(providerId, message)"))
        assertTrue(authFailureHandler.contains("return"))
        assertFalse(automaticBranch.contains("ProviderSessionResetter(applicationContext).disconnect"))
        assertFalse(automaticBranch.contains("repository.markSessionExpired"))
        assertTrue(payloadBranch.contains("handleRefreshAuthFailure("))
        assertTrue(failureBranch.contains("handleRefreshAuthFailure("))
        assertTrue(service.contains("ProviderRefreshMode.HIDDEN_WEB_COLLECTOR -> ProviderWebSessionMaintenanceGate.withMaintenanceLock"))
    }

    @Test
    fun opencodeRefreshUsesLastTrustedGoUsagePageOnlyAsNativeBridgeTarget() {
        val service = File("src/main/java/com/aiquota/mobile/providers/ProviderBackgroundRefreshService.kt").readText()
        val login = File("src/main/java/com/aiquota/mobile/providers/WebLoginActivity.kt").readText()
        val stateRepository = File("src/main/java/com/aiquota/mobile/providers/ProviderScopedStateRepository.kt").readText()
        val runtimeResolver = service.substringAfter("private fun resolveRuntimeRefreshJob")
            .substringBefore("private fun handleRefreshAuthFailure")
        val nativeBridgeUrl = service.substringAfter("private fun nativeUsageBridgePageUrl")
            .substringBefore("private fun maybeStartCodexAboutBlankCollection")

        assertTrue(stateRepository.contains("fun saveOpenCodeUsageUrl"))
        assertTrue(stateRepository.contains("fun readOpenCodeUsageUrl"))
        assertTrue(login.contains("saveOpenCodeUsageUrl(pageUrl)"))
        assertTrue(login.contains("saveOpenCodeUsageUrl(goUsageUrl)"))
        assertFalse(runtimeResolver.contains("readOpenCodeUsageUrl()"))
        assertFalse(runtimeResolver.contains("job.copy(startUrl = usageUrl)"))
        assertTrue(nativeBridgeUrl.contains("providerId == ProviderId.OPENCODE"))
        assertTrue(nativeBridgeUrl.contains("readOpenCodeUsageUrl()"))
    }

    @Test
    fun explicitProviderRefreshUsesManualRefreshIntent() {
        val service = File("src/main/java/com/aiquota/mobile/providers/ProviderBackgroundRefreshService.kt").readText()
        val manualFactory = service.substringAfter("fun createRefreshIntent")
            .substringBefore("fun createControlIntents")

        assertTrue(manualFactory.contains(".setAction(ACTION_REFRESH)"))
        assertTrue(manualFactory.contains("WidgetRefreshActions.EXTRA_PROVIDER_ID"))
        assertTrue(manualFactory.contains("ProviderBackgroundRefreshService::class.java"))
    }

    @Test
    fun glmAndOpenCodeRefreshAreCollectedInsteadOfDiagnosticPassed() {
        val service = File("src/main/java/com/aiquota/mobile/providers/ProviderBackgroundRefreshService.kt").readText()
        val refreshProvider = service.substringAfter("private suspend fun refreshProvider")
            .substringBefore("private fun resolveRuntimeRefreshJob")

        assertFalse(refreshProvider.contains("shouldPassRefreshForDiagnostics(effectiveJob.providerId)"))
        assertFalse(refreshProvider.contains("reason=diagnostic_pass"))
        assertFalse(service.contains("private fun shouldPassRefreshForDiagnostics"))
    }

    @Test
    fun glmWebOAuthBackgroundRefreshStartsFromUsagePage() {
        val service = File("src/main/java/com/aiquota/mobile/providers/ProviderBackgroundRefreshService.kt").readText()
        val runtimeResolver = service.substringAfter("private fun resolveRuntimeRefreshJob")
            .substringBefore("private fun handleRefreshAuthFailure")

        assertTrue(runtimeResolver.contains("GlmRuntimeRefreshJobs.resolve("))
        assertFalse(runtimeResolver.contains("startUrl = GlmProviderUrls.WEB_OAUTH_URL"))
    }

    @Test
    fun glmWebOAuthBackgroundRefreshUsesStoredWebSessionNativeFetchThenIsolatedRenewal() {
        val service = File("src/main/java/com/aiquota/mobile/providers/ProviderBackgroundRefreshService.kt").readText()
        val nativeCollector = service.substringAfter("private suspend fun collectNativeProviderUsage")
            .substringBefore("private fun fetchAntigravityNativeOrWebSessionPayload")
        val webCollector = service.substringAfter("private suspend fun collectWebProviderUsage")
            .substringBefore("val requestId = ++nextRequestId")

        assertTrue(nativeCollector.contains("connectionMode()"))
        assertTrue(nativeCollector.contains("fetchUsagePayloadFromWebSession(includePlan = !automaticRefresh)"))
        assertTrue(nativeCollector.contains("collectGlmWebOAuthUsage("))
        assertTrue(nativeCollector.contains("GlmIsolatedWebSession.collectUsage("))
        assertTrue(nativeCollector.contains("fallbackGate.canRunFallback(automaticRefresh)"))
        assertFalse(webCollector.contains("GlmIsolatedWebSession.collectUsage("))
    }

    @Test
    fun glmWebOAuthMissingStoredSessionCanRenewWithoutRecordingStoredFetchAsFallback() {
        val service = File("src/main/java/com/aiquota/mobile/providers/ProviderBackgroundRefreshService.kt").readText()
        val repository = File("src/main/java/com/aiquota/mobile/providers/GlmUsageRepository.kt").readText()
        val renewal = service.substringAfter("private suspend fun collectGlmWebOAuthUsage")
            .substringBefore("private fun glmAuthFailureMessageFor")
        val storedFetch = repository.substringAfter("fun fetchUsagePayloadFromWebSession")
            .substringBefore("object GlmUsageFetcher")

        assertTrue(storedFetch.contains("requiresAuth = true, diagnostic = \"glm_web_cookie_missing\""))
        assertTrue(renewal.indexOf("repository.fetchUsagePayloadFromWebSession(includePlan = !automaticRefresh)") < renewal.indexOf("fallbackGate.canRunFallback(automaticRefresh)"))
        assertTrue(renewal.indexOf("fallbackGate.recordFallbackAttempt()") < renewal.indexOf("GlmIsolatedWebSession.collectUsage("))
        assertFalse(renewal.substringBefore("GlmIsolatedWebSession.collectUsage(").contains("repository.failKeepingPrevious"))
    }

    @Test
    fun glmWebOAuthAuthFailureUsesWebSessionMessageNotApiKeyMessage() {
        val service = File("src/main/java/com/aiquota/mobile/providers/ProviderBackgroundRefreshService.kt").readText()
        val nativeCollector = service.substringAfter("private suspend fun collectNativeProviderUsage")
            .substringBefore("private fun fetchAntigravityNativeOrWebSessionPayload")
        val messageHelper = service.substringAfter("private fun glmAuthFailureMessageFor")
            .substringBefore("private suspend fun fetchAntigravityNativeOrWebSessionPayload")

        assertTrue(nativeCollector.contains("val connectionMode = repository.connectionMode()"))
        assertTrue(nativeCollector.contains("glmAuthFailureMessageFor(connectionMode)"))
        assertTrue(messageHelper.contains("GlmConnectionMode.WEB_OAUTH"))
        assertTrue(messageHelper.contains("GLM web session expired. Please sign in again."))
        assertTrue(messageHelper.contains("GlmConnectionMode.API_KEY"))
        assertTrue(messageHelper.contains("GLM API key is invalid or expired."))
    }

    @Test
    fun opencodeBackgroundRefreshDoesNotRedirectVisiblePagesOrRestoreSavedCookies() {
        val service = File("src/main/java/com/aiquota/mobile/providers/ProviderBackgroundRefreshService.kt").readText()
        val restoreDebugCookies = service.substringAfter("private fun restoreDebugProviderSessionCookies")
            .substringBefore("private fun restoreCodexDebugNativeAuthContext")
        val warmUp = service.substringAfter("private fun webSessionWarmUpUrl")
        val pageStarted = service.substringAfter("override fun onPageStarted")
            .substringBefore("override fun shouldOverrideUrlLoading")
        val pageFinished = service.substringAfter("override fun onPageFinished")
            .substringBefore("override fun onReceivedError")

        assertFalse(service.contains("private fun maybeRedirectOpenCodeRefreshToGo"))
        assertFalse(service.contains("OpenCodeUsagePageRoutes.goUsageUrlFrom(url)"))
        assertFalse(pageStarted.contains("maybeRedirectOpenCodeRefreshToGo(active, view, url)"))
        assertFalse(pageFinished.contains("maybeRedirectOpenCodeRefreshToGo(active, view, url)"))
        assertFalse(warmUp.contains("ProviderId.OPENCODE"))
        assertFalse(warmUp.contains("ProviderId.CURSOR"))
        assertTrue(restoreDebugCookies.contains("providerId == ProviderId.OPENCODE"))
        assertTrue(restoreDebugCookies.contains("return"))
    }

    @Test
    fun serviceWebCollectorUsesProductionReinjectionPolicyWithoutRunIdState() {
        val service = File("src/main/java/com/aiquota/mobile/providers/ProviderBackgroundRefreshService.kt").readText()
        val injectBlock = service.substringAfter("private fun injectCollectorIfReady")
            .substringBefore("private inner class ServiceCollectorWebViewClient")

        assertTrue(injectBlock.contains("val firstInjectionForPage = collectorInjectionKeys.add(injectionKey)"))
        assertTrue(injectBlock.contains("routeKeyOf(url)"))
        assertTrue(injectBlock.contains("ProviderWebCollectorScripts.shouldAllowCollectorReinjection(providerId)"))
        assertFalse(injectBlock.contains("CollectorInjectionTrigger"))
        assertFalse(injectBlock.contains("collectorInjectionCounts"))
        assertFalse(service.contains("MAX_COLLECTOR_REINJECTIONS_PER_PAGE"))
        assertTrue(injectBlock.contains("\"reinject\""))
        assertFalse(injectBlock.contains("collectorRunId = active.requestId.toString()"))
    }

    @Test
    fun timedOutWebCollectorsAndBridgePayloadsMatchProductionFlow() {
        val service = File("src/main/java/com/aiquota/mobile/providers/ProviderBackgroundRefreshService.kt").readText()
        val webCollector = service.substringAfter("private suspend fun collectWebProviderUsage")
            .substringBefore("@SuppressLint(\"SetJavaScriptEnabled\")")
        val bridge = service.substringAfter("private inner class ServiceUsageBridge")
            .substringBefore("private class ServiceCollectorChromeClient")

        assertFalse(webCollector.contains("if (result == null)"))
        assertFalse(webCollector.contains("destroyProviderWebView(job.providerId)"))
        assertFalse(bridge.contains("bridgePayloadForActiveRequest(rawPayload, active)"))
        assertFalse(bridge.contains("bridgeMessageMatchesActiveRequest(rawError"))
        assertFalse(bridge.contains("json.remove(\"collectorRunId\")"))
        assertFalse(bridge.contains("reason=stale_collector"))
        assertTrue(bridge.contains("completeWebJob(active.requestId, ServiceRefreshOutcome.Payload(rawPayload))"))
    }

    @Test
    fun codexBackgroundRefreshDoesNotUseNonProductionPostAuthRedirect() {
        val service = File("src/main/java/com/aiquota/mobile/providers/ProviderBackgroundRefreshService.kt").readText()
        val pageStarted = service.substringAfter("override fun onPageStarted")
            .substringBefore("override fun shouldOverrideUrlLoading")
        val pageFinished = service.substringAfter("override fun onPageFinished")
            .substringBefore("override fun onReceivedError")

        assertFalse(service.contains("maybeRedirectCodexPostAuthToUsage"))
        assertFalse(service.contains("CODEX_CALLBACK_RECOVERY_URL"))
        assertFalse(service.contains("codexPostAuthRedirected"))
        assertFalse(pageStarted.contains("ProviderLoginStrategy.shouldRedirectCodexPostAuthLandingToUsage"))
        assertFalse(pageFinished.contains("ProviderLoginStrategy.shouldRedirectCodexPostAuthLandingToUsage"))
    }

    @Test
    fun codexBackgroundRefreshDoesNotUseNonProductionRouteApplicationErrorFallback() {
        val service = File("src/main/java/com/aiquota/mobile/providers/ProviderBackgroundRefreshService.kt").readText()
        val pageFinished = service.substringAfter("override fun onPageFinished")
            .substringBefore("override fun onReceivedError")

        assertFalse(pageFinished.contains("ProviderLoginStrategy.isCodexRouteApplicationError(url, pageText)"))
        assertFalse(service.contains("maybeRecoverCodexUsageRouteApplicationError"))
        assertFalse(pageFinished.contains("Codex usage route returned an application error."))
        assertFalse(service.contains("codexUsageRouteFallbackAttempted"))
    }

    @Test
    fun codexBackgroundRefreshDoesNotUseNonProductionSettingsUsageFallback() {
        val service = File("src/main/java/com/aiquota/mobile/providers/ProviderBackgroundRefreshService.kt").readText()
        val pageFinished = service.substringAfter("override fun onPageFinished")
            .substringBefore("override fun onReceivedError")

        assertFalse(service.contains("maybeFallbackCodexRootToSettingsUsage"))
        assertFalse(service.contains("CODEX_SETTINGS_USAGE_URL"))
        assertFalse(pageFinished.contains("maybeFallbackCodexRootToSettingsUsage(active, view, url)"))
        assertFalse(service.contains("codexPostAuthRootFinishes"))
        assertFalse(service.contains("codexSettingsUsageFallbackAttempted"))
    }

    @Test
    fun codexBackgroundRefreshDoesNotDeferLoginPageFailureAfterPostAuthRoot() {
        val service = File("src/main/java/com/aiquota/mobile/providers/ProviderBackgroundRefreshService.kt").readText()
        val pageFinished = service.substringAfter("override fun onPageFinished")
            .substringBefore("override fun onReceivedError")
        val loadResource = service.substringAfter("override fun onLoadResource")
            .substringBefore("override fun onPageFinished")

        assertFalse(service.contains("shouldDeferCodexPostAuthLandingLoginPageFailure"))
        assertFalse(pageFinished.contains("!shouldDeferCodexPostAuthLandingLoginPageFailure(active, url)"))
        assertFalse(loadResource.contains("!shouldDeferCodexPostAuthLandingLoginPageFailure(active, pageUrl)"))
    }

    @Test
    fun manualAuthFailuresExpireSessionAndClearNativeTokenCredentialsOnly() {
        val repository = File("src/main/java/com/aiquota/mobile/local/LocalUsageRepository.kt").readText()
        val service = File("src/main/java/com/aiquota/mobile/providers/ProviderBackgroundRefreshService.kt").readText()
        val authFailureHandler = service.substringAfter("private fun handleRefreshAuthFailure")
            .substringBefore("private suspend fun collectNativeProviderUsage")
        val manualBranch = authFailureHandler.substringAfter("if (!automaticRefresh) {")
            .substringBefore("if (automaticRefresh && providerId == ProviderId.GEMINI)")

        assertTrue(repository.contains("fun markSessionExpired(providerId: ProviderId, message: String)"))
        assertTrue(repository.contains("ProviderUsageSnapshot.disconnected(providerId).copy("))
        assertFalse(authFailureHandler.contains("repository.markInteractiveAuthRequired(providerId, message)"))
        assertTrue(manualBranch.contains("ProviderRefreshSessionPolicy.shouldClearCredentialsOnRefreshAuthFailure(providerId)"))
        assertTrue(manualBranch.contains("ProviderSessionResetter(applicationContext).disconnect(providerId)"))
        assertTrue(manualBranch.contains("repository.markSessionExpired(providerId, message)"))
        assertFalse(manualBranch.contains("repository.failKeepingPrevious(providerId, message)"))
        assertTrue(authFailureHandler.contains("repository.markGoogleUsagePending(providerId, GoogleUsagePendingRetryPolicy.PENDING_MESSAGE)"))
        assertTrue(authFailureHandler.contains("repository.failKeepingPrevious(providerId, message)"))
    }

    @Test
    fun stoppedBackgroundRefreshDoesNotPersistProviderFailure() {
        val service = File("src/main/java/com/aiquota/mobile/providers/ProviderBackgroundRefreshService.kt").readText()

        assertTrue(service.contains("completeActiveWebJob(ServiceRefreshOutcome.Cancelled)"))
        assertTrue(service.contains("data object Cancelled : ServiceRefreshOutcome()"))
        assertTrue(service.contains("is ServiceRefreshOutcome.Cancelled ->"))
        assertFalse(service.contains("ProviderRefreshFailureKind.COLLECTOR_ERROR, \"Background refresh stopped.\""))
    }

    @Test
    fun nativeAntigravityRefreshDoesNotBlockMainThread() {
        val service = File("src/main/java/com/aiquota/mobile/providers/ProviderBackgroundRefreshService.kt").readText()
        val nativeRefresh = service.substringAfter("private suspend fun collectNativeProviderUsage")
            .substringBefore("private suspend fun collectWebProviderUsage")

        assertTrue(nativeRefresh.contains("withContext(Dispatchers.IO)"))
        assertFalse(nativeRefresh.contains("GeminiCliOAuthRepository(applicationContext)"))
        assertTrue(nativeRefresh.contains("AntigravityOAuthRepository(applicationContext).fetchUsagePayloadFromStoredCredential()"))
    }

    @Test
    fun nativeAntigravityRefreshFallsBackToWebSessionWhenStoredTokenHasNoPayload() {
        val service = File("src/main/java/com/aiquota/mobile/providers/ProviderBackgroundRefreshService.kt").readText()
        val nativeRefresh = service.substringAfter("private suspend fun collectNativeProviderUsage")
            .substringBefore("private suspend fun collectWebProviderUsage")

        assertTrue(nativeRefresh.contains("GoogleWebSessionCodeAssistFetcher.hasSessionCookie"))
        assertTrue(nativeRefresh.contains("GoogleWebSessionCodeAssistFetcher.fetchUsagePayload"))
    }

    @Test
    fun nativeFetchJavascriptBridgeUsesRecordedPageUrlGuard() {
        val service = File("src/main/java/com/aiquota/mobile/providers/ProviderBackgroundRefreshService.kt").readText()
        val bridge = service.substringAfter("private inner class ServiceUsageBridge")
            .substringBefore("private class ServiceCollectorChromeClient")
        val nativeFetchGuard = bridge.substringAfter("private fun isNativeFetchBridgePageAllowed")

        assertTrue(nativeFetchGuard.contains("webJobLastUrls[active.requestId]"))
        assertFalse(nativeFetchGuard.contains("retainedWebViews[providerId]?.url"))
    }

    @Test
    fun codexBackgroundRefreshSwitchesToAboutBlankNativeJsonAfterAuthResource() {
        val service = File("src/main/java/com/aiquota/mobile/providers/ProviderBackgroundRefreshService.kt").readText()

        assertTrue(service.contains("captureCodexNativeFetchHeaders(ownerProviderId, url, request.requestHeaders.orEmpty())"))
        assertTrue(service.contains("maybeStartCodexAboutBlankCollection(ownerProviderId, view, url)"))
        assertTrue(service.contains("recordWebJobUrl(active.requestId, \"about:blank\")"))
        assertTrue(service.contains("ProviderNativeJsonBridge.fetchJson(ownerProviderId, url, collectorUserAgent, headers)"))
    }

    @Test
    fun claudeBackgroundRefreshCapturesHeadersBeforeAboutBlankNativeBridge() {
        val service = File("src/main/java/com/aiquota/mobile/providers/ProviderBackgroundRefreshService.kt").readText()
        val plan = File("src/main/java/com/aiquota/mobile/providers/ProviderRefreshPlan.kt").readText()
        val bridgeBlock = service.substringAfter("fun fetchProviderUsagePayload()")
            .substringBefore("fun parseCodexFetchedPayload")

        assertTrue(plan.contains("if (providerId == ProviderId.CLAUDE) return \"https://claude.ai/\""))
        assertTrue(service.contains("captureClaudeNativeFetchHeaders(ownerProviderId, url, request.requestHeaders.orEmpty())"))
        assertTrue(service.contains("maybeStartClaudeAboutBlankCollection(ownerProviderId, view, url)"))
        assertTrue(service.contains("ProviderLoginStrategy.shouldStartClaudeNativeCollectionFromResource(resourceUrl)"))
        assertTrue(service.contains("private fun claudeNativeFetchHeadersFor(url: String): Map<String, String>"))
        assertTrue(bridgeBlock.contains("ProviderId.CLAUDE -> claudeNativeFetchHeadersFor(url)"))
        assertTrue(service.contains("loadClaudeAboutBlankBridgeDocument(view)"))
        assertTrue(service.contains("view.loadDataWithBaseURL("))
        assertTrue(service.contains("webJobLastUrls[requestId] == \"about:blank\""))
        assertTrue(service.contains("capturedNativeHeaders provider=claude"))
    }

    @Test
    fun codexBackgroundRefreshUsesAuthenticatedNativeResourceForAboutBlankNativeCollection() {
        val service = File("src/main/java/com/aiquota/mobile/providers/ProviderBackgroundRefreshService.kt").readText()
        val startBlock = service.substringAfter("private fun maybeStartCodexAboutBlankCollection")
            .substringBefore("private fun shouldStartCodexNativeCollectionFromResource")
        val routeBlock = service.substringAfter("private fun shouldStartCodexNativeCollectionFromResource")
            .substringBefore("private fun captureCodexNativeFetchHeaders")
        val loadResourceBlock = service.substringAfter("override fun onLoadResource")
            .substringBefore("override fun onPageFinished")
        val pageFinishedBlock = service.substringAfter("override fun onPageFinished")
            .substringBefore("override fun onReceivedError")

        assertTrue(startBlock.contains("hasCodexNativeFetchAuthContext(resourceUrl) && !hasCodexSessionCookies(resourceUrl)"))
        assertTrue(routeBlock.contains("ProviderNativeJsonBridge.isAllowedJsonUrl(ProviderId.CODEX, url)"))
        assertTrue(loadResourceBlock.contains("if (ownerProviderId == ProviderId.CODEX && pageUrl != \"about:blank\")"))
        assertTrue(pageFinishedBlock.contains("if (ownerProviderId == ProviderId.CODEX && effectiveUrl != \"about:blank\")"))
    }

    @Test
    fun codexBackgroundRefreshRestoresPersistedNativeAuthContext() {
        val service = File("src/main/java/com/aiquota/mobile/providers/ProviderBackgroundRefreshService.kt").readText()
        val prepareBlock = service.substringAfter("private fun prepareSharedWebSessionForCollection")
            .substringBefore("private fun restoreDebugProviderSessionCookies")
        val restoreBlock = service.substringAfter("private fun restoreCodexNativeAuthContext")
            .substringBefore("private fun destroyProviderWebView")
        val captureBlock = service.substringAfter("private fun captureCodexNativeFetchHeaders")
            .substringBefore("private fun codexNativeFetchHeadersFor")

        assertTrue(prepareBlock.contains("restoreCodexNativeAuthContext(providerId)"))
        assertTrue(restoreBlock.contains("CodexNativeAuthContextStore(applicationContext).restore()"))
        assertTrue(restoreBlock.contains("codexNativeFetchHeaders.putAll(restoredHeaders)"))
        assertTrue(captureBlock.contains("saveCodexNativeAuthContext()"))
        assertTrue(service.contains("CodexNativeAuthContextStore(applicationContext).save(authContext)"))
    }

    @Test
    fun claudeBackgroundRefreshRestoresPersistedNativeRequestContext() {
        val service = File("src/main/java/com/aiquota/mobile/providers/ProviderBackgroundRefreshService.kt").readText()
        val prepareBlock = service.substringAfter("private fun prepareSharedWebSessionForCollection")
            .substringBefore("private fun restoreDebugProviderSessionCookies")
        val restoreBlock = service.substringAfter("private fun restoreClaudeNativeRequestContext")
            .substringBefore("private fun destroyProviderWebView")
        val captureBlock = service.substringAfter("private fun captureClaudeNativeFetchHeaders")
            .substringBefore("private fun claudeNativeFetchHeadersFor")

        assertTrue(prepareBlock.contains("restoreClaudeNativeRequestContext(providerId)"))
        assertTrue(restoreBlock.contains("ClaudeNativeRequestContextStore(applicationContext).restore()"))
        assertTrue(restoreBlock.contains("claudeNativeFetchHeaders.putAll(restoredHeaders)"))
        assertTrue(captureBlock.contains("saveClaudeNativeRequestContext()"))
        assertTrue(service.contains("ClaudeNativeRequestContextStore(applicationContext).save(requestContext)"))
    }

    @Test
    fun claudeBackgroundRefreshStartsAtAboutBlankWhenNativeRequestContextExists() {
        val service = File("src/main/java/com/aiquota/mobile/providers/ProviderBackgroundRefreshService.kt").readText()
        val startBlock = service.substringAfter("private fun startWebCollection")
            .substringBefore("private fun prepareSharedWebSessionForCollection")
        val initialUrlBlock = service.substringAfter("private fun initialUrlForWebCollection")
            .substringBefore("private fun prepareSharedWebSessionForCollection")

        assertTrue(startBlock.contains("prepareSharedWebSessionForCollection(webView, job.providerId)"))
        assertTrue(startBlock.indexOf("prepareSharedWebSessionForCollection") < startBlock.indexOf("initialUrlForWebCollection(active)"))
        assertTrue(startBlock.contains("loadClaudeAboutBlankBridgeDocument(webView)"))
        assertTrue(initialUrlBlock.contains("ProviderId.CLAUDE"))
        assertTrue(initialUrlBlock.contains("hasAnyClaudeNativeFetchHeaders()"))
        assertTrue(initialUrlBlock.contains("\"about:blank\""))
    }

    @Test
    fun claudeAboutBlankBackgroundRefreshInjectsWithoutPageCaptureCallback() {
        val service = File("src/main/java/com/aiquota/mobile/providers/ProviderBackgroundRefreshService.kt").readText()
        val pageStartedBlock = service.substringAfter("override fun onPageStarted")
            .substringBefore("override fun shouldOverrideUrlLoading")
        val pageFinishedBlock = service.substringAfter("override fun onPageFinished")
            .substringBefore("override fun onReceivedError")
        val directClaudeInjection = pageFinishedBlock.substringAfter("ownerProviderId == ProviderId.CLAUDE")
            .substringBefore("view.evaluateJavascript(PAGE_CAPTURE_SCRIPT)")

        assertTrue(pageStartedBlock.contains("effectiveCollectorPageUrl(ownerProviderId, active.requestId, url)"))
        assertTrue(pageStartedBlock.contains("recordWebJobUrl(active.requestId, effectiveUrl)"))
        assertTrue(directClaudeInjection.contains("effectiveUrl == \"about:blank\""))
        assertTrue(directClaudeInjection.contains("injectCollectorIfReady(ownerProviderId, view, effectiveUrl, \"\")"))
        assertTrue(service.contains("collectorCookiesFor(providerId, url)"))
        assertTrue(service.contains("providerId == ProviderId.CLAUDE && url == \"about:blank\""))
        assertTrue(service.contains("CLAUDE_ABOUT_BLANK_BASE_URL"))
    }

    @Test
    fun automaticForegroundRefreshDelaysFirstCycleAfterServiceStart() {
        val service = File("src/main/java/com/aiquota/mobile/providers/ProviderBackgroundRefreshService.kt").readText()
        val startRefreshLoop = service.substringAfter("private fun startRefreshLoop()")
            .substringBefore("private fun requestImmediateRefresh")
        val manualRefresh = service.substringAfter("private fun requestImmediateRefresh")
            .substringBefore("private fun stopRefreshLoop")

        assertTrue(service.contains("INITIAL_AUTO_REFRESH_DELAY_MILLIS = 3_000L"))
        assertTrue(startRefreshLoop.contains("scheduleNextTick(delayMillis = initialAutoRefreshDelayMillis())"))
        assertTrue(service.contains("private fun initialAutoRefreshDelayMillis(): Long"))
        assertTrue(manualRefresh.contains("scheduleNextTick(delayMillis = 0L)"))
    }

    @Test
    fun providerRefreshServiceLogsStayRedacted() {
        val service = File("src/main/java/com/aiquota/mobile/providers/ProviderBackgroundRefreshService.kt").readText()
        val backgroundCollector = File("src/main/java/com/aiquota/mobile/ui/BackgroundProviderWebCollector.kt").readText()

        assertFalse(service.contains("Log.d(TAG, rawPayload"))
        assertFalse(service.contains("Log.e(TAG, rawPayload"))
        assertFalse(service.contains("Log.d(TAG, cookiesFor"))
        assertFalse(service.contains("Log.e(TAG, cookiesFor"))
        assertFalse(backgroundCollector.contains("message=${'$'}{errorJson?.optString(\"message\").orEmpty()}"))
        assertTrue(backgroundCollector.contains("messagePresent="))
        assertTrue(service.contains("provider=${'$'}{job.providerId.storageId}"))
    }

    @Test
    fun pinnedNotificationDoesNotExposeUserStopAction() {
        val notification = File("src/main/java/com/aiquota/mobile/notification/UsageLimitNotificationController.kt").readText()
        val strings = File("src/main/res/values/strings.xml").readText()

        assertFalse(notification.contains("ACTION_STOP"))
        assertFalse(notification.contains("addAction"))
        assertFalse(strings.contains("notification_stop_live_refresh"))
    }
}
