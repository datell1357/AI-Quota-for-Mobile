package com.aiquota.mobile.providers

import android.app.Instrumentation
import android.content.Context
import android.content.Intent
import android.os.Handler
import android.os.Looper
import android.os.Message
import android.os.SystemClock
import android.webkit.CookieManager
import android.webkit.WebResourceRequest
import android.webkit.WebResourceResponse
import android.webkit.WebView
import android.webkit.WebViewClient
import androidx.lifecycle.Lifecycle
import androidx.test.core.app.ActivityScenario
import androidx.test.ext.junit.runners.AndroidJUnit4
import androidx.test.platform.app.InstrumentationRegistry
import androidx.webkit.ProfileStore
import androidx.webkit.WebViewAssetLoader
import androidx.webkit.WebViewCompat
import androidx.webkit.WebViewFeature
import com.aiquota.mobile.BuildConfig
import com.aiquota.mobile.accounts.AccountAuthState
import com.aiquota.mobile.accounts.AccountDeletionState
import com.aiquota.mobile.accounts.AccountGeneration
import com.aiquota.mobile.accounts.AccountKey
import com.aiquota.mobile.accounts.AccountLoginSessionBinding
import com.aiquota.mobile.accounts.AccountRecord
import com.aiquota.mobile.accounts.AccountState
import com.aiquota.mobile.accounts.AndroidNamedProfileLifecycleStore
import com.aiquota.mobile.accounts.AuthorityAccountSeed
import com.aiquota.mobile.accounts.MainProcessAccountAuthority
import com.aiquota.mobile.accounts.NamedProfileLifecycleManager
import com.aiquota.mobile.accounts.ProviderAccountId
import com.aiquota.mobile.accounts.SessionRevision
import com.aiquota.mobile.accounts.WebProfileName
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.local.ProviderUsageSnapshot
import java.io.ByteArrayInputStream
import java.util.concurrent.CountDownLatch
import java.util.concurrent.TimeUnit
import java.util.concurrent.atomic.AtomicBoolean
import java.util.concurrent.atomic.AtomicReference
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Assume.assumeTrue
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith

@RunWith(AndroidJUnit4::class)
class ExactWebLoginActivityInstrumentationTest {
    private val instrumentation = InstrumentationRegistry.getInstrumentation()
    private val context: Context get() = instrumentation.targetContext

    @Before
    fun resetAuthorityDatabase() {
        context.deleteDatabase(com.aiquota.mobile.accounts.AccountAuthorityDatabase.DEFAULT_DATABASE_NAME)
    }

    @Test
    fun productionActivityMainPopupAndNativeRequestUseOnlyBProfile() {
        supported()
        val fixture = fixture(1)
        fixture.seedAuthority()
        fixture.seedProfiles(createB = true)
        fixture.seedNextBContext()
        fixture.setCookies()
        val pages = CountDownLatch(2)
        val observed = arrayOfNulls<String>(2)
        val popupCreated = CountDownLatch(1)

        ActivityScenario.launch<WebLoginActivity>(fixture.intent()).use { scenario ->
            scenario.onActivity { activity ->
                val headers = activity.exactNativeRequestHeadersForTest(CODEX_USAGE_URL)
                assertEquals("Bearer B", headers["Authorization"])
                assertTrue(headers["Cookie"].orEmpty().contains("profile_session=B"))
                assertFalse(headers["Cookie"].orEmpty().contains("default_session=A"))
                val main = activity.mainWebViewForTest()
                val callback = requireNotNull(main.webChromeClient)
                val result = Message.obtain(Handler(Looper.getMainLooper()) {
                    popupCreated.countDown()
                    true
                }).apply {
                    obj = main.WebViewTransport()
                }
                assertTrue(callback.onCreateWindow(main, false, true, result))
            }
            assertTrue(popupCreated.await(TIMEOUT_SECONDS, TimeUnit.SECONDS))
            scenario.onActivity { activity ->
                val popup = activity.popupWebViewsForTest().single()
                val exactProfileName = requireNotNull(activity.exactProfileNameForTest())
                assertEquals(exactProfileName, WebViewCompat.getProfile(activity.mainWebViewForTest()).name)
                assertEquals(exactProfileName, WebViewCompat.getProfile(popup).name)
                assertEquals(exactProfileName, activity.exactPopupProfileNameForTest(popup))
                attach(activity.mainWebViewForTest(), fixture, 0, observed, pages)
                attach(popup, fixture, 1, observed, pages)
                activity.mainWebViewForTest().loadUrl(SYNTHETIC_URL)
                popup.loadUrl(SYNTHETIC_URL)
            }
            assertTrue(pages.await(TIMEOUT_SECONDS, TimeUnit.SECONDS))
            assertEquals(listOf("B", "B"), observed.toList())
            assertTrue(CookieManager.getInstance().getCookie(SYNTHETIC_URL).orEmpty().contains(fixture.globalCookie))
        }
    }

