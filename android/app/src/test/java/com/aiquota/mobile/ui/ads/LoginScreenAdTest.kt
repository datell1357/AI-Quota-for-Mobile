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
class LoginScreenAdTest {
    private val activity = File("src/main/java/com/aiquota/mobile/providers/WebLoginActivity.kt").readText()
    private val slot = File("src/main/java/com/aiquota/mobile/ui/ads/LoginScreenAd.kt").readText()

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

        assertTrue(onCreate.contains("loginAdHeight = if (LoginScreenAd.isEnabled(providerId))"))
        assertTrue(
            "높이 확정이 rootContainer 구성보다 앞서야 한다.",
            onCreate.indexOf("loginAdHeight = if") < onCreate.indexOf("rootContainer = FrameLayout(this)")
        )
    }

    @Test
    fun loginBannerFollowsActivityForegroundLifecycle() {
        assertTrue(activity.contains("loginAdView?.resume()"))
        assertTrue(activity.contains("loginAdView?.pause()"))
        assertTrue(activity.contains("loginAdView?.destroy()"))
    }

    @Test
    fun loginBannerNeverRunsInTheIsolatedGlmProcess() {
        assertTrue(
            "GLM 로그인은 격리 프로세스에서 돌고 blank page 복구 로직이 얹혀 있어 제외한다.",
            slot.contains("providerId != ProviderId.GLM")
        )
    }

    @Test
    fun loginBannerIsSkippedEntirelyWhenAdsAreOff() {
        assertTrue(slot.contains("AdConfig.isBannerEnabled()"))
        assertTrue(
            "광고가 꺼져 있으면 높이가 0이라 기존 레이아웃과 동일해야 한다.",
            activity.contains("if (loginAdHeight <= 0) return")
        )
    }

    @Test
    fun loginBannerDoesNotInitializeAdsBeforeTheScreenExists() {
        assertFalse(
            "Application 기동 경로에서 광고 SDK가 뜨면 안 된다.",
            File("src/main/java/com/aiquota/mobile/AIQuotaApplication.kt").readText().contains("MobileAds")
        )
        assertTrue(activity.contains("AdMobInitializer.ensureInitialized(this@WebLoginActivity)"))
    }
}
