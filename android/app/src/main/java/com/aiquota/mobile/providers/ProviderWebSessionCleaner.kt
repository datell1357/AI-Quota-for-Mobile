package com.aiquota.mobile.providers

import android.annotation.SuppressLint
import android.content.Context
import android.view.View
import android.webkit.CookieManager
import android.webkit.ValueCallback
import android.webkit.WebResourceError
import android.webkit.WebResourceRequest
import android.webkit.WebStorage
import android.webkit.WebView
import android.webkit.WebViewClient
import com.aiquota.mobile.local.LocalUsageRepository
import com.aiquota.mobile.local.ProviderId
import java.util.concurrent.ConcurrentHashMap
import kotlin.coroutines.resume
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.suspendCancellableCoroutine
import kotlinx.coroutines.sync.Mutex
import kotlinx.coroutines.sync.withLock
import kotlinx.coroutines.withContext
import kotlinx.coroutines.withTimeoutOrNull

internal object ProviderWebSessionMaintenanceGate {
    private val providerMutexes = ConcurrentHashMap<ProviderId, Mutex>()

    suspend fun <T> withMaintenanceLock(providerId: ProviderId, block: suspend () -> T): T {
        return providerMutexes.getOrPut(providerId) { Mutex() }.withLock { block() }
    }
}

object ProviderWebSessionCleaner {
    fun clearProviderWebSession(
        context: Context,
        providerId: ProviderId,
        alsoDisconnecting: Collection<ProviderId> = emptyList()
    ) {
        if (!ProviderWebSessionClearPolicy.shouldClearOnDisconnect(providerId)) return
        if (providerId == ProviderId.GLM) {
            GlmIsolatedWebSession.clear(context.applicationContext)
        }
        val retained = retainedProviders(context, providerId, alsoDisconnecting)
        clearProviderWebSession(CookieManager.getInstance(), WebStorage.getInstance(), providerId, retained)
    }

    /**
     * 지금 끊는 provider를 뺀 나머지 연결 상태 provider. 이들이 쓰는 로그인 IdP 세션은
     * 보존해야 하므로 삭제 대상 URL을 좁히는 데 쓴다. 스냅샷 읽기가 실패하면 빈 목록이 되어
     * 기존처럼 전부 지운다.
     */
    private fun retainedProviders(
        context: Context,
        providerId: ProviderId,
        alsoDisconnecting: Collection<ProviderId>
    ): List<ProviderId> {
        val disconnecting = alsoDisconnecting.toSet() + providerId
        return runCatching {
            LocalUsageRepository(context.applicationContext).readSnapshots()
                .filter { ProviderWebSessionClearPolicy.retainsSharedIdentity(it.connectionState) }
                .map { it.providerId }
        }.getOrDefault(emptyList()).filterNot { it in disconnecting }
    }

    fun clearProviderWebSession(providerId: ProviderId) {
        if (!ProviderWebSessionClearPolicy.shouldClearOnDisconnect(providerId)) return
        clearProviderWebSession(CookieManager.getInstance(), WebStorage.getInstance(), providerId)
    }

    suspend fun clearProviderWebSessionAndWait(providerId: ProviderId) {
        if (!ProviderWebSessionClearPolicy.shouldClearOnDisconnect(providerId)) return
        ProviderWebSessionMaintenanceGate.withMaintenanceLock(providerId) {
            clearProviderWebSessionAndWait(CookieManager.getInstance(), WebStorage.getInstance(), providerId)
        }
    }

    suspend fun clearProviderWebSessionAndWait(
        context: Context,
        providerId: ProviderId,
        alsoDisconnecting: Collection<ProviderId> = emptyList()
    ) {
        if (!ProviderWebSessionClearPolicy.shouldClearOnDisconnect(providerId)) return
        val retained = retainedProviders(context, providerId, alsoDisconnecting)
        ProviderWebSessionMaintenanceGate.withMaintenanceLock(providerId) {
            withContext(Dispatchers.Main.immediate) {
                if (providerId == ProviderId.GLM) {
                    GlmIsolatedWebSession.clearAndWait(context.applicationContext)
                }
                clearProviderWebSessionCookiesAndWait(CookieManager.getInstance(), providerId, retained)
                clearProviderWebStorageOrigins(WebStorage.getInstance(), providerId, retained)
                clearProviderBrowserStorageWithWebView(context.applicationContext, providerId)
                if (providerId == ProviderId.GLM) {
                    GlmIsolatedWebViewProfile.killIsolatedProcessIfRunning(context.applicationContext, "web_session_clear")
                }
            }
        }
    }

    fun clearProviderWebSession(
        cookieManager: CookieManager,
        webStorage: WebStorage,
        providerId: ProviderId,
        retainedProviders: Collection<ProviderId> = emptyList()
    ) {
        clearProviderWebSessionCookies(cookieManager, providerId, retainedProviders)
        clearProviderWebStorageOrigins(webStorage, providerId, retainedProviders)
    }

    suspend fun clearProviderWebSessionAndWait(
        cookieManager: CookieManager,
        webStorage: WebStorage,
        providerId: ProviderId,
        retainedProviders: Collection<ProviderId> = emptyList()
    ) {
        withContext(Dispatchers.Main.immediate) {
            clearProviderWebSessionCookiesAndWait(cookieManager, providerId, retainedProviders)
            clearProviderWebStorageOrigins(webStorage, providerId, retainedProviders)
        }
    }

    fun clearProviderWebSessionCookies(providerId: ProviderId) {
        if (!ProviderWebSessionClearPolicy.shouldClearOnDisconnect(providerId)) return
        clearProviderWebSessionCookies(CookieManager.getInstance(), providerId)
    }

