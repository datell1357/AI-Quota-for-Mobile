package com.aiquota.mobile.providers

import java.io.File
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test

class ProviderProbeCooldownTest {
    private val url = "https://api2.cursor.sh/aiserver.v1.DashboardService/GetPlanInfo"

    @Before
    fun clearState() {
        ProviderProbeCooldown.reset()
    }

    @Test
    fun rejectedEndpointIsSkippedUntilCooldownExpires() {
        ProviderProbeCooldown.record(url, 401, nowMillis = 1_000L)

        assertTrue(ProviderProbeCooldown.shouldSkip(url, nowMillis = 1_000L))
        assertTrue(ProviderProbeCooldown.shouldSkip(url, nowMillis = 1_000L + ProviderProbeCooldown.COOLDOWN_MILLIS - 1))
        // 시간이 지나면 다시 시도해 요금제 변경 같은 상황을 스스로 따라잡는다.
        assertFalse(ProviderProbeCooldown.shouldSkip(url, nowMillis = 1_000L + ProviderProbeCooldown.COOLDOWN_MILLIS))
    }

    @Test
    fun transientFailuresAreNotCooledDown() {
        ProviderProbeCooldown.record(url, 500, nowMillis = 1_000L)
        assertFalse("5xx는 일시적이라 계속 시도한다", ProviderProbeCooldown.shouldSkip(url, nowMillis = 1_000L))

        ProviderProbeCooldown.record(url, -1, nowMillis = 1_000L)
        assertFalse("네트워크 오류도 마찬가지다", ProviderProbeCooldown.shouldSkip(url, nowMillis = 1_000L))
    }

    @Test
    fun successClearsCooldownImmediately() {
        ProviderProbeCooldown.record(url, 404, nowMillis = 1_000L)
        assertTrue(ProviderProbeCooldown.shouldSkip(url, nowMillis = 1_000L))

        ProviderProbeCooldown.record(url, 200, nowMillis = 2_000L)
        assertFalse(ProviderProbeCooldown.shouldSkip(url, nowMillis = 2_000L))
    }

    @Test
    fun cursorProbeLoopConsultsTheCooldown() {
        val fetcher = File(
            "src/main/java/com/aiquota/mobile/providers/ProviderNativeUsagePayloadFetcher.kt"
        ).readText()
        val cursorLoop = fetcher.substringAfter("private fun fetchCursorPayload")
            .substringBefore("private fun fetchCursorWrapped")

        assertTrue(cursorLoop.contains("ProviderProbeCooldown.shouldSkip(probe.url)"))
        assertTrue(
            "건너뛴 사실이 진단 문자열에 남아야 원인을 추적할 수 있다",
            cursorLoop.contains("skipped:cooldown")
        )
        assertTrue(
            "응답 상태를 기록해야 쿨다운이 갱신된다",
            fetcher.contains("ProviderProbeCooldown.record(url, status)")
        )
    }
}
