package com.aiquota.mobile.providers

import com.aiquota.mobile.local.ProviderId
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class GrokLoginCompletionTest {
    @Test
    fun weeklyCreditsRequestStartsLoginCollectionWithoutTheLegacyRateLimitsRequest() {
        assertTrue(ProviderWebCollectorScripts.shouldRunCollectorOnResource(
            ProviderId.GROK, GrokWeeklyCreditsFetcher.URL_PATH))
        assertTrue(ProviderWebCollectorScripts.shouldRunCollectorOnResource(
            ProviderId.GROK, GrokWeeklyCreditsFetcher.URL_PATH + "?v=1"))
    }

    @Test
    fun legacyRateLimitsRequestStillStartsCollection() {
        assertTrue(ProviderWebCollectorScripts.shouldRunCollectorOnResource(
            ProviderId.GROK, "https://grok.com/rest/rate-limits"))
    }

    @Test
    fun unrelatedOriginsAndResourcesDoNotStartLoginCollection() {
        listOf("https://grok.com.evil.test/grok_api_v2.GrokBuildBilling/GetGrokCreditsConfig",
            "https://auth.grok.com/grok_api_v2.GrokBuildBilling/GetGrokCreditsConfig",
            "http://grok.com/grok_api_v2.GrokBuildBilling/GetGrokCreditsConfig",
            "https://grok.com/rest/conversations").forEach { url ->
            assertFalse(url, ProviderWebCollectorScripts.shouldRunCollectorOnResource(ProviderId.GROK, url))
        }
    }

    @Test
    fun authenticatedChatStartsCollectionEvenWhenItMakesNoUsageRequest() {
        listOf("https://grok.com/", "https://www.grok.com", "https://grok.com/c/conversation",
            "https://grok.com/chat", "https://grok.com/chat/conversation?from=login").forEach { url ->
            assertTrue(url, ProviderLoginStrategy.shouldStartGrokNativeCollection(url, mapOf("sso" to "test-session")))
            assertTrue(url, ProviderLoginStrategy.shouldStartGrokNativeCollection(url, mapOf("sso-rw" to "test-session")))
        }
    }

    @Test
    fun guestChatAndTrackingCookiesDoNotCompleteLogin() {
        listOf(emptyMap(), mapOf("sso" to ""), mapOf("grok_device_id" to "test-device"),
            mapOf("OptanonConsent" to "accepted", "x-userid" to "test-user")).forEach { cookies ->
            assertFalse(ProviderLoginStrategy.shouldStartGrokNativeCollection("https://grok.com/", cookies))
        }
    }

    @Test
    fun signInSsoAndUntrustedPagesStayOpenEvenWithExistingSessionCookies() {
        listOf("https://grok.com/sign-in", "https://grok.com/login", "https://grok.com/logout",
            "https://grok.com/settings", "https://auth.grok.com/", "https://accounts.x.ai/",
            "https://grok.com.evil.test/c/chat", "https://evil.grok.com/c/chat", "http://grok.com/",
            "about:blank").forEach { url ->
            assertFalse(url, ProviderLoginStrategy.shouldStartGrokNativeCollection(url, mapOf("sso" to "test-session")))
        }
    }
}