    @Test
    fun productionNonNamedExactLoginUsesDefaultCookieSourceWithoutNamedLease() {
        supportedNonNamed()
        val accountId = ProviderAccountId(ProviderId.OPENCODE, AccountKey.reservedDefault())
        MainProcessAccountAuthority.open(context).use { authority ->
            authority.register(
                AuthorityAccountSeed(
                    AccountRecord(
                        accountId,
                        AccountState.ACTIVE,
                        AccountAuthState.AUTHENTICATED,
                        AccountDeletionState.NONE,
                        AccountGeneration.of(1),
                        SessionRevision.of(1),
                    ),
                    ProviderUsageSnapshot.disconnected(ProviderId.OPENCODE),
                )
            )
        }
        val defaultCookie = "opencode_default_session=default"
        setCookie(CookieManager.getInstance(), OPENCODE_USAGE_URL, defaultCookie)

        ActivityScenario.launch<WebLoginActivity>(
            WebLoginActivity.createIntent(context, accountId, IDLE_URL)
        ).use { scenario ->
            scenario.onActivity { activity ->
                assertEquals(accountId, requireNotNull(activity.exactBindingForTest()).accountId)
                assertNull(activity.exactProfileNameForTest())
                assertTrue(
                    activity.exactNativeRequestHeadersForTest(OPENCODE_USAGE_URL)["Cookie"]
                        .orEmpty()
                        .contains(defaultCookie),
                )
            }
        }
    }

    @Test
    fun productionActivityRecreationRetainsExactBindingAndRejectsStaleCompletion() {
        supported()
        val fixture = fixture(2)
        fixture.seedAuthority()
        fixture.seedProfiles(createB = true)
        fixture.seedNextBContext()
        lateinit var before: AccountLoginSessionBinding
        val profilesBefore = fixture.profileNames()

        ActivityScenario.launch<WebLoginActivity>(fixture.intent()).use { scenario ->
            scenario.onActivity { activity ->
                before = requireNotNull(activity.exactBindingForTest())
            }
            scenario.recreate()
            scenario.onActivity { activity ->
                assertEquals(before, activity.exactBindingForTest())
                assertEquals(profilesBefore, ProfileStore.getInstance().allProfileNames.toSet())
            }

            lateinit var newer: AccountLoginSessionBinding
            MainProcessAccountAuthority.open(context).use { authority ->
                newer = requireNotNull(authority.beginAuthentication(fixture.b))
            }
            scenario.onActivity { activity ->
                invokeSuccessfulCompletion(activity)
            }
            instrumentation.waitForIdleSync()

            assertTrue(CodexNativeAuthContextStore(context).restoreExact(newer).isEmpty())
            assertEquals(AccountAuthState.AUTHENTICATING, fixture.account(fixture.b).authState)
            assertEquals(AccountAuthState.AUTHENTICATED, fixture.account(fixture.a).authState)
            assertEquals(AccountAuthState.AUTHENTICATED, fixture.account(fixture.default).authState)
        }
    }

