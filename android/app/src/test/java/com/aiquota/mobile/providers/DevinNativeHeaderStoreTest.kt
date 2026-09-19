package com.aiquota.mobile.providers

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class DevinNativeHeaderStoreTest {
    @Test
    fun captureRejectsNonDevinOrigins() {
        val storedHeaders = mutableMapOf<String, Map<String, String>>()
        val headers = mapOf("Authorization" to "Bearer auth", "x-cog-org-id" to "org-abc")

        assertFalse(DevinNativeHeaderStore.capture(storedHeaders, "https://evil.devin.ai/api/x", headers))
        assertFalse(DevinNativeHeaderStore.capture(storedHeaders, "http://app.devin.ai/api/x", headers))
        assertFalse(DevinNativeHeaderStore.capture(storedHeaders, "https://app.devin.ai/settings", headers))
        assertFalse(DevinNativeHeaderStore.capture(storedHeaders, "https://api.devin.ai/api/x", headers))
        assertTrue(storedHeaders.isEmpty())
    }

    @Test
    fun captureKeepsOnlyAuthAndOrgHeaders() {
        val storedHeaders = mutableMapOf<String, Map<String, String>>()

        assertTrue(
            DevinNativeHeaderStore.capture(
                storedHeaders,
                "https://app.devin.ai/api/billing/subscription",
                mapOf(
                    "Authorization" to "Bearer auth1-token",
                    "X-Cog-Org-Id" to "org-abc",
                    "Accept" to "application/json",
                    "x-datadog-trace-id" to "123",
                )
            )
        )

        val captured = storedHeaders[DevinNativeHeaderStore.WILDCARD_KEY].orEmpty()
        assertEquals(
            mapOf("authorization" to "Bearer auth1-token", "x-cog-org-id" to "org-abc"),
            captured
        )
    }

    @Test
    fun captureMergesOrgHeaderArrivingOnLaterRequest() {
        val storedHeaders = mutableMapOf<String, Map<String, String>>()

        assertTrue(
            DevinNativeHeaderStore.capture(
                storedHeaders,
                "https://app.devin.ai/api/auth1/google/exchange",
                mapOf("Authorization" to "Bearer auth1-token")
            )
        )
        DevinNativeHeaderStore.capture(
            storedHeaders,
            "https://app.devin.ai/api/org-abc/billing/quota/usage",
            mapOf("x-cog-org-id" to "org-abc")
        )

        val captured = storedHeaders[DevinNativeHeaderStore.WILDCARD_KEY].orEmpty()
        assertEquals("Bearer auth1-token", captured["authorization"])
        assertEquals("org-abc", captured["x-cog-org-id"])
    }

    @Test
    fun headersForReturnsOnlyForDevinApiUrls() {
        val storedHeaders = mapOf(
            DevinNativeHeaderStore.WILDCARD_KEY to mapOf(
                "authorization" to "Bearer auth1-token",
                "x-cog-org-id" to "org-abc",
            )
        )

        assertTrue(DevinNativeHeaderStore.headersFor(storedHeaders, "https://app.devin.ai/dashboard").isEmpty())
        assertTrue(DevinNativeHeaderStore.headersFor(storedHeaders, "https://other.devin.ai/api/x").isEmpty())
        val headers = DevinNativeHeaderStore.headersFor(storedHeaders, "https://app.devin.ai/api/billing/subscription")
        assertEquals("Bearer auth1-token", headers["authorization"])
        assertEquals("org-abc", headers["x-cog-org-id"])
    }

    @Test
    fun snapshotAuthContextDropsBlankValues() {
        val storedHeaders = mapOf(
            DevinNativeHeaderStore.WILDCARD_KEY to mapOf(
                "authorization" to "Bearer auth1-token",
                "x-cog-org-id" to "",
            )
        )
        val snapshot = DevinNativeHeaderStore.snapshotAuthContext(storedHeaders)
        assertEquals(mapOf("authorization" to "Bearer auth1-token"), snapshot[DevinNativeHeaderStore.WILDCARD_KEY])
        assertTrue(DevinNativeHeaderStore.snapshotAuthContext(emptyMap()).isEmpty())
    }

    @Test
    fun authContextEncodeDecodeRoundTrips() {
        val context = mapOf(
            DevinNativeHeaderStore.WILDCARD_KEY to mapOf(
                "authorization" to "Bearer auth1-token",
                "x-cog-org-id" to "org-abc",
            )
        )
        val decoded = DevinAuthContextStore.decode(DevinAuthContextStore.encode(context))
        assertEquals(context, decoded)
        assertTrue(DevinAuthContextStore.decode("not json").isEmpty())
    }
}
