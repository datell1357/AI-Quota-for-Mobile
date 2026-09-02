package com.aiquota.mobile.accounts

import android.content.Context
import android.os.Handler
import android.os.Looper
import android.util.Log
import android.webkit.CookieManager
import android.webkit.ServiceWorkerController
import android.webkit.WebResourceRequest
import android.webkit.WebResourceResponse
import android.webkit.WebStorage
import android.webkit.WebView
import android.webkit.WebViewClient
import androidx.core.content.ContextCompat
import androidx.webkit.ProfileStore
import androidx.webkit.WebStorageCompat
import androidx.webkit.WebViewAssetLoader
import androidx.webkit.WebViewCompat
import androidx.webkit.WebViewFeature
import java.io.ByteArrayInputStream
import java.util.concurrent.atomic.AtomicBoolean

class AndroidXNamedProfilePlatform(
    private val context: Context,
    private val trace: (String) -> Unit = {},
) : NamedProfilePlatform {
    override fun probeCapability(): NamedProfileCapability {
        try {
            if (!WebViewFeature.isFeatureSupported(WebViewFeature.MULTI_PROFILE))
                return NamedProfileCapability.Rejected(
                    RuntimeSupportReason.FEATURE_MULTI_PROFILE_MISSING
                )
            if (!WebViewFeature.isFeatureSupported(WebViewFeature.DELETE_BROWSING_DATA))
                return NamedProfileCapability.Rejected(
                    RuntimeSupportReason.FEATURE_DELETE_BROWSING_DATA_MISSING
                )
            val p =
                WebViewCompat.getCurrentWebViewPackage(context)
                    ?: return NamedProfileCapability.Rejected(RuntimeSupportReason.PROVIDER_MISSING)
            return when (val d = NamedProfileRuntimePolicy.evaluate(p.packageName, p.versionName)) {
                is NamedProfileRuntimeDecision.Supported ->
                    NamedProfileCapability.Supported(d.identity)
                is NamedProfileRuntimeDecision.Rejected ->
                    NamedProfileCapability.Rejected(d.reason, d.identity)
            }
        } catch (_: Throwable) {
            return NamedProfileCapability.Rejected(RuntimeSupportReason.PROBE_FAILED)
        }
    }

    override fun requireUiThread() {
        if (Looper.myLooper() != Looper.getMainLooper()) throw NamedProfileThreadViolation()
    }

    override fun createBoundSession(
        name: WebProfileName,
        createIfMissing: Boolean,
    ): NamedProfileSessionResource? {
        requireUiThread()
        check(probeCapability() is NamedProfileCapability.Supported)
        trace("profile:load")
        val profiles = ProfileStore.getInstance()
        val profile = if (createIfMissing) {
            profiles.getOrCreateProfile(name.storageValue())
        } else {
            profiles.getProfile(name.storageValue()) ?: return null
        }
        trace("webview:create")
        val w = WebView(context)
        try {
            trace("webview:bind")
            WebViewCompat.setProfile(w, name.storageValue())
            return AndroidSession(
                w,
                profile.cookieManager,
                profile.webStorage,
                profile.serviceWorkerController,
                trace,
            )
        } catch (e: RuntimeException) {
            w.destroy()
            throw e
        }
    }

    override fun eraseProfileData(
        name: WebProfileName,
        callback: (ProfileDataErasureResult) -> Unit,
    ) {
        requireUiThread()
        if (probeCapability() !is NamedProfileCapability.Supported) {
            callback(ProfileDataErasureResult.Failed("UNSUPPORTED"))
            return
        }
        try {
            val p = ProfileStore.getInstance().getProfile(name.storageValue())
            if (p == null) {
                callback(ProfileDataErasureResult.Completed)
                return
            }
            WebStorageCompat.deleteBrowsingData(
                p.webStorage,
                ContextCompat.getMainExecutor(context),
            ) {
                requireUiThread()
                trace("profile:data-erased-container-retained")
                callback(ProfileDataErasureResult.Completed)
            }
        } catch (e: RuntimeException) {
            callback(ProfileDataErasureResult.Failed(e.javaClass.simpleName))
        }
    }

    /**
     * Chromium keeps a profile "in use" while service workers or not-yet-torn-down WebViews
     * reference it, so the container is only deletable from a process that never bound it.
     * Failures are silent; the next process start retries.
     */
    override fun deleteReleasedContainer(name: WebProfileName): Boolean {
        requireUiThread()
        return try {
            ProfileStore.getInstance().deleteProfile(name.storageValue())
        } catch (_: RuntimeException) {
            false
        }.also { if (it) trace("profile:container-deleted") }
    }
}

