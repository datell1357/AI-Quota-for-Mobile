package com.aiusage.mobile.widget

import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class WidgetGaugeParserTest {
    @Test
    fun parsesUpToFourProviderGaugesInSnapshotOrder() {
        val snapshotJson = """
            {
              "providers": [
                {"providerId":"claude","displayName":"Claude","lines":[{"label":"Session","used":20,"limit":100,"remaining":80}]},
                {"providerId":"codex","displayName":"Codex","lines":[{"label":"Session","used":10,"limit":100,"remaining":90}]},
                {"providerId":"gemini","displayName":"Gemini","lines":[{"label":"Pro","used":0,"limit":100,"remaining":100}]},
                {"providerId":"copilot","displayName":"Copilot","lines":[{"label":"Premium","used":40,"limit":100,"remaining":60}]},
                {"providerId":"extra","displayName":"Extra","lines":[{"label":"Daily","used":99,"limit":100,"remaining":1}]}
              ]
            }
        """.trimIndent()

        val gauges = parseWidgetProviderGauges(snapshotJson)

        assertEquals(listOf("claude", "codex", "gemini", "copilot"), gauges.map { it.providerId })
        assertEquals(0.8f, gauges[0].remainingRatio)
        assertEquals(0.9f, gauges[1].remainingRatio)
        assertEquals(1.0f, gauges[2].remainingRatio)
        assertEquals(0.6f, gauges[3].remainingRatio)
    }

    @Test
    fun fallsBackToUsedAndLimitWhenRemainingIsMissing() {
        val snapshotJson = """
            {
              "providers": [
                {"providerId":"codex","lines":[{"label":"Session","used":25,"limit":100}]}
              ]
            }
        """.trimIndent()

        val gauges = parseWidgetProviderGauges(snapshotJson)

        assertEquals(1, gauges.size)
        assertEquals(0.75f, gauges.single().remainingRatio)
    }

    @Test
    fun skipsProvidersWithoutAGaugeableLimitLine() {
        val snapshotJson = """
            {
              "providers": [
                {"providerId":"empty","lines":[]},
                {"providerId":"claude","lines":[{"label":"Session","used":20,"limit":100,"remaining":80}]}
              ]
            }
        """.trimIndent()

        val gauges = parseWidgetProviderGauges(snapshotJson)

        assertEquals(1, gauges.size)
        assertEquals("claude", gauges.single().providerId)
        assertTrue(gauges.single().remainingRatio > 0f)
    }
}