    @Test
    fun productionActivityPauseResumeAndBackLeaveNoPartialBContext() {
        supported()
        val fixture = fixture(3)
        fixture.seedAuthority()
        fixture.seedProfiles(createB = true)
        fixture.seedAContext()
        lateinit var binding: AccountLoginSessionBinding

        ActivityScenario.launch<WebLoginActivity>(fixture.intent()).use { scenario ->
            scenario.onActivity { binding = requireNotNull(it.exactBindingForTest()) }
            scenario.moveToState(Lifecycle.State.CREATED)
            scenario.moveToState(Lifecycle.State.RESUMED)
            scenario.onActivity(WebLoginActivity::onBackPressed)
            instrumentation.waitForIdleSync()
        }

        assertTrue(CodexNativeAuthContextStore(context).restoreExact(binding).isEmpty())
        assertFalse(CodexNativeAuthContextStore(context).restoreExact(fixture.aBinding).isEmpty())
        assertEquals(AccountAuthState.REAUTH_REQUIRED, fixture.account(fixture.b).authState)
        assertEquals(AccountAuthState.AUTHENTICATED, fixture.account(fixture.a).authState)
        assertEquals(AccountAuthState.AUTHENTICATED, fixture.account(fixture.default).authState)
    }

    @Test
    fun productionExactLogoutClearsOnlyBProfileContextAndAuthority() {
        supported()
        val fixture = fixture(4)
        fixture.seedAuthority()
        fixture.seedProfiles(createB = true)
        fixture.seedAContext()
        fixture.seedNextBContext()
        lateinit var bBinding: AccountLoginSessionBinding
        val pageReady = CountDownLatch(1)
        val observed = arrayOfNulls<String>(1)

        ActivityScenario.launch<WebLoginActivity>(fixture.intent()).use { scenario ->
            scenario.onActivity { activity ->
                bBinding = requireNotNull(activity.exactBindingForTest())
                attach(activity.mainWebViewForTest(), fixture, 0, observed, pageReady)
                activity.mainWebViewForTest().loadUrl(SYNTHETIC_URL)
            }
            assertTrue(pageReady.await(TIMEOUT_SECONDS, TimeUnit.SECONDS))
            scenario.onActivity { activity ->
                invokeSuccessfulCompletion(activity)
            }
            instrumentation.waitForIdleSync()
        }
        instrumentation.waitForIdleSync()
        assertEquals(AccountAuthState.AUTHENTICATED, fixture.account(fixture.b).authState)

        val completed = CountDownLatch(1)
        val cleared = AtomicBoolean(false)
        val accepted = AtomicBoolean(false)
        val composition = AtomicReference<AndroidExactAccountLoginComposition>()
        val deadline = SystemClock.uptimeMillis() + TimeUnit.SECONDS.toMillis(TIMEOUT_SECONDS)
        while (!accepted.get() && SystemClock.uptimeMillis() < deadline) {
            instrumentation.runOnMainSync {
                val opened = composition.get() ?: AndroidExactAccountLoginComposition.open(context).also(composition::set)
                accepted.set(opened.coordinator.logout(fixture.b) { result ->
                    cleared.set(result)
                    completed.countDown()
                })
            }
            if (!accepted.get()) SystemClock.sleep(50L)
        }
        assertTrue(accepted.get())
        assertTrue(completed.await(TIMEOUT_SECONDS, TimeUnit.SECONDS))
        instrumentation.runOnMainSync { composition.get().close() }

        assertTrue(cleared.get())
        assertTrue(CodexNativeAuthContextStore(context).restoreExact(bBinding).isEmpty())
        assertFalse(CodexNativeAuthContextStore(context).restoreExact(fixture.aBinding).isEmpty())
        assertEquals(AccountAuthState.REAUTH_REQUIRED, fixture.account(fixture.b).authState)
        assertEquals(AccountAuthState.AUTHENTICATED, fixture.account(fixture.a).authState)
        assertEquals(AccountAuthState.AUTHENTICATED, fixture.account(fixture.default).authState)
    }

