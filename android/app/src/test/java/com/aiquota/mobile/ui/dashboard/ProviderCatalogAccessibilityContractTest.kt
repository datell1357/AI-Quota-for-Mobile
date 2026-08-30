package com.aiquota.mobile.ui.dashboard

import com.aiquota.mobile.local.ProviderId
import java.io.File
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
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

    @Test
    fun dashboardCardAccessibilityIncludesFullIdentityStateAndAction() {
        val source = dashboardSource()

        assertTrue(source.contains("contentDescription = cardSemanticsLabel"))
        assertTrue(source.contains("snapshot.statusLabel()"))
        assertTrue(source.contains("role = Role.Button"))
        assertTrue(source.contains("CustomAccessibilityAction"))
    }

    @Test
    fun dashboardInteractiveTargetsMeetThe48DpMinimumWithoutChangingTheGlyph() {
        val source = dashboardSource()
        val headerSize = Regex("DashboardHeaderButtonSize\\s*=\\s*(\\d+)\\.dp")
            .find(source)
            ?.groupValues
            ?.get(1)
            ?.toInt()
            ?: error("DashboardHeaderButtonSize declaration is missing")

        assertTrue("header target must be at least 48dp", headerSize >= 48)
        val handle = source.substringAfter("private fun DashboardDragHandle")
        assertTrue(handle.contains(".requiredSize(DashboardHeaderButtonSize)"))
        assertTrue(source.contains(".coerceAtLeast(DashboardSemanticTouchTargetSize)"))
        assertTrue(source.contains("minHeight = DashboardSemanticTouchTargetSize"))
        assertTrue(source.contains(".width(20.dp)"))
    }

    @Test
    fun exactDashboardReorderActionsUseLocalizedLabelsAndExactIds() {
        val source = exactDashboardSource()
        val sharedSource = dashboardSource()

        assertTrue(sharedSource.contains("R.string.provider_move_up"))
        assertTrue(sharedSource.contains("R.string.provider_move_down"))
        assertTrue(source.contains("onMoveUp = { onReorderCard(id, index - 1) }"))
        assertTrue(source.contains("onMoveDown = { onReorderCard(id, index + 1) }"))
    }

    @Test
    fun dashboardMetricsCarryFontScaleAndReorderingHonorsReducedMotion() {
        val metrics = File("src/main/java/com/aiquota/mobile/ui/AppLayoutMetrics.kt").readText()
        val source = dashboardSource()
        val exact = exactDashboardSource()

        assertTrue(metrics.contains("fontScale: Float"))
        assertTrue(metrics.contains("configuration.fontScale"))
        assertTrue(source.contains("Settings.Global.ANIMATOR_DURATION_SCALE"))
        assertTrue(source.contains("!animationsEnabled"))
        assertTrue(exact.contains("!animationsEnabled"))
    }

    @Test
    fun removalDialogDismissalReturnsFocusToItsDashboardInvoker() {
        val sharedSource = dashboardSource()
        val exactSource = exactDashboardSource()
        val shellSource = File("src/main/java/com/aiquota/mobile/ui/AIQuotaAppShell.kt").readText()

        assertTrue(sharedSource.contains("removeProviderFocusRequester: FocusRequester?"))
        assertTrue(exactSource.contains("Modifier.focusRequester(removeProviderFocusRequester)"))
        assertTrue(shellSource.contains("providerRemovalFocusRequester.requestFocus()"))
        assertTrue(shellSource.contains("restoreProviderRemovalFocus = true"))
    }

    private fun dashboardSource(): String = File(
        "src/main/java/com/aiquota/mobile/ui/dashboard/UnifiedDashboardScreen.kt"
    ).readText()

    private fun exactDashboardSource(): String = File(
        "src/main/java/com/aiquota/mobile/ui/dashboard/ExactAccountDashboardScreen.kt"
    ).readText()
}
