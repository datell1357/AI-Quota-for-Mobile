package com.aiquota.mobile.ui

import java.io.File
import org.junit.Assert.assertTrue
import org.junit.Test

class AIQuotaAppShellNavigationTest {
    @Test
    fun appTopBarUsesHomeBackActionOnlyOnSettingsRoute() {
        val source = File("src/main/java/com/aiquota/mobile/ui/AIQuotaAppShell.kt").readText()
        val topBarCall = source.substringAfter("topBar = {")
            .substringBefore("bottomBar = {")
        val appTopBar = source.substringAfter("private fun AppTopBar(")
            .substringBefore("@Composable\nprivate fun AppNavigationBar")

        assertTrue(
            "App shell must keep the Settings entry action for non-Settings routes",
            topBarCall.contains("onSettingsClick = { route = AppRoute.Settings }")
        )
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
        assertTrue(
            "Non-Settings routes must keep the settings gear",
            appTopBar.contains("R.drawable.ic_settings")
        )
        assertTrue(
            "Non-Settings routes must keep the Settings accessibility label",
            appTopBar.contains("R.string.nav_settings")
        )
        assertTrue(
            "Non-Settings routes must keep the Settings click action",
            appTopBar.contains("onSettingsClick")
        )
    }
}
