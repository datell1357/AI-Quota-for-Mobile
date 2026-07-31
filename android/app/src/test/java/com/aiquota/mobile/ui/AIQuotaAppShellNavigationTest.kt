package com.aiquota.mobile.ui

import java.io.File
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class AIQuotaAppShellNavigationTest {
    private val shellSource = File("src/main/java/com/aiquota/mobile/ui/AIQuotaAppShell.kt").readText()
    private val dashboardSource =
        File("src/main/java/com/aiquota/mobile/ui/dashboard/UnifiedDashboardScreen.kt").readText()
    private val appTopBar = shellSource.substringAfter("private fun AppTopBar(")
        .substringBefore("@Composable\nprivate fun AppNavigationBar")

    @Test
    fun appTopBarUsesHomeBackActionOnlyOnSettingsRoute() {
        val topBarCall = shellSource.substringAfter("topBar = {")
            .substringBefore("bottomBar = {")

        assertTrue(
            "App shell must pass a Home action for the Settings-route top bar",
            topBarCall.contains("onHomeClick = { route = AppRoute.Home }")
        )
        assertTrue(
            "AppTopBar must accept the Home action without introducing a navigation stack",
            appTopBar.contains("onHomeClick: () -> Unit")
        )
        assertTrue(
            "Settings route must choose the back/Home branch",
            appTopBar.contains("route is AppRoute.Settings")
        )
        assertTrue(
            "Settings route must render a back arrow",
            appTopBar.contains("R.drawable.ic_arrow_back")
        )
        assertTrue(
            "Settings route must expose the Home accessibility label",
            appTopBar.contains("R.string.nav_home")
        )
        assertTrue(
            "Settings route must click through the Home action",
            appTopBar.contains("onHomeClick")
        )
    }

    @Test
    fun settingsEntryLivesOnDashboardHeaderOnly() {
        assertTrue(
            "Dashboard must accept a settings entry callback",
            dashboardSource.contains("onOpenSettings: () -> Unit")
        )
        assertTrue(
            "Dashboard header must render the settings gear",
            dashboardSource.contains("R.drawable.ic_settings")
        )
        assertTrue(
            "Dashboard gear must keep the Settings accessibility label",
            dashboardSource.contains("R.string.nav_settings")
        )
        assertTrue(
            "Dashboard gear must open the Settings route",
            dashboardSource.contains("IconButton(onClick = onOpenSettings)")
        )
        assertTrue(
            "App shell must wire the dashboard gear to the Settings route",
            shellSource.contains("onOpenSettings = { route = AppRoute.Settings }")
        )
    }

    @Test
    fun topBarNoLongerExposesSettingsEntry() {
        assertFalse(
            "Settings gear must not stay in the top bar; it moved to the dashboard header",
            appTopBar.contains("R.drawable.ic_settings")
        )
        assertFalse(
            "AppTopBar must not take a settings callback anymore",
            appTopBar.contains("onSettingsClick")
        )
    }

    @Test
    fun providerDetailDoesNotExposeSettingsEntry() {
        val providerDetail =
            File("src/main/java/com/aiquota/mobile/ui/provider/ProviderDetailScreen.kt").readText()

        assertFalse(
            "Provider tabs must not show the app-wide settings entry",
            providerDetail.contains("R.drawable.ic_settings")
        )
        assertFalse(
            "Provider tabs must not navigate to the app-wide Settings route",
            providerDetail.contains("onOpenSettings")
        )
    }
}
