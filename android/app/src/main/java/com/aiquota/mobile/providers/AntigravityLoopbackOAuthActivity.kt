package com.aiquota.mobile.providers

import android.annotation.SuppressLint
import android.app.Activity
import android.content.Context
import android.content.Intent
import android.graphics.Bitmap
import android.os.Bundle
import android.util.Log
import android.view.Gravity
import android.view.View
import android.view.ViewGroup
import android.webkit.CookieManager
import android.webkit.WebResourceRequest
import android.webkit.WebView
import android.webkit.WebViewClient
import android.widget.FrameLayout
import android.widget.TextView
import com.aiquota.mobile.BuildConfig
import com.aiquota.mobile.local.LocalUsageRepository
import com.aiquota.mobile.accounts.AccountKey
import com.aiquota.mobile.accounts.ProviderAccountId
import com.aiquota.mobile.accounts.ProviderAccountIdStorageCodec
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.local.ProviderUsageSnapshot
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.CancellationException
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.SupervisorJob
import kotlinx.coroutines.cancel
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import com.aiquota.mobile.ui.applyEdgeToEdgeInsets
import com.aiquota.mobile.ui.ads.ActivityTopBanner

class AntigravityLoopbackOAuthActivity : Activity() {
    private val activityScope = CoroutineScope(SupervisorJob() + Dispatchers.Main.immediate)
    @Volatile
    private var finished = false
    @Volatile
    private var processingCallback = false
    private lateinit var webView: WebView
    private lateinit var statusView: TextView
    private lateinit var topBanner: ActivityTopBanner
    private var exactLogin: ExactSingleAccountLogin? = null

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        if (BuildConfig.MULTI_ACCOUNT_ENABLED) {
            exactLogin = ExactSingleAccountLogin.open(this, intent, savedInstanceState)
            if (exactLogin?.binding?.accountId?.providerId != ProviderId.ANTIGRAVITY) {
                finish()
                return
            }
        }
        LocalUsageRepository(applicationContext).markConnecting(ProviderId.ANTIGRAVITY)
        // 이 화면도 전면을 덮으므로 대시보드와 같은 배너를 상단에 유지한다.
        topBanner = ActivityTopBanner(this)
        webView = createOAuthWebView()
        statusView = TextView(this).apply {
            text = "Preparing Google sign-in."
            gravity = Gravity.CENTER
            textSize = 16f
            visibility = View.VISIBLE
        }
        val contentLayoutParams = {
            FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.MATCH_PARENT
            ).apply { topMargin = topBanner.heightPx }
        }
        val root = FrameLayout(this).apply {
            addView(webView, contentLayoutParams())
            addView(statusView, contentLayoutParams())
        }
        topBanner.attachTo(root, activityScope)
        setContentView(root)
        // targetSdk 35+에서는 시스템 표시줄이 화면을 덮는다. 순수 Activity라 인셋을 직접 반영한다
        // (2026-08-19 Play Console 재지적: WebLoginActivity만 고치고 이 화면을 빠뜨렸었다).
        applyEdgeToEdgeInsets(root)
        startFirebaseOAuth()
    }

    override fun onResume() {
        super.onResume()
        if (::topBanner.isInitialized) topBanner.resume()
    }

    override fun onPause() {
        if (::topBanner.isInitialized) topBanner.pause()
        super.onPause()
    }

    override fun onDestroy() {
        if (::topBanner.isInitialized) topBanner.destroy()
        activityScope.cancel()
        runCatching {
            webView.stopLoading()
            webView.destroy()
        }
        if (!finished && !isChangingConfigurations &&
            (!BuildConfig.MULTI_ACCOUNT_ENABLED || exactLogin?.cancel() == true)
        ) {
            LocalUsageRepository(applicationContext).markLoginCancelled(
                ProviderId.ANTIGRAVITY,
                "Provider login was cancelled."
            )
            UsageSurfaceRefresher.refresh(applicationContext, LocalUsageRepository(applicationContext))
        }
        exactLogin?.close()
        super.onDestroy()
    }

    override fun onSaveInstanceState(outState: Bundle) {
        exactLogin?.saveState(outState)
        super.onSaveInstanceState(outState)
    }

    @SuppressLint("SetJavaScriptEnabled")
    private fun createOAuthWebView(): WebView {
        CookieManager.getInstance().setAcceptCookie(true)
        return WebView(this).apply {
            settings.javaScriptEnabled = true
            settings.domStorageEnabled = true
            settings.allowFileAccess = false
            settings.userAgentString = ProviderWebViewUserAgent.loginUserAgent(applicationContext)
            webViewClient = object : WebViewClient() {
                override fun shouldOverrideUrlLoading(view: WebView, request: WebResourceRequest): Boolean {
                    return maybeHandleOAuthCallback(request.url.toString())
                }

                override fun onPageStarted(view: WebView, url: String, favicon: Bitmap?) {
                    maybeHandleOAuthCallback(url)
                }

                override fun onPageFinished(view: WebView, url: String) {
                    if (!processingCallback) statusView.visibility = View.GONE
                }
            }
        }
    }

    private fun startFirebaseOAuth() {
        activityScope.launch {
            statusView.text = "Preparing Google sign-in."
            val authorizationUrl = runCatching {
                withContext(Dispatchers.IO) {
                    AntigravityFirebaseGateway(applicationContext).startOAuth()
                }
            }.onFailure { error ->
                if (error is CancellationException) throw error
                Log.w(TAG, "webviewOAuth startFailed=${error.javaClass.simpleName}")
            }.getOrNull()
            if (authorizationUrl.isNullOrBlank()) {
                failKeepingPrevious(
                    "Antigravity OAuth could not be started.",
                    "antigravity_oauth_start_failed"
                )
                return@launch
            }
            statusView.visibility = View.GONE
            webView.loadUrl(authorizationUrl)
        }
    }

    private fun maybeHandleOAuthCallback(url: String): Boolean {
        if (!AntigravityOAuthRepository.isLoopbackOAuthCallback(url)) return false
        if (processingCallback) return true
        processingCallback = true
        statusView.text = "Collecting Antigravity usage."
        statusView.visibility = View.VISIBLE
        webView.stopLoading()
        activityScope.launch {
            val repository = AntigravityOAuthRepository(applicationContext)
            val outcome = runCatching {
                withContext(Dispatchers.IO) {
                    val tokenResult = AntigravityFirebaseGateway(applicationContext).completeOAuth(url)
                    val payload = if (exactLogin == null) {
                        repository.fetchUsagePayloadFromGatewayTokenResult(tokenResult)
                    } else if (tokenResult.ok && !tokenResult.accessToken.isNullOrBlank()) {
                        repository.fetchUsagePayloadWithAccessToken(tokenResult.accessToken, email = null)
                    } else {
                        null
                    }
                    tokenResult to payload
                }
            }.onFailure { error ->
                if (error is CancellationException) throw error
                Log.w(
                    TAG,
                    "webviewOAuth completeFailed=${error.javaClass.simpleName}"
                )
            }
            if (isFinishing || isDestroyed) return@launch
            val tokenResult = outcome.getOrNull()?.first
            val payload = outcome.getOrNull()?.second
            val diagnostic = repository.lastFailureDiagnostic()
            exactLogin?.let { session ->
                if (!session.isCurrent()) {
                    finish()
                } else if (AntigravityOAuthErrorPolicy.requiresFreshSignIn(outcome.exceptionOrNull())) {
                    finishSignInExpired()
                } else if (tokenResult?.ok == true && !tokenResult.accessToken.isNullOrBlank()) {
                    val snapshot = payload?.let {
                        ProviderUsageNormalizer.normalize(ProviderId.ANTIGRAVITY, it, ProviderPayloadSource.PROVIDER_API)
                    } ?: ProviderUsageSnapshot.connectedWithoutUsage(
                        ProviderId.ANTIGRAVITY,
                        diagnostic ?: "Antigravity OAuth completed, but quota payload was not available."
                    )
                    if (session.complete(snapshot) { repository.saveGatewayTokenResult(tokenResult) }) {
                        finished = true
                        val usageRepository = LocalUsageRepository(applicationContext)
                        usageRepository.saveSnapshot(snapshot)
                        UsageSurfaceRefresher.refresh(applicationContext, usageRepository)
                    }
                    finish()
                } else {
                    failKeepingPrevious("Antigravity token exchange did not complete.", "antigravity_oauth_token_failed")
                }
                return@launch
            }
            if (!payload.isNullOrBlank()) {
                completeWithPayload(payload)
            } else if (AntigravityOAuthErrorPolicy.requiresFreshSignIn(outcome.exceptionOrNull())) {
                finishSignInExpired()
            } else {
                finishGoogleUsagePending(
                    diagnostic ?: "Antigravity OAuth completed, but quota payload was not available.",
                    "antigravity_oauth_no_payload"
                )
            }
        }
        return true
    }

    private fun completeWithPayload(rawPayload: String) {
        if (finished) return
        finished = true
        val repository = LocalUsageRepository(applicationContext)
        val snapshot = ProviderUsageNormalizer.normalize(
            ProviderId.ANTIGRAVITY,
            rawPayload,
            ProviderPayloadSource.PROVIDER_API
        )
        if (snapshot != null) {
            repository.saveSnapshot(snapshot)
            Log.i(
                TAG,
                "webviewOAuth usageSaved lineCount=${snapshot.lines.size} planPresent=${snapshot.planLabel != null}"
            )
        } else {
            repository.markGoogleUsagePending(
                ProviderId.ANTIGRAVITY,
                "Antigravity OAuth completed, but quota payload was not trusted."
            )
            Log.w(TAG, "webviewOAuth noTrustedPayload=true")
        }
        UsageSurfaceRefresher.refresh(applicationContext, repository)
        finish()
    }

    private fun finishGoogleUsagePending(message: String, errorKind: String) {
        if (finished) return
        finished = true
        val repository = LocalUsageRepository(applicationContext)
        repository.markGoogleUsagePending(ProviderId.ANTIGRAVITY, message)
        Log.w(TAG, "webviewOAuth errorKind=$errorKind usagePending=true")
        UsageSurfaceRefresher.refresh(applicationContext, repository)
        finish()
    }

    private fun finishSignInExpired() {
        if (finished) return
        if (exactLogin?.cancel() == false) {
            finish()
            return
        }
        finished = true
        val repository = LocalUsageRepository(applicationContext)
        repository.markSessionExpired(
            ProviderId.ANTIGRAVITY,
            AntigravityOAuthErrorPolicy.SIGN_IN_RESTART_MESSAGE
        )
        Log.w(TAG, "webviewOAuth errorKind=antigravity_oauth_state_expired signInRequired=true")
        UsageSurfaceRefresher.refresh(applicationContext, repository)
        finish()
    }

    private fun failKeepingPrevious(message: String, errorKind: String) {
        if (finished) return
        if (exactLogin?.cancel() == false) {
            finish()
            return
        }
        finished = true
        val repository = LocalUsageRepository(applicationContext)
        repository.failKeepingPrevious(ProviderId.ANTIGRAVITY, message)
        Log.w(TAG, "webviewOAuth errorKind=$errorKind keptPreviousSnapshot=true")
        UsageSurfaceRefresher.refresh(applicationContext, repository)
        finish()
    }

    companion object {
        private const val TAG = "AIQuotaAntigravity"

        fun createIntent(
            context: Context,
            accountId: ProviderAccountId = ProviderAccountId(ProviderId.ANTIGRAVITY, AccountKey.reservedDefault()),
        ): Intent {
            require(accountId.providerId == ProviderId.ANTIGRAVITY)
            return Intent(context, AntigravityLoopbackOAuthActivity::class.java)
                .putExtra(WebLoginActivity.EXTRA_PROVIDER_ACCOUNT_ID, ProviderAccountIdStorageCodec.encode(accountId))
        }
    }
}
