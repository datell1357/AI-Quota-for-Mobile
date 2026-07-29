package com.aiquota.mobile.local

import com.aiquota.mobile.providers.ProviderDefinitionRegistry
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * 38버전 노출 범위: Grok·Kimi는 구현이 들어와 있지만 실계정 검증 전이라 노출하지 않는다.
 * 노출 여부는 ProviderId.defaultOrder() 한 곳에서 결정된다.
 */
class ProviderReleaseScopeTest {
    @Test
    fun unverifiedProvidersAreNotExposedWhileKiroIs() {
        val order = ProviderId.defaultOrder()

        assertTrue(order.contains(ProviderId.KIRO))
        assertFalse(order.contains(ProviderId.GROK))
        assertFalse(order.contains(ProviderId.KIMI))
    }

    @Test
    fun storedOrderFromOlderBuildDoesNotBringHiddenProvidersBack() {
        val storedOrder = listOf(ProviderId.CLAUDE, ProviderId.GROK, ProviderId.KIMI, ProviderId.KIRO)

        val visible = ProviderPreferencesCodec.visibleProviders(storedOrder, emptySet())

        assertFalse(visible.contains(ProviderId.GROK))
        assertFalse(visible.contains(ProviderId.KIMI))
        assertTrue(visible.contains(ProviderId.KIRO))
        assertEquals(ProviderId.defaultOrder().size, visible.size)
    }

    @Test
    fun hiddenProviderDefinitionsStayResolvableSoNoCallSiteCrashes() {
        // 정의를 지우지 않고 순서만 미뤘다. definitionFor는 계속 동작해야 한다.
        assertEquals(ProviderId.GROK, ProviderDefinitionRegistry.definitionFor(ProviderId.GROK).providerId)
        assertEquals(ProviderId.KIMI, ProviderDefinitionRegistry.definitionFor(ProviderId.KIMI).providerId)
        assertEquals(ProviderId.defaultOrder(), ProviderDefinitionRegistry.released().map { it.providerId })
    }
}
