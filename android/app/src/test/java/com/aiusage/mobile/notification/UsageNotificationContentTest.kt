package com.aiusage.mobile.notification

import org.junit.Assert.assertEquals
import org.junit.Test
import java.time.Instant

class UsageNotificationContentTest {
    @Test
    fun buildsGaugeNotificationContentFromActiveProvidersOnly() {
        val snapshotJson = """
            {
              "providers": [
                {"providerId":"claude","status":"ok","lines":[{"label":"Session","used":22,"limit":100,"remaining":78,"resetsAt":"2026-05-06T03:00:00Z"}]},
                {"providerId":"gemini","status":"disabled","lines":[{"label":"Pro","used":0,"limit":100,"remaining":100}]},
                {"providerId":"codex","status":"ok","lines":[{"label":"Session","used":19,"limit":100,"remaining":81,"resetsAt":"2026-05-06T04:00:00Z"}]},
                {"providerId":"copilot","status":"ok","lines":[{"label":"Premium","used":36,"limit":100,"remaining":64,"resetsAt":"2026-05-06T05:00:00Z"}]}
              ]
            }
        """.trimIndent()

        val content = buildUsageNotificationContent(snapshotJson, Instant.parse("2026-05-06T02:00:00Z"))

        assertEquals("AI Usage", content.title)
        assertEquals("Claude 78% | Codex 81% | Copilot 64%", content.summary)
        assertEquals(listOf("claude", "codex", "copilot"), content.gauges.map { it.providerId })
        assertEquals(listOf("78% left", "81% left", "64% left"), content.gaugeRows.map { it.remainingText })
        assertEquals(listOf("Resets in 1h 0m", "Resets in 2h 0m", "Resets in 3h 0m"), content.gaugeRows.map { it.resetText })
    }

    @Test
    fun splitsFourProviderNotificationSummaryAcrossTwoLines() {
        val snapshotJson = """
            {
              "providers": [
                {"providerId":"claude","status":"ok","lines":[{"label":"Session","used":0,"limit":100}]},
                {"providerId":"codex","status":"ok","lines":[{"label":"Session","used":8,"limit":100}]},
                {"providerId":"gemini","status":"ok","lines":[{"label":"Pro","used":0,"limit":100}]},
                {"providerId":"copilot","status":"error","lines":[]}
              ]
            }
        """.trimIndent()

        val content = buildUsageNotificationContent(snapshotJson, Instant.parse("2026-05-06T02:00:00Z"))

        assertEquals("Claude 100% | Codex 92%\nGemini 100% | Copilot Error", content.summary)
    }
}
