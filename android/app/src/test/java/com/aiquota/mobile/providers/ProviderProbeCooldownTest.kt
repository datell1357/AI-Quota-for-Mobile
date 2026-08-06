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
    fun singleRejectionDoesNotBlockTheEndpoint() {
        // 세션 쿠키가 잠깐 비었거나 WAF가 순간적으로 막은 경우다. 한 번에 30분을 쉬면
        // 재로그인 직후 같은 상황에서 수집이 통째로 멈춘다.
        ProviderProbeCooldown.record(url, 401, nowMillis = 1_000L)

        assertFalse(ProviderProbeCooldown.shouldSkip(url, nowMillis = 1_000L))
    }

    @Test
    fun rejectedEndpointIsSkippedUntilCooldownExpires() {
        repeat(ProviderProbeCooldown.STRIKES_BEFORE_COOLDOWN) {
            ProviderProbeCooldown.record(url, 401, nowMillis = 1_000L)
        }

        assertTrue(ProviderProbeCooldown.shouldSkip(url, nowMillis = 1_000L))
        assertTrue(ProviderProbeCooldown.shouldSkip(url, nowMillis = 1_000L + ProviderProbeCooldown.COOLDOWN_MILLIS - 1))
        // 시간이 지나면 다시 시도해 요금제 변경 같은 상황을 스스로 따라잡는다.
        assertFalse(ProviderProbeCooldown.shouldSkip(url, nowMillis = 1_000L + ProviderProbeCooldown.COOLDOWN_MILLIS))
    }

    @Test
    fun successResetsAccumulatedStrikes() {
        ProviderProbeCooldown.record(url, 401, nowMillis = 1_000L)
        ProviderProbeCooldown.record(url, 200, nowMillis = 2_000L)
        ProviderProbeCooldown.record(url, 401, nowMillis = 3_000L)

        assertFalse("성공 이후의 첫 거절은 다시 1회째다", ProviderProbeCooldown.shouldSkip(url, nowMillis = 3_000L))
    }

    @Test
    fun transientFailuresAreNotCooledDown() {
        ProviderProbeCooldown.record(url, 500, nowMillis = 1_000L)
        ProviderProbeCooldown.record(url, 500, nowMillis = 2_000L)
        assertFalse("5xx는 일시적이라 계속 시도한다", ProviderProbeCooldown.shouldSkip(url, nowMillis = 1_000L))

        ProviderProbeCooldown.record(url, -1, nowMillis = 1_000L)
        assertFalse("네트워크 오류도 마찬가지다", ProviderProbeCooldown.shouldSkip(url, nowMillis = 1_000L))
    }

    @Test
    fun successClearsCooldownImmediately() {
        repeat(ProviderProbeCooldown.STRIKES_BEFORE_COOLDOWN) {
            ProviderProbeCooldown.record(url, 404, nowMillis = 1_000L)
        }
        assertTrue(ProviderProbeCooldown.shouldSkip(url, nowMillis = 1_000L))

        ProviderProbeCooldown.record(url, 200, nowMillis = 2_000L)
        assertFalse(ProviderProbeCooldown.shouldSkip(url, nowMillis = 2_000L))
    }

    @Test
    fun userInitiatedRefreshAndSessionResetClearTheCooldown() {
        val service = File(
            "src/main/java/com/aiquota/mobile/providers/ProviderBackgroundRefreshService.kt"
        ).readText()

        assertTrue(
            "수동 새로고침은 쉬게 해 둔 엔드포인트도 다시 시도해야 빠져나올 길이 생긴다",
            service.contains("if (manualProviderId != null) ProviderProbeCooldown.reset()")
        )
        val reset = service.substringAfter("private fun handleProviderSessionReset")
            .substringBefore("private fun startForegroundNotification")
        assertTrue("재로그인 뒤에는 쿨다운이 남아 있으면 안 된다", reset.contains("ProviderProbeCooldown.reset()"))
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
