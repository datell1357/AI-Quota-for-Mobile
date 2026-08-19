package com.aiquota.mobile.ui.ads

import java.io.File
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * provider 연결 화면(로그인 WebView, GLM 선택 화면, Antigravity OAuth)에는 배너를 띄우지 않는다.
 *
 * 예전에는 여기도 배너를 띄웠다. 그런데 이 화면들은 "Sign in to X" 제목과 그 provider의 실제
 * 웹사이트를 담은 WebView만 다를 뿐 레이아웃이 반복되고, 남의 웹사이트를 그대로 띄운 화면 위에
 * 광고를 얹는 구조라 AdMob이 "복제된 콘텐츠가 있는 화면에 게재된 광고"로 지적했다(2026-08-19).
 *
 * ActivityTopBanner.heightPx를 0으로 고정해 껐다. 이 클래스를 쓰는 화면은 셋뿐이라
 * (WebLoginActivity·GlmApiKeyActivity·AntigravityLoopbackOAuthActivity) 한 곳만 고치면
 * 셋 다 함께 꺼진다. 본문이 배너 높이만큼 내려가는 배치 코드는 그대로 두는데, 높이가 0이니
 * 실질적으로 아무것도 밀리지 않는다 — 나중에 다시 켤 일이 생겨도 배치를 처음부터 다시 짤
 * 필요가 없다.
 */
class ConnectScreenAdTest {
    private val activity = File("src/main/java/com/aiquota/mobile/providers/WebLoginActivity.kt").readText()
    private val banner = File("src/main/java/com/aiquota/mobile/ui/ads/ActivityTopBanner.kt").readText()
    private val antigravity =
        File("src/main/java/com/aiquota/mobile/providers/AntigravityLoopbackOAuthActivity.kt").readText()
    private val glmChooser = File("src/main/java/com/aiquota/mobile/providers/GlmApiKeyActivity.kt").readText()

    @Test
    fun bannerHeightIsPermanentlyZero() {
        assertTrue(
            "높이를 0으로 고정해야 attachTo가 아무 것도 하지 않고, 배너 자리로 예약해 두던" +
                " 여백도 함께 사라진다.",
            banner.contains("val heightPx: Int = 0")
        )
    }

    @Test
    fun everyConnectFlowStillWiresTheHeightIntoItsLayout() {
        // 배치 코드는 남겨 둔다. heightPx가 0이라 실질적으로 아무것도 밀지 않지만, 코드를
        // 지우면 나중에 다시 켤 때 배치를 처음부터 다시 짜야 한다.
        assertTrue(
            "WebView와 팝업 모두 이 값을 여백으로 쓴다.",
            activity.contains("topMargin = loginAdHeight + loginTitleHeight()")
        )
        assertTrue(activity.contains("topMargin = loginAdHeight"))
        assertTrue(glmChooser.contains("topMargin = topBanner.heightPx"))
        assertTrue(antigravity.contains("topMargin = topBanner.heightPx"))
    }

    @Test
    fun dashboardBannerIsSizedToTheSlotNotTheWholeScreen() {
        // 상단바는 좌우 패딩을 갖는다. 화면 폭으로 배너를 요청하면 그만큼 오른쪽이 잘린다.
        // 이 규칙은 대시보드·설정 화면에 남은 배너(TopBarAdBanner)에는 여전히 적용된다.
        val compose = File("src/main/java/com/aiquota/mobile/ui/ads/TopBarAdBanner.kt").readText()

        assertTrue(compose.contains("BoxWithConstraints"))
        assertTrue(compose.contains("availableWidthDp = maxWidth.value.toInt()"))
        assertTrue(
            "화면 폭(screenWidthDp)으로 배너 크기를 잡으면 안 된다.",
            !compose.contains("LocalConfiguration.current.screenWidthDp")
        )
    }
}
