package com.aiquota.mobile.accounts

import android.webkit.WebView
import android.webkit.WebViewClient
import androidx.test.core.app.ActivityScenario
import androidx.test.ext.junit.runners.AndroidJUnit4
import androidx.webkit.WebViewFeature
import com.aiquota.mobile.MainActivity
import com.aiquota.mobile.local.ProviderId
import java.util.concurrent.CountDownLatch
import java.util.concurrent.TimeUnit
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Assume.assumeTrue
import org.junit.Test
import org.junit.runner.RunWith

/**
 * Closing a login lease must never strand the user on the neutral page. Providers such as
 * claude.ai send `Content-Security-Policy: connect-src 'self'`, so nothing the loaded page could
 * report back may be required to finish the close.
 */
@RunWith(AndroidJUnit4::class)
class NamedProfileQuiesceInstrumentationTest {
    @Test
    fun leaseClosesQuicklyForAProviderPageThatBlocksCrossOriginReporting() {
        assumeTrue(WebViewFeature.isFeatureSupported(WebViewFeature.MULTI_PROFILE))
        assumeTrue(WebViewFeature.isFeatureSupported(WebViewFeature.DELETE_BROWSING_DATA))
        val database = "quiesce-${System.nanoTime()}.db"
        val loaded = CountDownLatch(1)
        val closed = CountDownLatch(1)
        var closeResult: LeaseCloseResult? = null
        var elapsedMs = 0L
        lateinit var store: AndroidNamedProfileLifecycleStore
        lateinit var lease: NamedProfileLease

        ActivityScenario.launch(MainActivity::class.java).use { scenario ->
            scenario.onActivity { activity ->
                store = AndroidNamedProfileLifecycleStore(activity, database)
                val manager = NamedProfileLifecycleManager(store, AndroidXNamedProfilePlatform(activity))
                lease = (manager.acquireForExplicitConnect(ACCOUNT) as LeaseAcquireResult.Acquired).lease
                val webView = lease.requireAndroidWebView()
                webView.settings.javaScriptEnabled = true
                webView.webViewClient = object : WebViewClient() {
                    override fun onPageFinished(view: WebView, url: String) {
                        if (url.startsWith("data:")) loaded.countDown()
                    }
                }
                activity.setContentView(webView)
                webView.loadData(CSP_PAGE, "text/html", null)
            }
            assertTrue("provider page must load", loaded.await(20, TimeUnit.SECONDS))

            scenario.onActivity {
                val startedAt = System.currentTimeMillis()
                lease.closeAcknowledged { result ->
                    elapsedMs = System.currentTimeMillis() - startedAt
                    closeResult = result
                    closed.countDown()
                }
            }
            assertTrue("close must call back", closed.await(20, TimeUnit.SECONDS))
            scenario.onActivity { store.close() }
        }

        assertEquals(LeaseCloseResult.Closed, closeResult)
        assertTrue("close took ${elapsedMs}ms; the user waits on a blank page for that long", elapsedMs < 4_000)
    }

    private companion object {
        val ACCOUNT = ProviderAccountId(
            ProviderId.CLAUDE,
            AccountKey.parseOpaque("acct_" + "b".repeat(32)),
        )

        /** Mirrors the provider CSP that blocks any cross-origin beacon or fetch. */
        const val CSP_PAGE =
            "<!doctype html><meta http-equiv=\"Content-Security-Policy\" " +
                "content=\"default-src 'none'; script-src 'unsafe-inline'; connect-src 'self'\">provider"
    }
}
