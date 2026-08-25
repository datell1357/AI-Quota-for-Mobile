package com.aiquota.mobile.accounts

import android.util.Log
import android.webkit.WebResourceRequest
import android.webkit.WebResourceResponse
import android.webkit.WebView
import android.webkit.WebViewClient
import androidx.test.core.app.ActivityScenario
import androidx.test.ext.junit.runners.AndroidJUnit4
import androidx.webkit.WebViewAssetLoader
import androidx.webkit.WebViewFeature
import com.aiquota.mobile.MainActivity
import java.io.ByteArrayInputStream
import java.util.concurrent.CountDownLatch
import java.util.concurrent.TimeUnit
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test
import org.junit.runner.RunWith

@RunWith(AndroidJUnit4::class)
class SyntheticWebViewProfileFixtureTest {
    @Test
    fun syntheticHttpsPageExposesDeterministicSentinel() {
        launchFixture().use { scenario ->
            lateinit var fixture: SyntheticWebViewProfileFixture
            scenario.onActivity {
                fixture = SyntheticWebViewProfileFixture(it)
                it.setContentView(fixture.webView)
                fixture.load(SENTINEL_PATH)
            }

            assertEquals(SENTINEL, fixture.awaitSentinel())
            scenario.onActivity { fixture.destroy() }
        }
    }

    @Test
    fun missingSyntheticRouteReturnsDeterministicNotFound() {
        launchFixture().use { scenario ->
            lateinit var fixture: SyntheticWebViewProfileFixture
            scenario.onActivity {
                fixture = SyntheticWebViewProfileFixture(it)
                it.setContentView(fixture.webView)
                fixture.load(MISSING_PATH)
            }

            assertEquals("404:Not Found:$MISSING_URL", fixture.awaitRouteError())
            scenario.onActivity { fixture.destroy() }
        }
    }

    private fun launchFixture(): ActivityScenario<MainActivity> =
        ActivityScenario.launch(MainActivity::class.java)

    private companion object {
        const val SENTINEL = "WEBVIEW_PROFILE_FIXTURE_READY"
        const val SENTINEL_PATH = "sentinel.html"
        const val MISSING_PATH = "missing-profile.html"
        const val MISSING_URL = "https://appassets.androidplatform.net/profiles/$MISSING_PATH"
    }
}

class SyntheticWebViewProfileFixture(activity: MainActivity) {
    private val sentinelObserved = CountDownLatch(1)
    private val routeErrorObserved = CountDownLatch(1)
    private var sentinel: String? = null
    private var routeError: String? = null
    val webView: WebView

    init {
        Log.i(TAG, "MULTI_PROFILE_SUPPORTED=${WebViewFeature.isFeatureSupported(WebViewFeature.MULTI_PROFILE)}")
        val assetLoader = WebViewAssetLoader.Builder()
            .addPathHandler("/profiles/") { path -> syntheticResponse(path) }
            .build()
        webView = WebView(activity).apply {
            settings.javaScriptEnabled = true
            webViewClient = object : WebViewClient() {
                override fun shouldInterceptRequest(
                    view: WebView,
                    request: WebResourceRequest,
                ): WebResourceResponse? = assetLoader.shouldInterceptRequest(request.url)

                override fun onPageFinished(view: WebView, url: String) {
                    if (url.endsWith("/$SENTINEL_PATH")) {
                        view.evaluateJavascript("window.__PROFILE_SENTINEL__") { encoded ->
                            sentinel = encoded.removeSurrounding("\"")
                            Log.i(TAG, "SENTINEL_OBSERVED=$sentinel")
                            sentinelObserved.countDown()
                        }
                    }
                }

                override fun onReceivedHttpError(
                    view: WebView,
                    request: WebResourceRequest,
                    errorResponse: WebResourceResponse,
                ) {
                    if (request.isForMainFrame) {
                        routeError = "${errorResponse.statusCode}:${errorResponse.reasonPhrase}:${request.url}"
                        Log.i(TAG, "NOT_FOUND_OBSERVED=$routeError")
                        routeErrorObserved.countDown()
                    }
                }
            }
        }
    }

    fun load(path: String) {
        webView.loadUrl("https://appassets.androidplatform.net/profiles/$path")
    }

    fun awaitSentinel(): String? {
        assertTrue("sentinel callback timed out", sentinelObserved.await(TIMEOUT_SECONDS, TimeUnit.SECONDS))
        return sentinel
    }

    fun awaitRouteError(): String? {
        assertTrue("not-found callback timed out", routeErrorObserved.await(TIMEOUT_SECONDS, TimeUnit.SECONDS))
        return routeError
    }

    fun destroy() {
        webView.destroy()
    }

    private fun syntheticResponse(path: String): WebResourceResponse {
        if (path == SENTINEL_PATH) {
            val html = """
                <!doctype html>
                <html><body><div id="profile-fixture">synthetic</div>
                <script>window.__PROFILE_SENTINEL__ = '$SENTINEL';</script>
                </body></html>
            """.trimIndent()
            return WebResourceResponse(
                "text/html",
                "UTF-8",
                ByteArrayInputStream(html.toByteArray()),
            )
        }
        return WebResourceResponse(
            "text/plain",
            "UTF-8",
            404,
            "Not Found",
            emptyMap(),
            ByteArrayInputStream("SYNTHETIC_ROUTE_NOT_FOUND:$path".toByteArray()),
        )
    }

    private companion object {
        const val TAG = "ProfileFixtureTest"
        const val SENTINEL = "WEBVIEW_PROFILE_FIXTURE_READY"
        const val SENTINEL_PATH = "sentinel.html"
        const val TIMEOUT_SECONDS = 10L
    }
}
