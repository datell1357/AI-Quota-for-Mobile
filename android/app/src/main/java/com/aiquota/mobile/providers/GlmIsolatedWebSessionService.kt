package com.aiquota.mobile.providers

import android.annotation.SuppressLint
import android.app.Service
import android.content.Context
import android.content.Intent
import android.os.Build
import android.os.Bundle
import android.os.Handler
import android.os.IBinder
import android.os.Looper
import android.os.Process
import android.os.ResultReceiver
import android.os.SystemClock
import android.util.Log
import android.view.View
import android.webkit.CookieManager
import android.webkit.JavascriptInterface
import android.webkit.WebResourceError
import android.webkit.WebResourceRequest
import android.webkit.WebResourceResponse
import android.webkit.WebStorage
import android.webkit.WebView
import android.webkit.WebViewClient
import com.aiquota.mobile.local.ProviderId
import java.net.URI

class GlmIsolatedWebSessionService : Service() {
    private val mainHandler = Handler(Looper.getMainLooper())
    private val processExitRunnable = Runnable {
        Log.w(TAG, "killSelf provider=glm pid=${Process.myPid()}")
        Process.killProcess(Process.myPid())
    }
    private var webView: WebView? = null
    private var resultReceiver: ResultReceiver? = null
    private var collectionStartedAtMillis = 0L
    private var completed = false
    private var nativeCollectionStarted = false
    private var collectorUserAgent = ""
    @Volatile private var currentPageUrl = ""
    private val glmNativeFetchHeaders = linkedMapOf<String, String>()

    override fun onBind(intent: Intent?): IBinder? = null

    override fun onStartCommand(intent: Intent?, flags: Int, startId: Int): Int {
        when (intent?.action) {
            ACTION_COLLECT -> startCollection(intent)
            ACTION_CLEAR -> clearSession(intent)
            ACTION_CANCEL -> finish("cancel")
            else -> stopSelf(startId)
        }
        return START_NOT_STICKY
    }

    override fun onDestroy() {
        destroyWebView()
        super.onDestroy()
    }

