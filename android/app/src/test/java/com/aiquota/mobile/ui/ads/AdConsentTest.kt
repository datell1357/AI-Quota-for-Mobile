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
        // 한 번 실패로 광고가 영영 막히면 안 된다. 갱신에 실패하면 완료로 굳히지 않고 그대로 빠져나가,
        // 다음 화면에서 절차를 처음부터 다시 밟는다.
        val failureReturn = consent.indexOf("if (!updated) return info.canRequestAds()")
        val firstResolved = consent.indexOf("resolved = true")

        assertTrue("갱신 실패는 즉시 반환한다", failureReturn >= 0)
        assertTrue("실패 경로가 완료 표시보다 앞서야 재시도가 가능하다", failureReturn < firstResolved)
    }

    @Test
    fun canRequestAdsIsReReadInsteadOfCached() {
        // 폼을 닫았다가 나중에 동의해도 반영되도록, 게재 가능 여부는 매번 UMP에서 새로 읽는다.
        assertTrue(
            "이미 끝난 경우에도 캐시가 아니라 canRequestAds()를 다시 조회해야 한다",
            consent.contains("if (resolved) return info.canRequestAds()")
        )
    }

    @Test
    fun concurrentCallersWaitForTheRunningResolution() {
        // 미리 시작한 절차가 도는 중에 배너가 들어오면 기다려야 한다. 곧바로 현재 값을 돌려주면
        // 아직 갱신 전이라 "동의 없음"으로 건너뛴 뒤 다시 시도하지 않는다.
        assertTrue(consent.contains("mutex.withLock"))
    }

    @Test
    fun alreadyConsentedUsersDoNotWaitForTheForm() {
        // 이전 세션에서 동의가 확보됐거나 대상 지역이 아니면 폼은 뜨지 않는다. 그 완료를 기다리는
        // 왕복이 신규 설치 첫 배너 지연의 큰 몫이었다.
        val shortCircuit = consent.indexOf("if (info.canRequestAds()) {")
        val awaitForm = consent.indexOf("suspendCancellableCoroutine { continuation ->\n                UserMessagingPlatform.loadAndShowConsentFormIfRequired")

        assertTrue("갱신 직후 게재 가능하면 바로 진행한다", shortCircuit >= 0)
        assertTrue("그 판정이 폼 대기보다 앞서야 한다", awaitForm < 0 || shortCircuit < awaitForm)
        assertTrue("폼은 기다리지 않고 뒤에서 처리한다", consent.contains("showConsentFormIfRequired(activity)"))
    }

    @Test
    fun adWarmUpStartsWhenAScreenOpensNotFromApplication() {
        val application = File("src/main/java/com/aiquota/mobile/AIQuotaApplication.kt").readText()
        val mainActivity = File("src/main/java/com/aiquota/mobile/MainActivity.kt").readText()

        assertTrue(
            "Application.onCreate는 위젯·백그라운드 수집으로도 실행된다. 여기서 예열하면 안 된다.",
            !application.contains("warmUpAds")
        )
        assertTrue("화면을 여는 Activity에서 미리 시작한다", mainActivity.contains("warmUpAds(this@MainActivity)"))
        assertTrue(
            "예열도 동의를 먼저 끝낸 뒤 SDK를 초기화한다",
            topBanner.indexOf("if (!AdConsentManager.ensureConsent(activity)) return") <
                topBanner.indexOf("AdMobInitializer.ensureInitialized(activity)")
        )
    }
}
