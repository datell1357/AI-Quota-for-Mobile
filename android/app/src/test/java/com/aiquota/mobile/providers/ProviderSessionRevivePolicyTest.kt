package com.aiquota.mobile.providers

import com.aiquota.mobile.local.ProviderId
import java.io.File
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test

class ProviderSessionRevivePolicyTest {
    @Before
    fun reset() {
        ProviderSessionReviveStore.clearAllForTest()
    }

    @After
    fun tearDown() {
        ProviderSessionReviveStore.clearAllForTest()
    }

    @Test
    fun onlyKiroSessionExpiryArmsReviveForNow() {
        assertTrue(ProviderSessionRevivePolicy.isSessionExpired(ProviderId.KIRO, "kiro_session_expired"))
        assertFalse(ProviderSessionRevivePolicy.isSessionExpired(ProviderId.KIRO, "kiro_usage_unavailable"))
        assertFalse(ProviderSessionRevivePolicy.isSessionExpired(ProviderId.KIRO, ""))
        assertFalse(ProviderSessionRevivePolicy.isSessionExpired(ProviderId.KIRO, null))
        assertFalse(ProviderSessionRevivePolicy.isSessionExpired(ProviderId.CURSOR, "kiro_session_expired"))
        assertNull(ProviderSessionRevivePolicy.reviveUrl(ProviderId.CURSOR))
        assertEquals("https://app.kiro.dev/settings/account", ProviderSessionRevivePolicy.reviveUrl(ProviderId.KIRO))
    }

    @Test
    fun reviveUrlMatchesByHostAndPathOnly() {
        assertTrue(ProviderSessionRevivePolicy.isReviveUrl(ProviderId.KIRO, "https://app.kiro.dev/settings/account"))
        assertTrue(
            ProviderSessionRevivePolicy.isReviveUrl(ProviderId.KIRO, "https://app.kiro.dev/settings/account?from=app")
        )
        assertFalse(ProviderSessionRevivePolicy.isReviveUrl(ProviderId.KIRO, "https://app.kiro.dev/signin"))
        assertFalse(ProviderSessionRevivePolicy.isReviveUrl(ProviderId.KIRO, "about:blank"))
        assertFalse(ProviderSessionRevivePolicy.isReviveUrl(ProviderId.CURSOR, "https://app.kiro.dev/settings/account"))
    }

    @Test
    fun storeArmsOnExpiryAndConsumesOnceSoPageLoadsDoNotRepeatEveryCycle() {
        assertFalse(ProviderSessionReviveStore.arm(ProviderId.KIRO, "kiro_usage_unavailable"))
        assertNull(ProviderSessionReviveStore.consumeReviveUrl(ProviderId.KIRO))

        assertTrue(ProviderSessionReviveStore.arm(ProviderId.KIRO, "kiro_session_expired"))
        assertTrue(ProviderSessionReviveStore.isPending(ProviderId.KIRO))
        assertEquals("https://app.kiro.dev/settings/account", ProviderSessionReviveStore.consumeReviveUrl(ProviderId.KIRO))
        assertFalse(ProviderSessionReviveStore.isPending(ProviderId.KIRO))
        assertNull(ProviderSessionReviveStore.consumeReviveUrl(ProviderId.KIRO))
    }

    @Test
    fun pendingReviveUrlIsSideEffectFreeSoRepeatedLookupsKeepTheWarmUp() {
        // 서비스는 타임아웃 예산 계산과 잡 생성에서 워밍업 URL을 각각 조회한다. 조회가
        // 대기 상태를 소비하면 두 번째 조회가 null을 받아 provider 페이지 로드가 건너뛰어진다.
        ProviderSessionReviveStore.arm(ProviderId.KIRO, "kiro_session_expired")

        val first = ProviderSessionReviveStore.pendingReviveUrl(ProviderId.KIRO)
        val second = ProviderSessionReviveStore.pendingReviveUrl(ProviderId.KIRO)

        assertEquals("https://app.kiro.dev/settings/account", first)
        assertEquals(first, second)
        assertTrue(ProviderSessionReviveStore.isPending(ProviderId.KIRO))
    }

    @Test
    fun warmUpLookupInRefreshServiceDoesNotConsumePendingRevive() {
        val service = File("src/main/java/com/aiquota/mobile/providers/ProviderBackgroundRefreshService.kt").readText()
        val lookup = service
            .substringAfter("private fun webSessionWarmUpUrl(")
            .substringBefore("\n    }")

        assertTrue(lookup.contains("ProviderSessionReviveStore.pendingReviveUrl(job.providerId)"))
        assertFalse(lookup.contains("consumeReviveUrl"))
        // 소비는 실제로 페이지를 로드하는 잡 생성 지점에서 한 번만 한다.
        assertTrue(service.contains("ProviderSessionReviveStore.clear(job.providerId)"))
    }

    @Test
    fun successfulCollectionClearsPendingRevive() {
        ProviderSessionReviveStore.arm(ProviderId.KIRO, "kiro_session_expired")
        ProviderSessionReviveStore.clear(ProviderId.KIRO)

        assertFalse(ProviderSessionReviveStore.isPending(ProviderId.KIRO))
    }

    @Test
    fun bothCollectionPathsArmOnExpiryAndClearOnPayload() {
        val service = File("src/main/java/com/aiquota/mobile/providers/ProviderBackgroundRefreshService.kt").readText()
        val foreground = File("src/main/java/com/aiquota/mobile/ui/BackgroundProviderWebCollector.kt").readText()

        // 백그라운드 서비스는 기존 워밍업 메커니즘으로 provider 페이지를 한 번 로드한다.
        assertTrue(service.contains("ProviderSessionReviveStore.arm(ownerProviderId, errorKind)"))
        assertTrue(service.contains("ProviderSessionReviveStore.pendingReviveUrl(job.providerId)"))
        assertTrue(service.contains("ProviderSessionReviveStore.clear(job.providerId)"))
        assertTrue(service.contains("ProviderSessionReviveStore.clear(ownerProviderId)"))
        // 전경 수집기는 로드 대상 URL을 바꿔 같은 흐름을 만든다.
        assertTrue(foreground.contains("ProviderSessionReviveStore.consumeReviveUrl(providerId)"))
        assertTrue(foreground.contains("ProviderSessionReviveStore.arm(job.job.providerId, errorKind)"))
        assertTrue(foreground.contains("ProviderSessionReviveStore.clear(job.job.providerId)"))
        assertTrue(foreground.contains("ProviderSessionRevivePolicy.isReviveUrl(providerId, url)"))
    }
}
