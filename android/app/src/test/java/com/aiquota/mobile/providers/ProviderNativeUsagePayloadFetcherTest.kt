package com.aiquota.mobile.providers

import com.aiquota.mobile.local.ProviderId
import java.io.File
import java.nio.charset.StandardCharsets
import org.json.JSONObject
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
        assertTrue(source.contains("requestHeaders = requestHeadersForUrl(GlmProviderUrls.API_QUOTA_URL)"))
        assertTrue(login.contains("cookieHeaderForUrl = { url -> cookieHeaderForNativeUsage(url) }"))
        assertTrue(login.contains("ProviderId.GLM -> glmNativeFetchHeadersFor(url)"))
        assertTrue(login.contains("glmRetainedWebSessionCookieHeader"))
    }

    @Test
    fun claudeNativeUsagePayloadFetchUsesForwardedWebViewHeaders() {
        val source = File("src/main/java/com/aiquota/mobile/providers/ProviderNativeUsagePayloadFetcher.kt").readText()
        val dispatcherBlock = source.substringAfter("val result = when (providerId)")
            .substringBefore("return bridgeResult")
        val claudeBlock = source.substringAfter("private fun fetchClaudePayload")
            .substringBefore("private fun fetchCodexPayload")

        assertTrue(dispatcherBlock.contains("ProviderId.CLAUDE -> fetchClaudePayload(userAgent, requestHeadersForUrl, fetchJson)"))
        listOf(
            "requestHeadersForUrl(CLAUDE_ORGANIZATIONS_URL)",
            "requestHeadersForUrl(CLAUDE_ACCOUNT_PROFILE_URL)",
            "requestHeadersForUrl(CLAUDE_ORGANIZATIONS_ME_URL)",
            "requestHeadersForUrl(subscriptionUrl)",
            "requestHeadersForUrl(usageUrl)"
        ).forEach { expected ->
            assertTrue("Claude native fetch must forward headers for $expected", claudeBlock.contains(expected))
        }
        assertTrue(claudeBlock.contains("fetchJson"))
    }

    @Test
    fun claudeNativeUsagePayloadIgnoresDateLikeGenericSubscriptionMetadata() {
        val payload = claudeNativeUsagePayloadForTest(
            """
            {
              "name": "2026-07-05",
              "display_name": "2026-07-05T09:30:00Z",
              "title": "2026/07/05",
              "label": "Jul 5, 2026"
            }
            """.trimIndent()
        )

        assertNotNull(payload)
        assertFalse(JSONObject(payload!!).has("plan"))
    }

    @Test
    fun claudeNativeUsagePayloadUsesExplicitSafeSubscriptionPlanMetadata() {
        val payload = claudeNativeUsagePayloadForTest(
            """
            {
              "name": "2026-07-05",
              "plan_name": "Claude Max 5x"
            }
            """.trimIndent()
        )

        assertNotNull(payload)
        assertEquals("Claude Max 5x", JSONObject(payload!!).getString("plan"))
    }
    @Test
    fun claudeDebugObservationKeepsFetchOrderAndPayloadBytes() {
        val requestedUrls = mutableListOf<String>()
        val payload = claudeNativeUsagePayloadForTest(
            """{"plan_name":"Claude Max 5x","resets_at":"2026-07-12T00:00:00Z"}""",
            requestedUrls
        )

        assertEquals(
            listOf(
                "https://claude.ai/api/organizations",
                "https://claude.ai/api/account_profile",
                "https://claude.ai/api/organizations/org_test/subscription_details",
                "https://claude.ai/api/organizations/org_test/usage"
            ),
            requestedUrls
        )
        assertEquals(
            """{"organizationId":"org_test","provider":"claude","usage":{"five_hour":{"used_percent":25}},"plan":"Claude Max 5x","account":"claude@example.com"}""",
            payload
        )
        assertEquals(145, payload!!.toByteArray(StandardCharsets.UTF_8).size)
    }

    @Test
    fun claudeDebugObservationUsesOnlyStructuralAllowlistedFields() {
        assertTrue(ProviderPlanProvenanceDiagnostics.isClaudeSubscriptionDetailsDebugObservationEnabled(true))
        assertFalse(ProviderPlanProvenanceDiagnostics.isClaudeSubscriptionDetailsDebugObservationEnabled(false))

        val observation = ProviderPlanProvenanceDiagnostics.formatClaudeSubscriptionDetailsObservationForTest(
            JSONObject(
                """{"plan_name":"Claude Max 5x","email":"claude@example.com","resets_at":"2026-07-12T00:00:00Z"}"""
            ),
            httpStatus = 200,
            byteCount = 96
        )
        val json = JSONObject(observation)
        val keys = mutableSetOf<String>()
        val iterator = json.keys()
        while (iterator.hasNext()) keys += iterator.next()

        assertEquals(
            setOf(
                "provider",
                "routeId",
                "keyPathId",
                "jsonType",
                "present",
                "objectKeyCount",
                "arrayItemCount",
                "httpStatus",
                "byteCount",
                "requestCountDelta"
            ),
            keys
        )
        assertEquals("claude_subscription_details", json.getString("routeId"))
        assertEquals("object", json.getString("jsonType"))
        assertTrue(json.getBoolean("present"))
        assertEquals(0, json.getInt("requestCountDelta"))
        listOf("Claude Max 5x", "claude@example.com", "2026-07-12", "plan_name", "email", "resets_at").forEach { scalar ->
            assertFalse("observation must exclude $scalar", observation.contains(scalar))
        }
    }


    @Test
    fun nativeUsageDiagnosticsExposeOnlySafeOptimizationMetrics() {
        val source = File("src/main/java/com/aiquota/mobile/providers/ProviderNativeUsagePayloadFetcher.kt").readText()
        val bridgePayload = source.substringAfter("private fun bridgeUsagePayload(")
            .substringBefore("fun bridgeCodexFetchedPayload")
        val bridgeResult = source.substringAfter("private fun bridgeResult(")
            .substringBefore("private fun elapsedMillisSince")

        assertTrue(bridgePayload.contains("val startedNanos = System.nanoTime()"))
        assertTrue(bridgeResult.contains("elapsedMs="))
        assertTrue(bridgeResult.contains("endpointCount="))
        assertTrue(bridgeResult.contains("payloadBytes="))
        assertTrue(bridgeResult.contains("statuses=\$statusSummary"))
        assertFalse(bridgeResult.contains("Authorization"))
        assertFalse(bridgeResult.contains("Cookie"))
        assertFalse(bridgeResult.contains("Set-Cookie"))
        assertFalse(bridgeResult.contains("accountId"))
        assertFalse(bridgeResult.contains("account="))
        assertFalse(bridgeResult.contains("payload=\$"))
    }

    @Test
    fun cursorIsCollectedThroughAboutBlankNativeWebSessionFetcher() {
        val policy = File("src/main/java/com/aiquota/mobile/providers/ProviderAboutBlankCollectorPolicy.kt").readText()
        val source = File("src/main/java/com/aiquota/mobile/providers/ProviderNativeUsagePayloadFetcher.kt").readText()
        val cursorScript = ProviderWebCollectorScripts.build(ProviderId.CURSOR, emptyMap(), "", pageUrl = "about:blank")

        assertTrue(policy.contains("ProviderId.CURSOR"))
        assertTrue(source.contains("ProviderId.CURSOR -> fetchCursorPayload"))
        assertTrue(source.contains("CursorNativeUsageFetcher::fetchJson"))
        listOf(
            "__AIQuotaCursorNetworkRows",
            "pushCursorNetworkRow",
            "installCursorNetworkHook",
            "scanCursorPageState",
            "window.__NEXT_DATA__",
            "/api/usage?user="
        ).forEach { forbidden ->
            assertFalse("$forbidden must not be part of Cursor native collection", cursorScript.contains(forbidden))
        }
    }

    @Test
    fun cursorNativeUsagePayloadNormalizesCurrentPeriodUsage() {
        val payload = ProviderNativeUsagePayloadFetcher.cursorUsagePayloadForTest { url, body ->
            when (url) {
                "https://api2.cursor.sh/aiserver.v1.DashboardService/GetCurrentPeriodUsage" -> {
                    assertEquals("{}", body)
                    """
                    {
                      "ok": true,
                      "status": 200,
                      "json": {
                        "membershipType": "Pro",
                        "email": "user@example.com",
                        "planUsage": {
                          "totalPercentUsed": 17,
                          "autoPercentUsed": 9,
                          "apiPercentUsed": 2,
                          "resetAt": 1781677951075
                        }
                      }
                    }
                    """.trimIndent()
                }
                else -> """{"ok":false,"status":404,"json":{}}"""
            }
        }

        assertNotNull(payload)
        val snapshot = ProviderUsageNormalizer.normalize(
            providerId = ProviderId.CURSOR,
            rawPayload = payload!!,
            source = ProviderPayloadSource.NETWORK_RESPONSE,
            fetchedAt = "2026-07-01T00:00:00Z"
        )

        assertNotNull(snapshot)
        assertEquals("Pro", snapshot!!.plan)
        assertEquals("user@example.com", snapshot.account)
        assertEquals(listOf("Total usage", "Auto usage", "API usage"), snapshot.lines.map { it.label })
        assertEquals(0.83f, snapshot.lines.single { it.label == "Total usage" }.remainingPercent ?: 0f, 0.001f)
        assertEquals(0.91f, snapshot.lines.single { it.label == "Auto usage" }.remainingPercent ?: 0f, 0.001f)
        assertEquals(0.98f, snapshot.lines.single { it.label == "API usage" }.remainingPercent ?: 0f, 0.001f)
    }

    @Test
    fun cursorNativeUsagePayloadStopsAfterTrustedCurrentPeriodUsage() {
        val requested = mutableListOf<Pair<String, String?>>()
        val payload = ProviderNativeUsagePayloadFetcher.cursorUsagePayloadForTest { url, body ->
            requested += url to body
            ProviderNativeJsonBridge.wrappedResponse(
                url,
                200,
                """
                {
                  "membershipType": "Pro",
                  "planUsage": {
                    "totalPercentUsed": 25,
                    "autoPercentUsed": 5,
                    "apiPercentUsed": 2
                  }
                }
                """.trimIndent()
            ).toString()
        }

        assertNotNull(payload)
        assertEquals(
            listOf("https://api2.cursor.sh/aiserver.v1.DashboardService/GetCurrentPeriodUsage" to "{}"),
            requested
        )
    }

    @Test
    fun cursorNativeUsagePayloadContinuesAfterUntrustedCurrentPeriodUsage() {
        val requested = mutableListOf<Pair<String, String?>>()
        val payload = ProviderNativeUsagePayloadFetcher.cursorUsagePayloadForTest { url, body ->
            requested += url to body
            val response = when (url) {
                "https://cursor.com/api/usage" -> """
                    {
                      "membershipType": "Pro",
                      "planUsage": {
                        "totalPercentUsed": 25,
                        "autoPercentUsed": 5,
                        "apiPercentUsed": 2
                      }
                    }
                """.trimIndent()
                else -> "{}"
            }
            ProviderNativeJsonBridge.wrappedResponse(url, 200, response).toString()
        }

        assertNotNull(payload)
        assertEquals(
            "https://api2.cursor.sh/aiserver.v1.DashboardService/GetCurrentPeriodUsage" to "{}",
            requested.first()
        )
        assertTrue(requested.contains("https://api2.cursor.sh/aiserver.v1.DashboardService/GetPlanInfo" to "{}"))
        assertTrue(requested.contains("https://cursor.com/api/usage" to null))
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
    fun opencodeNativeUsagePayloadFetchesStoredGoUrlThroughNativeBridge() {
        val requestedUrls = mutableListOf<String>()
        val payload = ProviderNativeUsagePayloadFetcher.openCodeUsagePayloadForTest(
            userAgent = "test-agent",
            bridgePageUrl = "https://opencode.ai/workspace/wrk_123/go",
            fetchJson = { providerId, url, userAgent, headers ->
                assertEquals(ProviderId.OPENCODE, providerId)
                assertEquals("test-agent", userAgent)
                assertTrue(headers.isEmpty())
                requestedUrls += url
                ProviderNativeJsonBridge.wrappedResponse(
                    url,
                    200,
                    """
                    {
                      "data": {
                        "plan": "OpenCode Go",
                        "account": "user@example.com",
                        "limits": [
                          {"label": "Go 5 hour limit", "remaining_percent": 75, "used": 3, "limit": 12, "unit": "usd"},
                          {"label": "Go weekly limit", "used": 12, "limit": 30, "unit": "usd"}
                        ],
                        "credits": {"balance": 4.5, "limit": 10}
                      }
                    }
                    """.trimIndent()
                ).toString()
            }
        )

        assertEquals(listOf("https://opencode.ai/workspace/wrk_123/go"), requestedUrls)
        assertNotNull(payload)
        assertFalse(payload!!.contains("visible-dom"))

        val snapshot = ProviderUsageNormalizer.normalize(
            providerId = ProviderId.OPENCODE,
            rawPayload = payload,
            source = ProviderPayloadSource.NETWORK_RESPONSE,
            fetchedAt = "2026-07-01T00:00:00Z"
        )

        assertNotNull(snapshot)
        assertEquals("Go", snapshot!!.plan)
        assertEquals("user@example.com", snapshot.account)
        assertEquals(
            listOf("Go 5-Hour Limit", "Go Weekly Limit", "Zen Credits"),
            snapshot.lines.map { it.label }
        )
        assertEquals(0.75f, snapshot.lines.single { it.key == "opencode:go_5_hour_limit" }.remainingPercent ?: 0f, 0.001f)
    }

    @Test
    fun cursorNativeUsagePayloadBuildsFromNativeFetchResultsWithoutDomFallback() {
        val requested = mutableListOf<Pair<String, String?>>()
        val payload = ProviderNativeUsagePayloadFetcher.cursorUsagePayloadForTest { url, body ->
            requested += url to body
            val response = when (url) {
                "https://api2.cursor.sh/aiserver.v1.DashboardService/GetCurrentPeriodUsage" -> """
                    {
                      "membershipType": "Pro",
                      "planUsage": {
                        "totalPercentUsed": 25,
                        "autoPercentUsed": 5,
                        "apiPercentUsed": 2,
                        "billingCycleEnd": "2026-07-15T00:00:00Z"
                      },
                      "requestUsage": {
                        "premium": { "numRequests": 12, "maxRequestUsage": 100 }
                      }
                    }
                """.trimIndent()
                else -> "{}"
            }
            ProviderNativeJsonBridge.wrappedResponse(url, 200, response).toString()
        }

        assertTrue(requested.contains("https://api2.cursor.sh/aiserver.v1.DashboardService/GetCurrentPeriodUsage" to "{}"))
        assertNotNull(payload)
        assertFalse(payload!!.contains("__NEXT_DATA__"))
        assertFalse(payload.contains("visible-dom"))

        val snapshot = ProviderUsageNormalizer.normalize(
            providerId = ProviderId.CURSOR,
            rawPayload = payload,
            source = ProviderPayloadSource.NETWORK_RESPONSE,
            fetchedAt = "2026-07-01T00:00:00Z"
        )

        assertNotNull(snapshot)
        assertEquals("Pro", snapshot!!.plan)
        assertEquals(listOf("Total usage", "Requests", "Auto usage", "API usage"), snapshot.lines.map { it.label })
        assertEquals(0.75f, snapshot.lines.single { it.key == "cursor:total" }.remainingPercent ?: 0f, 0.001f)
    }

    @Test
    fun opencodeNativeUsagePayloadExtractsEmbeddedUsageJsonFromFetchedGoHtml() {
        val payload = ProviderNativeUsagePayloadFetcher.openCodeUsagePayloadForTest(
            userAgent = "test-agent",
            bridgePageUrl = "https://opencode.ai/workspace/wrk_123/go",
            fetchJson = { _, url, _, _ ->
                ProviderNativeJsonBridge.wrappedResponse(
                    url,
                    200,
                    """
                    <html>
                      <head>
                        <script type="application/json" data-hk="route">
                          {
                            "routeData": {
                              "workspace": {
                                "plan": "OpenCode Go",
                                "account": "user@example.com",
                                "goUsage": {
                                  "displayName": "Go weekly usage",
                                  "used": 12,
                                  "limit": 30,
                                  "unit": "usd"
                                },
                                "wallet": {
                                  "balance": 4.5,
                                  "limit": 10
                                }
                              }
                            }
                          }
                        </script>
                      </head>
                    </html>
                    """.trimIndent()
                ).toString()
            }
        )

        assertNotNull(payload)
        assertFalse(payload!!.contains("<html"))

        val snapshot = ProviderUsageNormalizer.normalize(
            providerId = ProviderId.OPENCODE,
            rawPayload = payload,
            source = ProviderPayloadSource.NETWORK_RESPONSE,
            fetchedAt = "2026-07-01T00:00:00Z"
        )

        assertNotNull(snapshot)
        assertEquals("Go", snapshot!!.plan)
        assertEquals("user@example.com", snapshot.account)
        assertEquals(listOf("Go Weekly Limit", "Zen Credits"), snapshot.lines.map { it.label })
        assertEquals(0.60f, snapshot.lines.single { it.key == "opencode:go_weekly_limit" }.remainingPercent ?: 0f, 0.001f)
    }

    @Test
    fun opencodeNativeUsagePayloadExtractsServerUsageObjectFromFetchedGoHtml() {
        val usageTextNoise = (1..35).joinToString("") {
            """<span data-slot="usage-label">Usage</span>"""
        }
        val requestedUrls = mutableListOf<String>()
        val payload = ProviderNativeUsagePayloadFetcher.openCodeUsagePayloadForTest(
            userAgent = "test-agent",
            bridgePageUrl = "https://opencode.ai/workspace/wrk_123/go",
            fetchJson = { _, url, _, _ ->
                requestedUrls += url
                ProviderNativeJsonBridge.wrappedResponse(
                    url,
                    200,
                    """
                    <html>
                      <body>$usageTextNoise</body>
                      <script>
                        ${'$'}R[28](${'$'}R[18],${'$'}R[35]={
                          mine:!0,
                          useBalance:!1,
                          region:${'$'}R[36]=["us","eu","sg"],
                          rollingUsage:${'$'}R[37]={status:"ok",resetInSec:3600,usagePercent:25},
                          weeklyUsage:${'$'}R[38]={status:"ok",resetInSec:604800,usagePercent:40}
                        });
                      </script>
                    </html>
                    """.trimIndent()
                ).toString()
            }
        )

        assertEquals(listOf("https://opencode.ai/workspace/wrk_123/go"), requestedUrls)
        assertNotNull(payload)
        assertFalse(payload!!.contains("<html"))
        assertFalse(payload.contains("rollingUsage"))
        assertTrue(payload.contains("native-server-function"))

        val snapshot = ProviderUsageNormalizer.normalize(
            providerId = ProviderId.OPENCODE,
            rawPayload = payload,
            source = ProviderPayloadSource.NETWORK_RESPONSE,
            fetchedAt = "2026-07-01T00:00:00Z"
        )

        assertNotNull(snapshot)
        assertEquals(listOf("Go 5-Hour Limit", "Go Weekly Limit"), snapshot!!.lines.map { it.label })
        assertEquals(0.75f, snapshot.lines.single { it.key == "opencode:go_5_hour_limit" }.remainingPercent ?: 0f, 0.001f)
        assertEquals(0.60f, snapshot.lines.single { it.key == "opencode:go_weekly_limit" }.remainingPercent ?: 0f, 0.001f)
    }

    @Test
    fun opencodeNativeUsagePayloadFetchesServerSubscriptionWhenGoHtmlHasNoUsageSignals() {
        val requestedUrls = mutableListOf<String>()
        val headersByUrl = linkedMapOf<String, Map<String, String>>()
        val subscriptionUrl = "https://opencode.ai/_server?id=7abeebee372f304e050aaaf92be863f4a86490e382f8c79db68fd94040d691b4&args=%5B%22wrk_123%22%5D"
        val payload = ProviderNativeUsagePayloadFetcher.openCodeUsagePayloadForTest(
            userAgent = "test-agent",
            bridgePageUrl = "https://opencode.ai/workspace/wrk_123/go",
            fetchJson = { providerId, url, userAgent, headers ->
                assertEquals(ProviderId.OPENCODE, providerId)
                assertEquals("test-agent", userAgent)
                requestedUrls += url
                headersByUrl[url] = headers
                val body = when (url) {
                    "https://opencode.ai/workspace/wrk_123/go" ->
                        """
                        <html>
                          <body>
                            <a href="/github/authorize">Continue with GitHub</a>
                          </body>
                        </html>
                        """.trimIndent()
                    subscriptionUrl ->
                        """
                        export default {
                          rollingUsage: { usagePercent: 25, resetInSec: 3600 },
                          weeklyUsage: { usagePercent: 40, resetInSec: 604800 }
                        }
                        """.trimIndent()
                    else -> ""
                }
                ProviderNativeJsonBridge.wrappedResponse(url, if (body.isBlank()) 404 else 200, body).toString()
            }
        )

        assertEquals(listOf("https://opencode.ai/workspace/wrk_123/go", subscriptionUrl), requestedUrls)
        assertEquals("7abeebee372f304e050aaaf92be863f4a86490e382f8c79db68fd94040d691b4", headersByUrl[subscriptionUrl]?.get("X-Server-Id"))
        assertEquals("https://opencode.ai", headersByUrl[subscriptionUrl]?.get("Origin"))
        assertEquals("https://opencode.ai/workspace/wrk_123/billing", headersByUrl[subscriptionUrl]?.get("Referer"))
        assertNotNull(payload)
        assertFalse(payload!!.contains("rollingUsage"))
        assertFalse(payload.contains("<html"))

        val snapshot = ProviderUsageNormalizer.normalize(
            providerId = ProviderId.OPENCODE,
            rawPayload = payload,
            source = ProviderPayloadSource.NETWORK_RESPONSE,
            fetchedAt = "2026-07-01T00:00:00Z"
        )

        assertNotNull(snapshot)
        assertEquals(listOf("Go 5-Hour Limit", "Go Weekly Limit"), snapshot!!.lines.map { it.label })
        assertEquals(0.75f, snapshot.lines.single { it.key == "opencode:go_5_hour_limit" }.remainingPercent ?: 0f, 0.001f)
        assertEquals(0.60f, snapshot.lines.single { it.key == "opencode:go_weekly_limit" }.remainingPercent ?: 0f, 0.001f)
        assertEquals("Resets in 1h", snapshot.lines.single { it.key == "opencode:go_5_hour_limit" }.resetText)
    }

    @Test
    fun opencodeNativeUsagePayloadFormatsResetSecondsWithSecondUnit() {
        val payload = ProviderNativeUsagePayloadFetcher.openCodeUsagePayloadForTest(
            userAgent = "test-agent",
            bridgePageUrl = "https://opencode.ai/workspace/wrk_123/go",
            fetchJson = { _, url, _, _ ->
                ProviderNativeJsonBridge.wrappedResponse(
                    url,
                    200,
                    """
                    <html>
                      <script>
                        ${'$'}R[28](${'$'}R[18],${'$'}R[35]={
                          rollingUsage:${'$'}R[37]={status:"ok",resetInSec:17280,usagePercent:25},
                          weeklyUsage:${'$'}R[38]={status:"ok",resetInSec:381600,usagePercent:40}
                        });
                      </script>
                    </html>
                    """.trimIndent()
                ).toString()
            }
        )

        assertNotNull(payload)

        val snapshot = ProviderUsageNormalizer.normalize(
            providerId = ProviderId.OPENCODE,
            rawPayload = payload!!,
            source = ProviderPayloadSource.NETWORK_RESPONSE,
            fetchedAt = "2026-07-01T00:00:00Z"
        )

        assertNotNull(snapshot)
        assertEquals("Resets in 4h 48m", snapshot!!.lines.single { it.key == "opencode:go_5_hour_limit" }.resetText)
        assertEquals("Resets in 4d 10h", snapshot.lines.single { it.key == "opencode:go_weekly_limit" }.resetText)
    }

    @Test
    fun opencodeNativeUsagePayloadRejectsBootstrapJsonWithoutUsageMetrics() {
        val payload = ProviderNativeUsagePayloadFetcher.openCodeUsagePayloadForTest(
            userAgent = "test-agent",
            bridgePageUrl = "https://opencode.ai/workspace/wrk_123/go",
            fetchJson = { _, url, _, _ ->
                ProviderNativeJsonBridge.wrappedResponse(
                    url,
                    200,
                    """
                    {
                      "data": {
                        "plan": "OpenCode Go",
                        "limits": [
                          {"label": "Go weekly limit"}
                        ],
                        "bootstrap": {
                          "workspaceId": "wrk_123"
                        }
                      }
                    }
                    """.trimIndent()
                ).toString()
            }
        )

        assertNull(payload)
    }

    @Test
    fun opencodeNativeUsagePayloadRejectsEmbeddedBootstrapBalanceWithoutCreditContext() {
        val payload = ProviderNativeUsagePayloadFetcher.openCodeUsagePayloadForTest(
            userAgent = "test-agent",
            bridgePageUrl = "https://opencode.ai/workspace/wrk_123/go",
            fetchJson = { _, url, _, _ ->
                ProviderNativeJsonBridge.wrappedResponse(
                    url,
                    200,
                    """
                    <html>
                      <script type="application/json">
                        {
                          "routeData": {
                            "bootstrap": {
                              "balance": 4.5,
                              "limit": 10,
                              "workspaceId": "wrk_123"
                            }
                          }
                        }
                      </script>
                    </html>
                    """.trimIndent()
                ).toString()
            }
        )

        assertNull(payload)
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

    private fun claudeNativeUsagePayloadForTest(
        subscriptionJson: String,
        requestedUrls: MutableList<String> = mutableListOf()
    ): String? {
        val method = ProviderNativeUsagePayloadFetcher::class.java.getDeclaredMethod(
            "fetchClaudePayload",
            String::class.java,
            Function1::class.java,
            Function4::class.java
        )
        method.isAccessible = true
        val result = method.invoke(
            ProviderNativeUsagePayloadFetcher,
            "test-agent",
            { _: String -> mapOf("Authorization" to "Selected auth") },
            { _: ProviderId, url: String, _: String, _: Map<String, String> ->
                requestedUrls += url
                ProviderNativeJsonBridge.wrappedResponse(url, 200, claudeResponseFor(url, subscriptionJson)).toString()
            }
        )
        val payloadField = result.javaClass.getDeclaredField("payload")
        payloadField.isAccessible = true
        return payloadField.get(result) as String?
    }

    private fun claudeResponseFor(url: String, subscriptionJson: String): String {
        return when {
            url.endsWith("/api/organizations") -> """[{"uuid":"org_test"}]"""
            url.endsWith("/api/account_profile") -> """{"email":"claude@example.com"}"""
            url.contains("/subscription_details") -> subscriptionJson
            url.contains("/usage") -> """{"usage":{"five_hour":{"used_percent":25}}}"""
            else -> "{}"
        }
    }
}
