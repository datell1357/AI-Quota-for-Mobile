package com.aiquota.mobile.ui.ads

import java.io.File
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * Google은 EEA·영국 트래픽에 인증 CMP를 통한 동의 수집을 의무화했다. 동의 절차가 끝나기
 * 전에 광고를 요청하면 해당 지역 게재가 제한되고 정책 위반 소지가 있다.
 */
class AdConsentTest {
    private val consent = File("src/main/java/com/aiquota/mobile/ui/ads/AdConsentManager.kt").readText()
    private val activityBanner = File("src/main/java/com/aiquota/mobile/ui/ads/ActivityTopBanner.kt").readText()
    private val topBanner = File("src/main/java/com/aiquota/mobile/ui/ads/TopBarAdBanner.kt").readText()

    @Test
    fun consentIsResolvedBeforeAnyAdRequest() {
        listOf(activityBanner, topBanner).forEach { source ->
            val consentIdx = source.indexOf("AdConsentManager.ensureConsent")
            val initIdx = source.indexOf("AdMobInitializer.ensureInitialized")
            assertTrue("동의 호출이 있어야 한다", consentIdx >= 0)
            assertTrue("동의가 SDK 초기화보다 앞서야 한다", consentIdx < initIdx)
        }
    }

    @Test
    fun adsAreSkippedWhenConsentIsNotGranted() {
        assertTrue(activityBanner.contains("consent_not_granted"))
        assertTrue(topBanner.contains("consent_not_granted"))
    }

    @Test
    fun consentUsesTheCertifiedUmpSdk() {
        assertTrue(consent.contains("com.google.android.ump.UserMessagingPlatform"))
        assertTrue(consent.contains("requestConsentInfoUpdate"))
        assertTrue(consent.contains("loadAndShowConsentFormIfRequired"))
        assertTrue("게재 가능 여부는 UMP 판단을 따른다", consent.contains("canRequestAds()"))
    }

    @Test
    fun umpDependencyIsDeclared() {
        val gradle = File("build.gradle.kts").readText()
        assertTrue(gradle.contains("com.google.android.ump:user-messaging-platform"))
    }

    @Test
    fun consentUpdateIsRetriedAfterFailure() {
        // 실패 시 플래그를 되돌려 다음 화면에서 다시 시도한다. 한 번 실패로 광고가 영영 막히면 안 된다.
        assertTrue(consent.contains("requested.set(false)"))
    }
}
