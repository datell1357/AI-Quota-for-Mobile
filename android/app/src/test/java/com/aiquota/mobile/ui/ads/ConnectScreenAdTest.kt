package com.aiquota.mobile.ui.ads

import java.io.File
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * provider 로그인 화면에서도 상단 배너가 보여야 한다. 다만 로그인 WebView가 화면 전체를
 * 차지하므로 본문이 배너 높이만큼 밀려야 하고, 대시보드 배너와 같은 포그라운드 전용 규칙을
 * 지켜야 한다.
 */
class ConnectScreenAdTest {
    private val activity = File("src/main/java/com/aiquota/mobile/providers/WebLoginActivity.kt").readText()
    private val banner = File("src/main/java/com/aiquota/mobile/ui/ads/ActivityTopBanner.kt").readText()
    private val antigravity =
        File("src/main/java/com/aiquota/mobile/providers/AntigravityLoopbackOAuthActivity.kt").readText()

    @Test
    fun loginScreenReservesRoomAboveTheWebViewForTheBanner() {
        assertTrue(
            "WebView와 팝업 모두 배너 높이만큼 내려와야 제목과 겹치지 않는다.",
            activity.contains("topMargin = loginAdHeight + loginTitleHeight()")
        )
        assertTrue(
            "제목 바도 배너 아래로 내려간다.",
            activity.contains("topMargin = loginAdHeight")
        )
    }

    @Test
    fun loginBannerHeightIsResolvedBeforeAnyViewIsLaidOut() {
        val onCreate = activity.substringAfter("override fun onCreate(savedInstanceState: Bundle?)")
            .substringBefore("override fun onResume()")

        assertTrue(onCreate.contains("topBanner = ActivityTopBanner(this)"))
        assertTrue(
            "높이 확정이 rootContainer 구성보다 앞서야 한다.",
            onCreate.indexOf("topBanner = ActivityTopBanner(this)") < onCreate.indexOf("rootContainer = FrameLayout(this)")
        )
    }

    @Test
    fun loginBannerFollowsActivityForegroundLifecycle() {
        assertTrue(activity.contains("topBanner.resume()"))
        assertTrue(activity.contains("topBanner.pause()"))
        assertTrue(activity.contains("topBanner.destroy()"))
    }

    @Test
    fun everyFullScreenConnectFlowKeepsTheBanner() {
        // GLM Web Login은 WebLoginActivity를 상속하므로 같은 배너를 받는다.
        assertTrue(
            File("src/main/java/com/aiquota/mobile/providers/GlmWebLoginActivity.kt").readText()
                .contains("class GlmWebLoginActivity : WebLoginActivity()")
        )
        // Antigravity OAuth 화면도 전면을 덮으므로 배너를 유지한다.
        assertTrue(antigravity.contains("topBanner = ActivityTopBanner(this)"))
        assertTrue(antigravity.contains("topBanner.attachTo(root, activityScope)"))
        assertTrue(
            "본문이 배너 높이만큼 내려가야 가리지 않는다.",
            antigravity.contains("topMargin = topBanner.heightPx")
        )
        assertTrue(antigravity.contains("topBanner.resume()"))
        assertTrue(antigravity.contains("topBanner.pause()"))
        assertTrue(antigravity.contains("topBanner.destroy()"))
    }

    @Test
    fun loginBannerIsSkippedEntirelyWhenAdsAreOff() {
        assertTrue(banner.contains("AdConfig.isBannerEnabled()"))
        assertTrue(
            "광고가 꺼져 있으면 높이가 0이라 기존 레이아웃과 동일해야 한다.",
            banner.contains("if (AdConfig.isBannerEnabled()) adSize().getHeightInPixels(activity) else 0") &&
                banner.contains("if (!enabled) return")
        )
    }

    @Test
    fun loginBannerDoesNotInitializeAdsBeforeTheScreenExists() {
        assertFalse(
            "Application 기동 경로에서 광고 SDK가 뜨면 안 된다.",
            File("src/main/java/com/aiquota/mobile/AIQuotaApplication.kt").readText().contains("MobileAds")
        )
        assertTrue(banner.contains("AdMobInitializer.ensureInitialized(activity)"))
    }
}
