package com.aiquota.mobile.providers

import com.aiquota.mobile.local.ProviderId
import java.io.File
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertTrue
import org.junit.Test

class ProviderNativeUsagePayloadFetcherTest {
    @Test
    fun geminiNativePayloadParsesUsagePageTextWithoutDomFallback() {
        val rawText = """
            <html>
              <body>
                <main>
                  Google AI Pro
                  Current usage
                  5-hour limit
                  3% used
                  Resets in 2h 10m
                  Weekly limit
                  9% used
                  Resets in 4d 1h
                </main>
              </body>
            </html>
        """.trimIndent()

        val payload = ProviderNativeUsagePayloadFetcher.geminiUsagePayloadFromRawForTest(rawText)
        assertNotNull(payload)
        val snapshot = ProviderUsageNormalizer.normalize(
            providerId = ProviderId.GEMINI,
            rawPayload = payload.toString(),
            source = ProviderPayloadSource.NETWORK_RESPONSE,
            fetchedAt = "2026-06-29T00:00:00Z"
        )

        assertNotNull(snapshot)
        assertEquals("Pro", snapshot!!.plan)
        assertEquals(0.97f, snapshot.lines.single { it.label == "5-hour limit" }.remainingPercent ?: 0f, 0.001f)
        assertEquals("Resets in 2h 10m", snapshot.lines.single { it.label == "5-hour limit" }.resetText)
        assertEquals(0.91f, snapshot.lines.single { it.label == "Weekly limit" }.remainingPercent ?: 0f, 0.001f)
    }

    @Test
    fun geminiNativePayloadParsesStructuredJsonLimitRows() {
        val rawText = """
            <script type="application/json">
            {
              "account": {"p": "GEMINI_PLUS", "e": "tester@example.com"},
              "usage": {
                "x": [
                  {"l": "5-hour limit", "remainingPercent": 88, "resetText": "1h 4m"},
                  {"l": "Weekly limit", "remainingFraction": 0.75, "resetText": "3d 2h"}
                ]
              }
            }
            </script>
        """.trimIndent()

        val payload = ProviderNativeUsagePayloadFetcher.geminiUsagePayloadFromRawForTest(rawText)
        assertNotNull(payload)
        val snapshot = ProviderUsageNormalizer.normalize(
            providerId = ProviderId.GEMINI,
            rawPayload = payload.toString(),
            source = ProviderPayloadSource.NETWORK_RESPONSE,
            fetchedAt = "2026-06-29T00:00:00Z"
        )

        assertNotNull(snapshot)
        assertEquals("Plus", snapshot!!.plan)
        assertEquals("tester@example.com", snapshot.account)
        assertEquals(0.88f, snapshot.lines.single { it.label == "5-hour limit" }.remainingPercent ?: 0f, 0.001f)
        assertEquals(0.75f, snapshot.lines.single { it.label == "Weekly limit" }.remainingPercent ?: 0f, 0.001f)
    }

    @Test
    fun nativeProviderUsageFetcherDoesNotRouteGeminiThroughCodeAssist() {
        val source = File("src/main/java/com/aiquota/mobile/providers/ProviderNativeUsagePayloadFetcher.kt").readText()
        val bridgeMethod = source.substringAfter("fun bridgeUsagePayload")
            .substringBefore("private fun fetchClaudePayload")

        assertFalse(bridgeMethod.contains("GoogleWebSessionCodeAssistFetcher"))
        assertTrue(bridgeMethod.contains("ProviderId.GEMINI -> fetchGeminiPayload(userAgent)"))
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
}
