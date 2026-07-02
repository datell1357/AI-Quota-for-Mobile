package com.aiquota.mobile.providers

import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class CodexNativeHeaderStoreTest {
    @Test
    fun captureKeepsAuthenticatedEndpointAndFallbackHeadersAfterUnauthenticatedCapture() {
        val storedHeaders = mutableMapOf<String, Map<String, String>>()
        val usageUrl = "https://chatgpt.com/backend-api/wham/usage"
        val fallbackKey = "fallback"

        assertTrue(
            CodexNativeHeaderStore.capture(
                storedHeaders,
                usageUrl,
                mapOf("Authorization" to "Bearer auth", "Accept" to "application/json"),
                fallbackKey
            )
        )
        assertTrue(
            CodexNativeHeaderStore.capture(
                storedHeaders,
                usageUrl,
                mapOf("Accept" to "application/json"),
                fallbackKey
            )
        )

        assertEquals("Bearer auth", storedHeaders["chatgpt.com/backend-api/wham/usage"]?.get("Authorization"))
        assertEquals("Bearer auth", storedHeaders[fallbackKey]?.get("Authorization"))
    }

    @Test
    fun snapshotAuthContextKeepsOnlyCodexAuthHeaders() {
        val storedHeaders = mapOf(
            "chatgpt.com/backend-api/wham/usage" to mapOf(
                "Authorization" to "Bearer auth",
                "ChatGPT-Account-ID" to "account",
                "OAI-Session-Id" to "session",
                "Accept" to "application/json",
                "Cookie" to "secret=cookie"
            ),
            "empty" to mapOf("Accept" to "application/json")
        )

        assertEquals(
            mapOf(
                "chatgpt.com/backend-api/wham/usage" to mapOf(
                    "Authorization" to "Bearer auth",
                    "ChatGPT-Account-ID" to "account",
                    "OAI-Session-Id" to "session"
                )
            ),
            CodexNativeHeaderStore.snapshotAuthContext(storedHeaders)
        )
    }

    @Test
    fun persistedCodexAuthContextKeepsOnlyNativeAuthHeaders() {
        val payload = CodexNativeAuthContextStore.encodeForTest(
            mapOf(
                "chatgpt.com/backend-api/wham/usage" to mapOf(
                    "Authorization" to "Bearer auth",
                    "ChatGPT-Account-ID" to "account",
                    "OAI-Session-Id" to "session",
                    "Accept" to "application/json",
                    "Cookie" to "secret=cookie"
                ),
                "chatgpt.com/api/auth/session" to mapOf("Accept" to "application/json")
            )
        )

        assertEquals(
            mapOf(
                "chatgpt.com/backend-api/wham/usage" to mapOf(
                    "Authorization" to "Bearer auth",
                    "ChatGPT-Account-ID" to "account",
                    "OAI-Session-Id" to "session"
                )
            ),
            CodexNativeAuthContextStore.decodeForTest(payload)
        )
        assertTrue(!payload.contains("secret=cookie"))
        assertTrue(!payload.contains("application/json"))
    }
}
