package com.aiquota.mobile.accounts

import android.content.Context
import android.graphics.Bitmap
import android.os.Looper
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
                persistenceReady = !createIfMissing,
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
}

private class AndroidSession(
    override val webView: WebView,
    override val cookieManager: CookieManager,
    override val webStorage: WebStorage,
    override val serviceWorkerController: ServiceWorkerController,
    private val trace: (String) -> Unit,
    private var persistenceReady: Boolean,
) : NamedProfileSessionResource {
    override val cookieSource = ExactProfileCookieSource { url, origin ->
        cookieManager.getCookie(url)?.takeIf(String::isNotBlank)
            ?: cookieManager.getCookie(origin)?.takeIf(String::isNotBlank)
    }
    private val observedRequest = AtomicBoolean()
    private val observedBeacon = AtomicBoolean()
    private var finished = false
    private var committed = false
    private var visual = false
    private var callback: ((SessionQuiesceResult) -> Unit)? = null
    private var prior: WebViewClient? = null

    override fun markPersistenceReady() {
        ui()
        persistenceReady = true
    }

    private val loader =
        WebViewAssetLoader.Builder()
            .setDomain(HOST)
            .addPathHandler("/neutral/") { path ->
                when {
                    path.startsWith("beacon") -> {
                        observedBeacon.set(true)
                        postCheck()
                        response("text/plain", "ok")
                    }
                    else -> {
                        observedRequest.set(true)
                        response("text/html", HTML)
                    }
                }
            }
            .build()

    override fun quiesce(callback: (SessionQuiesceResult) -> Unit) {
        ui()
        check(this.callback == null)
        observedRequest.set(false)
        observedBeacon.set(false)
        finished = false
        committed = false
        visual = false
        this.callback = callback
        prior = WebViewCompat.getWebViewClient(webView)
        webView.webViewClient =
            object : WebViewClient() {
                override fun shouldInterceptRequest(
                    v: WebView,
                    r: WebResourceRequest,
                ): WebResourceResponse? =
                    loader.shouldInterceptRequest(r.url) ?: prior?.shouldInterceptRequest(v, r)

                override fun onPageStarted(v: WebView, u: String, b: Bitmap?) {
                    prior?.onPageStarted(v, u, b)
                }

                override fun onPageFinished(v: WebView, u: String) {
                    prior?.onPageFinished(v, u)
                    if (u == URL) {
                        finished = true
                        check()
                    }
                }

                override fun onPageCommitVisible(v: WebView, u: String) {
                    prior?.onPageCommitVisible(v, u)
                    if (u == URL) {
                        committed = true
                        check()
                    }
                }
            }
        if (!persistenceReady) {
            finish(SessionQuiesceResult.Failed("PERSISTENCE_NOT_READY"))
            return
        }
        webView.evaluateJavascript(
            "window.addEventListener('pagehide',()=>navigator.sendBeacon('$BEACON','x'),{once:true});true"
        ) {
            if (it != "true") finish(SessionQuiesceResult.Failed("PAGE_NOT_READY"))
            else {
                trace("webview:navigate-neutral")
                webView.loadUrl(URL)
            }
        }
    }

    private fun postCheck() = webView.post { check() }

    private fun check() {
        ui()
        if (!finished || !committed || !observedRequest.get() || !observedBeacon.get() || visual)
            return
        visual = true
        WebViewCompat.postVisualStateCallback(webView, 15L) {
            webView.evaluateJavascript(
                "location.href==='$URL'&&document.readyState==='complete'&&window.__AIQ_NEUTRAL_READY__===true"
            ) {
                if (it == "true") {
                    cookieManager.flush()
                    finish(SessionQuiesceResult.CommittedCrossOriginPlatformAsync)
                } else finish(SessionQuiesceResult.Failed("NEUTRAL_NOT_READY"))
            }
        }
    }

    private fun finish(r: SessionQuiesceResult) {
        ui()
        val cb = callback ?: return
        callback = null
        prior?.let { webView.webViewClient = it }
        prior = null
        trace(
            if (r is SessionQuiesceResult.CommittedCrossOriginPlatformAsync) "session:quiesced"
            else "session:quiesce-failed"
        )
        cb(r)
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
        const val BEACON = "https://$HOST/neutral/beacon"
        const val HTML = "<!doctype html><script>window.__AIQ_NEUTRAL_READY__=true</script>neutral"

        fun response(m: String, b: String) =
            WebResourceResponse(m, "UTF-8", ByteArrayInputStream(b.toByteArray()))
    }
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