    fun clearProviderWebSessionCookies(
        cookieManager: CookieManager,
        providerId: ProviderId,
        retainedProviders: Collection<ProviderId> = emptyList()
    ) {
        ProviderWebSessionClearPolicy.cookieUrls(providerId, retainedProviders).forEach { url ->
            ProviderWebSessionClearPolicy.expiringCookieHeaders(
                cookieHeader = cookieManager.getCookie(url),
                url = url
            ).forEach { header ->
                cookieManager.setCookie(url, header)
            }
        }
        cookieManager.flush()
    }

    private suspend fun clearProviderWebSessionCookiesAndWait(
        cookieManager: CookieManager,
        providerId: ProviderId,
        retainedProviders: Collection<ProviderId> = emptyList()
    ) {
        val cookieHeaders = ProviderWebSessionClearPolicy.cookieUrls(providerId, retainedProviders).flatMap { url ->
            ProviderWebSessionClearPolicy.expiringCookieHeaders(
                cookieHeader = cookieManager.getCookie(url),
                url = url
            ).map { header -> url to header }
        }
        cookieHeaders.forEach { (url, header) ->
            val completed = withTimeoutOrNull(COOKIE_CLEAR_CALLBACK_TIMEOUT_MS) {
                suspendCancellableCoroutine<Unit> { continuation ->
                    runCatching {
                        cookieManager.setCookie(
                            url,
                            header,
                            ValueCallback<Boolean> {
                                if (continuation.isActive) continuation.resume(Unit)
                            }
                        )
                    }.onFailure {
                        if (continuation.isActive) continuation.resume(Unit)
                    }
                }
            }
            if (completed == null) {
                cookieManager.setCookie(url, header)
            }
        }
        cookieManager.flush()
    }

    private fun clearProviderWebStorageOrigins(
        webStorage: WebStorage,
        providerId: ProviderId,
        retainedProviders: Collection<ProviderId> = emptyList()
    ) {
        ProviderWebSessionClearPolicy.storageOrigins(providerId, retainedProviders).forEach { origin ->
            webStorage.deleteOrigin(origin)
        }
    }

    @SuppressLint("SetJavaScriptEnabled")
    private suspend fun clearProviderBrowserStorageWithWebView(context: Context, providerId: ProviderId) {
        ProviderWebSessionClearPolicy.browserStorageCleanupUrls(providerId).forEach { url ->
            withTimeoutOrNull(BROWSER_STORAGE_CLEAR_TIMEOUT_MS) {
                suspendCancellableCoroutine<Unit> { continuation ->
                    var cleanupView: WebView? = null
                    fun finish() {
                        val view = cleanupView
                        cleanupView = null
                        runCatching {
                            view?.stopLoading()
                            view?.destroy()
                        }
                        if (continuation.isActive) continuation.resume(Unit)
                    }
                    cleanupView = WebView(context).apply {
                        visibility = View.GONE
                        settings.javaScriptEnabled = true
                        settings.domStorageEnabled = true
                        settings.databaseEnabled = true
                        webViewClient = object : WebViewClient() {
                            override fun onPageFinished(view: WebView, finishedUrl: String) {
                                view.evaluateJavascript(browserStorageCleanupScript()) {
                                    finish()
                                }
                            }

                            override fun onReceivedError(
                                view: WebView,
                                request: WebResourceRequest,
                                error: WebResourceError
                            ) {
                                if (request.isForMainFrame) finish()
                            }
                        }
                    }
                    continuation.invokeOnCancellation {
                        runCatching {
                            cleanupView?.stopLoading()
                            cleanupView?.destroy()
                        }
                        cleanupView = null
                    }
                    cleanupView?.loadUrl(url)
                }
            }
        }
    }

    internal fun browserStorageCleanupScript(): String {
        return """
            (function(){
              function resolve(value) {
                return Promise.resolve(value).catch(function(){ return false; });
              }
              function deleteDatabase(name) {
                return new Promise(function(done) {
                  try {
                    var request = indexedDB.deleteDatabase(name);
                    request.onsuccess = function(){ done(true); };
                    request.onerror = function(){ done(false); };
                    request.onblocked = function(){ done(false); };
                  } catch (e) {
                    done(false);
                  }
                });
              }
              var tasks = [];
              try { localStorage.clear(); } catch (e) {}
              try { sessionStorage.clear(); } catch (e) {}
              try {
                if (window.indexedDB && indexedDB.databases) {
                  tasks.push(resolve(indexedDB.databases()).then(function(databases) {
                    return Promise.all((databases || []).map(function(database) {
                      return database && database.name ? deleteDatabase(database.name) : Promise.resolve(false);
                    }));
                  }));
                }
              } catch (e) {}
              try {
                if (window.caches) {
                  tasks.push(resolve(caches.keys()).then(function(keys) {
                    return Promise.all((keys || []).map(function(key) { return caches.delete(key); }));
                  }));
                }
              } catch (e) {}
              try {
                if (navigator.serviceWorker) {
                  tasks.push(resolve(navigator.serviceWorker.getRegistrations()).then(function(registrations) {
                    return Promise.all((registrations || []).map(function(registration) {
                      return registration.unregister();
                    }));
                  }));
                }
              } catch (e) {}
              return Promise.all(tasks).then(function(){ return true; }).catch(function(){ return false; });
            })();
        """.trimIndent()
    }

    private const val COOKIE_CLEAR_CALLBACK_TIMEOUT_MS = 750L
    private const val BROWSER_STORAGE_CLEAR_TIMEOUT_MS = 2_000L
}
