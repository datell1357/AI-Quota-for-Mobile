package com.aiquota.mobile.local

import com.aiquota.mobile.providers.ProviderDefinitionRegistry
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * 39버전 노출 범위: Grok을 다시 노출한다. Kimi는 실계정이 없어 검증하지 못했으므로 계속 감춘다.
 * 노출 여부는 ProviderId.defaultOrder() 한 곳에서 결정된다.
 */
class ProviderReleaseScopeTest {
    @Test
    fun unverifiedProvidersAreNotExposedWhileKiroAndGrokAre() {
        val order = ProviderId.defaultOrder()

        assertTrue(order.contains(ProviderId.KIRO))
        assertTrue(order.contains(ProviderId.GROK))
        assertFalse(order.contains(ProviderId.KIMI))
    }

    @Test
    fun storedOrderFromOlderBuildDoesNotBringHiddenProvidersBack() {
        val storedOrder = listOf(ProviderId.CLAUDE, ProviderId.GROK, ProviderId.KIMI, ProviderId.KIRO)

        val visible = ProviderPreferencesCodec.visibleProviders(storedOrder, emptySet())

        assertFalse("Kimi는 계속 감춘다", visible.contains(ProviderId.KIMI))
        assertTrue(visible.contains(ProviderId.KIRO))
        assertEquals(ProviderId.defaultOrder().size, visible.size)
    }

    @Test
    fun newlyExposedProviderAppearsForUsersWhoStoredTheOldOrder() {
        // 이전 빌드에서 저장된 순서에는 Grok이 없다. 노출을 되살리면 뒤에 덧붙어 나타나야 한다.
        val storedOrder = listOf(
            ProviderId.CLAUDE,
            ProviderId.CODEX,
            ProviderId.CURSOR,
            ProviderId.KIRO,
            ProviderId.OPENCODE,
            ProviderId.GLM,
            ProviderId.ANTIGRAVITY,
            ProviderId.GEMINI,
            ProviderId.COPILOT
        )

        val visible = ProviderPreferencesCodec.visibleProviders(storedOrder, emptySet())

        assertTrue(visible.contains(ProviderId.GROK))
        assertEquals(ProviderId.GROK, visible.last())
        assertEquals(storedOrder, visible.dropLast(1))
    }

    @Test
    fun hiddenProviderDefinitionsStayResolvableSoNoCallSiteCrashes() {
        // 정의를 지우지 않고 순서만 미뤘다. definitionFor는 계속 동작해야 한다.
        assertEquals(ProviderId.GROK, ProviderDefinitionRegistry.definitionFor(ProviderId.GROK).providerId)
        assertEquals(ProviderId.KIMI, ProviderDefinitionRegistry.definitionFor(ProviderId.KIMI).providerId)
        assertEquals(ProviderId.defaultOrder(), ProviderDefinitionRegistry.released().map { it.providerId })
    }
}
