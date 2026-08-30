package com.aiquota.mobile.ui.dashboard

import com.aiquota.mobile.local.ProviderId
import org.junit.Assert.assertEquals
import org.junit.Test

class ProviderCatalogAccessibilityContractTest {
    @Test
    fun dashboardProviderIdentityLabelUsesReadableCompactProviderLabels() {
        assertEquals("Anti\nGravity", dashboardProviderIdentityLabel(ProviderId.ANTIGRAVITY))
        assertEquals("Open\nCode", dashboardProviderIdentityLabel(ProviderId.OPENCODE))
    }

    @Test
    fun dashboardCardSemanticsRetainsLongAliasAndStateAction() {
        val alias = "Primary account with a deliberately long alias"

        assertEquals(
            "$alias, Claude, Connected, Refresh",
            dashboardCardSemanticsLabel(alias, "Claude", "Connected", "Refresh")
        )
    }
}
