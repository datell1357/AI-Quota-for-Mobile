package com.aiquota.mobile.ui

import java.io.File
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * targetSdk 35+에서는 시스템이 edge-to-edge를 강제한다(36에서는 옵트아웃도 통하지 않는다).
 * 고정 여백으로 시스템 표시줄을 어림잡으면 기기마다 높이가 달라 상단 배너가 상태 표시줄에,
 * 하단 내비게이션이 제스처 바에 가린다(2026-08-11 API 37 실측으로 확인).
 *
 * 그래서 두 화면 모두 실측 인셋을 쓴다. Compose 쪽은 windowInsetsPadding, 뷰로 짜인 로그인
 * 화면은 OnApplyWindowInsetsListener로 처리한다.
 */
class EdgeToEdgeInsetsTest {
    private val shell = File("src/main/java/com/aiquota/mobile/ui/AIQuotaAppShell.kt").readText()
    private val mainActivity = File("src/main/java/com/aiquota/mobile/MainActivity.kt").readText()
    private val login = File("src/main/java/com/aiquota/mobile/providers/WebLoginActivity.kt").readText()

    @Test
    fun activitiesOptIntoEdgeToEdgeSoOlderVersionsBehaveTheSame() {
        assertTrue("Compose 화면은 enableEdgeToEdge()로 켠다", mainActivity.contains("enableEdgeToEdge()"))
        assertTrue(
            "로그인 화면은 Activity라 같은 일을 직접 한다",
            login.contains("WindowCompat.setDecorFitsSystemWindows(window, false)")
        )
    }

    @Test
    fun topBarKeepsTheAdBelowTheStatusBar() {
        val topBar = shell.substringAfter("private fun AppTopBar")
            .substringBefore("private fun AppNavigationBar")

        assertTrue(
            "배너가 상태 표시줄에 가리지 않으려면 실측 인셋을 써야 한다",
            topBar.contains("windowInsetsPadding(WindowInsets.statusBars)")
        )
    }

    @Test
    fun navigationBarSitsAboveTheGestureBar() {
        val navBar = shell.substringAfter("private fun AppNavigationBar")
            .substringBefore("private fun AppNavigationChip")

        assertTrue(
            "하단 칩이 제스처 바에 가리지 않으려면 실측 인셋을 써야 한다",
            navBar.contains("windowInsetsPadding(WindowInsets.navigationBars)")
        )
    }

    @Test
    fun fixedApproximationsAreGoneSoNothingIsPaddedTwice() {
        val metrics = File("src/main/java/com/aiquota/mobile/ui/AppLayoutMetrics.kt").readText()

        assertTrue(
            "고정 여백을 남겨두면 실측 인셋과 겹쳐 두 번 밀린다",
            !metrics.contains("topBarTopExtraPaddingDp") && !metrics.contains("navBottomExtraPadding")
        )
    }

    @Test
    fun systemBarIconsFollowTheAppBackgroundNotTheSystemTheme() {
        // enableEdgeToEdge()의 자동 판정은 시스템 다크모드만 본다. 이 앱은 자체 테마로 배경을
        // 정하므로 판정이 어긋나 흰 배경에 흰 아이콘이 되는 기기가 있다(태블릿 API 35 실측).
        assertTrue(
            "배경 밝기로 직접 정해야 기기·버전에 관계없이 아이콘이 보인다",
            shell.contains("themeColors.appBackground.luminance() > 0.5f") &&
                shell.contains("isAppearanceLightStatusBars = lightSystemBars") &&
                shell.contains("isAppearanceLightNavigationBars = lightSystemBars")
        )
    }

    @Test
    fun loginScreenPadsForSystemBarsAndCutout() {
        val insets = login.substringAfter("private fun applyLoginWindowInsets")
            .substringBefore("/**")

        assertTrue(insets.contains("WindowInsetsCompat.Type.systemBars()"))
        assertTrue("가로 모드 노치까지 피해야 한다", insets.contains("WindowInsetsCompat.Type.displayCutout()"))
        assertTrue(insets.contains("view.setPadding(bars.left, bars.top, bars.right, bars.bottom)"))
        assertTrue(
            "시스템 표시줄 뒤는 밝은 창 배경이라 아이콘을 어둡게 해야 보인다",
            login.contains("isAppearanceLightStatusBars = true")
        )
    }
}
