package com.aiquota.mobile.providers

import android.annotation.SuppressLint
import android.app.Activity
import android.content.Context
import android.content.Intent
import android.graphics.Color
import android.os.Build
import android.os.Bundle
import android.os.Message
import android.os.SystemClock
import android.util.Log
import android.view.ViewGroup
import android.webkit.ConsoleMessage
import android.webkit.CookieManager
import android.webkit.JavascriptInterface
import android.webkit.RenderProcessGoneDetail
import android.webkit.WebChromeClient
import android.webkit.WebResourceRequest
import android.webkit.WebResourceError
import android.webkit.WebResourceResponse
import android.webkit.WebStorage
import android.webkit.WebView
import android.webkit.WebViewClient
import android.widget.FrameLayout
import android.widget.TextView
import com.aiquota.mobile.local.LocalUsageRepository
import com.aiquota.mobile.local.ProviderId
import java.net.HttpURLConnection
import java.net.URI
import java.net.URL
import java.net.URLDecoder
import java.nio.charset.StandardCharsets
import java.util.Locale
import java.util.concurrent.ConcurrentHashMap
import kotlinx.coroutines.MainScope
import kotlinx.coroutines.cancel
import kotlinx.coroutines.launch
import org.json.JSONObject

open class WebLoginActivity : Activity() {
    private lateinit var providerId: ProviderId
    private lateinit var webView: WebView
    private lateinit var rootContainer: FrameLayout
    private lateinit var titleView: TextView
    private var mainWebViewDestroyed = false
    @Volatile
    private var finished = false
    private var firstPageLogged = false
    private var observedCodexAccountId: String? = null
    private var copilotPostLoginRedirected = false
    private var copilotNativeCollectionStarted = false
    private var lastGeminiUsageRedirectKey: String? = null
    private var lastGeminiUsageRedirectAtMs = 0L
    private var geminiUsageRedirectAttempts = 0
    private var geminiSignInClickAttempts = 0
    private var geminiCookieMismatchRecoveryAttempted = false
    private var geminiRedirectLoopRecoveryAttempted = false
    private var geminiNetworkChangedRecoveryAttempted = false
    private var geminiNativeCollectionScheduled = false
    private var glmPostLoginRedirected = false
    private var glmNativeCollectionStarted = false
    private var glmAuthRecoveryAttempted = false
    private var glmCookieMismatchRecoveryAttempts = 0
    private var glmMainFramePainted = false
    private var glmBlankPageRecoveryAttempted = false
    private var glmRetainedWebSessionCookieHeader = ""
    private var glmAuthenticatedSessionSeen = false
    private var glmAuthenticatedChatResourceSeen = false
    private var glmAuthorizedQuotaResourceSeen = false
    private val glmNativeFetchHeaders = mutableMapOf<String, String>()
    private var lastGoogleOAuthUrl: String? = null
    private var openCodePostLoginRedirected = false
    private var openCodeNativeCollectionStarted = false
    private var codexPostLoginUsageRedirected = false
    private var codexNativeCollectionStarted = false
    private var cursorNativeCollectionStarted = false
    private var aboutBlankNativeCollectionStarted = false
    private var claudeNativeCollectionStarted = false
    private var geminiNativeCollectionStarted = false
    private var geminiNativeUsagePageUrl = ""
    private var geminiExpectedUsagePageUrl = ""
    @Volatile
    private var oauthCallbackHandled = false
    @Volatile
    private var currentBridgePageUrl = ""
    @Volatile
    private var currentBridgeUserAgent = ProviderWebViewUserAgent.loginUserAgent()
    private val codexNativeFetchHeaders = ConcurrentHashMap<String, Map<String, String>>()
    private val claudeNativeFetchHeaders = ConcurrentHashMap<String, Map<String, String>>()
    private val geminiUsageRpcIds = linkedSetOf<String>()
    private val popupViews = mutableSetOf<WebView>()
    private val collectorInjectionKeys = mutableSetOf<String>()
    private val loginScope = MainScope()
    private val startedAtMs = SystemClock.elapsedRealtime()
    private val geminiCollectorAsset = ""
    private val antigravityCollectorAsset by lazy {
        runCatching {
            assets.open("antigravity_collector.js").bufferedReader().use { it.readText() }
        }.getOrDefault("")
    }

    @Suppress("DEPRECATION")
    @SuppressLint("SetJavaScriptEnabled")
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        providerId = ProviderId.fromStorageId(intent.getStringExtra(EXTRA_PROVIDER_ID)) ?: run {
            finish()
            return
        }
        val definition = ProviderDefinitionRegistry.definitionFor(providerId)
        val repository = LocalUsageRepository(applicationContext)
        val previousConnectionState = repository.readSnapshots()
            .firstOrNull { it.providerId == providerId }
            ?.connectionState
        repository.markConnecting(providerId)

