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
    private val resources = File(
        "src/main/java/com/aiquota/mobile/providers/ProviderAccountRefreshResources.kt"
    ).readText()

    @Test
    fun warmUpIsSkippedWhileSessionLooksHealthy() {
        assertTrue(
            "워밍업 여부는 정책 함수가 정한다",
            resources.contains("ProviderId.COPILOT -> \"https://github.com/\".takeIf { copilotNeedsWarmUp }")
        )
        assertTrue(
            "프로세스가 새로 뜨면 세션 상태를 모르므로 한 번은 워밍업한다",
            File("src/main/java/com/aiquota/mobile/providers/ProviderCollectionCaches.kt").readText().contains("private var pending = true")
        )
    }

    @Test
    fun failedCollectionRearmsWarmUp() {
        assertTrue(service.contains("markCopilotWarmUpPending(effectiveJob.providerId, pending = true)"))
        assertTrue(service.contains("markCopilotWarmUpPending(effectiveJob.providerId, pending = false)"))
        assertTrue(
            "페이로드가 와도 쓸 사용량이 없으면 성공이 아니다",
            service.contains("if (snapshot == null) markCopilotWarmUpPending(effectiveJob.providerId, pending = true)")
        )
    }

    @Test
    fun warmUpTimestampIsWrittenOnlyWhereTheLoadActuallyStarts() {
        // webSessionWarmUpUrl은 타임아웃 예산 계산에서도 불린다. 거기서 시각을 갱신하면
        // 두 번째 호출이 null을 받아 30분 강제 워밍업이 영영 실행되지 않는다.
        val policy = service.substringAfter("private fun webSessionWarmUpUrl")
        assertTrue("판정 함수는 부작용이 없어야 한다", !policy.contains("markWarmUpStarted()"))
        assertTrue(
            "실제로 워밍업을 시작하는 지점에서만 기록한다",
            service.contains("if (warmUpUrl != null && job.providerId == ProviderId.COPILOT)")
        )
    }

    @Test
    fun warmUpAlsoRunsOnATimerSoASilentlyStaleSessionRecovers() {
        // Copilot은 인증이 부분적으로 깨져도 요금제만 담긴 페이로드가 나와 "성공"으로 보인다.
        // 실패 판정에만 기대면 세션이 상해도 워밍업이 켜지지 않는다.
        assertTrue(
            File("src/main/java/com/aiquota/mobile/providers/ProviderCollectionCaches.kt").readText().contains("nowMillis - lastWarmUpAtMillis >= WARM_UP_INTERVAL_MILLIS")
        )
        assertTrue(
            "강제 워밍업 주기는 수집 주기보다 훨씬 길어야 절감이 유지된다",
            File("src/main/java/com/aiquota/mobile/providers/ProviderCollectionCaches.kt").readText().contains("WARM_UP_INTERVAL_MILLIS = 30 * 60_000L")
        )
    }
}
