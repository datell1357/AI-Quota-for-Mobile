package com.aiquota.mobile.providers

import com.aiquota.mobile.local.ProviderId
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

class ProviderNativeUsagePayloadFetcherTest {
    @Test
    fun geminiNativeUsageBridgeFailsClosedWithoutUsagePageRpcSession() {
        GeminiUsagePageRpcSession.clear()

        val payload = ProviderNativeUsagePayloadFetcher.bridgeUsagePayload(
            providerId = ProviderId.GEMINI,
            userAgent = "test-agent"
        )

        assertTrue(payload.contains("\"ok\":false"))
        assertTrue(payload.contains("\"provider\":\"gemini\""))
        assertTrue(payload.contains("gemini_usage_rpc_session_unavailable"))
    }

    @Test
    fun geminiUsagePageBatchExecutePayloadIncludesFiveHourAndWeeklyLimits() {
        val payload = GeminiUsagePageNativeFetcher.usagePayloadFromBatchExecuteForTest(
            """
            )]}'

            189
            [["wrb.fr","jSf9Qc","[1,[[12096,0,2,[[1783337273,919653000]]],[600,0,1,[[1782793673,919528000]]]],false]",null,null,null,"generic"]]
            25
            [["e",4,null,null,225]]
            """.trimIndent()
        )
        assertNotNull(payload)

        val snapshot = ProviderUsageNormalizer.normalize(
            providerId = ProviderId.GEMINI,
            rawPayload = payload!!.toString(),
            source = ProviderPayloadSource.NETWORK_RESPONSE,
            fetchedAt = "2026-06-30T00:00:00Z"
        )

        assertNotNull(snapshot)
        assertEquals(listOf("5-hour limit", "Weekly limit"), snapshot!!.lines.map { it.label })
        val fiveHour = snapshot.lines.first { it.label == "5-hour limit" }
        val weekly = snapshot.lines.first { it.label == "Weekly limit" }
        assertEquals(600.0, fiveHour.remainingAmount ?: 0.0, 0.001)
        assertEquals(600.0, fiveHour.limitAmount ?: 0.0, 0.001)
        assertEquals("100% left", fiveHour.remainingText)
        assertEquals(1.0f, fiveHour.remainingPercent ?: 0f, 0.001f)
        assertTrue(fiveHour.resetsAt.orEmpty().startsWith("2026-06-30"))
        assertEquals(12096.0, weekly.remainingAmount ?: 0.0, 0.001)
        assertEquals(12096.0, weekly.limitAmount ?: 0.0, 0.001)
        assertEquals("100% left", weekly.remainingText)
        assertEquals(1.0f, weekly.remainingPercent ?: 0f, 0.001f)
        assertTrue(weekly.resetsAt.orEmpty().startsWith("2026-07-06"))
    }

    @Test
    fun geminiUsagePageRpcSessionCapturesOnlyWizNativeRpcParams() {
        val script = GeminiUsagePageRpcSession.captureScript()
        val params = GeminiUsagePageRpcSession.paramsFromJsonForTest(
            rawJson = """{"at":"AD1_test:1782788577556","fSid":"-2151343215381609210","bl":"boq_assistant-bard-web-server_20260628.03_p0","hl":"ko"}""",
            pageUrl = "https://gemini.google.com/usage?hl=ko",
            nowMillis = 1782788577556
        )

        assertNotNull(params)
        assertTrue(script.contains("window.WIZ_global_data"))
        assertTrue(script.contains("SNlM0e"))
        assertFalse(script.contains("document.querySelector"))
        assertFalse(script.contains("innerText"))
        assertFalse(script.contains("textContent"))
    }

    @Test
    fun geminiUsagePageRpcSessionClearsInvalidAndExpiredParams() {
        val capturedAt = 1782788577556L
        val validJson = """{"at":"AD1_test:1782788577556","fSid":"-2151343215381609210","bl":"boq_assistant-bard-web-server_20260628.03_p0","hl":"ko"}"""

        GeminiUsagePageRpcSession.clear()
        assertTrue(
            GeminiUsagePageRpcSession.updateFromJson(
                rawJson = validJson,
                pageUrl = "https://gemini.google.com/usage?hl=ko",
                nowMillis = capturedAt
            )
        )
        assertNotNull(GeminiUsagePageRpcSession.current(capturedAt + GeminiUsagePageRpcSession.sessionTtlMillisForTest()))
        assertNull(GeminiUsagePageRpcSession.current(capturedAt + GeminiUsagePageRpcSession.sessionTtlMillisForTest() + 1L))

        assertTrue(
            GeminiUsagePageRpcSession.updateFromJson(
                rawJson = validJson,
                pageUrl = "https://gemini.google.com/usage?hl=ko",
                nowMillis = capturedAt
            )
        )
        assertFalse(
            GeminiUsagePageRpcSession.updateFromJson(
                rawJson = """{"at":"","fSid":"","bl":"","hl":"ko"}""",
                pageUrl = "https://gemini.google.com/usage?hl=ko",
                nowMillis = capturedAt + 1L
            )
        )
        assertNull(GeminiUsagePageRpcSession.current(capturedAt + 2L))
    }