    @Test
    fun productionActivityMissingBProfileReauthsOnlyBWithoutDefaultOrAOpen() {
        supported()
        val fixture = fixture(5)
        fixture.seedAuthority()
        fixture.seedProfiles(createB = false)
        val profilesBefore = fixture.profileNames()
        val launched = instrumentation.startActivitySync(
            fixture.intent().addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
        )
        instrumentation.waitForIdleSync()

        assertNotNull(launched)
        assertEquals(AccountAuthState.REAUTH_REQUIRED, fixture.account(fixture.b).authState)
        assertEquals(AccountAuthState.AUTHENTICATED, fixture.account(fixture.a).authState)
        assertEquals(AccountAuthState.AUTHENTICATED, fixture.account(fixture.default).authState)
        assertEquals(profilesBefore, fixture.profileNames())
    }

    private fun supported() {
        assumeTrue(BuildConfig.MULTI_ACCOUNT_ENABLED)
        assumeTrue(WebViewFeature.isFeatureSupported(WebViewFeature.MULTI_PROFILE))
        assumeTrue(WebViewFeature.isFeatureSupported(WebViewFeature.DELETE_BROWSING_DATA))
    }

    private fun supportedNonNamed() {
        assumeTrue(BuildConfig.MULTI_ACCOUNT_ENABLED)
    }

    private fun setCookie(manager: CookieManager, url: String, value: String) {
        val completed = CountDownLatch(1)
        instrumentation.runOnMainSync {
            manager.setCookie(url, "$value; Path=/") { completed.countDown() }
        }
        assertTrue(completed.await(TIMEOUT_SECONDS, TimeUnit.SECONDS))
    }

    private fun attach(
        webView: WebView,
        fixture: ProductionFixture,
        index: Int,
        observed: Array<String?>,
        pages: CountDownLatch,
    ) {
        val loader = WebViewAssetLoader.Builder().addPathHandler("/task14-correction/") {
            WebResourceResponse("text/html", "UTF-8", ByteArrayInputStream(HTML.toByteArray()))
        }.build()
        webView.webViewClient = object : WebViewClient() {
            override fun shouldInterceptRequest(view: WebView, request: WebResourceRequest) =
                loader.shouldInterceptRequest(request.url)

            override fun onPageFinished(view: WebView, url: String) {
                if (url != SYNTHETIC_URL) return
                view.evaluateJavascript(
                    "document.cookie.match(/${fixture.cookieName}=([^;]+)/)?.[1]||''"
                ) { value ->
                    observed[index] = value.removeSurrounding("\"")
                    pages.countDown()
                }
            }
        }
    }

    private fun invokeSuccessfulCompletion(activity: WebLoginActivity) {
        WebLoginActivity::class.java.getDeclaredMethod(
            "finishSuccessfulLogin",
            String::class.java,
            String::class.java,
        ).also { method ->
            method.isAccessible = true
            method.invoke(activity, null, "task14-synthetic")
        }
    }

    private fun fixture(case: Int) = ProductionFixture(context, instrumentation, case)

