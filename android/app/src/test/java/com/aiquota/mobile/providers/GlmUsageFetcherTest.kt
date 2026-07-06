package com.aiquota.mobile.providers

import java.net.HttpURLConnection
import java.net.InetSocketAddress
import java.net.ServerSocket
import java.nio.charset.StandardCharsets
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test
import kotlin.concurrent.thread

class GlmUsageFetcherTest {
    companion object {
        init {
            System.setProperty("sun.net.http.allowRestrictedHeaders", "true")
        }
    }

    @Test
    fun retriesWithoutBearerAfterBearerUnauthorizedResponse() {
        val authorizationHeaders = mutableListOf<String?>()
        val server = ServerSocket().apply {
            reuseAddress = true
            bind(InetSocketAddress("127.0.0.1", 0))
        }
        val serverThread = thread(name = "glm-usage-fetcher-test-server") {
            repeat(2) { index ->
                server.accept().use { socket ->
                    val request = socket.getInputStream().bufferedReader(StandardCharsets.UTF_8)
                    var authorization: String? = null
                    while (true) {
                        val line = request.readLine() ?: break
                        if (line.isEmpty()) break
                        if (line.startsWith("Authorization:", ignoreCase = true)) {
                            authorization = line.substringAfter(":").trim()
                        }
                    }
                    authorizationHeaders += authorization
                    if (index == 0) {
                        socket.getOutputStream().writeHttpResponse(
                            status = HttpURLConnection.HTTP_UNAUTHORIZED,
                            reason = "Unauthorized",
                            body = ByteArray(0)
                        )
                    } else {
                        socket.getOutputStream().writeHttpResponse(
                            status = HttpURLConnection.HTTP_OK,
                            reason = "OK",
                            body = quotaBody()
                        )
                    }
                }
            }
        }

        try {
            val result = GlmUsageFetcher.fetchUsagePayload(
                apiKey = "zai_test_key",
                endpointUrl = "http://127.0.0.1:${server.localPort}/quota"
            )

            assertEquals("ok", result.diagnostic)
            assertFalse(result.requiresAuth)
            assertNotNull(result.payload)
            assertEquals(
                listOf("Bearer zai_test_key", "zai_test_key"),
                authorizationHeaders
            )
        } finally {
            server.close()
            serverThread.join(1_000L)
        }
    }

    @Test
    fun retriesWithoutBearerWhenBearerResponseOnlyContainsMcpQuota() {
        val authorizationHeaders = mutableListOf<String?>()
        val server = ServerSocket().apply {
            reuseAddress = true
            bind(InetSocketAddress("127.0.0.1", 0))
        }
        val serverThread = thread(name = "glm-usage-fetcher-token-fallback-test-server") {
            repeat(2) { index ->
                server.accept().use { socket ->
                    val request = socket.getInputStream().bufferedReader(StandardCharsets.UTF_8)
                    var authorization: String? = null
                    while (true) {
                        val line = request.readLine() ?: break
                        if (line.isEmpty()) break
                        if (line.startsWith("Authorization:", ignoreCase = true)) {
                            authorization = line.substringAfter(":").trim()
                        }
                    }
                    authorizationHeaders += authorization
                    socket.getOutputStream().writeHttpResponse(
                        status = HttpURLConnection.HTTP_OK,
                        reason = "OK",
                        body = if (index == 0) mcpOnlyQuotaBody() else quotaBody()
                    )
                }
            }
        }

        try {
            val result = GlmUsageFetcher.fetchUsagePayload(
                apiKey = "zai_test_key",
                endpointUrl = "http://127.0.0.1:${server.localPort}/quota"
            )

            assertEquals("ok", result.diagnostic)
            assertFalse(result.requiresAuth)
            assertNotNull(result.payload)
            assertEquals(
                listOf("Bearer zai_test_key", "zai_test_key"),
                authorizationHeaders
            )
            org.junit.Assert.assertTrue(result.payload!!.contains("TOKENS_LIMIT"))
        } finally {
            server.close()
            serverThread.join(1_000L)
        }
    }

