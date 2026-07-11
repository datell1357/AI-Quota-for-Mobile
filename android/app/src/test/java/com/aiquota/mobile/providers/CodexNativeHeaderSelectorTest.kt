package com.aiquota.mobile.providers

import org.junit.Assert.assertEquals
import org.junit.Test

class CodexNativeHeaderSelectorTest {
    @Test
    fun selectStoredHeadersKeepsAuthenticatedHeadersWhenLaterCaptureHasNoAuthContext() {
        val authenticated = mapOf(
            "Authorization" to "Bearer token",
            "OAI-Session-Id" to "session"
        )
        val unauthenticated = mapOf(
            "Accept" to "application/json",
            "Referer" to "https://chatgpt.com/"
        )

        assertEquals(
            authenticated,
            CodexNativeHeaderSelector.selectStoredHeaders(authenticated, unauthenticated)
        )
    }

    @Test
    fun captureKeepsAuthenticatedFallbackHeadersWhenLaterCaptureHasNoAuthContext() {
        val storedHeaders = mutableMapOf<String, Map<String, String>>()
        val usageUrl = "https://chatgpt.com/backend-api/wham/usage"
        val fallbackKey = "fallback"

        CodexNativeHeaderStore.capture(
            storedHeaders,
            usageUrl,
            mapOf("ChatGPT-Account-ID" to "account", "Accept" to "application/json"),
            fallbackKey
        )
        CodexNativeHeaderStore.capture(
            storedHeaders,
            usageUrl,
            mapOf("Accept" to "application/json"),
            fallbackKey
        )

        assertEquals("account", storedHeaders["chatgpt.com/backend-api/wham/usage"]?.get("ChatGPT-Account-ID"))
        assertEquals("account", storedHeaders[fallbackKey]?.get("ChatGPT-Account-ID"))
    }

    @Test
    fun selectForCodexFetchMergesOnlyFallbackAuthHeadersIntoEndpointHeaders() {
        val endpointHeaders = mapOf(
            "accept" to "application/json",
            "Referer" to "https://chatgpt.com/"
        )
        val authenticatedFallback = mapOf(
            "Authorization" to "Bearer token",
            "OAI-Session-Id" to "session",
            "extra" to "must not copy"
        )

        assertEquals(
            mapOf(
                "accept" to "application/json",
                "Referer" to "https://chatgpt.com/",
                "Authorization" to "Bearer token",
                "OAI-Session-Id" to "session"
            ),
            CodexNativeHeaderSelector.selectForCodexFetch(endpointHeaders, authenticatedFallback)
        )
    }

    @Test
    fun selectForCodexFetchKeepsEndpointHeadersWhenTheyContainAuthContext() {
        val endpointHeaders = mapOf(
            "Authorization" to "Bearer endpoint-token",
            "Referer" to "https://chatgpt.com/codex/cloud/settings/analytics"
        )
        val fallback = mapOf(
            "Authorization" to "Bearer fallback-token",
            "Referer" to "https://chatgpt.com/"
        )

        assertEquals(
            endpointHeaders,
            CodexNativeHeaderSelector.selectForCodexFetch(endpointHeaders, fallback)
        )
    }

    @Test
    fun selectForCodexFetchKeepsEndpointAuthorizationCaseInsensitivelyAndAddsMissingAccountId() {
        val endpointHeaders = mapOf("authorization" to "Bearer endpoint-token")
        val fallback = mapOf(
            "Authorization" to "Bearer fallback-token",
            "ChatGPT-Account-ID" to "account"
        )

        assertEquals(
            mapOf(
                "authorization" to "Bearer endpoint-token",
                "ChatGPT-Account-ID" to "account"
            ),
            CodexNativeHeaderSelector.selectForCodexFetch(endpointHeaders, fallback)
        )
    }

    @Test
    fun selectForFetchPrefersFullAuthenticatedFallbackOverNonAuthEndpointHeaders() {
        val endpoint = mapOf("x-activity-session-id" to "endpoint-activity")
        val fallback = mapOf(
            "Authorization" to "Bearer fallback-token",
            "x-activity-session-id" to "fallback-activity"
        )

        assertEquals(fallback, CodexNativeHeaderSelector.selectForFetch(endpoint, fallback))
    }
}