/**
 * Closing a lease navigates the WebView to a local synthetic page first: the provider page's
 * `pagehide` is what makes Chromium commit localStorage/IndexedDB to disk, so skipping this loses
 * that state on the next process start. The page is served from memory, so no network is used.
 *
 * Completion is judged only from this side (page served, finished, visible, JS ready) — never
 * from anything the provider page must send, because provider CSPs (claude.ai:
 * `connect-src 'self'`) block cross-origin beacons. A timeout guarantees the close never hangs.
 */
private class AndroidSession(
    override val webView: WebView,
    override val cookieManager: CookieManager,
    override val webStorage: WebStorage,
    override val serviceWorkerController: ServiceWorkerController,
    private val trace: (String) -> Unit,
) : NamedProfileSessionResource {
    override val cookieSource = ExactProfileCookieSource { url, origin ->
        cookieManager.getCookie(url)?.takeIf(String::isNotBlank)
            ?: cookieManager.getCookie(origin)?.takeIf(String::isNotBlank)
    }
    private var finished = false
    private var committed = false
    private var visual = false
    private var quiesceAttempt = 0L
    @Volatile
    private var activeAttempt: Long? = null
    @Volatile
    private var observations: QuiesceObservations? = null
    private var callback: ((SessionQuiesceResult) -> Unit)? = null
    private var prior: WebViewClient? = null

    private fun loaderFor(attemptObservations: QuiesceObservations) =
        WebViewAssetLoader.Builder()
            .setDomain(HOST)
            .addPathHandler("/neutral/") {
                attemptObservations.recordRequest()
                response("text/html", HTML)
            }
            .build()

    override fun quiesce(callback: (SessionQuiesceResult) -> Unit) {
        ui()
        check(this.callback == null)
        finished = false
        committed = false
        visual = false
        val attempt = ++quiesceAttempt
        val attemptObservations = QuiesceObservations(attempt)
        val attemptLoader = loaderFor(attemptObservations)
        observations = attemptObservations
        activeAttempt = attempt
        this.callback = callback
        val previousClient = WebViewCompat.getWebViewClient(webView)
        prior = previousClient
        webView.webViewClient =
            object : WebViewClient() {
                override fun shouldInterceptRequest(
                    v: WebView,
                    r: WebResourceRequest,
                ): WebResourceResponse? {
                    if (activeAttempt != attempt) return null
                    return attemptLoader.shouldInterceptRequest(r.url)
                }

                override fun onPageFinished(v: WebView, u: String) {
                    if (activeAttempt == attempt && u == URL) {
                        finished = true
                        check(attempt)
                    }
                }

                override fun onPageCommitVisible(v: WebView, u: String) {
                    if (activeAttempt == attempt && u == URL) {
                        committed = true
                        check(attempt)
                    }
                }
            }
        cookieManager.flush()
        trace("webview:navigate-neutral")
        webView.loadUrl(URL)
        Handler(Looper.getMainLooper()).postDelayed(
            {
                if (activeAttempt == attempt) {
                    // Best effort only. Cookies were flushed above, so a slow neutral page must not
                    // strand the user on it or turn a successful login into a reauthentication.
                    Log.w(TAG, "quiesce timed out; closing anyway")
                    cookieManager.flush()
                    finish(attempt, SessionQuiesceResult.CommittedCrossOriginPlatformAsync)
                }
            },
            QUIESCE_TIMEOUT_MS,
        )
    }

    private fun check(attempt: Long) {
        ui()
        if (activeAttempt != attempt) return
        val attemptObservations = observations?.takeIf { it.attempt == attempt } ?: return
        // Painting (onPageCommitVisible) is not required: while the login activity is finishing the
        // WebView may never draw another frame, which used to stall the close forever.
        if (!finished || !attemptObservations.complete() || visual)
            return
        visual = true
        WebViewCompat.postVisualStateCallback(webView, 15L) {
            if (activeAttempt != attempt) return@postVisualStateCallback
            webView.evaluateJavascript(
                "location.href==='$URL'&&document.readyState==='complete'&&window.__AIQ_NEUTRAL_READY__===true"
            ) {
                if (activeAttempt != attempt) return@evaluateJavascript
                if (it == "true") {
                    cookieManager.flush()
                    finish(attempt, SessionQuiesceResult.CommittedCrossOriginPlatformAsync)
                } else finish(attempt, SessionQuiesceResult.Failed("NEUTRAL_NOT_READY"))
            }
        }
    }

    private fun finish(attempt: Long, r: SessionQuiesceResult) {
        ui()
        if (activeAttempt != attempt) return
        val cb = callback ?: return
        activeAttempt = null
        observations = null
        callback = null
        prior?.let { webView.webViewClient = it }
        prior = null
        Log.i(TAG, "quiesce finished: $r")
        trace(
            if (r is SessionQuiesceResult.CommittedCrossOriginPlatformAsync) "session:quiesced"
            else "session:quiesce-failed"
        )
        cb(r)
    }

    override fun cancelQuiesce() {
        ui()
        val cb = callback ?: return
        activeAttempt = null
        observations = null
        quiesceAttempt += 1
        callback = null
        runCatching { webView.stopLoading() }
        prior?.let { previous -> runCatching { webView.webViewClient = previous } }
        prior = null
        Handler(Looper.getMainLooper()).post {
            cb(SessionQuiesceResult.Failed("QUIESCE_ABORTED"))
        }
    }

    override fun destroy() {
        ui()
        (webView.parent as? android.view.ViewGroup)?.removeView(webView)
        webView.destroy()
        trace("webview:destroyed-detached")
    }

    private fun ui() {
        if (Looper.myLooper() != Looper.getMainLooper()) throw NamedProfileThreadViolation()
    }

    companion object {
        const val HOST = "aiquota-neutral.invalid"
        const val URL = "https://$HOST/neutral/page.html"
        const val HTML = "<!doctype html><script>window.__AIQ_NEUTRAL_READY__=true</script>neutral"
        const val QUIESCE_TIMEOUT_MS = 1_200L
        const val TAG = "AIQuotaProfile"

        fun response(m: String, b: String) =
            WebResourceResponse(m, "UTF-8", ByteArrayInputStream(b.toByteArray()))
    }
}

internal class QuiesceObservations(val attempt: Long) {
    private val observedRequest = AtomicBoolean()

    fun recordRequest() = observedRequest.set(true)

    fun complete() = observedRequest.get()
}

fun NamedProfileLease.createAndroidPopupWebView(context: Context): WebView {
    check(ProfileStore.getInstance().getProfile(profileName.storageValue()) != null) {
        "Exact popup Profile is unavailable"
    }
    return WebView(context).also { WebViewCompat.setProfile(it, profileName.storageValue()) }
}

fun NamedProfileLease.requireAndroidWebView() = webView as WebView

fun NamedProfileLease.requireAndroidCookieManager() = cookieManager as CookieManager

fun NamedProfileLease.requireAndroidWebStorage() = webStorage as WebStorage

fun NamedProfileLease.requireAndroidServiceWorkerController() =
    serviceWorkerController as ServiceWorkerController
