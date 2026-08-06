package com.aiquota.mobile.sync

import java.io.File
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * 오프라인에서 수집 주기가 헛도는 것을 막는 게이트의 계약을 고정한다.
 *
 * 게이트는 판정을 좁게(활성 네트워크 자체가 없을 때만) 잡아야 하고, 사용자가 직접 누른
 * 새로고침은 막지 않아야 하며, 하트비트는 계속 남겨 헬스 워커가 서비스를 되살리지 않아야 한다.
 */
class RefreshNetworkGateTest {
    private val availability = File("src/main/java/com/aiquota/mobile/sync/NetworkAvailability.kt").readText()
    private val service = File(
        "src/main/java/com/aiquota/mobile/providers/ProviderBackgroundRefreshService.kt"
    ).readText()

    @Test
    fun offlineJudgementStaysNarrowAndFailsOpen() {
        val body = availability.substringAfter("fun isDefinitelyOffline")

        assertTrue("활성 네트워크가 없을 때만 오프라인으로 본다", body.contains("manager.activeNetwork == null"))
        assertTrue(
            "검증 상태(VALIDATED)까지 요구하면 캡티브 포털에서 오탐이 난다",
            !body.contains("NET_CAPABILITY_VALIDATED")
        )
        assertTrue(
            "판정할 수 없으면 연결된 것으로 보고 수집을 시도한다",
            body.contains("?: return false") && body.contains("getOrDefault(false)")
        )
    }

    @Test
    fun onlyAutomaticCyclesAreSkippedAndHeartbeatIsKept() {
        val cycle = service.substringAfter("private suspend fun runRefreshCycle()")
            .substringBefore("private suspend fun refreshProvider(")

        val heartbeat = cycle.indexOf("refreshStateRepository.recordHeartbeat()")
        val gate = cycle.indexOf("NetworkAvailability.isDefinitelyOffline")
        val tryBlock = cycle.indexOf("try {")

        assertTrue("하트비트를 남겨야 헬스 워커가 서비스를 되살리지 않는다", heartbeat in 0 until gate)
        assertTrue("게이트는 try 안에 둬야 finally가 위젯 새로고침 표시를 정리한다", tryBlock in 0 until gate)
        assertTrue(
            "사용자가 직접 누른 새로고침은 오프라인이어도 시도한다",
            cycle.contains("if (!userInitiated && NetworkAvailability.isDefinitelyOffline(applicationContext))")
        )
    }

    @Test
    fun networkRecoveryTriggersImmediateCycleWithoutExtraFlag() {
        assertTrue(
            "복구 감지는 시스템 콜백으로 한다",
            service.contains("registerDefaultNetworkCallback")
        )
        assertTrue(
            "콜백은 해제까지 짝을 맞춘다",
            service.contains("unregisterNetworkCallback")
        )
        assertTrue(
            "별도 플래그 대신 마지막 사이클 시각으로 판단한다",
            service.contains("refreshStateRepository.heartbeatAtMillis()")
        )
        assertTrue(
            "연속 콜백에도 중복 실행되지 않는다",
            service.contains("if (heartbeatAgeMillis < ProviderRefreshPlan.AUTO_REFRESH_INTERVAL_MILLIS) return")
        )
    }
}