    @Test
    fun codexNativeUsagePayloadFetchUsesForwardedWebViewHeaders() {
        val capturedHeaders = linkedMapOf<String, Map<String, String>>()
        val capturedUserAgents = linkedMapOf<String, String>()

        val payload = ProviderNativeUsagePayloadFetcher.codexUsagePayloadForTest(
            userAgent = "test-agent",
            requestHeadersForUrl = { url ->
                mapOf(
                    "Authorization" to "Selected auth",
                    "X-Selected-Url" to url
                )
            },
            fetchJson = { _, url, userAgent, headers ->
                capturedHeaders[url] = headers
                capturedUserAgents[url] = userAgent
                ProviderNativeJsonBridge.wrappedResponse(url, 200, codexResponseFor(url)).toString()
            }
        )

        assertNotNull(payload)
        assertEquals(
            "Selected auth",
            capturedHeaders["https://chatgpt.com/backend-api/wham/usage"]?.get("Authorization")
        )
        assertEquals(
            "https://chatgpt.com/backend-api/wham/usage",
            capturedHeaders["https://chatgpt.com/backend-api/wham/usage"]?.get("X-Selected-Url")
        )
        assertEquals("test-agent", capturedUserAgents["https://chatgpt.com/backend-api/wham/usage"])
    }

    @Test
    fun codexNativeUsagePayloadUsesWhamUsageWhenDashboardHasNoUsage() {
        val requestedUrls = mutableListOf<String>()
        val payload = ProviderNativeUsagePayloadFetcher.codexUsagePayloadForTest(
            userAgent = "test-agent",
            requestHeadersForUrl = { mapOf("Authorization" to "Selected auth") },
            fetchJson = { _, url, _, _ ->
                requestedUrls += url
                ProviderNativeJsonBridge.wrappedResponse(url, 200, codexResponseFor(url)).toString()
            }
        )

        assertTrue(requestedUrls.contains("https://chatgpt.com/backend-api/wham/usage"))
        assertNotNull(payload)
        val snapshot = ProviderUsageNormalizer.normalize(
            providerId = ProviderId.CODEX,
            rawPayload = payload!!,
            source = ProviderPayloadSource.NETWORK_RESPONSE,
            fetchedAt = "2026-06-30T00:00:00Z"
        )

        assertNotNull(snapshot)
        assertEquals(0.80f, snapshot!!.lines.single { it.key == "codex:primary_window" }.remainingPercent ?: 0f, 0.001f)
    }

    @Test
    fun codexNativeUsagePayloadDoesNotUseDashboardHtmlFallback() {
        val payload = ProviderNativeUsagePayloadFetcher.codexUsagePayloadForTest(
            userAgent = "test-agent",
            requestHeadersForUrl = { mapOf("Authorization" to "Selected auth") },
            fetchJson = { _, url, _, _ ->
                val body = if (url == "https://chatgpt.com/codex/cloud/settings/analytics") {
                    """
                    <script type="application/json">
                    {"usage":{"rate_limits":{"primary_window":{"used_percent":20}}}}
                    </script>
                    """.trimIndent()
                } else {
                    codexResponseFor(url, includeWhamUsage = false)
                }
                ProviderNativeJsonBridge.wrappedResponse(url, 200, body).toString()
            }
        )

        assertNull(payload)
    }

    @Test
    fun codexNativeFetchedPayloadUsesWhamUsageJsonWithoutDomFallback() {
        val payload = ProviderNativeUsagePayloadFetcher.codexFetchedPayloadForTest(
            rawText = """
                {
                  "usage": {
                    "rate_limits": {
                      "primary_window": {"used_percent": 20, "reset_after_seconds": 18000},
                      "secondary_window": {"remaining_percent": 44}
                    }
                  }
                }
            """.trimIndent(),
            plan = "prolite",
            accountId = "acct_test",
            account = "tester@example.com"
        )
        assertNotNull(payload)
        val snapshot = ProviderUsageNormalizer.normalize(
            providerId = ProviderId.CODEX,
            rawPayload = payload!!.toString(),
            source = ProviderPayloadSource.NETWORK_RESPONSE,
            fetchedAt = "2026-06-29T00:00:00Z"
        )

        assertNotNull(snapshot)
        assertEquals("Pro 5x", snapshot!!.plan)
        assertEquals("tester@example.com", snapshot.account)
        assertEquals(0.80f, snapshot.lines.single { it.key == "codex:primary_window" }.remainingPercent ?: 0f, 0.001f)
        assertEquals(0.44f, snapshot.lines.single { it.key == "codex:secondary_window" }.remainingPercent ?: 0f, 0.001f)
    }

    private fun codexResponseFor(url: String, includeWhamUsage: Boolean = true): String {
        return when {
            url.endsWith("/api/auth/session") -> """{"user":{"email":"tester@example.com"},"account_id":"acct_test"}"""
            url.endsWith("/backend-api/me") -> """{"id":"acct_test","email":"tester@example.com"}"""
            url.contains("/backend-api/accounts/check/") -> """{"account_id":"acct_test","plan":"prolite"}"""
            url.startsWith("https://chatgpt.com/backend-api/subscriptions") -> """{"plan":"prolite"}"""
            url == "https://chatgpt.com/backend-api/wham/usage" && includeWhamUsage -> """
                {
                  "rate_limits": {
                    "primary_window": {"used_percent": 20},
                    "secondary_window": {"remaining_percent": 44}
                  }
                }
            """.trimIndent()
            url == "https://chatgpt.com/codex/cloud/settings/analytics" -> """
                {"analytics": []}
            """.trimIndent()
            else -> "{}"
        }
    }
}