        titleView = TextView(this).apply {
            text = loginTitleText()
            textSize = 18f
            setTextColor(Color.WHITE)
            setBackgroundColor(Color.rgb(15, 23, 42))
            setPadding(32, 24, 32, 24)
        }
        val cookieManager = CookieManager.getInstance()
        val capabilities = ProviderLoginWebViewPolicy.capabilities()
        cookieManager.setAcceptCookie(true)
        if (capabilities.webContentsDebuggingEnabled) {
            WebView.setWebContentsDebuggingEnabled(true)
        }
        if (ProviderWebSessionClearPolicy.shouldClearBeforeLogin(providerId, previousConnectionState)) {
            clearProviderWebSession(cookieManager, providerId)
        }
        restoreCodexNativeAuthContext()
        restoreClaudeNativeRequestContext()
        webView = createConfiguredWebView(cookieManager, capabilities)
        rootContainer = FrameLayout(this).apply {
            addView(webView, loginWebViewLayoutParams())
            addView(titleView, FrameLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, loginTitleHeight()))
        }
        setContentView(rootContainer)
        val requestedStartUrl = intent.getStringExtra(EXTRA_START_URL) ?: definition.loginStartUrl
        noteBridgePageUrl(requestedStartUrl)
        webView.loadUrl(requestedStartUrl)
    }

    override fun onDestroy() {
        if (::providerId.isInitialized && !finished) {
            if (oauthCallbackHandled && isGoogleProvider()) {
                Log.i(
                    "AIQuotaLogin",
                    "provider=${providerId.storageId} googleCallbackDestroy awaitingCollector=true"
                )
            } else {
                LocalUsageRepository(applicationContext).markLoginCancelled(
                    providerId,
                    "Provider login was cancelled."
                )
                UsageSurfaceRefresher.refresh(applicationContext, LocalUsageRepository(applicationContext))
            }
        }
        popupViews.toList().forEach(::destroyPopupWindow)
        if (::webView.isInitialized) {
            if (!mainWebViewDestroyed) {
                webView.destroy()
            }
        }
        loginScope.cancel()
        clearClaudeNativeFetchHeaders()
        super.onDestroy()
    }

    @SuppressLint("SetJavaScriptEnabled")
    private fun createConfiguredWebView(
        cookieManager: CookieManager,
        capabilities: ProviderLoginWebViewCapabilities
    ): WebView {
        return WebView(this).apply {
            val loginUserAgent = ProviderWebViewUserAgent.loginUserAgent(this@WebLoginActivity)
            currentBridgeUserAgent = loginUserAgent
            settings.javaScriptEnabled = true
            settings.domStorageEnabled = true
            settings.databaseEnabled = capabilities.databaseEnabled
            settings.allowFileAccess = capabilities.allowFileAccess
            settings.javaScriptCanOpenWindowsAutomatically = capabilities.javaScriptCanOpenWindowsAutomatically
            settings.setSupportMultipleWindows(capabilities.supportMultipleWindows)
            settings.userAgentString = loginUserAgent
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
                cookieManager.setAcceptThirdPartyCookies(this, capabilities.acceptThirdPartyCookies)
            }
            addJavascriptInterface(UsageBridge(), BRIDGE_NAME)
            webChromeClient = LoginWebChromeClient()
            webViewClient = LoginWebViewClient()
        }
    }

    private fun loginWebViewLayoutParams(): FrameLayout.LayoutParams {
        return FrameLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT).apply {
            topMargin = loginTitleHeight()
        }
    }

    private fun loginTitleHeight(): Int = 96

    private fun loginTitleText(): String {
        return "Sign in to ${providerId.displayName}"
    }

    private fun destroyPopupWindow(window: WebView) {
        if (!popupViews.remove(window)) return
        if (::rootContainer.isInitialized) {
            rootContainer.removeView(window)
        }
        window.destroy()
        Log.d("AIQuotaLogin", "provider=${providerId.storageId} popupWindowClosed=true")
    }

    private fun clearProviderWebSession(cookieManager: CookieManager, providerId: ProviderId) {
        ProviderWebSessionCleaner.clearProviderWebSession(cookieManager, WebStorage.getInstance(), providerId)
        Log.i("AIQuotaLogin", "provider=${providerId.storageId} reauthWebSessionCleared=true")
    }

    private fun noteBridgePageUrl(url: String?) {
        if (!url.isNullOrBlank()) {
            currentBridgePageUrl = url
        }
    }

    private inner class LoginWebChromeClient : WebChromeClient() {
        override fun onConsoleMessage(consoleMessage: ConsoleMessage): Boolean {
            // provider 페이지의 콘솔 원문에는 토큰·계정·요청 URL이 실릴 수 있어 남기지 않는다.
            // 수준과 줄 번호만 남긴다(BackgroundProviderWebCollector와 동일한 규약).
            Log.d(
                "AIQuotaLoginConsole",
                "provider=${providerId.storageId} consoleLevel=${consoleMessage.messageLevel()} " +
                    "line=${consoleMessage.lineNumber()}"
            )
            return true
        }

        override fun onCreateWindow(view: WebView, isDialog: Boolean, isUserGesture: Boolean, resultMsg: Message): Boolean {
            if (!::rootContainer.isInitialized) return false
            val popup = createConfiguredWebView(CookieManager.getInstance(), ProviderLoginWebViewPolicy.capabilities()).apply {
                setBackgroundColor(Color.WHITE)
            }
            popupViews.add(popup)
            rootContainer.addView(popup, loginWebViewLayoutParams())
            val transport = resultMsg.obj as WebView.WebViewTransport
            transport.webView = popup
            resultMsg.sendToTarget()
            Log.d("AIQuotaLogin", "provider=${providerId.storageId} popupWindowCreated=true")
            return true
        }

        override fun onCloseWindow(window: WebView) {
            destroyPopupWindow(window)
        }
    }

    private inner class LoginWebViewClient : WebViewClient() {
        override fun onPageStarted(view: WebView, url: String, favicon: android.graphics.Bitmap?) {
            if (isCodexAboutBlankNavigation(url)) {
                noteBridgePageUrl("about:blank")
                return
            }
            if (isClaudeAboutBlankBridgeNavigation(url)) {
                noteBridgePageUrl("about:blank")
                return
            }
            noteBridgePageUrl(url)
            scheduleGlmBlankPageRecovery(view, url)
            rememberGoogleOAuthStartUrl(url)
            if (maybeRecoverGoogleCookieMismatch(view, url)) return
            if (handleLoginCompleteNavigation(view, url)) return
            if (maybeRedirectGeminiToUsage(view, url)) return
            if (maybeRedirectOpenCodeToGo(view, url)) return
            injectCollectorIfReady(view, url, "")
        }

        override fun onPageCommitVisible(view: WebView, url: String) {
            if (providerId != ProviderId.GLM) return
            glmMainFramePainted = true
            Log.i("AIQuotaLogin", "provider=glm pageCommitVisible host=${hostOf(url)}${pathOf(url)}")
        }

        override fun shouldOverrideUrlLoading(view: WebView, request: WebResourceRequest): Boolean {
            val url = request.url.toString()
            Log.d("AIQuotaLogin", "provider=${providerId.storageId} navigate=${safeUrlForLog(url)}")
            if (isCodexAboutBlankNavigation(url)) {
                noteBridgePageUrl("about:blank")
                return false
            }
            if (isClaudeAboutBlankBridgeNavigation(url)) {
                noteBridgePageUrl("about:blank")
                return false
            }
            if (request.isForMainFrame) {
                noteBridgePageUrl(url)
                rememberGoogleOAuthStartUrl(url)
                if (maybeRecoverGoogleCookieMismatch(view, url)) return true
                ProviderLoginUrlRewriter.rewriteMainFrameUrl(providerId, url)?.let { rewrittenUrl ->
                    Log.i("AIQuotaLogin", "provider=${providerId.storageId} googleOAuthRewrite=select_account")
                    view.loadUrl(rewrittenUrl)
                    return true
                }
            }
            if (providerId == ProviderId.CODEX && ProviderLoginStrategy.shouldRecoverCodexLocalAuthCallback(url)) {
                recoverCodexFromLocalAuthCallback(view, url)
                return true
            }
            if (handleLoginCompleteNavigation(view, url)) return true
            if (maybeRedirectGeminiToUsage(view, url)) return true
            val shouldOverride = ProviderLoginWebViewPolicy.shouldOverrideNavigation(providerId, url)
            if (shouldOverride) {
                Log.w("AIQuotaLogin", "provider=${providerId.storageId} blockedNavigation host=${hostOf(url)}")
            }
            return shouldOverride
        }

        override fun shouldInterceptRequest(view: WebView, request: WebResourceRequest): WebResourceResponse? {
            val url = request.url.toString()
            captureCodexAccountId(url)
            captureCodexNativeFetchHeaders(request)
            val capturedClaudeHeaders = captureClaudeNativeFetchHeaders(request)
            if (captureGlmNativeFetchHeaders(request)) {
                view.post {
                    val pageUrl = view.url ?: GlmProviderUrls.WEB_USAGE_URL
                    if (maybeRedirectGlmAuthenticatedResourceToUsage(view, pageUrl)) return@post
                    if (!glmAuthorizedQuotaResourceSeen) return@post
                    maybeStartGlmNativeCollection(
                        view,
                        GlmUsagePageRoutes.nativeCollectionUrlAfterAuthenticatedResource(
                            pageUrl
                        ) ?: return@post,
                        "",
                        "resource"
                    )
                }
            }
            if (captureGeminiUsageRpcId(url)) {
                maybeScheduleGeminiNativeCollectionFromResource(view, url)
            }
            logGoogleCodeAssistResource(request)
            Log.d("AIQuotaLogin", "provider=${providerId.storageId} resource=${safeUrlForLog(url)}")
            if (ProviderLoginStrategy.isInteractiveLoginSessionReached(providerId, url) &&
                ProviderLoginStrategy.shouldFinishOnInteractiveLoginSessionReached(providerId)
            ) {
                view.post {
                    if (finished) return@post
                    Log.i("AIQuotaLogin", "provider=${providerId.storageId} interactiveSessionReached=true")
                    view.stopLoading()
                    finishGoogleUsagePending(
                        "Provider session reached, but trusted usage payload was not available yet.",
                        "interactive_session_reached"
                    )
                }
            }
            if (ProviderLoginStrategy.isLoginComplete(providerId, url, cookiesFor(url), "")) {
                view.post { handleLoginCompleteNavigation(view, url) }
            }
            if (isGlmAuthenticatedSessionResource(url)) {
                view.post { saveGlmWebSessionCookieHeader("auth_resource", preferCurrent = true) }
            }
            if (providerId == ProviderId.CLAUDE &&
                ProviderLoginStrategy.shouldStartClaudeNativeCollectionFromResource(url) &&
                (capturedClaudeHeaders || hasClaudeNativeFetchHeaders(url))
            ) {
                view.post { maybeStartClaudeNativeCollection(view, url, "resource") }
            }
            if (providerId == ProviderId.CODEX) {
                val pageUrl = currentBridgePageUrl.ifBlank { url }
                if (shouldRedirectCodexToUsageAfterLogin(pageUrl, url)) {
                    view.post { maybeRedirectCodexToUsageAfterLogin(view, pageUrl, url) }
                }
                if (canStartCodexNativeCollectionFromResource(url)) {
                    view.post { maybeStartCodexNativeCollection(view, pageUrl, "resource") }
                }
            }
            if (providerId == ProviderId.CURSOR &&
                ProviderWebCollectorScripts.shouldRunCollectorOnResource(ProviderId.CURSOR, url)
            ) {
                view.post { maybeStartCursorNativeCollection(view, url, "resource") }
            }
            if (ABOUT_BLANK_NATIVE_LOGIN_PROVIDERS.contains(providerId) &&
                ProviderWebCollectorScripts.shouldRunCollectorOnResource(providerId, url)
            ) {
                view.post { maybeStartAboutBlankNativeCollection(view, url, "resource") }
            }
            return if (ProviderLoginWebViewPolicy.shouldInterceptRequest(providerId, url)) {
                super.shouldInterceptRequest(view, request)
            } else {
                null
            }
        }

        override fun onLoadResource(view: WebView, url: String) {
            val pageUrl = view.url ?: url
            noteBridgePageUrl(pageUrl)
            if (providerId == ProviderId.CLAUDE && maybeStartClaudeNativeCollection(view, url, "resource")) return
            if (!ProviderWebCollectorScripts.shouldRunCollectorFromResource(providerId, pageUrl, url)) return
            if (providerId == ProviderId.CODEX) {
                if (canStartCodexNativeCollectionFromResource(url)) {
                    maybeStartCodexNativeCollection(view, pageUrl, "resource")
                }
                return
            }
            view.evaluateJavascript(PAGE_CAPTURE_SCRIPT) { encoded ->
                injectCollectorIfReady(view, pageUrl, decodeJsString(encoded), resourceTriggered = true)
            }
        }

        override fun onPageFinished(view: WebView, url: String) {
            val effectiveUrl = if (isCodexAboutBlankNavigation(url) || isClaudeAboutBlankBridgeNavigation(url)) {
                "about:blank"
            } else {
                url
            }
            noteBridgePageUrl(effectiveUrl)
            logFirstPageFinished(url)
            if (maybeRecoverGoogleCookieMismatch(view, effectiveUrl)) return
            if (handleLoginCompleteNavigation(view, effectiveUrl)) return
            if (maybeRedirectGeminiToUsage(view, effectiveUrl)) return
            if (maybeRedirectOpenCodeToGo(view, effectiveUrl)) return
            if (maybeStartClaudeNativeCollection(view, effectiveUrl, "page_finished")) return
            if (maybeStartCopilotNativeCollection(view, effectiveUrl, "page_finished")) return
            if (providerId == ProviderId.CODEX && ProviderWebCollectorScripts.shouldAcceptCollectorPayload(providerId, effectiveUrl)) {
                if (effectiveUrl == "about:blank") {
                    injectCollectorIfReady(view, effectiveUrl, "", resourceTriggered = true)
                }
                return
            }
            if (providerId == ProviderId.CLAUDE && effectiveUrl == "about:blank") {
                injectCollectorIfReady(view, effectiveUrl, "", resourceTriggered = true)
                return
            }
            if (providerId == ProviderId.GEMINI && effectiveUrl == "about:blank") {
                injectCollectorIfReady(view, effectiveUrl, "", resourceTriggered = true)
                return
            }
            if (providerId == ProviderId.GLM && effectiveUrl == "about:blank") {
                injectCollectorIfReady(view, effectiveUrl, "", resourceTriggered = true)
                return
            }
            if (providerId == ProviderId.OPENCODE && effectiveUrl == "about:blank") {
                injectCollectorIfReady(view, effectiveUrl, "", resourceTriggered = true)
                return
            }
            if (providerId == ProviderId.COPILOT && effectiveUrl == "about:blank") {
                injectCollectorIfReady(view, effectiveUrl, "", resourceTriggered = true)
                return
            }
            if (providerId == ProviderId.CURSOR && effectiveUrl == "about:blank") {
                injectCollectorIfReady(view, effectiveUrl, "", resourceTriggered = true)
                return
            }
            if (ABOUT_BLANK_NATIVE_LOGIN_PROVIDERS.contains(providerId) && effectiveUrl == "about:blank") {
                injectCollectorIfReady(view, effectiveUrl, "", resourceTriggered = true)
                return
            }
            view.evaluateJavascript(PAGE_CAPTURE_SCRIPT) { encoded ->
                val pageText = decodeJsString(encoded)
                if (maybeRedirectGeminiToUsage(view, url)) {
                    return@evaluateJavascript
                }
                if (maybeClickGeminiSignIn(view, url, pageText)) {
                    return@evaluateJavascript
                }
                if (maybeStartGeminiNativeCollection(view, url, pageText, "page_finished")) {
                    return@evaluateJavascript
                }
                if (maybeRedirectGlmToUsage(view, url, pageText)) {
                    return@evaluateJavascript
                }
                if (maybeStartGlmNativeCollection(view, url, pageText, "page_finished")) {
                    return@evaluateJavascript
                }
                if (maybeRedirectOpenCodeToGo(view, url)) {
                    return@evaluateJavascript
                }
                if (maybeStartOpenCodeNativeCollection(view, url, "page_finished")) {
                    return@evaluateJavascript
                }
                if (maybeRedirectCopilotToSettings(view, url, pageText)) {
                    return@evaluateJavascript
                }
                if (ProviderLoginStrategy.isLoginComplete(providerId, url, cookiesFor(url), pageText)) {
                    injectCollectorIfReady(view, url, pageText)
                } else {
                    injectCollectorIfReady(view, url, pageText)
                }
            }
        }

        override fun onReceivedError(view: WebView, request: WebResourceRequest, error: WebResourceError) {
            Log.e(
                "AIQuotaLogin",
                "provider=${providerId.storageId} error url=${safeUrlForLog(request.url.toString())} description=${error.description}"
            )
            if (request.isForMainFrame && maybeRecoverGeminiNetworkChanged(view, request.url.toString(), error.description.toString())) return
            if (request.isForMainFrame && maybeRecoverGeminiRedirectLoop(view, request.url.toString(), error.errorCode)) return
            if (request.isForMainFrame && handleLoginCompleteNavigation(view, request.url.toString())) return
            if (request.isForMainFrame && !ProviderLoginStrategy.isTransientNavigationError(request.url.toString(), error.errorCode)) {
                failKeepingPrevious("Provider login page failed to load.", "main_frame_load_failed")
            }
        }

        override fun onReceivedHttpError(view: WebView, request: WebResourceRequest, errorResponse: WebResourceResponse) {
            Log.e(
                "AIQuotaLogin",
                "provider=${providerId.storageId} http status=${errorResponse.statusCode} url=${safeUrlForLog(request.url.toString())}"
            )
            if (request.isForMainFrame && handleLoginCompleteNavigation(view, request.url.toString())) return
            if (request.isForMainFrame &&
                providerId == ProviderId.CODEX &&
                ProviderLoginStrategy.shouldKeepCodexLoginOpenForHttpError(request.url.toString(), errorResponse.statusCode)
            ) {
                Log.w("AIQuotaLogin", "provider=${providerId.storageId} keepOpenOnHttp${errorResponse.statusCode}=true")
                return
            }
            if (request.isForMainFrame && ProviderLoginStrategy.isBlockingHttpError(request.url.toString(), errorResponse.statusCode)) {
                failKeepingPrevious("Provider login returned HTTP ${errorResponse.statusCode}.", "main_frame_http_${errorResponse.statusCode}")
            }
        }

        override fun onRenderProcessGone(view: WebView, detail: RenderProcessGoneDetail): Boolean {
            Log.e(
                "AIQuotaLogin",
                "provider=${providerId.storageId} renderProcessGone didCrash=${detail.didCrash()}"
            )
            if (::rootContainer.isInitialized) {
                rootContainer.removeView(view)
            }
            if (view === webView) {
                mainWebViewDestroyed = true
            } else {
                popupViews.remove(view)
            }
            view.destroy()
            failKeepingPrevious("Provider login WebView renderer stopped.", "webview_renderer_gone")
            return true
        }
    }

    private fun scheduleGlmBlankPageRecovery(view: WebView, url: String) {
        if (providerId != ProviderId.GLM || url == "about:blank") return
        glmMainFramePainted = false
        val expectedUrl = url
        view.postDelayed(
            {
                if (finished || providerId != ProviderId.GLM || glmMainFramePainted || glmNativeCollectionStarted) {
                    return@postDelayed
                }
                if (currentBridgePageUrl != expectedUrl) return@postDelayed
                if (glmBlankPageRecoveryAttempted) {
                    Log.w("AIQuotaLogin", "provider=glm blankPageTimeout url=${safeUrlForLog(expectedUrl)}")
                    failKeepingPrevious("GLM login page stayed blank. Please retry web login.", "glm_blank_page_timeout")
                    return@postDelayed
                }
                glmBlankPageRecoveryAttempted = true
                Log.w("AIQuotaLogin", "provider=glm blankPageReload url=${safeUrlForLog(expectedUrl)}")
                view.stopLoading()
                view.clearCache(true)
                view.loadUrl(expectedUrl)
            },
            GLM_BLANK_PAGE_RECOVERY_DELAY_MS
        )
    }

    private fun handleLoginCompleteNavigation(view: WebView, url: String): Boolean {
        if (ProviderLoginStrategy.isLoginComplete(providerId, url, cookiesFor(url), "")) {
            if (oauthCallbackHandled || finished) return true
            oauthCallbackHandled = true
            Log.i("AIQuotaLogin", "provider=${providerId.storageId} oauthCallback=true host=${hostOf(url)}")
            CookieManager.getInstance().flush()
            captureDebugProviderSessionCookies("login_complete_navigation")
            view.stopLoading()
            failKeepingPrevious("Provider login did not produce a trusted usage payload.", "login_complete_without_payload")
            return true
        }
        return false
    }

    private inner class UsageBridge {
        @JavascriptInterface
        fun postUsagePayload(rawPayload: String) {
            runOnUiThread {
                val pageUrl = webView.url.orEmpty()
                if (!ProviderWebCollectorScripts.shouldAcceptCollectorPayload(providerId, pageUrl, rawPayload)) {
                    Log.w("AIQuotaCollector", "provider=${providerId.storageId} collectorMode=webview-js ignoredPayload page=${pathOf(pageUrl)}")
                    return@runOnUiThread
                }
                saveOpenCodeUsageUrl(pageUrl)
                Log.i("AIQuotaCollector", "provider=${providerId.storageId} collectorMode=webview-js rawPayloadPresent=${rawPayload.isNotBlank()}")
                finishSuccessfulLogin(rawPayload)
            }
        }

        @JavascriptInterface
        fun postCollectorError(rawError: String) {
            runOnUiThread {
                val pageUrl = webView.url.orEmpty()
                if (!ProviderWebCollectorScripts.shouldAcceptCollectorError(providerId, pageUrl, rawError)) {
                    Log.w("AIQuotaCollector", "provider=${providerId.storageId} collectorMode=webview-js ignoredError page=${pathOf(pageUrl)}")
                    return@runOnUiThread
                }
                val errorKind = runCatching { JSONObject(rawError).optString("errorKind", "collector_error") }
                    .getOrDefault("collector_error")
                Log.w("AIQuotaCollector", "provider=${providerId.storageId} collectorMode=webview-js errorKind=$errorKind keptPreviousSnapshot=true")
                if (providerId == ProviderId.GLM && errorKind == GlmNoSubscriptionPolicy.ERROR_KIND) {
                    finishGlmNoSubscription(errorKind)
                    return@runOnUiThread
                }
                if (providerId == ProviderId.GLM && errorKind == "glm_auth_required" && recoverGlmAuthRequiredFromNativeCollection()) {
                    return@runOnUiThread
                }
                if (shouldKeepLoginOpenUntilUsagePayload(errorKind)) {
                    if (providerId == ProviderId.CODEX) {
                        codexNativeCollectionStarted = false
                        collectorInjectionKeys.clear()
                    }
                    Log.i("AIQuotaCollector", "provider=${providerId.storageId} awaitingUsagePayload=true errorKind=$errorKind")
                    return@runOnUiThread
                }
                finishConnectedWithoutUsage("Provider session reached, but trusted usage payload was not available yet.", errorKind)
            }
        }

        @JavascriptInterface
        fun fetchCursorJson(url: String, body: String?): String {
            if (providerId != ProviderId.CURSOR) {
                return JSONObject().put("ok", false).put("error", "provider_mismatch").toString()
            }
            val endpoint = cursorEndpoint(url)
                ?: return JSONObject().put("ok", false).put("error", "blocked_cursor_endpoint").toString()
            if (!isNativeFetchBridgePageAllowed(ProviderId.CURSOR)) {
                return JSONObject().put("ok", false).put("error", "blocked_bridge_page").toString()
            }
            val result = CursorNativeUsageFetcher.fetchJson(url, body)
            val parsed = runCatching { JSONObject(result).optJSONObject("json") }.getOrNull()
            val status = runCatching { JSONObject(result).optInt("status", 0) }.getOrDefault(0)
            Log.d("AIQuotaCollector", "provider=cursor nativeFetch endpoint=$endpoint status=$status summary=${cursorFetchSummary(parsed)}")
            return result
        }

        @JavascriptInterface
        fun fetchCopilotJson(url: String): String {
            if (providerId != ProviderId.COPILOT) {
                return JSONObject().put("ok", false).put("error", "provider_mismatch").toString()
            }
            if (!isNativeFetchBridgePageAllowed(ProviderId.COPILOT)) {
                return JSONObject().put("ok", false).put("error", "blocked_bridge_page").toString()
            }
            val result = CopilotNativeUsageFetcher.fetchJson(url)
            val parsed = runCatching { JSONObject(result) }.getOrNull()
            val status = parsed?.optInt("status", 0) ?: 0
            val endpoint = parsed?.optString("endpoint").orEmpty()
            Log.d("AIQuotaCollector", "provider=copilot nativeFetch endpoint=$endpoint status=$status")
            return result
        }

        @JavascriptInterface
        fun fetchCopilotJsonWithAuthorization(url: String, authorizationHeader: String): String {
            if (providerId != ProviderId.COPILOT) {
                return JSONObject().put("ok", false).put("error", "provider_mismatch").toString()
            }
            if (!isNativeFetchBridgePageAllowed(ProviderId.COPILOT)) {
                return JSONObject().put("ok", false).put("error", "blocked_bridge_page").toString()
            }
            val result = CopilotNativeUsageFetcher.fetchJsonWithAuthorization(url, authorizationHeader)
            val parsed = runCatching { JSONObject(result) }.getOrNull()
            val status = parsed?.optInt("status", 0) ?: 0
            val endpoint = parsed?.optString("endpoint").orEmpty()
            Log.d("AIQuotaCollector", "provider=copilot nativeFetchAuth endpoint=$endpoint status=$status")
            return result
        }

        @JavascriptInterface
        fun fetchProviderJson(url: String): String {
            if (!ProviderAboutBlankCollectorPolicy.isEnabled(providerId)) {
                return JSONObject().put("ok", false).put("error", "provider_not_allowlisted").toString()
            }
            if (!isNativeFetchBridgePageAllowed(providerId)) {
                return JSONObject().put("ok", false).put("error", "blocked_bridge_page").toString()
            }
            val headers = when (providerId) {
                ProviderId.CODEX -> codexNativeFetchHeadersFor(url)
                ProviderId.CLAUDE -> claudeNativeFetchHeadersFor(url)
                else -> emptyMap()
            }
            return ProviderNativeJsonBridge.fetchJson(providerId, url, currentBridgeUserAgent, headers)
        }

        @JavascriptInterface
        fun fetchProviderUsagePayload(): String {
            if (!ProviderAboutBlankCollectorPolicy.isEnabled(providerId)) {
                return JSONObject().put("ok", false).put("error", "provider_not_allowlisted").toString()
            }
            if (!isNativeFetchBridgePageAllowed(providerId)) {
                return JSONObject().put("ok", false).put("error", "blocked_bridge_page").toString()
            }
            return ProviderNativeUsagePayloadFetcher.bridgeUsagePayload(
                providerId = providerId,
                userAgent = currentBridgeUserAgent,
                bridgePageUrl = nativeUsageBridgePageUrl(),
                geminiRpcIds = geminiUsageRpcIds.toList(),
                cookieHeaderForUrl = { url -> cookieHeaderForNativeUsage(url) }
            ) { url ->
                when (providerId) {
                    ProviderId.CODEX -> codexNativeFetchHeadersFor(url)
                    ProviderId.CLAUDE -> claudeNativeFetchHeadersFor(url)
                    ProviderId.GLM -> glmNativeFetchHeadersFor(url)
                    else -> emptyMap()
                }
            }
        }

        @JavascriptInterface
        fun parseCodexFetchedPayload(rawText: String, plan: String?, accountId: String?, account: String?): String {
            if (providerId != ProviderId.CODEX) {
                return JSONObject().put("ok", false).put("error", "provider_mismatch").toString()
            }
            if (!isNativeFetchBridgePageAllowed(ProviderId.CODEX)) {
                return JSONObject().put("ok", false).put("error", "blocked_bridge_page").toString()
            }
            return ProviderNativeUsagePayloadFetcher.bridgeCodexFetchedPayload(rawText, plan, accountId, account)
        }

        private fun isNativeFetchBridgePageAllowed(expectedProviderId: ProviderId): Boolean {
            val pageUrl = currentBridgePageUrl
            return providerId == expectedProviderId &&
                ProviderWebCollectorScripts.shouldAcceptCollectorPayload(expectedProviderId, pageUrl)
        }

    }

    private fun maybeRedirectGlmToUsage(view: WebView, url: String, pageText: String): Boolean {
        if (providerId != ProviderId.GLM || glmPostLoginRedirected) return false
        if (ProviderWebCollectorScripts.isRefreshLoginPage(providerId, url, pageText)) return false
        val usageUrl = GlmLoginPostRedirects.usageRedirectUrl(providerId, url)
            ?: if (GlmUsagePageRoutes.isChatUrl(url) && hasRetainedGlmWebSessionCookies()) {
                GlmProviderUrls.WEB_USAGE_URL
            } else {
                return false
            }
        glmPostLoginRedirected = true
        collectorInjectionKeys.clear()
        Log.i("AIQuotaLogin", "provider=glm postLoginRedirect=usage from=${hostOf(url)}${pathOf(url)}")
        view.loadUrl(usageUrl)
        return true
    }

    private fun maybeRedirectGlmAuthenticatedResourceToUsage(view: WebView, url: String): Boolean {
        if (providerId != ProviderId.GLM || glmPostLoginRedirected || finished || glmNativeCollectionStarted) return false
        val usageUrl = GlmUsagePageRoutes.usageRedirectUrlAfterAuthenticatedResource(url) ?: return false
        if (!glmAuthenticatedChatResourceSeen) return false
        glmPostLoginRedirected = true
        collectorInjectionKeys.clear()
        Log.i("AIQuotaLogin", "provider=glm postLoginRedirect=usage from=${hostOf(url)}${pathOf(url)}")
        view.stopLoading()
        view.loadUrl(usageUrl)
        return true
    }

    private fun resetGeminiLoginRecoveryState() {
        geminiUsageRedirectAttempts = 0
        lastGeminiUsageRedirectKey = null
        lastGeminiUsageRedirectAtMs = 0L
        geminiNativeCollectionScheduled = false
        geminiNativeCollectionStarted = false
        geminiNativeUsagePageUrl = ""
        geminiExpectedUsagePageUrl = ""
        geminiUsageRpcIds.clear()
        collectorInjectionKeys.clear()
    }

    private fun maybeRecoverGeminiNetworkChanged(view: WebView, url: String, description: String): Boolean {
        if (providerId != ProviderId.GEMINI || geminiNetworkChangedRecoveryAttempted) return false
        if (!description.contains("ERR_NETWORK_CHANGED", ignoreCase = true)) return false
        val uri = runCatching { URI(url) }.getOrNull() ?: return false
        if (uri.host.orEmpty().lowercase(Locale.US) != "gemini.google.com") return false
        geminiNetworkChangedRecoveryAttempted = true
        Log.w("AIQuotaLogin", "provider=gemini networkChangedRecovery=true from=${hostOf(url)}${pathOf(url)}")
        view.stopLoading()
        view.postDelayed({ if (!finished) view.loadUrl(url) }, GEMINI_NETWORK_CHANGED_RETRY_DELAY_MS)
        return true
    }

    private fun maybeRecoverGeminiRedirectLoop(view: WebView, url: String, errorCode: Int): Boolean {
        if (providerId != ProviderId.GEMINI || geminiRedirectLoopRecoveryAttempted) return false
        if (errorCode != WebViewClient.ERROR_REDIRECT_LOOP) return false
        geminiRedirectLoopRecoveryAttempted = true
        resetGeminiLoginRecoveryState()
        clearProviderWebSession(CookieManager.getInstance(), providerId)
        val startUrl = ProviderDefinitionRegistry.definitionFor(providerId).loginStartUrl
        Log.w("AIQuotaLogin", "provider=gemini redirectLoopRecovery=true from=${hostOf(url)}${pathOf(url)}")
        view.stopLoading()
        view.loadUrl(startUrl)
        return true
    }

    private fun maybeRecoverGeminiCookieMismatch(view: WebView, url: String): Boolean {
        if (providerId != ProviderId.GEMINI || geminiCookieMismatchRecoveryAttempted) return false
        val uri = runCatching { URI(url) }.getOrNull() ?: return false
        val host = uri.host.orEmpty().lowercase(Locale.US)
        if (host != "accounts.google.com" || uri.path != "/CookieMismatch") return false
        geminiCookieMismatchRecoveryAttempted = true
        resetGeminiLoginRecoveryState()
        val recoveryUrl = geminiCookieMismatchRecoveryUrl(url)
        Log.w("AIQuotaLogin", "provider=gemini cookieMismatchRecovery=usageRedirect target=${pathOf(recoveryUrl)}")
        view.stopLoading()
        view.loadUrl(recoveryUrl)
        return true
    }

    private fun maybeRecoverGoogleCookieMismatch(view: WebView, url: String): Boolean {
        if (maybeRecoverGeminiCookieMismatch(view, url)) return true
        return maybeRecoverGlmCookieMismatch(view, url)
    }

    private fun maybeRecoverGlmCookieMismatch(view: WebView, url: String): Boolean {
        if (providerId != ProviderId.GLM || glmCookieMismatchRecoveryAttempts >= GLM_COOKIE_MISMATCH_MAX_RECOVERIES) {
            return false
        }
        val uri = runCatching { URI(url) }.getOrNull() ?: return false
        val host = uri.host.orEmpty().lowercase(Locale.US)
        if (host != "accounts.google.com" || uri.path != "/CookieMismatch") return false
        glmCookieMismatchRecoveryAttempts += 1
        glmNativeCollectionStarted = false
        glmPostLoginRedirected = false
        glmRetainedWebSessionCookieHeader = ""
        glmAuthenticatedSessionSeen = false
        collectorInjectionKeys.clear()
        clearGoogleAuthCookies(CookieManager.getInstance())
        val recoveryUrl = lastGoogleOAuthUrl ?: GlmProviderUrls.WEB_LOGIN_URL
        Log.w(
            "AIQuotaLogin",
            "provider=glm cookieMismatchRecovery=google_sso_retry attempt=$glmCookieMismatchRecoveryAttempts target=${hostOf(recoveryUrl)}${pathOf(recoveryUrl)}"
        )
        view.stopLoading()
        view.loadUrl(recoveryUrl)
        return true
    }

    private fun rememberGoogleOAuthStartUrl(url: String) {
        val uri = runCatching { URI(url) }.getOrNull() ?: return
        val host = uri.host.orEmpty().lowercase(Locale.US)
        if (host != "accounts.google.com" || uri.path != "/o/oauth2/v2/auth") return
        lastGoogleOAuthUrl = url
    }

    private fun clearGoogleAuthCookies(cookieManager: CookieManager) {
        ProviderWebSessionClearPolicy.googleAuthCookieUrls().forEach { url ->
            ProviderWebSessionClearPolicy.expiringCookieHeaders(
                cookieHeader = cookieManager.getCookie(url),
                url = url,
                includeSharedGoogleIdentityParent = true
            ).forEach { header ->
                cookieManager.setCookie(url, header)
            }
        }
        cookieManager.flush()
        Log.i("AIQuotaLogin", "provider=${providerId.storageId} googleSsoCookiesCleared=true")
    }

    private fun maybeRedirectGeminiToUsage(view: WebView, url: String): Boolean {
        if (providerId != ProviderId.GEMINI) return false
        if (geminiNativeCollectionStarted || geminiNativeCollectionScheduled) return false
        val uri = runCatching { URI(url) }.getOrNull() ?: return false
        val host = uri.host.orEmpty().lowercase(Locale.US)
        maybeResetGeminiUsageRedirectBudget(host)
        if (GeminiUsagePageRoutes.isUsageUrl(url)) {
            lastGeminiUsageRedirectKey = null
            lastGeminiUsageRedirectAtMs = 0L
            return false
        }
        val currentViewUrl = view.url.orEmpty()
        if (currentViewUrl != url && GeminiUsagePageRoutes.isUsageUrl(currentViewUrl)) {
            Log.d(
                "AIQuotaLogin",
                "provider=gemini ignoreStaleRedirect current=${pathOf(currentViewUrl)} callback=${pathOf(url)}"
            )
            return false
        }
        val usageUrl = GeminiUsagePageRoutes.usageUrlFrom(url) ?: return false
        if (geminiUsageRedirectAttempts >= GEMINI_USAGE_REDIRECT_MAX_ATTEMPTS) return false
        val path = uri.path.orEmpty()
        val redirectKey = "$host:$path"
        val now = SystemClock.elapsedRealtime()
        if (redirectKey == lastGeminiUsageRedirectKey && now - lastGeminiUsageRedirectAtMs < GEMINI_USAGE_REDIRECT_MIN_INTERVAL_MS) {
            return false
        }
        lastGeminiUsageRedirectKey = redirectKey
        lastGeminiUsageRedirectAtMs = now
        geminiUsageRedirectAttempts += 1
        geminiExpectedUsagePageUrl = GeminiUsagePageRoutes.canonicalUsageUrl(usageUrl).orEmpty()
        collectorInjectionKeys.clear()
        Log.i("AIQuotaLogin", "provider=gemini postLoginRedirect=usage from=${hostOf(url)}${pathOf(url)}")
        view.stopLoading()
        view.loadUrl(usageUrl)
        return true
    }

    private fun maybeResetGeminiUsageRedirectBudget(host: String) {
        if (providerId != ProviderId.GEMINI) return
        if (host != "myaccount.google.com") return
        if (geminiUsageRedirectAttempts == 0 && lastGeminiUsageRedirectKey == null) return
        geminiUsageRedirectAttempts = 0
        lastGeminiUsageRedirectKey = null
        lastGeminiUsageRedirectAtMs = 0L
        Log.d("AIQuotaLogin", "provider=gemini resetUsageRedirectBudget host=$host")
    }

    private fun maybeClickGeminiSignIn(view: WebView, url: String, pageText: String): Boolean {
        if (providerId != ProviderId.GEMINI) return false
        if (geminiSignInClickAttempts >= GEMINI_SIGN_IN_CLICK_MAX_ATTEMPTS) return false
        val uri = runCatching { URI(url) }.getOrNull() ?: return false
        val host = uri.host.orEmpty().lowercase(Locale.US)
        if (host != "gemini.google.com") return false
        if (!GeminiUsagePageRoutes.isLoginLandingUrl(url) && !GeminiUsagePageRoutes.isUsageUrl(url)) return false
        if (!ProviderWebCollectorScripts.isRefreshLoginPage(providerId, url, pageText)) return false
        geminiSignInClickAttempts += 1
        collectorInjectionKeys.clear()
        Log.i("AIQuotaLogin", "provider=gemini clickSignIn=true from=${hostOf(url)}${pathOf(url)}")
        view.evaluateJavascript(
            """
            (function(){
              var labels = ["로그인", "sign in", "log in"];
              var elements = Array.prototype.slice.call(document.querySelectorAll("a, button, [role='button']"));
              for (var i = 0; i < elements.length; i += 1) {
                var text = String(elements[i].innerText || elements[i].textContent || "").trim().toLowerCase();
                if (!text) continue;
                for (var j = 0; j < labels.length; j += 1) {
                  if (text.indexOf(labels[j]) >= 0) {
                    elements[i].click();
                    return true;
                  }
                }
              }
              return false;
            })();
            """.trimIndent(),
            null
        )
        return true
    }

    private fun maybeStartClaudeNativeCollection(view: WebView, url: String, reason: String): Boolean {
        if (providerId != ProviderId.CLAUDE || finished || claudeNativeCollectionStarted) return false
        if (!ProviderLoginStrategy.shouldStartClaudeNativeCollection(url) &&
            !ProviderLoginStrategy.shouldStartClaudeNativeCollectionFromResource(url)
        ) {
            return false
        }
        if (!hasClaudeNativeFetchHeaders(url)) return false
        claudeNativeCollectionStarted = true
        CookieManager.getInstance().flush()
        captureDebugProviderSessionCookies("claude_native_collection_start")
        collectorInjectionKeys.clear()
        noteBridgePageUrl("about:blank")
        Log.i("AIQuotaLogin", "provider=claude nativeCollectorStart=aboutblank reason=$reason from=${hostOf(url)}${pathOf(url)}")
        view.stopLoading()
        loadClaudeAboutBlankBridgeDocument(view)
        return true
    }

    private fun maybeStartGeminiNativeCollection(view: WebView, url: String, pageText: String, reason: String): Boolean {
        if (providerId != ProviderId.GEMINI || finished || geminiNativeCollectionStarted) return false
        if (!GeminiUsagePageRoutes.isUsageUrl(url)) return false
        if (ProviderWebCollectorScripts.isRefreshLoginPage(ProviderId.GEMINI, url, pageText)) return false
        val canonicalUsageUrl = GeminiUsagePageRoutes.canonicalUsageUrl(url) ?: return false
        val expectedUsageUrl = geminiExpectedUsagePageUrl
        if (expectedUsageUrl.isNotBlank() && canonicalUsageUrl != expectedUsageUrl) {
            Log.d(
                "AIQuotaLogin",
                "provider=gemini skipUsageUrl=unexpected expected=${pathOf(expectedUsageUrl)} actual=${pathOf(url)}"
            )
            return false
        }
        geminiNativeCollectionStarted = true
        geminiNativeUsagePageUrl = canonicalUsageUrl
        saveGeminiUsageUrl(canonicalUsageUrl)
        CookieManager.getInstance().flush()
        collectorInjectionKeys.clear()
        noteBridgePageUrl("about:blank")
        Log.i(
            "AIQuotaLogin",
            "provider=gemini nativeCollectorStart=aboutblank reason=$reason from=${hostOf(url)}${pathOf(url)}"
        )
        view.stopLoading()
        view.loadUrl("about:blank")
        return true
    }

    private fun maybeStartGlmNativeCollection(view: WebView, url: String, pageText: String, reason: String): Boolean {
        if (providerId != ProviderId.GLM || finished || glmNativeCollectionStarted || url == "about:blank") return false
        val isUsagePage = GlmUsagePageRoutes.isUsageUrl(url)
        val isMyPlanPage = GlmLoginPostRedirects.usageRedirectUrl(providerId, url) != null
        if (!isUsagePage && !isMyPlanPage) return false
        if (!glmAuthorizedQuotaResourceSeen) return false
        if (ProviderWebCollectorScripts.isRefreshLoginPage(providerId, url, pageText)) return false
        glmNativeCollectionStarted = true
        CookieManager.getInstance().flush()
        captureGlmWebSessionCookieHeader()?.let {
            GlmUsageRepository(applicationContext).saveWebSessionCookieHeader(it)
        }
        collectorInjectionKeys.clear()
        noteBridgePageUrl("about:blank")
        Log.i("AIQuotaLogin", "provider=glm nativeCollectorStart=aboutblank reason=$reason from=${hostOf(url)}${pathOf(url)}")
        view.stopLoading()
        view.loadUrl("about:blank")
        return true
    }

    private fun recoverGlmAuthRequiredFromNativeCollection(): Boolean {
        if (providerId != ProviderId.GLM || glmAuthRecoveryAttempted) return false
        glmAuthRecoveryAttempted = true
        glmNativeCollectionStarted = false
        glmPostLoginRedirected = false
        if (glmAuthenticatedChatResourceSeen || hasRetainedGlmWebSessionCookies()) {
            collectorInjectionKeys.clear()
            Log.w("AIQuotaLogin", "provider=glm authRequiredRecovery=usage")
            webView.stopLoading()
            webView.loadUrl(GlmProviderUrls.WEB_USAGE_URL)
            return true
        }
        glmRetainedWebSessionCookieHeader = ""
        glmAuthenticatedSessionSeen = false
        glmAuthenticatedChatResourceSeen = false
        glmAuthorizedQuotaResourceSeen = false
        glmNativeFetchHeaders.clear()
        collectorInjectionKeys.clear()
        Log.w("AIQuotaLogin", "provider=glm authRequiredRecovery=login")
        webView.stopLoading()
        loginScope.launch {
            ProviderWebSessionCleaner.clearProviderWebSessionAndWait(applicationContext, ProviderId.GLM)
            if (!finished && ::webView.isInitialized) {
                Log.i("AIQuotaLogin", "provider=glm reauthWebSessionCleared=true")
                webView.loadUrl(GlmProviderUrls.WEB_LOGIN_URL)
            }
        }
        return true
    }

    private fun isGlmAuthenticatedSessionResource(url: String): Boolean {
        if (providerId != ProviderId.GLM) return false
        val uri = runCatching { URI(url) }.getOrNull() ?: return false
        val host = uri.host.orEmpty().lowercase(Locale.US)
        val path = uri.path.orEmpty()
        return (host == "api.z.ai" && (path == "/api/auth/z/login" || path == "/api/auth/z/zaiAuthToken")) ||
            (host == "chat.z.ai" && (path == "/api/v1/auths" || path == "/api/v1/auths/"))
    }

    private fun saveGlmWebSessionCookieHeader(reason: String, preferCurrent: Boolean = false) {
        val cookieHeader = captureGlmWebSessionCookieHeader(preferCurrent = preferCurrent) ?: return
        GlmUsageRepository(applicationContext).saveWebSessionCookieHeader(cookieHeader)
        Log.i("AIQuotaLogin", "provider=glm webSessionCookieSaved=true reason=$reason")
    }

    private fun captureGlmNativeFetchHeaders(request: WebResourceRequest): Boolean {
        if (providerId != ProviderId.GLM) return false
        val url = request.url.toString()
        if (!isGlmApiResource(url)) return false
        val uri = runCatching { URI(url) }.getOrNull() ?: return false
        val host = uri.host.orEmpty().lowercase(Locale.US)
        val path = uri.path.orEmpty()
        val headers = CodexNativeHeaderStore.forwardableHeaders(request.requestHeaders.orEmpty())
        if (headers.isEmpty()) return false
        val hasAuthorization = headers.keys.any { it.equals("Authorization", ignoreCase = true) }
        if (hasAuthorization && isGlmTrustedAuthenticatedResource(host, path)) {
            glmAuthenticatedChatResourceSeen = true
        }
        if (hasAuthorization && GlmUsagePageRoutes.isAuthorizedQuotaResource(url)) {
            glmAuthorizedQuotaResourceSeen = true
            glmNativeFetchHeaders.clear()
            glmNativeFetchHeaders.putAll(headers)
            GlmUsageRepository(applicationContext).saveWebSessionRequestHeaders(headers)
            saveGlmWebSessionCookieHeader("auth_header_resource", preferCurrent = true)
        }
        Log.i(
            "AIQuotaLogin",
            "provider=glm capturedNativeHeaders path=${pathOf(url)} names=${headers.keys.sorted().joinToString("|")}"
        )
        return true
    }

    private fun isGlmTrustedAuthenticatedResource(host: String, path: String): Boolean {
        return host == "api.z.ai" || (host == "chat.z.ai" && isGlmChatAuthValidationResource(path))
    }

    private fun isGlmChatAuthValidationResource(path: String): Boolean {
        return path.trimEnd('/') in setOf(
            "/api/v1/auths",
            "/api/v1/users/user/settings/update"
        )
    }

    private fun isGlmApiResource(url: String): Boolean {
        val uri = runCatching { URI(url) }.getOrNull() ?: return false
        val host = uri.host.orEmpty().lowercase(Locale.US)
        val path = uri.path.orEmpty()
        return host == "api.z.ai" || host == "chat.z.ai" && path.startsWith("/api/")
    }

    private fun maybeRedirectOpenCodeToGo(view: WebView, url: String): Boolean {
        if (providerId != ProviderId.OPENCODE || openCodePostLoginRedirected) return false
        val goUsageUrl = OpenCodeUsagePageRoutes.goUsageUrlFrom(url) ?: return false
        openCodePostLoginRedirected = true
        collectorInjectionKeys.clear()
        saveOpenCodeUsageUrl(goUsageUrl)
        Log.i("AIQuotaLogin", "provider=opencode postLoginRedirect=workspace/go from=${hostOf(url)}${pathOf(url)}")
        view.loadUrl(goUsageUrl)
        return true
    }

    private fun maybeStartOpenCodeNativeCollection(view: WebView, url: String, reason: String): Boolean {
        if (providerId != ProviderId.OPENCODE || finished || openCodeNativeCollectionStarted || url == "about:blank") return false
        val goUsageUrl = OpenCodeUsagePageRoutes.canonicalGoUsageUrlFrom(url) ?: return false
        openCodeNativeCollectionStarted = true
        CookieManager.getInstance().flush()
        collectorInjectionKeys.clear()
        saveOpenCodeUsageUrl(goUsageUrl)
        noteBridgePageUrl("about:blank")
        Log.i("AIQuotaLogin", "provider=opencode nativeCollectorStart=aboutblank reason=$reason from=${hostOf(url)}${pathOf(url)}")
        view.stopLoading()
        view.loadUrl("about:blank")
        return true
    }

    private fun maybeRedirectCopilotToSettings(view: WebView, url: String, pageText: String): Boolean {
        if (providerId != ProviderId.COPILOT || copilotPostLoginRedirected) return false
        if (!ProviderLoginStrategy.shouldRedirectCopilotToSettings(url, pageText)) return false
        copilotPostLoginRedirected = true
        Log.i("AIQuotaLogin", "provider=copilot postLoginRedirect=settings/copilot from=${hostOf(url)}${pathOf(url)}")
        view.loadUrl(ProviderDefinitionRegistry.definitionFor(ProviderId.COPILOT).loginStartUrl)
        return true
    }

    private fun maybeStartCopilotNativeCollection(view: WebView, url: String, reason: String): Boolean {
        if (providerId != ProviderId.COPILOT || finished || copilotNativeCollectionStarted || url == "about:blank") return false
        if (!ProviderLoginStrategy.shouldStartCopilotNativeCollection(url)) return false
        copilotNativeCollectionStarted = true
        CookieManager.getInstance().flush()
        collectorInjectionKeys.clear()
        noteBridgePageUrl("about:blank")
        Log.i("AIQuotaLogin", "provider=copilot nativeCollectorStart=aboutblank reason=$reason from=${hostOf(url)}${pathOf(url)}")
        view.stopLoading()
        view.loadUrl("about:blank")
        return true
    }

    private fun maybeStartCodexNativeCollection(view: WebView, url: String, reason: String): Boolean {
        if (providerId != ProviderId.CODEX || finished || codexNativeCollectionStarted || url == "about:blank") return false
        codexNativeCollectionStarted = true
        CookieManager.getInstance().flush()
        collectorInjectionKeys.clear()
        noteBridgePageUrl("about:blank")
        Log.i("AIQuotaLogin", "provider=codex nativeCollectorStart=aboutblank reason=$reason from=${hostOf(url)}${pathOf(url)}")
        view.stopLoading()
        view.loadUrl("about:blank")
        return true
    }

    /**
     * Grok·Kimi·Kiro는 provider 페이지가 사용량 엔드포인트를 부르는 순간 about:blank로
     * 옮겨가 네이티브 수집으로 전환한다. Cursor와 같은 흐름이지만 provider별 전용 코드를
     * 늘리지 않도록 한 곳에서 처리한다.
     */
    private fun maybeStartAboutBlankNativeCollection(view: WebView, url: String, reason: String): Boolean {
        if (finished || aboutBlankNativeCollectionStarted || url == "about:blank") return false
        if (!ABOUT_BLANK_NATIVE_LOGIN_PROVIDERS.contains(providerId)) return false
        if (!ProviderWebCollectorScripts.shouldRunCollectorOnResource(providerId, url)) return false
        aboutBlankNativeCollectionStarted = true
        CookieManager.getInstance().flush()
        collectorInjectionKeys.clear()
        noteBridgePageUrl("about:blank")
        Log.i(
            "AIQuotaLogin",
            "provider=${providerId.storageId} nativeCollectorStart=aboutblank " +
                "reason=$reason from=${hostOf(url)}${pathOf(url)}"
        )
        view.stopLoading()
        view.loadUrl("about:blank")
        return true
    }

    private fun maybeStartCursorNativeCollection(view: WebView, url: String, reason: String): Boolean {        if (providerId != ProviderId.CURSOR || finished || cursorNativeCollectionStarted || url == "about:blank") return false
        if (!ProviderWebCollectorScripts.shouldRunCollectorOnResource(ProviderId.CURSOR, url)) return false
        cursorNativeCollectionStarted = true
        CookieManager.getInstance().flush()
        collectorInjectionKeys.clear()
        noteBridgePageUrl("about:blank")
        Log.i("AIQuotaLogin", "provider=cursor nativeCollectorStart=aboutblank reason=$reason from=${hostOf(url)}${pathOf(url)}")
        view.stopLoading()
        view.loadUrl("about:blank")
        return true
    }

    private fun maybeRedirectCodexToUsageAfterLogin(view: WebView, pageUrl: String, resourceUrl: String): Boolean {
        if (!shouldRedirectCodexToUsageAfterLogin(pageUrl, resourceUrl)) return false
        CookieManager.getInstance().flush()
        captureDebugProviderSessionCookies("codex_post_login_redirect")
        codexPostLoginUsageRedirected = true
        collectorInjectionKeys.clear()
        Log.i("AIQuotaLogin", "provider=codex postLoginRedirect=analytics from=${hostOf(pageUrl)}${pathOf(pageUrl)}")
        view.loadUrl(ProviderLoginStrategy.CODEX_CALLBACK_RECOVERY_URL)
        return true
    }

    private fun shouldRedirectCodexToUsageAfterLogin(pageUrl: String, resourceUrl: String): Boolean {
        if (providerId != ProviderId.CODEX || finished || codexPostLoginUsageRedirected || codexNativeCollectionStarted) return false
        val page = runCatching { URI(pageUrl) }.getOrNull() ?: return false
        val resource = runCatching { URI(resourceUrl) }.getOrNull() ?: return false
        val pageHost = page.host.orEmpty().lowercase(Locale.US)
        val resourceHost = resource.host.orEmpty().lowercase(Locale.US)
        if (pageHost != "chatgpt.com" && !pageHost.endsWith(".chatgpt.com")) return false
        if (resourceHost != "chatgpt.com" && !resourceHost.endsWith(".chatgpt.com")) return false
        val pagePath = page.path.orEmpty().lowercase(Locale.US)
        if (pagePath.startsWith("/codex/cloud/settings/analytics") || pagePath.startsWith("/codex/settings/usage")) return false
        if (pagePath.startsWith("/auth") || pagePath.startsWith("/login")) return false
        val resourcePath = resource.path.orEmpty().lowercase(Locale.US)
        return resourcePath == "/backend-api/me" || resourcePath.startsWith("/backend-api/accounts/check")
    }

    private fun shouldStartCodexNativeCollectionFromResource(url: String): Boolean {
        if (providerId != ProviderId.CODEX) return false
        return CodexNativeCollectionRoutes.shouldStartFromResource(url)
    }

    private fun canStartCodexNativeCollectionFromResource(url: String): Boolean {
        if (providerId != ProviderId.CODEX) return false
        return CodexNativeCollectionRoutes.canStartFromResource(
            url = url,
            hasNativeFetchAuthContext = hasCodexNativeFetchAuthContext(url),
            hasSessionCookies = hasCodexSessionCookies(url)
        )
    }

    private fun hasCodexNativeFetchAuthContext(url: String): Boolean {
        return codexNativeFetchHeadersFor(url).any { (name, value) ->
            value.isNotBlank() && (
                name.equals("Authorization", ignoreCase = true) ||
                    name.equals("ChatGPT-Account-ID", ignoreCase = true) ||
                    name.equals("OAI-Session-Id", ignoreCase = true)
                )
        }
    }

    private fun hasCodexSessionCookies(url: String): Boolean {
        val uri = runCatching { URI(url) }.getOrNull() ?: return false
        val origin = "${uri.scheme}://${uri.host}"
        return !CookieManager.getInstance().getCookie(url).isNullOrBlank() ||
            !CookieManager.getInstance().getCookie(origin).isNullOrBlank()
    }

    private fun isCodexAboutBlankNavigation(url: String): Boolean {
        return providerId == ProviderId.CODEX &&
            CodexNativeCollectionRoutes.isAboutBlankNavigation(codexNativeCollectionStarted, url)
    }

    private fun isClaudeAboutBlankBridgeNavigation(url: String): Boolean {
        return providerId == ProviderId.CLAUDE &&
            claudeNativeCollectionStarted &&
            (url == "about:blank" || url == CLAUDE_ABOUT_BLANK_BASE_URL)
    }

    private fun loadClaudeAboutBlankBridgeDocument(view: WebView) {
        view.loadDataWithBaseURL(
            CLAUDE_ABOUT_BLANK_BASE_URL,
            CLAUDE_ABOUT_BLANK_HTML,
            "text/html",
            "UTF-8",
            "about:blank"
        )
    }

    private fun recoverCodexFromLocalAuthCallback(view: WebView, url: String) {
        CookieManager.getInstance().flush()
        captureDebugProviderSessionCookies("codex_local_auth_callback")
        collectorInjectionKeys.clear()
        Log.i("AIQuotaLogin", "provider=codex localCallbackRecovered=true host=${hostOf(url)}")
        view.loadUrl(ProviderLoginStrategy.CODEX_CALLBACK_RECOVERY_URL)
    }

    private fun logGoogleCodeAssistResource(request: WebResourceRequest) {
        if (!isGoogleProvider()) return
        val uri = runCatching { URI(request.url.toString()) }.getOrNull() ?: return
        if (uri.host.orEmpty().lowercase() != "cloudcode-pa.googleapis.com") return
        if (!uri.path.orEmpty().contains("v1internal")) return

        val headers = request.requestHeaders.orEmpty()
        val authHeader = headerValue(headers, "Authorization")
        val exactCookieCount = GoogleWebSessionCodeAssistFetcher
            .parseCookieHeader(CookieManager.getInstance().getCookie(request.url.toString()).orEmpty())
            .size
        val resourceMethod = uri.path.orEmpty().substringAfterLast(":").ifBlank { uri.path.orEmpty() }
        Log.i(
            "AIQuotaGoogleWeb",
            "provider=${providerId.storageId} webViewCodeAssistResource " +
                "method=${request.method} api=$resourceMethod " +
                "hasAuth=${authHeader.isNotBlank()} authScheme=${authHeader.substringBefore(' ', "").take(32).ifBlank { "none" }} " +
                "hasCookieHeader=${hasHeader(headers, "Cookie")} cookieStoreCount=$exactCookieCount " +
                "origin=${hostHeader(headers, "Origin")} xOrigin=${hostHeader(headers, "X-Origin")} " +
                "referer=${hostHeader(headers, "Referer")} " +
                "contentType=${headerValue(headers, "Content-Type").substringBefore(";").ifBlank { "none" }} " +
                "xGoogAuthUser=${headerValue(headers, "X-Goog-AuthUser").take(8).ifBlank { "none" }} " +
                "secFetchSite=${headerValue(headers, "Sec-Fetch-Site").ifBlank { "none" }}"
        )
    }

    private fun cursorEndpoint(url: String): String? {
        val uri = runCatching { URI(url) }.getOrNull() ?: return null
        val host = uri.host.orEmpty().lowercase()
        val path = uri.path.orEmpty()
        val allowed = when (host) {
            "cursor.com", "www.cursor.com" -> path in setOf(
                "/api/auth/stripe",
                "/api/usage",
                "/api/auth/usage",
                "/api/usage-summary",
                "/api/dashboard/get-credit-grants-balance"
            )
            "api2.cursor.sh" -> path in setOf(
                "/aiserver.v1.DashboardService/GetCurrentPeriodUsage",
                "/aiserver.v1.DashboardService/GetPlanInfo",
                "/aiserver.v1.DashboardService/GetCreditGrantsBalance",
                "/auth/usage"
            )
            else -> false
        }
        return if (allowed) path else null
    }

    private fun cursorFetchSummary(json: JSONObject?): String {
        if (json == null) return "invalid_json"
        fun keysOf(obj: JSONObject?): String {
            if (obj == null) return "none"
            return obj.keys().asSequence()
                .filterNot { it.contains("token", ignoreCase = true) || it.contains("cookie", ignoreCase = true) }
                .take(10)
                .joinToString("|")
                .ifBlank { "empty" }
        }
        val individualUsage = json.optJSONObject("individualUsage")
        return listOf(
            "root=${keysOf(json)}",
            "planUsage=${keysOf(json.optJSONObject("planUsage"))}",
            "individualUsage=${keysOf(individualUsage)}",
            "individualPlan=${keysOf(individualUsage?.optJSONObject("plan"))}",
            "usage=${keysOf(json.optJSONObject("usage"))}",
            "credit=${json.has("hasCreditGrants") || json.has("totalCents") || json.has("usedCents")}"
        ).joinToString(",")
    }

    private fun injectCollectorIfReady(
        view: WebView,
        url: String,
        pageText: String,
        resourceTriggered: Boolean = false
    ) {
        if (finished) return
        if (ProviderAboutBlankCollectorPolicy.isEnabled(providerId) && url != "about:blank") return
        noteBridgePageUrl(url)
        val cookies = collectorCookiesFor(providerId, url)
        if (!resourceTriggered && !ProviderWebCollectorScripts.shouldRunCollector(providerId, url, cookies, pageText)) return
        val script = ProviderWebCollectorScripts.build(
            providerId = providerId,
            cookies = cookies,
            geminiCollectorAsset = geminiCollectorAsset,
            antigravityCollectorAsset = antigravityCollectorAsset,
            observedAccountId = observedCodexAccountId,
            pageText = pageText,
            pageUrl = url,
            awaitInteractiveLoginUsage = providerId == ProviderId.CODEX ||
                providerId == ProviderId.GEMINI ||
                providerId == ProviderId.OPENCODE ||
                providerId == ProviderId.COPILOT,
            providerRequestHeaders = replaySafeProviderRequestHeadersFor(providerId, url)
        )
        if (script.isBlank()) return
        val injectionKey = "${providerId.storageId}:${hostOf(url)}:${routeKeyOf(url)}"
        val firstInjectionForPage = collectorInjectionKeys.add(injectionKey)
        if (!firstInjectionForPage && !ProviderWebCollectorScripts.shouldAllowCollectorReinjection(providerId)) return
        if (firstInjectionForPage) {
            Log.i("AIQuotaCollector", "provider=${providerId.storageId} collectorMode=webview-js inject host=${hostOf(url)}")
        }
        view.evaluateJavascript(script, null)
    }

    private fun shouldKeepLoginOpenUntilUsagePayload(errorKind: String): Boolean {
        return when (providerId) {
            ProviderId.CODEX ->
                errorKind == "codex_usage_unavailable" || errorKind == "codex_auth_required"
            ProviderId.GEMINI ->
                errorKind == "gemini_no_trusted_payload" ||
                    errorKind == "gemini_collector_error" ||
                    errorKind == "gemini_login_required"
            ProviderId.COPILOT ->
                errorKind == "copilot_usage_unavailable" ||
                    errorKind == "copilot_native_usage_unavailable"
            ProviderId.OPENCODE ->
                errorKind == "opencode_usage_unavailable"
            ProviderId.GLM ->
                errorKind == "glm_no_trusted_payload" ||
                    errorKind == "glm_web_authorization_missing"
            else -> false
        }
    }

    private fun captureCodexAccountId(url: String) {
        if (providerId != ProviderId.CODEX) return
        val accountId = runCatching {
            val uri = URI(url)
            if (uri.path != "/backend-api/subscriptions") return@runCatching null
            uri.query
                ?.split("&")
                ?.firstOrNull { it.startsWith("account_id=") }
                ?.substringAfter("=")
                ?.takeIf { it.isNotBlank() }
        }.getOrNull() ?: return
        if (observedCodexAccountId != accountId) {
            observedCodexAccountId = accountId
            Log.i("AIQuotaLogin", "provider=codex observedAccountId=true")
        }
    }

    private fun captureCodexNativeFetchHeaders(request: WebResourceRequest) {
        if (providerId != ProviderId.CODEX) return
        val url = request.url.toString()
        if (!ProviderNativeJsonBridge.isAllowedJsonUrl(ProviderId.CODEX, url)) return
        if (!CodexNativeHeaderStore.capture(
                codexNativeFetchHeaders,
                url,
                request.requestHeaders.orEmpty(),
                CODEX_NATIVE_HEADER_FALLBACK_KEY
            )
        ) return
        val headerNames = CodexNativeHeaderStore.forwardableHeaders(request.requestHeaders.orEmpty())
            .keys
            .sorted()
            .joinToString("|")
        Log.d(
            "AIQuotaLogin",
            "provider=codex capturedNativeHeaders path=${pathOf(url)} names=$headerNames"
        )
        saveCodexNativeAuthContext()
    }

    private fun codexNativeFetchHeadersFor(url: String): Map<String, String> {
        return CodexNativeHeaderStore.headersFor(codexNativeFetchHeaders, url, CODEX_NATIVE_HEADER_FALLBACK_KEY)
    }

    private fun captureClaudeNativeFetchHeaders(request: WebResourceRequest): Boolean {
        if (providerId != ProviderId.CLAUDE) return false
        val url = request.url.toString()
        if (!ProviderNativeJsonBridge.isAllowedJsonUrl(ProviderId.CLAUDE, url)) return false
        if (!ClaudeNativeHeaderStore.capture(
                claudeNativeFetchHeaders,
                url,
                request.requestHeaders.orEmpty(),
                CLAUDE_NATIVE_HEADER_WILDCARD_KEY
            )
        ) return false
        val headerNames = CodexNativeHeaderStore.forwardableHeaders(request.requestHeaders.orEmpty())
            .keys
            .sorted()
            .joinToString("|")
        Log.d(
            "AIQuotaLogin",
            "provider=claude capturedNativeHeaders route=allowlisted_json names=$headerNames"
        )
        saveClaudeNativeRequestContext()
        return true
    }

    private fun claudeNativeFetchHeadersFor(url: String): Map<String, String> {
        return ClaudeNativeHeaderStore.headersFor(claudeNativeFetchHeaders, url, CLAUDE_NATIVE_HEADER_WILDCARD_KEY)
    }

    private fun replaySafeProviderRequestHeadersFor(providerId: ProviderId, url: String): Map<String, String> {
        return when (providerId) {
            ProviderId.CLAUDE -> ClaudeNativeHeaderStore.replaySafeHeaders(claudeNativeFetchHeadersFor(url))
            else -> emptyMap()
        }
    }

    private fun hasClaudeNativeFetchHeaders(url: String): Boolean {
        return claudeNativeFetchHeadersFor(url).any { (_, value) -> value.isNotBlank() }
    }

    private fun clearClaudeNativeFetchHeaders() {
        if (::providerId.isInitialized && providerId == ProviderId.CLAUDE) {
            claudeNativeFetchHeaders.clear()
        }
    }

    private fun saveClaudeNativeRequestContext() {
        val requestContext = ClaudeNativeHeaderStore.snapshotRequestContext(claudeNativeFetchHeaders)
        if (requestContext.isEmpty()) return
        ClaudeNativeRequestContextStore(applicationContext).save(requestContext)
    }

    private fun restoreClaudeNativeRequestContext() {
        if (providerId != ProviderId.CLAUDE) return
        val restoredHeaders = ClaudeNativeRequestContextStore(applicationContext).restore()
        if (restoredHeaders.isEmpty()) return
        claudeNativeFetchHeaders.putAll(restoredHeaders)
    }

    private fun saveCodexNativeAuthContext() {
        val authContext = CodexNativeHeaderStore.snapshotAuthContext(codexNativeFetchHeaders)
        if (authContext.isEmpty()) return
        CodexNativeAuthContextStore(applicationContext).save(authContext)
    }

    private fun restoreCodexNativeAuthContext() {
        if (providerId != ProviderId.CODEX) return
        val restoredHeaders = CodexNativeAuthContextStore(applicationContext).restore()
        if (restoredHeaders.isEmpty()) return
        codexNativeFetchHeaders.putAll(restoredHeaders)
    }

    private fun captureGeminiUsageRpcId(url: String): Boolean {
        if (providerId != ProviderId.GEMINI) return false
        val uri = runCatching { URI(url) }.getOrNull() ?: return false
        if (uri.host.orEmpty().lowercase(Locale.US) != "gemini.google.com") return false
        if (!uri.path.orEmpty().contains("/_/BardChatUi/data/batchexecute")) return false
        val rpcIds = uri.rawQuery.orEmpty()
            .split("&")
            .firstOrNull { it.substringBefore("=") == "rpcids" }
            ?.substringAfter("=", "")
            ?.split(",")
            ?.map { it.trim() }
            ?.filter { it.matches(Regex("[A-Za-z0-9_-]{3,40}")) }
            .orEmpty()
        if (rpcIds.isEmpty()) return false
        val before = geminiUsageRpcIds.size
        geminiUsageRpcIds += rpcIds
        if (geminiUsageRpcIds.size != before) {
            Log.d("AIQuotaLogin", "provider=gemini capturedUsageRpcIds=${geminiUsageRpcIds.joinToString("|")}")
            return true
        }
        return false
    }

    private fun maybeScheduleGeminiNativeCollectionFromResource(view: WebView, resourceUrl: String) {
        if (providerId != ProviderId.GEMINI || finished || geminiNativeCollectionStarted || geminiNativeCollectionScheduled) return
        val pageUrl = currentBridgePageUrl.ifBlank { resourceUrl }
        if (!GeminiUsagePageRoutes.isUsageUrl(pageUrl)) return
        geminiNativeCollectionScheduled = true
        view.postDelayed(
            { maybeStartGeminiNativeCollection(view, pageUrl, "", "resource") },
            GEMINI_NATIVE_COLLECTION_RESOURCE_DELAY_MS
        )
    }

    private fun finishSuccessfulLogin(
        rawPayload: String?,
        source: String = ProviderUsageCollectionService.SOURCE_LOGIN
    ) {
        if (finished) return
        finished = true
        CookieManager.getInstance().flush()
        captureDebugProviderSessionCookies("trusted_usage_payload", includeNativeAuthContext = true)
        ProviderUsageCollectionService.start(
            context = applicationContext,
            providerId = providerId,
            source = source,
            rawPayload = rawPayload,
            glmWebSessionCookieHeader = captureGlmWebSessionCookieHeader()
        )
        finish()
    }

    private fun finishGlmNoSubscription(errorKind: String) {
        if (finished) return
        finished = true
        CookieManager.getInstance().flush()
        captureDebugProviderSessionCookies("connected_without_plan")
        captureGlmWebSessionCookieHeader()
        val repository = LocalUsageRepository(applicationContext)
        repository.markConnectedWithoutPlan(
            providerId = ProviderId.GLM,
            planLabel = GlmNoSubscriptionPolicy.PLAN_LABEL,
            message = GlmNoSubscriptionPolicy.MESSAGE
        )
        Log.i("AIQuotaLogin", "provider=${providerId.storageId} errorKind=$errorKind connectedWithoutPlan=true")
        UsageSurfaceRefresher.refresh(applicationContext, repository)
        finish()
    }

    private fun finishConnectedWithoutUsage(message: String, errorKind: String) {
        if (finished) return
        if (isGoogleProvider()) {
            finishGoogleUsagePending(
                "Provider session reached, but trusted usage payload was not available yet.",
                errorKind
            )
            return
        }
        finished = true
        CookieManager.getInstance().flush()
        captureDebugProviderSessionCookies("connected_without_usage")
        captureGlmWebSessionCookieHeader()
        val repository = LocalUsageRepository(applicationContext)
        repository.markConnectedWithoutUsage(providerId, message)
        Log.w("AIQuotaLogin", "provider=${providerId.storageId} errorKind=$errorKind usageUnavailable=true")
        UsageSurfaceRefresher.refresh(applicationContext, repository)
        finish()
    }

    private fun isGoogleProvider(): Boolean {
        return providerId == ProviderId.GEMINI || providerId == ProviderId.ANTIGRAVITY
    }

    private fun finishGoogleUsagePending(message: String, errorKind: String) {
        if (finished) return
        finished = true
        markGoogleUsagePendingAndStartCollection(message, errorKind)
        finish()
    }

    private fun markGoogleUsagePendingAndStartCollection(message: String, errorKind: String) {
        CookieManager.getInstance().flush()
        captureDebugProviderSessionCookies("google_usage_pending")
        val repository = LocalUsageRepository(applicationContext)
        repository.markGoogleUsagePending(providerId, message)
        Log.w("AIQuotaLogin", "provider=${providerId.storageId} errorKind=$errorKind usagePending=true")
        UsageSurfaceRefresher.refresh(applicationContext, repository)
        ProviderUsageCollectionService.start(
            context = applicationContext,
            providerId = providerId,
            source = ProviderUsageCollectionService.SOURCE_REFRESH
        )
    }

    private fun failKeepingPrevious(message: String, errorKind: String) {
        if (finished) return
        if (shouldKeepGoogleLoginRetryPending(errorKind, message)) {
            finishGoogleUsagePending(
                "Provider session reached, but trusted usage payload was not available yet.",
                errorKind
            )
            return
        }
        finished = true
        val repository = LocalUsageRepository(applicationContext)
        repository.failKeepingPrevious(providerId, message)
        Log.w("AIQuotaLogin", "provider=${providerId.storageId} errorKind=$errorKind keptPreviousSnapshot=true")
        UsageSurfaceRefresher.refresh(applicationContext, repository)
        finish()
    }

    private fun saveOpenCodeUsageUrl(url: String) {
        if (providerId != ProviderId.OPENCODE) return
        ProviderScopedStateRepository(applicationContext).saveOpenCodeUsageUrl(url)
    }

    private fun saveGeminiUsageUrl(url: String) {
        if (providerId != ProviderId.GEMINI) return
        ProviderScopedStateRepository(applicationContext).saveGeminiUsageUrl(url)
    }

    private fun nativeUsageBridgePageUrl(): String? {
        if (providerId == ProviderId.GEMINI) {
            return geminiNativeUsagePageUrl.ifBlank {
                ProviderScopedStateRepository(applicationContext).readGeminiUsageUrl().orEmpty()
            }.ifBlank { currentBridgePageUrl }
        }
        if (providerId == ProviderId.OPENCODE && currentBridgePageUrl == "about:blank") {
            return ProviderScopedStateRepository(applicationContext).readOpenCodeUsageUrl()
                ?: currentBridgePageUrl
        }
        return currentBridgePageUrl
    }

    private fun captureDebugProviderSessionCookies(reason: String, includeNativeAuthContext: Boolean = false) {
        if (providerId == ProviderId.GEMINI) return
        val nativeAuthContext = if (includeNativeAuthContext && providerId == ProviderId.CODEX) {
            CodexNativeHeaderStore.snapshotAuthContext(codexNativeFetchHeaders)
        } else {
            emptyMap()
        }
        DebugProviderSessionCookieStore.capture(
            applicationContext,
            providerId,
            CookieManager.getInstance(),
            reason,
            nativeAuthContext = nativeAuthContext
        )
    }

    private fun captureGlmWebSessionCookieHeader(preferCurrent: Boolean = false): String? {
        if (providerId != ProviderId.GLM) return null
        val cookieHeader = GoogleWebSessionCodeAssistFetcher.mergeCookieHeaders(
            GlmProviderUrls.WEB_COOKIE_URLS.map { url ->
                runCatching { CookieManager.getInstance().getCookie(url) }.getOrNull()
            }
        )
        val cookieCount = GoogleWebSessionCodeAssistFetcher.parseCookieHeader(cookieHeader).size
        if (cookieCount <= 0) {
            Log.w("AIQuotaLogin", "provider=glm webSessionCookieCaptured=false cookieCount=0")
            return null
        }
        val retainedCookieCount = GoogleWebSessionCodeAssistFetcher.parseCookieHeader(glmRetainedWebSessionCookieHeader).size
        if (preferCurrent || cookieCount > retainedCookieCount) {
            glmRetainedWebSessionCookieHeader = cookieHeader
            glmAuthenticatedSessionSeen = cookieCount >= GLM_AUTHENTICATED_COOKIE_MIN_COUNT
        }
        Log.i("AIQuotaLogin", "provider=glm webSessionCookieCaptured=true cookieCount=$cookieCount")
        return glmRetainedWebSessionCookieHeader.ifBlank { cookieHeader }
    }

    private fun hasRetainedGlmWebSessionCookies(): Boolean {
        return glmAuthenticatedSessionSeen &&
            GoogleWebSessionCodeAssistFetcher.parseCookieHeader(glmRetainedWebSessionCookieHeader).size >=
            GLM_AUTHENTICATED_COOKIE_MIN_COUNT
    }

    private fun cookieHeaderForNativeUsage(url: String): String? {
        if (providerId == ProviderId.GLM && glmRetainedWebSessionCookieHeader.isNotBlank()) {
            return glmRetainedWebSessionCookieHeader
        }
        return CookieManager.getInstance().getCookie(url)
    }

    private fun glmNativeFetchHeadersFor(url: String): Map<String, String> {
        if (providerId != ProviderId.GLM || !isGlmApiResource(url)) return emptyMap()
        return glmNativeFetchHeaders.toMap()
    }

    private fun shouldKeepGoogleLoginRetryPending(errorKind: String, message: String): Boolean {
        if (!isGoogleProvider()) return false
        if (errorKind == "google_oauth_failed") return false
        return errorKind.startsWith("main_frame_") || message.isRecoverableGoogleUsageFailureMessage()
    }

    private fun String.isRecoverableGoogleUsageFailureMessage(): Boolean {
        val normalized = trim().lowercase()
        if (normalized == "google authorization succeeded. usage collection will retry.") return true
        if (normalized == "previous collection did not finish.") return true
        return listOf(
            "provider login page failed to load",
            "provider login returned http",
            "trusted usage payload",
            "usage payload was not available",
            "quota payload was not available",
            "loadcodeassist returned http",
            "retrieveuserquota returned http",
            "fetchavailablemodels returned http",
            "no trusted quota",
            "missing_google_web_session_cookie",
            "background refresh page failed to load",
            "background refresh stopped",
            "collection failed"
        ).any { normalized.contains(it) }
    }

    private fun logFirstPageFinished(url: String) {
        if (firstPageLogged) return
        firstPageLogged = true
        val host = runCatching { URI(url).host.orEmpty() }.getOrDefault("")
        val elapsedMs = SystemClock.elapsedRealtime() - startedAtMs
        Log.i("AIQuotaLoginTiming", "${providerId.storageId} pageFinished=${elapsedMs}ms host=$host")
    }

    private fun cookiesFor(url: String): Map<String, String> {
        return CookieManager.getInstance().getCookie(url)
            ?.split(";")
            ?.mapNotNull { cookie ->
                val parts = cookie.trim().split("=", limit = 2)
                if (parts.size == 2) parts[0] to parts[1] else null
            }
            ?.toMap()
            .orEmpty()
    }

    private fun collectorCookiesFor(providerId: ProviderId, url: String): Map<String, String> {
        val cookieUrl = if (providerId == ProviderId.CLAUDE && url == "about:blank") {
            CLAUDE_ABOUT_BLANK_BASE_URL
        } else {
            url
        }
        return cookiesFor(cookieUrl)
    }

    private fun hostOf(url: String): String {
        if (url == "about:blank") return "about:blank"
        return runCatching { URI(url).host.orEmpty() }.getOrDefault("")
    }

    private fun hostHeader(headers: Map<String, String>, name: String): String {
        return hostOf(headerValue(headers, name)).ifBlank { "none" }
    }

    private fun headerValue(headers: Map<String, String>, name: String): String {
        return headers.entries
            .firstOrNull { it.key.equals(name, ignoreCase = true) }
            ?.value
            .orEmpty()
    }

    private fun hasHeader(headers: Map<String, String>, name: String): Boolean {
        return headers.keys.any { it.equals(name, ignoreCase = true) }
    }

    private fun pathOf(url: String): String {
        return runCatching { URI(url).path.orEmpty() }.getOrDefault("")
    }

    private fun routeKeyOf(url: String): String {
        return runCatching {
            val uri = URI(url)
            buildString {
                append(uri.path.orEmpty())
                uri.rawQuery?.takeIf { it.isNotBlank() }?.let { append("?").append(it) }
                uri.rawFragment?.takeIf { it.isNotBlank() }?.let { append("#").append(it) }
            }
        }.getOrDefault(pathOf(url))
    }

    private fun safeUrlForLog(url: String): String {
        return runCatching {
            val uri = URI(url)
            buildString {
                append(uri.scheme ?: "unknown")
                append("://")
                append(uri.host ?: "unknown")
                append(uri.path.orEmpty().ifBlank { "/" })
                val keys = uri.rawQuery.orEmpty()
                    .split("&")
                    .asSequence()
                    .map { it.substringBefore("=") }
                    .filter { it.isNotBlank() }
                    .map { key ->
                        when {
                            key.contains("code", ignoreCase = true) -> "code"
                            key.contains("token", ignoreCase = true) -> "token"
                            key.equals("state", ignoreCase = true) -> "state"
                            key.equals("continue", ignoreCase = true) -> "continue"
                            key.equals("part", ignoreCase = true) -> "part"
                            else -> key
                        }
                    }
                    .distinct()
                    .take(12)
                    .toList()
                if (keys.isNotEmpty()) {
                    append("?keys=")
                    append(keys.joinToString("|"))
                }
            }
        }.getOrDefault("invalid_url")
    }

    private fun decodeJsString(value: String?): String {
        if (value.isNullOrBlank() || value == "null") return ""
        return runCatching { JSONObject("""{"value":$value}""").optString("value") }.getOrDefault("")
    }

    companion object {
        private const val EXTRA_PROVIDER_ID = "providerId"
        private const val EXTRA_START_URL = "startUrl"
        private const val BRIDGE_NAME = "AIQuotaCollectorBridge"
        private const val CURSOR_NATIVE_FETCH_TIMEOUT_MS = 20_000
        private val ABOUT_BLANK_NATIVE_LOGIN_PROVIDERS = setOf(
            ProviderId.GROK,
            ProviderId.KIMI,
            ProviderId.KIRO
        )
        private const val GEMINI_USAGE_REDIRECT_MIN_INTERVAL_MS = 1_500L
        private const val GEMINI_USAGE_REDIRECT_MAX_ATTEMPTS = 2
        private const val GEMINI_SIGN_IN_CLICK_MAX_ATTEMPTS = 2
        private const val GEMINI_NATIVE_COLLECTION_RESOURCE_DELAY_MS = 8_000L
        private const val GEMINI_NETWORK_CHANGED_RETRY_DELAY_MS = 750L
        private const val GLM_COOKIE_MISMATCH_MAX_RECOVERIES = 2
        private const val GLM_AUTHENTICATED_COOKIE_MIN_COUNT = 2
        private const val GLM_BLANK_PAGE_RECOVERY_DELAY_MS = 12_000L
        private const val CODEX_NATIVE_HEADER_FALLBACK_KEY = "*"
        private const val CLAUDE_NATIVE_HEADER_WILDCARD_KEY = "claude:*"
        private const val CLAUDE_ABOUT_BLANK_BASE_URL = "https://claude.ai/"
        private const val CLAUDE_ABOUT_BLANK_HTML = "<!doctype html><html><head><meta charset=\"utf-8\"></head><body></body></html>"
        private const val PAGE_CAPTURE_SCRIPT =
            "(function(){return (document.documentElement.innerText||document.title||'').slice(0,12000);})()"

        fun createIntent(context: Context, providerId: ProviderId): Intent {
            val definition = ProviderDefinitionRegistry.definitionFor(providerId)
            return createIntent(context, providerId, definition.loginStartUrl)
        }

        fun createIntent(context: Context, providerId: ProviderId, startUrl: String): Intent {
            val loginActivityClass = when (providerId) {
                ProviderId.GLM -> GlmWebLoginActivity::class.java
                else -> WebLoginActivity::class.java
            }
            return Intent(context, loginActivityClass)
                .putExtra(EXTRA_PROVIDER_ID, providerId.storageId)
                .putExtra(EXTRA_START_URL, startUrl)
        }

        internal fun geminiCookieMismatchRecoveryUrlForTest(url: String): String {
            return geminiCookieMismatchRecoveryUrl(url)
        }

        private fun geminiCookieMismatchRecoveryUrl(url: String): String {
            val continueUrl = runCatching {
                URI(url).rawQuery.orEmpty()
                    .split("&")
                    .firstOrNull { it.substringBefore("=") == "continue" }
                    ?.substringAfter("=", "")
                    ?.let { URLDecoder.decode(it, StandardCharsets.UTF_8.name()) }
            }.getOrNull()

            return continueUrl?.let {
                GeminiUsagePageRoutes.canonicalUsageUrl(it) ?: GeminiUsagePageRoutes.usageUrlFrom(it)
            } ?: GeminiUsagePageRoutes.USAGE_URL
        }
    }
}
