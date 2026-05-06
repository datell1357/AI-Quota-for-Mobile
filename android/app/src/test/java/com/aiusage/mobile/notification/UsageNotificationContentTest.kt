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
                {"providerId":"codex","status":"ok","lines":[{"label":"Session","used":19,"limit":100,"remaining":81,"resetsAt":"2026-05-06T04:00:00Z"}]}
              ]
            }
        """.trimIndent()

        val content = buildUsageNotificationContent(snapshotJson, Instant.parse("2026-05-06T02:00:00Z"))

        assertEquals("AI Usage", content.title)
        assertEquals("Claude 78% | Codex 81%", content.summary)
        assertEquals(listOf("claude", "codex"), content.gauges.map { it.providerId })
    }
}
