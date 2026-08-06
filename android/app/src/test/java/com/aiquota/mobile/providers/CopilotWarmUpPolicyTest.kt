package com.aiquota.mobile.providers

import java.io.File
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * Copilot 워밍업(github.com 홈 로드)은 주기당 90KB에 가까워 매번 할 이유가 없다.
 * 다만 건너뛰기만 하면 세션이 상해도 복구되지 않으므로, 되살릴 조건 두 가지를 고정한다.
 */
class CopilotWarmUpPolicyTest {
    private val service = File(
        "src/main/java/com/aiquota/mobile/providers/ProviderBackgroundRefreshService.kt"
    ).readText()

    @Test
    fun warmUpIsSkippedWhileSessionLooksHealthy() {
        assertTrue(
            "워밍업 여부는 정책 함수가 정한다",
            service.contains("ProviderId.COPILOT -> \"https://github.com/\".takeIf { copilotNeedsWarmUp() }")
        )
        assertTrue(
            "프로세스가 새로 뜨면 세션 상태를 모르므로 한 번은 워밍업한다",
            service.contains("private var copilotWarmUpPending = true")
        )
    }

    @Test
    fun failedCollectionRearmsWarmUp() {
        assertTrue(service.contains("markCopilotWarmUpPending(effectiveJob.providerId, pending = true)"))
        assertTrue(service.contains("markCopilotWarmUpPending(effectiveJob.providerId, pending = false)"))
    }

    @Test
    fun warmUpAlsoRunsOnATimerSoASilentlyStaleSessionRecovers() {
        // Copilot은 인증이 부분적으로 깨져도 요금제만 담긴 페이로드가 나와 "성공"으로 보인다.
        // 실패 판정에만 기대면 세션이 상해도 워밍업이 켜지지 않는다.
        assertTrue(
            service.contains("copilotWarmUpAtMillis >= COPILOT_WARM_UP_INTERVAL_MILLIS")
        )
        assertTrue(
            "강제 워밍업 주기는 수집 주기보다 훨씬 길어야 절감이 유지된다",
            service.contains("COPILOT_WARM_UP_INTERVAL_MILLIS = 30 * 60_000L")
        )
    }
}