    @SuppressLint("SetJavaScriptEnabled")
    private fun startCollection(intent: Intent) {
        mainHandler.removeCallbacks(processExitRunnable)
        destroyWebView()
        completed = false
        resultReceiver = resultReceiverFrom(intent)
        collectionStartedAtMillis = SystemClock.elapsedRealtime()
        nativeCollectionStarted = false
        glmNativeFetchHeaders.clear()
        val startUrl = intent.getStringExtra(EXTRA_START_URL).orEmpty()
        currentPageUrl = startUrl
        val timeoutMillis = intent.getLongExtra(EXTRA_TIMEOUT_MILLIS, ProviderRefreshPlan.PROVIDER_REFRESH_TIMEOUT_MILLIS)
        Log.d(TAG, "start provider=glm pid=${Process.myPid()} startUrl=${safeLogValue(startUrl)} timeoutMs=$timeoutMillis")
        mainHandler.postDelayed({
            logTimeout(startUrl, timeoutMillis)
            completeFailure(ProviderRefreshTimeoutPolicy.failureFor(ProviderId.GLM, webView?.url ?: startUrl))
        }, timeoutMillis)
        CookieManager.getInstance().setAcceptCookie(true)
        webView = WebView(this).apply {
            visibility = View.GONE
            collectorUserAgent = ProviderWebViewUserAgent.hiddenCollectorUserAgent(
                this@GlmIsolatedWebSessionService,
                ProviderId.GLM
            )
            settings.javaScriptEnabled = true
            settings.domStorageEnabled = true
            settings.databaseEnabled = true
            settings.allowFileAccess = false
            settings.javaScriptCanOpenWindowsAutomatically = true
            settings.userAgentString = collectorUserAgent
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
                CookieManager.getInstance().setAcceptThirdPartyCookies(this, true)
            }
            addJavascriptInterface(Bridge(), BRIDGE_NAME)
            webViewClient = GlmWebClient()
            loadUrl(startUrl)
        }
    }

    private fun clearSession(intent: Intent) {
        mainHandler.removeCallbacks(processExitRunnable)
        destroyWebView()
        completed = false
        resultReceiver = resultReceiverFrom(intent)
        Log.d(TAG, "clear provider=glm pid=${Process.myPid()}")
        WebStorage.getInstance().deleteAllData()
        val cookieManager = CookieManager.getInstance()
        mainHandler.postDelayed({
            cookieManager.flush()
            sendResult(RESULT_CLEARED, Bundle.EMPTY)
        }, CLEAR_CALLBACK_FALLBACK_MS)
        cookieManager.removeAllCookies {
            cookieManager.flush()
            sendResult(RESULT_CLEARED, Bundle.EMPTY)
        }
    }

    private fun maybeStartNativeCollection(view: WebView, url: String, reason: String): Boolean {
        if (completed || nativeCollectionStarted || url == "about:blank") return false
        if (!GlmUsagePageRoutes.isUsageUrl(url) && GlmLoginPostRedirects.usageRedirectUrl(ProviderId.GLM, url) == null) {
            return false
        }
        if (!hasGlmNativeFetchHeaders()) return false
        nativeCollectionStarted = true
        CookieManager.getInstance().flush()
        saveWebSessionCookieHeader("native_$reason")
        Log.i(TAG, "nativeCollectorStart=aboutblank provider=glm reason=$reason from=${safeRouteForLog(url)}")
        view.stopLoading()
        view.loadUrl("about:blank")
        return true
    }

    private fun injectAboutBlankNativeBridge(view: WebView) {
        if (completed) return
        view.evaluateJavascript(
            ProviderWebCollectorScripts.build(
                providerId = ProviderId.GLM,
                cookies = emptyMap(),
                geminiCollectorAsset = "",
                antigravityCollectorAsset = "",
                observedAccountId = null,
                pageText = "",
                pageUrl = "about:blank",
                awaitInteractiveLoginUsage = false
            ),
            null
        )
    }

    private fun captureGlmNativeFetchHeaders(request: WebResourceRequest): Boolean {
        val url = request.url.toString()
        if (!isGlmApiResource(url)) return false
        val headers = CodexNativeHeaderStore.forwardableHeaders(request.requestHeaders.orEmpty())
        if (headers.isEmpty()) return false
        val hasAuthorization = headers.keys.any { it.equals("Authorization", ignoreCase = true) }
        if (hasAuthorization && GlmUsagePageRoutes.isAuthorizedQuotaResource(url)) {
            glmNativeFetchHeaders.clear()
            glmNativeFetchHeaders.putAll(headers)
            GlmUsageRepository(applicationContext).saveWebSessionRequestHeaders(headers)
            saveWebSessionCookieHeader("auth_header_resource")
        }
        Log.i(TAG, "capturedNativeHeaders provider=glm path=${safeRouteForLog(url)} names=${headers.keys.sorted().joinToString("|")}")
        return true
    }

    private fun saveWebSessionCookieHeader(reason: String) {
        val cookieHeader = glmWebSessionCookieHeader() ?: return
        GlmUsageRepository(applicationContext).saveWebSessionCookieHeader(cookieHeader)
        Log.i(TAG, "webSessionCookieSaved provider=glm reason=$reason")
    }

    private fun hasGlmNativeFetchHeaders(): Boolean {
        return glmNativeFetchHeaders.keys.any { it.equals("Authorization", ignoreCase = true) }
    }

    private fun glmNativeFetchHeadersFor(url: String): Map<String, String> {
        if (!isGlmApiResource(url)) return emptyMap()
        return glmNativeFetchHeaders.toMap()
    }

    private fun isGlmApiResource(url: String): Boolean {
        val uri = runCatching { URI(url) }.getOrNull() ?: return false
        val host = uri.host.orEmpty().lowercase()
        val path = uri.path.orEmpty()
        return host == "api.z.ai" || host == "chat.z.ai" && path.startsWith("/api/")
    }

    private fun completePayload(rawPayload: String) {
        Log.d(TAG, "payload provider=glm size=${rawPayload.length}")
        val cookieHeader = glmWebSessionCookieHeader()
        CookieManager.getInstance().flush()
        sendResult(
            RESULT_PAYLOAD,
            Bundle().apply {
                putString(EXTRA_RAW_PAYLOAD, rawPayload)
                putString(EXTRA_COOKIE_HEADER, cookieHeader)
            }
        )
    }

    private fun glmWebSessionCookieHeader(): String? {
        val cookieHeader = GoogleWebSessionCodeAssistFetcher.mergeCookieHeaders(
            GlmProviderUrls.WEB_COOKIE_URLS.map { url ->
                runCatching { CookieManager.getInstance().getCookie(url) }.getOrNull()
            }
        )
        val cookieCount = GoogleWebSessionCodeAssistFetcher.parseCookieHeader(cookieHeader).size
        if (cookieCount <= 0) {
            Log.w(TAG, "webSessionCookieCaptured provider=glm captured=false cookieCount=0")
            return null
        }
        Log.i(TAG, "webSessionCookieCaptured provider=glm captured=true cookieCount=$cookieCount")
        return cookieHeader
    }

    private fun completeFailure(failure: ProviderRefreshFailure) {
        Log.w(TAG, "failure provider=glm kind=${failure.kind} message=${safeLogValue(failure.message)}")
        sendResult(
            RESULT_FAILURE,
            Bundle().apply {
                putString(EXTRA_FAILURE_KIND, failure.kind.name)
                putString(EXTRA_FAILURE_MESSAGE, failure.message)
            }
        )
    }

    private fun logTimeout(startUrl: String, timeoutMillis: Long) {
        val view = webView
        val elapsedMillis = SystemClock.elapsedRealtime() - collectionStartedAtMillis
        Log.w(
            TAG,
            "timeout provider=glm pid=${Process.myPid()} elapsedMs=$elapsedMillis timeoutMs=$timeoutMillis " +
                "startUrl=${safeLogValue(startUrl)} currentUrl=${safeLogValue(view?.url)} " +
                "title=${safeLogValue(view?.title)} hasWebView=${view != null}"
        )
    }

    private fun sendResult(code: Int, bundle: Bundle) {
        if (completed) return
        completed = true
        mainHandler.removeCallbacksAndMessages(null)
        resultReceiver?.send(code, bundle)
        resultReceiver = null
        finish(resultNameFor(code))
    }

    private fun finish(reason: String) {
        destroyWebView()
        Log.d(TAG, "stopSelf provider=glm reason=$reason pid=${Process.myPid()}")
        stopSelf()
        if (reason != "cleared") {
            scheduleProcessExit(reason)
        }
    }

    private fun scheduleProcessExit(reason: String) {
        Log.d(TAG, "scheduleKill provider=glm reason=$reason pid=${Process.myPid()}")
        mainHandler.postDelayed(processExitRunnable, PROCESS_EXIT_DELAY_MS)
    }

    private fun destroyWebView() {
        val view = webView
        Log.d(TAG, "destroyWebView provider=glm hasWebView=${view != null} pid=${Process.myPid()}")
        view?.let {
            runCatching { view.stopLoading() }
            runCatching { view.removeJavascriptInterface(BRIDGE_NAME) }
            runCatching { view.destroy() }
        }
        webView = null
    }

    private fun resultReceiverFrom(intent: Intent): ResultReceiver? {
        return if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) {
            intent.getParcelableExtra(EXTRA_RESULT_RECEIVER, ResultReceiver::class.java)
        } else {
            @Suppress("DEPRECATION")
            intent.getParcelableExtra(EXTRA_RESULT_RECEIVER)
        }
    }

    private fun resultNameFor(code: Int): String {
        return when (code) {
            RESULT_PAYLOAD -> "payload"
            RESULT_FAILURE -> "failure"
            RESULT_CLEARED -> "cleared"
            else -> "result_$code"
        }
    }

    private fun safeLogValue(value: String?): String {
        return value.orEmpty()
            .replace(Regex("code=[^\\s&]+"), "code=redacted")
            .replace(Regex("token=[^\\s&]+"), "token=redacted")
            .replace(Regex("[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"), "<email>")
            .replace('\n', ' ')
            .replace('\r', ' ')
            .take(MAX_LOG_VALUE_LENGTH)
    }

    private fun safeRouteForLog(url: String): String {
        val uri = runCatching { URI(url) }.getOrNull() ?: return safeLogValue(url)
        val host = uri.host.orEmpty()
        val path = uri.path.orEmpty()
        return "$host$path".take(MAX_LOG_VALUE_LENGTH)
    }

    private fun cookieHeaderForNativeUsage(url: String): String? {
        return runCatching { CookieManager.getInstance().getCookie(url) }.getOrNull()
            ?: glmWebSessionCookieHeader()
    }

    private inner class GlmWebClient : WebViewClient() {
        override fun onPageStarted(view: WebView, url: String, favicon: android.graphics.Bitmap?) {
            currentPageUrl = url
            Log.d(TAG, "pageStarted provider=glm url=${safeLogValue(url)}")
            if (url == "about:blank") {
                injectAboutBlankNativeBridge(view)
                return
            }
            GlmLoginPostRedirects.usageRedirectUrl(ProviderId.GLM, url)?.let { usageUrl ->
                view.stopLoading()
                view.loadUrl(usageUrl)
                return
            }
            if (ProviderWebCollectorScripts.isRefreshLoginPage(ProviderId.GLM, url)) {
                completeFailure(ProviderRefreshFailure.interactiveAuthRequired(LOGIN_PAGE_REACHED_MESSAGE))
                return
            }
            maybeStartNativeCollection(view, url, "page_started")
        }

        override fun shouldInterceptRequest(view: WebView, request: WebResourceRequest): WebResourceResponse? {
            if (captureGlmNativeFetchHeaders(request)) {
                view.post {
                    if (completed) return@post
                    val pageUrl = view.url ?: GlmProviderUrls.WEB_USAGE_URL
                    GlmUsagePageRoutes.usageRedirectUrlAfterAuthenticatedResource(pageUrl)?.let { usageUrl ->
                        view.loadUrl(usageUrl)
                        return@post
                    }
                    maybeStartNativeCollection(
                        view,
                        GlmUsagePageRoutes.nativeCollectionUrlAfterAuthenticatedResource(pageUrl) ?: pageUrl,
                        "resource"
                    )
                }
            }
            return null
        }

        override fun onLoadResource(view: WebView, url: String) {
            val pageUrl = view.url ?: url
            currentPageUrl = pageUrl
            if (pageUrl == "about:blank") return
            if (!ProviderWebCollectorScripts.shouldRunCollectorOnResource(ProviderId.GLM, url)) return
            maybeStartNativeCollection(view, pageUrl, "load_resource")
        }

        override fun onPageFinished(view: WebView, url: String) {
            currentPageUrl = url
            Log.d(TAG, "pageFinished provider=glm url=${safeLogValue(url)}")
            if (url == "about:blank") {
                injectAboutBlankNativeBridge(view)
                return
            }
            GlmLoginPostRedirects.usageRedirectUrl(ProviderId.GLM, url)?.let { usageUrl ->
                view.loadUrl(usageUrl)
                return
            }
            if (ProviderWebCollectorScripts.isRefreshLoginPage(ProviderId.GLM, url)) {
                completeFailure(ProviderRefreshFailure.interactiveAuthRequired(LOGIN_PAGE_REACHED_MESSAGE))
                return
            }
            maybeStartNativeCollection(view, url, "page_finished")
        }

        override fun onReceivedError(view: WebView, request: WebResourceRequest, error: WebResourceError) {
            if (!request.isForMainFrame) return
            completeFailure(
                ProviderRefreshFailure(
                    ProviderRefreshFailureKind.TRANSIENT_PAGE_LOAD,
                    "Background refresh page failed to load."
                )
            )
        }
    }

    private inner class Bridge {
        @JavascriptInterface
        fun postUsagePayload(rawPayload: String) {
            mainHandler.post {
                val pageUrl = webView?.url.orEmpty().ifBlank { GlmProviderUrls.WEB_USAGE_URL }
                if (!ProviderWebCollectorScripts.shouldAcceptCollectorPayload(ProviderId.GLM, pageUrl, rawPayload)) return@post
                completePayload(rawPayload)
            }
        }

        @JavascriptInterface
        fun postCollectorError(rawError: String) {
            mainHandler.post {
                val pageUrl = webView?.url.orEmpty().ifBlank { GlmProviderUrls.WEB_USAGE_URL }
                if (!ProviderWebCollectorScripts.shouldAcceptCollectorError(ProviderId.GLM, pageUrl, rawError)) return@post
                Log.w(TAG, "collectorError provider=glm summary=${safeLogValue(rawError)}")
                completeFailure(ProviderCollectorErrorPolicy.failureFor(ProviderId.GLM, rawError))
            }
        }

        @JavascriptInterface
        fun fetchProviderUsagePayload(): String {
            if (currentPageUrl != "about:blank") {
                return org.json.JSONObject()
                    .put("ok", false)
                    .put("error", "blocked_bridge_page")
                    .toString()
            }
            return ProviderNativeUsagePayloadFetcher.bridgeUsagePayload(
                providerId = ProviderId.GLM,
                userAgent = collectorUserAgent,
                bridgePageUrl = GlmProviderUrls.WEB_USAGE_URL,
                cookieHeaderForUrl = { url -> cookieHeaderForNativeUsage(url) },
                requestHeadersForUrl = { url -> glmNativeFetchHeadersFor(url) }
            )
        }
    }

    companion object {
        const val EXTRA_RESULT_RECEIVER = "result_receiver"
        const val EXTRA_RAW_PAYLOAD = "raw_payload"
        const val EXTRA_COOKIE_HEADER = "cookie_header"
        const val EXTRA_FAILURE_KIND = "failure_kind"
        const val EXTRA_FAILURE_MESSAGE = "failure_message"
        private const val EXTRA_START_URL = "start_url"
        private const val EXTRA_TIMEOUT_MILLIS = "timeout_millis"
        private const val ACTION_COLLECT = "com.aiquota.mobile.action.GLM_WEB_COLLECT"
        private const val ACTION_CLEAR = "com.aiquota.mobile.action.GLM_WEB_CLEAR"
        private const val ACTION_CANCEL = "com.aiquota.mobile.action.GLM_WEB_CANCEL"
        private const val BRIDGE_NAME = "AIQuotaCollectorBridge"
        private const val TAG = "GlmIsolatedWebSession"
        private const val LOGIN_PAGE_REACHED_MESSAGE = "Background refresh reached a provider login page."
        private const val CLEAR_CALLBACK_FALLBACK_MS = 2_000L
        private const val MAX_LOG_VALUE_LENGTH = 200
        private const val PROCESS_EXIT_DELAY_MS = 300L
        const val RESULT_PAYLOAD = 1
        const val RESULT_FAILURE = 2
        const val RESULT_CLEARED = 3

        fun collectIntent(context: Context, startUrl: String, timeoutMillis: Long): Intent {
            return Intent(context, GlmIsolatedWebSessionService::class.java)
                .setAction(ACTION_COLLECT)
                .putExtra(EXTRA_START_URL, startUrl)
                .putExtra(EXTRA_TIMEOUT_MILLIS, timeoutMillis)
        }

        fun clearIntent(context: Context): Intent {
            return Intent(context, GlmIsolatedWebSessionService::class.java)
                .setAction(ACTION_CLEAR)
        }

        fun cancelIntent(context: Context): Intent {
            return Intent(context, GlmIsolatedWebSessionService::class.java)
                .setAction(ACTION_CANCEL)
        }
    }
}
