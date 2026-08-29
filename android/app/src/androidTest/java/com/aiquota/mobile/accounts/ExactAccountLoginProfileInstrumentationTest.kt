package com.aiquota.mobile.accounts

import android.webkit.WebResourceRequest
import android.webkit.WebResourceResponse
import android.webkit.WebView
import android.webkit.WebViewClient
import androidx.test.core.app.ActivityScenario
import androidx.test.ext.junit.runners.AndroidJUnit4
import androidx.webkit.ProfileStore
import androidx.webkit.WebViewAssetLoader
import androidx.webkit.WebViewFeature
import com.aiquota.mobile.MainActivity
import com.aiquota.mobile.local.ProviderId
import java.io.ByteArrayInputStream
import java.util.concurrent.CountDownLatch
import java.util.concurrent.TimeUnit
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Assume.assumeTrue
import org.junit.Test
import org.junit.runner.RunWith

@RunWith(AndroidJUnit4::class)
class ExactAccountLoginProfileInstrumentationTest {
    @Test
    fun explicitBConnectAndPopupUseOnlyBProfileOnSyntheticOrigin() {
        assumeTrue(WebViewFeature.isFeatureSupported(WebViewFeature.MULTI_PROFILE))
        assumeTrue(WebViewFeature.isFeatureSupported(WebViewFeature.DELETE_BROWSING_DATA))
        val database = "task14-profile-${System.nanoTime()}.db"
        val observed = arrayOfNulls<String>(3)
        val pages = CountDownLatch(3)
        val closes = CountDownLatch(2)
        val closeResults = arrayOfNulls<LeaseCloseResult>(2)
        val cookieA = CountDownLatch(1)
        val cookieB = CountDownLatch(1)
        lateinit var store: AndroidNamedProfileLifecycleStore
        lateinit var aLease: NamedProfileLease
        lateinit var bLease: NamedProfileLease
        lateinit var bPopup: WebView
        lateinit var profileNames: Set<String>

        ActivityScenario.launch(MainActivity::class.java).use { scenario ->
            scenario.onActivity { activity ->
                store = AndroidNamedProfileLifecycleStore(activity, database)
                val manager = NamedProfileLifecycleManager(store, AndroidXNamedProfilePlatform(activity))
                assertTrue(store.readAll().isEmpty())
                val profilesBefore = ProfileStore.getInstance().allProfileNames.toSet()
                aLease = (manager.acquireForExplicitConnect(A) as LeaseAcquireResult.Acquired).lease
                bLease = (manager.acquireForExplicitConnect(B) as LeaseAcquireResult.Acquired).lease
                profileNames = setOf(aLease.profileName.storageValue(), bLease.profileName.storageValue())
                assertEquals(2, profileNames.size)
                assertEquals(profileNames, ProfileStore.getInstance().allProfileNames.toSet() - profilesBefore)
                assertFalse(aLease.profileName == bLease.profileName)
                bPopup = bLease.createAndroidPopupWebView(activity)

                aLease.requireAndroidCookieManager().setCookie(URL, "task14=A") { cookieA.countDown() }
                bLease.requireAndroidCookieManager().setCookie(URL, "task14=B") { cookieB.countDown() }
                attach(aLease.requireAndroidWebView(), 0, observed, pages)
                attach(bLease.requireAndroidWebView(), 1, observed, pages)
                attach(bPopup, 2, observed, pages)
            }
            assertTrue(cookieA.await(TIMEOUT, TimeUnit.SECONDS))
            assertTrue(cookieB.await(TIMEOUT, TimeUnit.SECONDS))
            scenario.onActivity {
                aLease.requireAndroidWebView().loadUrl(URL)
                bLease.requireAndroidWebView().loadUrl(URL)
                bPopup.loadUrl(URL)
            }

            assertTrue(pages.await(TIMEOUT, TimeUnit.SECONDS))
            assertEquals(listOf("A", "B", "B"), observed.toList())

            scenario.onActivity {
                bPopup.destroy()
                aLease.closeAcknowledged { result ->
                    closeResults[0] = result
                    closes.countDown()
                }
                bLease.closeAcknowledged { result ->
                    closeResults[1] = result
                    closes.countDown()
                }
            }
            assertTrue(closes.await(TIMEOUT, TimeUnit.SECONDS))
            assertEquals(listOf(LeaseCloseResult.Closed, LeaseCloseResult.Closed), closeResults.toList())
            scenario.onActivity { store.close() }
        }
    }

    private fun attach(
        webView: WebView,
        index: Int,
        observed: Array<String?>,
        pages: CountDownLatch,
    ) {
        val loader = WebViewAssetLoader.Builder().addPathHandler("/task14/") {
            WebResourceResponse("text/html", "UTF-8", ByteArrayInputStream(HTML.toByteArray()))
        }.build()
        webView.settings.javaScriptEnabled = true
        webView.webViewClient = object : WebViewClient() {
            override fun shouldInterceptRequest(view: WebView, request: WebResourceRequest) =
                loader.shouldInterceptRequest(request.url)

            override fun onPageFinished(view: WebView, url: String) {
                if (url != URL) return
                view.evaluateJavascript("document.cookie.match(/task14=([^;]+)/)?.[1]||''") { value ->
                    observed[index] = value.removeSurrounding("\"")
                    pages.countDown()
                }
            }
        }
    }

    private companion object {
        val A = id(1)
        val B = id(2)
        const val URL = "https://appassets.androidplatform.net/task14/page.html"
        const val TIMEOUT = 20L
        const val HTML = "<!doctype html><script>window.__AIQ_PROFILE_PERSISTENCE_READY__=true</script>task14"

        fun id(value: Int) = ProviderAccountId(
            ProviderId.CODEX,
            AccountKey.parseOpaque("acct_${value.toString(16).padStart(32, '0')}"),
        )
    }
}
