package com.aiquota.mobile.providers

import com.aiquota.mobile.local.ProviderId
import java.io.File
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

class ProviderNativeUsagePayloadFetcherTest {
    @Test
    fun geminiIsCollectedThroughAboutBlankUsagePageNativeFetcher() {
        val policy = File("src/main/java/com/aiquota/mobile/providers/ProviderAboutBlankCollectorPolicy.kt").readText()
        val source = File("src/main/java/com/aiquota/mobile/providers/ProviderNativeUsagePayloadFetcher.kt").readText()

        assertTrue(policy.contains("providerId == ProviderId.GEMINI"))
        assertFalse(source.contains("GoogleWebSessionCodeAssistFetcher.fetchUsagePayload(ProviderId.GEMINI)"))
        assertTrue(source.contains("GeminiUsagePageNativeFetcher.fetchUsagePayload"))
        assertTrue(source.contains("observedRpcIds"))
    }

    @Test
    fun glmIsCollectedThroughAboutBlankNativeWebSessionFetcher() {
        val policy = File("src/main/java/com/aiquota/mobile/providers/ProviderAboutBlankCollectorPolicy.kt").readText()
        val source = File("src/main/java/com/aiquota/mobile/providers/ProviderNativeUsagePayloadFetcher.kt").readText()
        val login = File("src/main/java/com/aiquota/mobile/providers/WebLoginActivity.kt").readText()

        assertTrue(policy.contains("ProviderId.GLM"))
        assertTrue(source.contains("ProviderId.GLM -> fetchGlmPayload"))
        assertTrue(source.contains("GlmUsageFetcher.fetchUsagePayloadWithCookie"))
        assertTrue(login.contains("cookieHeaderForUrl = { url -> cookieHeaderForNativeUsage(url) }"))
        assertTrue(login.contains("glmRetainedWebSessionCookieHeader"))
    }

    @Test
    fun geminiNativeUsageSourceRejectsGenericOnlyCodeAssistAndDomFallbacks() {
        val nativeFetcher = File("src/main/java/com/aiquota/mobile/providers/GeminiUsagePageNativeFetcher.kt").readText()
        val nativeDispatcher = File("src/main/java/com/aiquota/mobile/providers/ProviderNativeUsagePayloadFetcher.kt").readText()

        assertFalse(nativeDispatcher.contains("GoogleWebSessionCodeAssistFetcher.fetchUsagePayload(ProviderId.GEMINI)"))
        assertFalse(nativeFetcher.contains("""[[["jSf9Qc","[]",null,"generic"]]]"""))
        listOf(
            "document.documentElement",
            "innerText",
            "querySelector",
            "postGeminiObservedPayload",
            "installGeminiNetworkHook",
            "SAGE_USAGE_EXTRACTOR.buildGeminiUsagePayload",
            "GeminiUsagePageRpcSession.captureScript"
        ).forEach { forbidden ->
            assertFalse("$forbidden must not be part of Gemini native collection", nativeFetcher.contains(forbidden))
            assertFalse("$forbidden must not be dispatched for Gemini native collection", nativeDispatcher.contains(forbidden))
        }
    }

    @Test
    fun geminiUsagePageBatchExecutePayloadNormalizesUsedFiveHourAndWeeklyLimits() {
        val payload = GeminiUsagePageNativeFetcher.usagePayloadFromBatchExecuteForTest(
            """
            )]}'

            189
            [["wrb.fr","jSf9Qc","[1,[[6048,6048,2,[[1783337273,919653000]]],[450,150,1,[[1782793673,919528000]]]],false]",null,null,null,"usage-page"]]
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
        assertEquals(450.0, fiveHour.remainingAmount ?: 0.0, 0.001)
        assertEquals(600.0, fiveHour.limitAmount ?: 0.0, 0.001)
        assertEquals("75% left", fiveHour.remainingText)
        assertEquals(0.75f, fiveHour.remainingPercent ?: 0f, 0.001f)
        assertTrue(fiveHour.resetsAt.orEmpty().startsWith("2026-06-30"))
        assertEquals(6048.0, weekly.remainingAmount ?: 0.0, 0.001)
        assertEquals(12096.0, weekly.limitAmount ?: 0.0, 0.001)
        assertEquals("50% left", weekly.remainingText)
        assertEquals(0.5f, weekly.remainingPercent ?: 0f, 0.001f)
        assertTrue(weekly.resetsAt.orEmpty().startsWith("2026-07-06"))
    }

    @Test
    fun geminiUsagePageBatchExecuteFractionRowNormalizesUsedFiveHourAndWeeklyLimits() {
        val payload = GeminiUsagePageNativeFetcher.usagePayloadFromBatchExecuteForTest(
            """
            )]}'

            189
            [["wrb.fr","jSf9Qc","[null,[[2357.0,0.02,1,[[1782793673,919528000]]],[48302.0,0.0,2,[[1783337273,919653000]]]]]"]]
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
        assertEquals(2, fiveHour.usedPercent)
        assertEquals(0.98f, fiveHour.remainingPercent ?: 0f, 0.001f)
        assertEquals("98% left", fiveHour.remainingText)
        assertEquals(0, weekly.usedPercent)
        assertEquals(1f, weekly.remainingPercent ?: 0f, 0.001f)
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
