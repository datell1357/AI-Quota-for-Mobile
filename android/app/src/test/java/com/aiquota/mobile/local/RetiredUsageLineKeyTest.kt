package com.aiquota.mobile.local

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * Grok 키 스키마가 grok:DEFAULT:grok-4 → grok:grok-4 로 바뀌었다. 이전 스냅샷의 옛 키를
 * 병합에서 걸러내지 않으면 같은 값이 중복 표시된 채 사라지지 않는다.
 */
class RetiredUsageLineKeyTest {
    @Test
    fun retiresOldGrokKeysThatCarriedRequestKind() {
        listOf(
            "grok:DEFAULT:grok-4",
            "grok:REASONING:grok-4",
            "grok:DEEPSEARCH:grok-4",
            "grok:DEFAULT:grok-3",
            "grok:DEFAULT:grok-4:high"
        ).forEach { key ->
            assertTrue("$key 는 폐기된 키다", isRetiredUsageLineKey(ProviderId.GROK, key))
        }
    }

    @Test
    fun keepsCurrentGrokKeys() {
        listOf("grok:grok-4", "grok:grok-3", "grok:grok-4:high", "grok:weekly").forEach { key ->
            assertFalse("$key 는 현재 키다", isRetiredUsageLineKey(ProviderId.GROK, key))
        }
    }

    @Test
    fun neverRetiresOtherProviderKeys() {
        ProviderId.entries.filterNot { it == ProviderId.GROK }.forEach { providerId ->
            assertFalse(isRetiredUsageLineKey(providerId, "grok:DEFAULT:grok-4"))
            assertFalse(isRetiredUsageLineKey(providerId, "claude:session"))
        }
    }

    @Test
    fun pinsWeeklyLineAboveShortWindowLines() {
        val lines = listOf(
            ProviderUsageLine(key = "grok:grok-4", label = "grok-4 · 2h limit", remainingPercent = 1f),
            ProviderUsageLine(key = "grok:grok-3", label = "grok-3 · 2h limit", remainingPercent = 1f),
            ProviderUsageLine(key = "grok:weekly", label = "SuperGrok weekly", remainingPercent = 0.65f)
        )

        val ordered = pinPrimaryLinesFirst(ProviderId.GROK, lines)

        assertEquals(
            listOf("grok:weekly", "grok:grok-4", "grok:grok-3"),
            ordered.map { it.key }
        )
    }

    @Test
    fun keepsRelativeOrderOfEverythingElse() {
        val lines = listOf(
            ProviderUsageLine(key = "codex:session", label = "Codex Session", remainingPercent = 1f),
            ProviderUsageLine(key = "codex:secondary_window", label = "Codex Weekly", remainingPercent = 1f)
        )

        assertEquals(lines, pinPrimaryLinesFirst(ProviderId.CODEX, lines))
    }
}
