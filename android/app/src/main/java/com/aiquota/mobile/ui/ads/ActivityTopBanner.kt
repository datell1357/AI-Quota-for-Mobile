package com.aiquota.mobile.ui.ads

import android.app.Activity
import android.util.Log
import android.view.Gravity
import android.view.ViewGroup
import android.widget.FrameLayout
import com.google.android.gms.ads.AdRequest
import com.google.android.gms.ads.AdSize
import com.google.android.gms.ads.AdView
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.launch

/**
 * 화면 전체를 덮는 Activity(로그인·OAuth) 상단에 배너를 얹던 자리다. 지금은 항상 꺼져 있다.
 *
 * WebLoginActivity·GlmApiKeyActivity·AntigravityLoopbackOAuthActivity가 이 클래스를 쓰는데,
 * provider마다 "Sign in to X" 제목과 그 provider의 실제 웹사이트를 담은 WebView만 다를 뿐
 * 레이아웃이 반복되는 화면들이다. AdMob이 "복제된 콘텐츠가 있는 화면에 게재된 광고"로
 * 지적했고(2026-08-19), 남의 웹사이트를 그대로 띄운 화면 위에 광고를 얹는 구조라 더 직접적인
 * 위반 소지가 있다. [heightPx]가 0이면 [attachTo]가 아무 것도 하지 않고, 이 높이를 여백으로
 * 쓰던 본문·제목도 그만큼 줄어들어 빈 자리가 남지 않는다.
 */
class ActivityTopBanner(private val activity: Activity) {
    private var adView: AdView? = null

    val heightPx: Int = 0

    val enabled: Boolean get() = heightPx > 0

    /** 컨테이너 맨 위에 배너를 붙이고 로드를 시작한다. 광고가 꺼져 있으면 아무 것도 하지 않는다. */
    fun attachTo(container: FrameLayout, scope: CoroutineScope) {
        if (!enabled) return
        val banner = AdView(activity).apply {
            setAdSize(adSize())
            adUnitId = AdConfig.bannerUnitId()
        }
        adView = banner
        container.addView(
            banner,
            FrameLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, heightPx).apply {
                gravity = Gravity.TOP
            }
        )
        scope.launch {
            // 동의 절차가 끝나기 전에는 광고를 요청하지 않는다.
            if (!AdConsentManager.ensureConsent(activity)) {
                Log.i(TAG, "activityBanner skipped reason=consent_not_granted")
                return@launch
            }
            AdMobInitializer.ensureInitialized(activity)
            runCatching { banner.loadAd(AdRequest.Builder().build()) }
                .onFailure { error ->
                    Log.w(TAG, "activityBannerLoad ok=false error=${error.javaClass.simpleName}")
                }
        }
    }

    fun resume() {
        adView?.resume()
    }

    fun pause() {
        adView?.pause()
    }

    fun destroy() {
        adView?.destroy()
        adView = null
    }

    private fun adSize(): AdSize {
        val widthDp = activity.resources.configuration.screenWidthDp
        return AdSize.getCurrentOrientationAnchoredAdaptiveBannerAdSize(activity, widthDp)
    }

    private companion object {
        const val TAG = "AIQuotaAds"
    }
}