    @Test
    fun webSessionFetchPreservesCapturedNativeHeaders() {
        var cookieHeader: String? = null
        var authorizationHeader: String? = null
        var traceHeader: String? = null
        var refererHeader: String? = null
        var userAgentHeader: String? = null
        val server = ServerSocket().apply {
            reuseAddress = true
            bind(InetSocketAddress("127.0.0.1", 0))
        }
        val serverThread = thread(name = "glm-web-session-fetcher-test-server") {
            server.accept().use { socket ->
                val request = socket.getInputStream().bufferedReader(StandardCharsets.UTF_8)
                while (true) {
                    val line = request.readLine() ?: break
                    if (line.isEmpty()) break
                    if (line.startsWith("Cookie:", ignoreCase = true)) {
                        cookieHeader = line.substringAfter(":").trim()
                    }
                    if (line.startsWith("Authorization:", ignoreCase = true)) {
                        authorizationHeader = line.substringAfter(":").trim()
                    }
                    if (line.startsWith("X-Zai-Trace:", ignoreCase = true)) {
                        traceHeader = line.substringAfter(":").trim()
                    }
                    if (line.startsWith("Referer:", ignoreCase = true)) {
                        refererHeader = line.substringAfter(":").trim()
                    }
                    if (line.startsWith("User-Agent:", ignoreCase = true)) {
                        userAgentHeader = line.substringAfter(":").trim()
                    }
                }
                socket.getOutputStream().writeHttpResponse(
                    status = HttpURLConnection.HTTP_OK,
                    reason = "OK",
                    body = quotaBody()
                )
            }
        }

        try {
            val result = GlmUsageFetcher.fetchUsagePayloadWithCookie(
                cookieHeader = "zai_session=session-value; other=value",
                endpointUrl = "http://127.0.0.1:${server.localPort}/quota",
                requestHeaders = mapOf(
                    "Authorization" to "Bearer browser-token",
                    "X-Zai-Trace" to "trace-id",
                    "Origin" to "https://chat.z.ai",
                    "Referer" to "https://chat.z.ai/auth",
                    "User-Agent" to "CapturedWebView/1.0"
                )
            )

            assertEquals("ok", result.diagnostic)
            assertFalse(result.requiresAuth)
            assertNotNull(result.payload)
            assertEquals("zai_session=session-value; other=value", cookieHeader)
            assertEquals("Bearer browser-token", authorizationHeader)
            assertEquals("trace-id", traceHeader)
            assertEquals("https://chat.z.ai/auth", refererHeader)
            assertEquals("CapturedWebView/1.0", userAgentHeader)
        } finally {
            server.close()
            serverThread.join(1_000L)
        }
    }

    @Test
    fun webSessionFetchRejectsCookieOnlySessionBeforeNetwork() {
        val result = GlmUsageFetcher.fetchUsagePayloadWithCookie(
            cookieHeader = "zai_session=stale-cookie",
            endpointUrl = "http://127.0.0.1:1/quota",
            requestHeaders = emptyMap()
        )

        assertNull(result.payload)
        org.junit.Assert.assertTrue(result.requiresAuth)
        assertEquals("glm_web_authorization_missing", result.diagnostic)
    }

