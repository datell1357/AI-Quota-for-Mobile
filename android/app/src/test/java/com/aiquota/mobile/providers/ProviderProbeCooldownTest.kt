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
    fun expiredCooldownAlsoClearsAccumulatedStrikes() {
        // 누적이 남으면 만료 후 첫 거절이 곧바로 다시 30분을 채워 "연속 2회" 보호가 사라진다.
        repeat(ProviderProbeCooldown.STRIKES_BEFORE_COOLDOWN) {
            ProviderProbeCooldown.record(url, 401, nowMillis = 1_000L)
        }
        val afterExpiry = 1_000L + ProviderProbeCooldown.COOLDOWN_MILLIS
        assertFalse(ProviderProbeCooldown.shouldSkip(url, nowMillis = afterExpiry))

        ProviderProbeCooldown.record(url, 401, nowMillis = afterExpiry)
        assertFalse("만료 뒤 첫 거절은 다시 1회째여야 한다", ProviderProbeCooldown.shouldSkip(url, nowMillis = afterExpiry))
    }

    @Test
    fun userInitiatedRefreshAndSessionResetClearTheCooldown() {
        val service = File(
            "src/main/java/com/aiquota/mobile/providers/ProviderBackgroundRefreshService.kt"
        ).readText()

        assertTrue(
            "provider를 지정하지 않는 전체 위젯 새로고침도 사용자 요청이다",
            service.contains("if (userInitiated) ProviderProbeCooldown.reset()")
        )
        val reset = service.substringAfter("private fun handleProviderSessionReset")
            .substringBefore("private fun startForegroundNotification")
        assertTrue("재로그인 뒤에는 쿨다운이 남아 있으면 안 된다", reset.contains("ProviderCollectionCaches.invalidate(providerId)"))

        // 방송은 서비스가 살아 있을 때만 닿는다. 서비스가 없을 때의 연결 해제도 캐시를 비워야 한다.
        val resetter = File("src/main/java/com/aiquota/mobile/providers/ProviderSessionResetter.kt").readText()
        assertTrue(resetter.contains("ProviderCollectionCaches.invalidate(providerId)"))
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
