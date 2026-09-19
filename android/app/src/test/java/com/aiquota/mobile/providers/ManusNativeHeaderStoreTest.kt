package com.aiquota.mobile.providers

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class ManusNativeHeaderStoreTest {
    @Test
    fun captureRejectsNonManusOrigins() {
        val storedHeaders = mutableMapOf<String, Map<String, String>>()
        val headers = mapOf("Authorization" to "Bearer jwt")

        assertFalse(ManusNativeHeaderStore.capture(storedHeaders, "https://manus.im/app", headers))
        assertFalse(ManusNativeHeaderStore.capture(storedHeaders, "http://api.manus.im/user.v1.UserService/UserInfo", headers))
        assertFalse(ManusNativeHeaderStore.capture(storedHeaders, "https://evil.manus.im/user.v1.UserService/UserInfo", headers))
        assertFalse(ManusNativeHeaderStore.capture(storedHeaders, "https://manus.im/user.v1.UserService/UserInfo", headers))
        assertTrue(storedHeaders.isEmpty())
    }

    @Test
    fun captureKeepsOnlyAuthorizationHeader() {
        val storedHeaders = mutableMapOf<String, Map<String, String>>()

        assertTrue(
            ManusNativeHeaderStore.capture(
                storedHeaders,
                "https://api.manus.im/user.v1.UserService/GetAvailableCredits",
                mapOf(
                    "Authorization" to "Bearer jwt-token",
                    "Accept" to "application/json",
                    "x-datadog-trace-id" to "123",
                )
            )
        )

        val captured = storedHeaders[ManusNativeHeaderStore.WILDCARD_KEY].orEmpty()
        assertEquals(mapOf("authorization" to "Bearer jwt-token"), captured)
    }

    @Test
    fun captureWithoutAuthorizationIsNotCredentialReady() {
        val storedHeaders = mutableMapOf<String, Map<String, String>>()

        assertFalse(
            ManusNativeHeaderStore.capture(
                storedHeaders,
                "https://api.manus.im/user.v1.UserService/UserInfo",
                mapOf("Accept" to "application/json")
            )
        )
        assertFalse(ManusNativeHeaderStore.hasCredentials(storedHeaders))
    }

    @Test
    fun headersForReturnsOnlyForManusApiUrls() {
        val storedHeaders = mapOf(
            ManusNativeHeaderStore.WILDCARD_KEY to mapOf(
                "authorization" to "Bearer jwt-token",
            )
        )

        assertTrue(ManusNativeHeaderStore.headersFor(storedHeaders, "https://manus.im/app").isEmpty())
        assertTrue(ManusNativeHeaderStore.headersFor(storedHeaders, "https://other.manus.im/user.v1.UserService/UserInfo").isEmpty())
        val headers = ManusNativeHeaderStore.headersFor(
            storedHeaders,
            "https://api.manus.im/user.v1.UserService/GetAvailableCredits"
        )
        assertEquals("Bearer jwt-token", headers["authorization"])
        assertTrue(ManusNativeHeaderStore.hasCredentials(storedHeaders))
    }

    @Test
    fun snapshotAuthContextDropsBlankValues() {
        val storedHeaders = mapOf(
            ManusNativeHeaderStore.WILDCARD_KEY to mapOf(
                "authorization" to "Bearer jwt-token",
                "accept" to "",
            )
        )
        val snapshot = ManusNativeHeaderStore.snapshotAuthContext(storedHeaders)
        assertEquals(mapOf("authorization" to "Bearer jwt-token"), snapshot[ManusNativeHeaderStore.WILDCARD_KEY])
        assertTrue(ManusNativeHeaderStore.snapshotAuthContext(emptyMap()).isEmpty())
    }

    @Test
    fun authContextEncodeDecodeRoundTrips() {
        val context = mapOf(
            ManusNativeHeaderStore.WILDCARD_KEY to mapOf(
                "authorization" to "Bearer jwt-token",
            )
        )
        val decoded = ManusAuthContextStore.decode(ManusAuthContextStore.encode(context))
        assertEquals(context, decoded)
        assertTrue(ManusAuthContextStore.decode("not json").isEmpty())
    }
}
