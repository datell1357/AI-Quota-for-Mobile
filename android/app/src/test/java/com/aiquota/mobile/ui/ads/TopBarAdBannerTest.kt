package com.aiquota.mobile.ui.ads

import java.io.File
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * 광고는 앱을 보고 있을 때만 돌아야 한다. 이 앱은 위젯 갱신과 60초 주기 백그라운드 수집 때문에
 * 화면 없이도 프로세스가 자주 살아나는데, 거기서 광고 SDK가 뜨면 보여주지도 않는 광고 때문에
 * 배터리·네트워크만 쓰게 된다.
 */
class TopBarAdBannerTest {
    private val banner = File("src/main/java/com/aiquota/mobile/ui/ads/TopBarAdBanner.kt").readText()

    @Test
    fun adSdkIsNeverInitializedFromApplicationStartup() {
        val application = File("src/main/java/com/aiquota/mobile/AIQuotaApplication.kt").readText()

        assertFalse(
            "Application.onCreate는 백그라운드 기동에서도 실행된다. 여기서 SDK를 띄우면 안 된다.",
            application.contains("MobileAds")
        )
        assertTrue(
            "초기화는 배너 컴포저블이 화면에 보일 때만 한다.",
            banner.contains("AdMobInitializer.ensureInitialized(context)")
        )
    }

    @Test
    fun adSdkInitializationStaysOffTheMainThread() {
        assertTrue(banner.contains("withContext(Dispatchers.IO)"))
        assertTrue(banner.contains("MobileAds.initialize(appContext)"))
    }

    @Test
    fun bannerIsCreatedOnlyAfterResume() {
        assertTrue(banner.contains("Lifecycle.Event.ON_RESUME ->"))
        assertTrue(
            "resume 전에는 AdView를 만들지도, 광고를 요청하지도 않는다.",
            banner.contains("if (!resumed || adView != null) return@LaunchedEffect")
        )
    }

    @Test
    fun bannerStopsWhenTheAppLeavesForeground() {
        assertTrue(banner.contains("Lifecycle.Event.ON_PAUSE ->"))
        assertTrue(banner.contains("adView?.pause()"))
        assertTrue("화면을 벗어나면 파기해 타이머와 요청을 남기지 않는다.", banner.contains("adView?.destroy()"))
    }

    @Test
    fun sdkAutoInitializationIsDisabledInTheManifest() {
        val manifest = File("src/main/AndroidManifest.xml").readText()

        assertTrue(manifest.contains("com.google.android.gms.ads.APPLICATION_ID"))
        assertTrue(
            "자동 초기화를 켜두면 프로세스가 뜰 때마다 SDK가 스스로 시작한다.",
            manifest.contains("com.google.android.gms.ads.flag.OPTIMIZE_INITIALIZATION")
        )
    }

    @Test
    fun testAdUnitsAreNeverServedToReleaseUsers() {
        assertTrue(
            banner.contains("BuildConfig.DEBUG || !BuildConfig.ADMOB_TEST_IDS")
        )
    }
}
