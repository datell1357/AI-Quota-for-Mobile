package com.aiquota.mobile.providers

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class ClaudeNativeHeaderStoreTest {
    @Test
    fun capturesClaudeApiHeadersAndFiltersNonForwardableHeaders() {
        val stored = mutableMapOf<String, Map<String, String>>()

        assertTrue(
            ClaudeNativeHeaderStore.capture(
                stored,
                "https://claude.ai/api/organizations/org_123/usage",
                mapOf(
                    "Authorization" to "Bearer test",
                    "X-Claude-Test" to "1",
                    "Host" to "claude.ai",
                    "Accept-Encoding" to "gzip"
                ),
                "claude:*"
            )
        )

        val headers = ClaudeNativeHeaderStore.headersFor(
            stored,
            "https://claude.ai/api/organizations/org_123/subscription_details",
            "claude:*"
        )
        assertEquals("Bearer test", headers["Authorization"])
        assertEquals("1", headers["X-Claude-Test"])
        assertFalse(headers.containsKey("Host"))
        assertFalse(headers.containsKey("Accept-Encoding"))
    }

    @Test
    fun ignoresNonClaudeHosts() {
        val stored = mutableMapOf<String, Map<String, String>>()

        assertFalse(
            ClaudeNativeHeaderStore.capture(
                stored,
                "https://example.com/api/organizations/org_123/usage",
                mapOf("Authorization" to "Bearer test"),
                "claude:*"
            )
        )
        assertTrue(stored.isEmpty())
    }

    @Test
    fun persistedClaudeRequestContextKeepsOnlyReplaySafeHeaders() {
        val payload = ClaudeNativeRequestContextStore.encodeForTest(
            mapOf(
                "claude.ai/api/organizations/org_123/usage" to mapOf(
                    "Authorization" to "Bearer auth",
                    "anthropic-device-id" to "device",
                    "x-activity-session-id" to "activity",
                    "x-datadog-trace-id" to "trace",
                    "Accept" to "application/json",
                    "Cookie" to "secret=cookie"
                ),
                "claude.ai/api/account_profile" to mapOf("Accept" to "application/json")
            )
        )

        assertEquals(
            mapOf(
                "claude.ai/api/organizations/org_123/usage" to mapOf(
                    "Authorization" to "Bearer auth",
                    "anthropic-device-id" to "device",
                    "x-activity-session-id" to "activity"
                )
            ),
            ClaudeNativeRequestContextStore.decodeForTest(payload)
        )
        assertFalse(payload.contains("trace"))
        assertFalse(payload.contains("secret=cookie"))
        assertFalse(payload.contains("application/json"))
    }
}
