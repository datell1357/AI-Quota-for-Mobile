package com.aiquota.mobile.widget

import com.aiquota.mobile.accounts.*
import com.aiquota.mobile.local.ProviderId
import org.junit.Assert.*
import org.junit.Test

class Production53WidgetRecoveryTest {
    private fun id(n: Int) = ProviderAccountId(ProviderId.CLAUDE, AccountKey.parseOpaque("acct_${n.toString().padStart(32, '0')}"))
    private fun payload() = UnifiedWidgetPayload(
        (1..3).map { ProviderWidgetPayload("claude", "Account $it", "connected", true, lines = emptyList(), accountId = ProviderAccountIdStorageCodec.encode(id(it))) },
        (1..3).map { WidgetProviderGauge("claude", 0.5f, "50%", null, accountId = ProviderAccountIdStorageCodec.encode(id(it)), accountLabel = "Account $it") })
    @Test fun sameProviderAccountsCanBeReorderedAndHiddenIndependently() {
        val result = payload().withDashboardCardPreferences(listOf(id(3), id(1), id(2)), setOf(id(1)))
        assertEquals(listOf("Account 3", "Account 2"), result.providers.map { it.displayName })
        assertEquals(listOf("Account 3", "Account 2"), result.gauges.map { it.accountLabel })
    }
    @Test fun newlyAddedAccountRemainsVisibleAfterPreviouslySavedOrder() {
        val result = payload().withDashboardCardPreferences(listOf(id(2), id(1)), emptySet())
        assertEquals(listOf("Account 2", "Account 1", "Account 3"), result.providers.map { it.displayName })
    }
    @Test fun hiddenAccountIsExcludedEvenWhenNoExplicitOrderExists() {
        assertEquals(listOf("Account 1", "Account 3"), payload().withDashboardCardPreferences(emptyList(), setOf(id(2))).providers.map { it.displayName })
    }
    @Test fun providerWidgetFitsActualLineCountWithinCapacity() {
        assertEquals(1, providerWidgetLayoutSpec(2, 2, 180, 1).maxLineCount)
        assertEquals(2, providerWidgetLayoutSpec(2, 2, 180, 2).maxLineCount)
        assertEquals(3, providerWidgetLayoutSpec(2, 2, 180, 20).maxLineCount)
        assertEquals(1, providerWidgetLayoutSpec(2, 2, 180, 0).maxLineCount)
        assertEquals(providerWidgetLayoutSpec(2, 2, 0, 2), providerWidgetLayoutSpec(2, 2, 300, 2))
    }
}
