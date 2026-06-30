package com.aiquota.mobile.providers

import com.aiquota.mobile.local.ProviderConnectionState
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.local.ProviderUsageLine
import com.aiquota.mobile.local.ProviderUsageSnapshot
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class ProviderSnapshotCodecTest {
    @Test
    fun decodeDemotesConnectedSnapshotWithoutUsageLines() {
        val raw = """
            {
              "providers": [
                {
                  "providerId": "codex",
                  "connectionState": "CONNECTED",
                  "refreshState": "IDLE",
                  "updatedAt": "2026-05-19T00:00:00Z",
                  "lines": []
                }
              ]
            }
        """.trimIndent()

        val snapshot = ProviderSnapshotCodec.decode(raw).single()

        assertEquals(ProviderId.CODEX, snapshot.providerId)
        assertEquals(ProviderConnectionState.UNAVAILABLE, snapshot.connectionState)
        assertTrue(snapshot.lines.isEmpty())
    }

    @Test
    fun decodeKeepsGlmNoSubscriptionSnapshotConnectedWithoutUsageLines() {
        val raw = """
            {
              "providers": [
                {
                  "providerId": "glm",
                  "connectionState": "CONNECTED",
                  "refreshState": "IDLE",
                  "planLabel": "Plan 없음",
                  "message": "You don't have any subscription",
                  "updatedAt": "2026-06-18T08:53:07Z",
                  "lines": []
                }
              ]
            }
        """.trimIndent()

        val snapshot = ProviderSnapshotCodec.decode(raw).single()

        assertEquals(ProviderId.GLM, snapshot.providerId)
        assertEquals(ProviderConnectionState.CONNECTED, snapshot.connectionState)
        assertEquals("Plan 없음", snapshot.planLabel)
        assertTrue(snapshot.lines.isEmpty())
    }

    @Test
    fun decodeKeepsRetryPendingStaleGoogleSnapshotWithoutUsageLines() {
        val raw = """
            {
              "providers": [
                {
                  "providerId": "gemini",
                  "connectionState": "STALE",
                  "refreshState": "IDLE",
                  "updatedAt": "2026-05-27T00:00:00Z",
                  "message": "Provider session reached, but trusted usage payload was not available yet.",
                  "lines": []
                }
              ]
            }
        """.trimIndent()

        val snapshot = ProviderSnapshotCodec.decode(raw).single()

        assertEquals(ProviderId.GEMINI, snapshot.providerId)
        assertEquals(ProviderConnectionState.STALE, snapshot.connectionState)
        assertTrue(snapshot.lines.isEmpty())
    }

    @Test
    fun decodeLegacySnapshotUsesUpdatedAtAsStatusUpdatedAt() {
        val raw = """
            {
              "providers": [
                {
                  "providerId": "codex",
                  "connectionState": "CONNECTED",
                  "refreshState": "IDLE",
                  "updatedAt": "2026-06-18T04:00:00Z",
                  "lines": [
                    {
                      "key": "codex:primary_window",
                      "label": "Codex Session",
                      "remainingPercent": 0.27
                    }
                  ]
                }
              ]
            }
        """.trimIndent()

        val snapshot = ProviderSnapshotCodec.decode(raw).single()

        assertEquals("2026-06-18T04:00:00Z", snapshot.updatedAt)
        assertEquals("2026-06-18T04:00:00Z", snapshot.statusUpdatedAt)
    }

    @Test
    fun encodePersistsStatusUpdatedAtSeparatelyFromUsageUpdatedAt() {
        val snapshot = ProviderUsageSnapshot(
            providerId = ProviderId.CODEX,
            connectionState = ProviderConnectionState.CONNECTED,
            updatedAt = "2026-06-18T04:00:00Z",
            statusUpdatedAt = "2026-06-18T07:00:00Z",
            lines = listOf(ProviderUsageLine(label = "Codex Session", remainingPercent = 0.27f))
        )

        val decoded = ProviderSnapshotCodec.decode(ProviderSnapshotCodec.encode(listOf(snapshot))).single()

        assertEquals("2026-06-18T04:00:00Z", decoded.updatedAt)
        assertEquals("2026-06-18T07:00:00Z", decoded.statusUpdatedAt)
    }

    @Test
    fun encodePersistsGeminiUsagePageAmounts() {
        val snapshot = ProviderUsageSnapshot(
            providerId = ProviderId.GEMINI,
            connectionState = ProviderConnectionState.CONNECTED,
            lines = listOf(
                ProviderUsageLine(
                    key = "gemini:5_hour_limit",
                    label = "5-hour limit",
                    remainingPercent = 1.0f,
                    remainingText = "600 of 600 requests left",
                    usedAmount = 0.0,
                    limitAmount = 600.0,
                    remainingAmount = 600.0,
                    unit = "requests",
                    resetsAt = "2026-06-30T03:07:53.919Z"
                )
            )
        )

        val decoded = ProviderSnapshotCodec.decode(ProviderSnapshotCodec.encode(listOf(snapshot))).single()
        val line = decoded.lines.single()

        assertEquals("requests", line.unit)
        assertEquals(0.0, line.usedAmount ?: -1.0, 0.001)
        assertEquals(600.0, line.limitAmount ?: 0.0, 0.001)
        assertEquals(600.0, line.remainingAmount ?: 0.0, 0.001)
        assertEquals("100% left", line.remainingText)
        assertEquals("2026-06-30T03:07:53.919Z", line.resetsAt)
    }
}