    @Test
    fun repositoryWebSessionFetchReplaysSavedAuthorizationHeadersFromFreshStoreInstance() {
        val persisted = linkedMapOf<String, Any>()
        var cookieHeader: String? = null
        var authorizationHeader: String? = null
        var originHeader: String? = null
        var refererHeader: String? = null
        var userAgentHeader: String? = null
        val server = ServerSocket().apply {
            reuseAddress = true
            bind(InetSocketAddress("127.0.0.1", 0))
        }
        val serverThread = thread(name = "glm-web-session-repository-test-server") {
            server.accept().use { socket ->
                val request = socket.getInputStream().bufferedReader(StandardCharsets.UTF_8)
                while (true) {
                    val line = request.readLine() ?: break
                    if (line.isEmpty()) break
                    if (line.startsWith("Cookie:", ignoreCase = true)) {
                        cookieHeader = line.substringAfter(":").trim()
                    }
                    if (line.startsWith("Authorization:", ignoreCase = true)) {
                        authorizationHeader = line.substringAfter(":").trim()
                    }
                    if (line.startsWith("Origin:", ignoreCase = true)) {
                        originHeader = line.substringAfter(":").trim()
                    }
                    if (line.startsWith("Referer:", ignoreCase = true)) {
                        refererHeader = line.substringAfter(":").trim()
                    }
                    if (line.startsWith("User-Agent:", ignoreCase = true)) {
                        userAgentHeader = line.substringAfter(":").trim()
                    }
                }
                socket.getOutputStream().writeHttpResponse(
                    status = HttpURLConnection.HTTP_OK,
                    reason = "OK",
                    body = quotaBody()
                )
            }
        }

        try {
            val endpointUrl = "http://127.0.0.1:${server.localPort}/quota"
            GlmUsageRepository(
                webSessionStore = InMemoryGlmWebSessionStore(persisted),
                webSessionEndpointUrl = endpointUrl
            ).apply {
                saveWebSessionCookieHeader("zai_session=session-value; other=value")
                saveWebSessionRequestHeaders(
                    mapOf(
                        "Authorization" to "Bearer browser-token",
                        "Origin" to "https://chat.z.ai",
                        "Referer" to "https://chat.z.ai/auth",
                        "User-Agent" to "CapturedWebView/1.0"
                    )
                )
            }

            val result = GlmUsageRepository(
                webSessionStore = InMemoryGlmWebSessionStore(persisted),
                webSessionEndpointUrl = endpointUrl
            ).fetchUsagePayloadFromWebSession()

            assertEquals("ok", result.diagnostic)
            assertFalse(result.requiresAuth)
            assertNotNull(result.payload)
            assertEquals("zai_session=session-value; other=value", cookieHeader)
            assertEquals("Bearer browser-token", authorizationHeader)
            assertEquals("https://chat.z.ai", originHeader)
            assertEquals("https://chat.z.ai/auth", refererHeader)
            assertEquals("CapturedWebView/1.0", userAgentHeader)
        } finally {
            server.close()
            serverThread.join(1_000L)
        }
    }

    @Test
    fun repositoryWebSessionFetchKeepsCookieOnlyStateAuthRequired() {
        val persisted = linkedMapOf<String, Any>()
        GlmUsageRepository(
            webSessionStore = InMemoryGlmWebSessionStore(persisted),
            webSessionEndpointUrl = "http://127.0.0.1:1/quota"
        ).saveWebSessionCookieHeader("zai_session=stale-cookie")

        val result = GlmUsageRepository(
            webSessionStore = InMemoryGlmWebSessionStore(persisted),
            webSessionEndpointUrl = "http://127.0.0.1:1/quota"
        ).fetchUsagePayloadFromWebSession()

        assertNull(result.payload)
        assertTrue(result.requiresAuth)
        assertEquals("glm_web_authorization_missing", result.diagnostic)
    }

    private fun java.io.OutputStream.writeHttpResponse(status: Int, reason: String, body: ByteArray) {
        val headers = buildString {
            append("HTTP/1.1 ")
            append(status)
            append(" ")
            append(reason)
            append("\r\nContent-Type: application/json\r\nContent-Length: ")
            append(body.size)
            append("\r\nConnection: close\r\n\r\n")
        }.toByteArray(StandardCharsets.US_ASCII)
        write(headers)
        write(body)
        flush()
    }

    private fun quotaBody(): ByteArray {
        return """
            {
              "code": 200,
              "msg": "success",
              "data": {
                "limits": [
                  {
                    "type": "TOKENS_LIMIT",
                    "usage": 100,
                    "currentValue": 10,
                    "percentage": 10
                  }
                ]
              }
            }
        """.trimIndent().toByteArray(StandardCharsets.UTF_8)
    }

    private fun mcpOnlyQuotaBody(): ByteArray {
        return """
            {
              "code": 200,
              "msg": "success",
              "data": {
                "limits": [
                  {
                    "type": "TIME_LIMIT",
                    "usage": 500,
                    "currentValue": 125,
                    "percentage": 25
                  }
                ]
              }
            }
        """.trimIndent().toByteArray(StandardCharsets.UTF_8)
    }

    private class InMemoryGlmWebSessionStore(
        private val persisted: MutableMap<String, Any>
    ) : GlmWebSessionStore {
        override fun cookieHeader(): String? {
            return persisted["cookie"] as? String
        }

        override fun saveCookieHeader(cookieHeader: String) {
            persisted["cookie"] = cookieHeader
        }

        override fun requestHeaders(): Map<String, String> {
            @Suppress("UNCHECKED_CAST")
            return persisted["headers"] as? Map<String, String> ?: emptyMap()
        }

        override fun saveRequestHeaders(headers: Map<String, String>) {
            persisted["headers"] = headers.toMap()
        }

        override fun clear() {
            persisted.clear()
        }
    }
}