    private class ProductionFixture(
        private val context: Context,
        private val instrumentation: Instrumentation,
        case: Int,
    ) {
        val default = ProviderAccountId(ProviderId.CODEX, AccountKey.reservedDefault())
        val a = account(case * 10 + 1)
        val b = account(case * 10 + 2)
        val aBinding = AccountLoginSessionBinding(a, AccountGeneration.of(1), SessionRevision.of(1))
        val nextBBinding = AccountLoginSessionBinding(b, AccountGeneration.of(2), SessionRevision.of(2))
        val cookieName = "task14_case_$case"
        val globalCookie = "$cookieName=A"
        val profileCookie = "$cookieName=B"
        private var bProfileName: WebProfileName? = null

        fun seedAuthority() {
            MainProcessAccountAuthority.open(context).use { authority ->
                listOf(default, a, b).forEach { id ->
                    authority.register(
                        AuthorityAccountSeed(
                            AccountRecord(
                                id,
                                AccountState.ACTIVE,
                                AccountAuthState.AUTHENTICATED,
                                AccountDeletionState.NONE,
                                AccountGeneration.of(1),
                                SessionRevision.of(1),
                            ),
                            ProviderUsageSnapshot.disconnected(id.providerId),
                        )
                    )
                }
            }
        }

        fun seedProfiles(createB: Boolean) {
            instrumentation.runOnMainSync {
                AndroidNamedProfileLifecycleStore(context).use { store ->
                    val manager = NamedProfileLifecycleManager(
                        store,
                        com.aiquota.mobile.accounts.AndroidXNamedProfilePlatform(context),
                    )
                    val aRow = manager.ensureBinding(a)
                    val bRow = manager.ensureBinding(b)
                    ProfileStore.getInstance().getOrCreateProfile(aRow.profileName.storageValue())
                    bProfileName = bRow.profileName
                    if (createB) {
                        ProfileStore.getInstance().getOrCreateProfile(bRow.profileName.storageValue())
                    }
                }
            }
        }

        fun seedAContext() {
            assertTrue(
                CodexNativeAuthContextStore(context).saveExact(
                    aBinding,
                    mapOf("*" to mapOf("Authorization" to "Bearer A")),
                )
            )
        }

        fun seedNextBContext() {
            assertTrue(
                CodexNativeAuthContextStore(context).saveExact(
                    nextBBinding,
                    mapOf("*" to mapOf("Authorization" to "Bearer B")),
                )
            )
        }

        fun setCookies() {
            setCookie(CookieManager.getInstance(), SYNTHETIC_URL, globalCookie)
            setCookie(CookieManager.getInstance(), CODEX_USAGE_URL, "default_session=A")
            val profileName = requireNotNull(bProfileName)
            val profile = requireNotNull(ProfileStore.getInstance().getProfile(profileName.storageValue()))
            setCookie(profile.cookieManager, SYNTHETIC_URL, profileCookie)
            setCookie(profile.cookieManager, CODEX_USAGE_URL, "profile_session=B")
        }

        private fun setCookie(manager: CookieManager, url: String, value: String) {
            val completed = CountDownLatch(1)
            instrumentation.runOnMainSync {
                manager.setCookie(url, "$value; Path=/") { completed.countDown() }
            }
            assertTrue(completed.await(TIMEOUT_SECONDS, TimeUnit.SECONDS))
        }

        fun intent() = WebLoginActivity.createIntent(context, b, IDLE_URL)

        fun profileNames(): Set<String> {
            val names = AtomicReference<Set<String>>()
            instrumentation.runOnMainSync {
                names.set(ProfileStore.getInstance().allProfileNames.toSet())
            }
            return names.get()
        }

        fun account(id: ProviderAccountId): AccountRecord =
            MainProcessAccountAuthority.open(context).use { authority ->
                requireNotNull(authority.accountUsageRecord(id)).account
            }

        private fun account(value: Int) = ProviderAccountId(
            ProviderId.CODEX,
            AccountKey.parseOpaque("acct_${value.toString(16).padStart(32, '0')}"),
        )
    }

    private companion object {
        const val TIMEOUT_SECONDS = 20L
        const val SYNTHETIC_URL = "https://appassets.androidplatform.net/task14-correction/page.html"
        const val CODEX_USAGE_URL = "https://chatgpt.com/backend-api/wham/usage"
        const val OPENCODE_USAGE_URL = "https://opencode.ai/workspace/wrk_123/go"
        const val IDLE_URL = "data:text/html,<html><body>task14-idle</body></html>"
        const val HTML = "<!doctype html>task14"
    }
}
