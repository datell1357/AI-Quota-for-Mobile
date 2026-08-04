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
 * 화면 전체를 덮는 Activity(로그인·OAuth) 상단에 대시보드와 같은 배너를 얹는다.
 *
 * 이 앱은 연결 과정에서 여러 Activity가 전면을 가린다. 그때마다 배너가 사라지지 않도록
 * 같은 자리에 같은 배너를 둔다. 대시보드 배너와 동일하게 포그라운드에서만 살아 있다 —
 * 초기화는 화면이 뜬 뒤에만 하고, [resume]/[pause]/[destroy]를 Activity 수명주기에 건다.
 *
 * [heightPx]는 뷰를 배치하기 전에 확정된다. 본문은 이 높이만큼 내려야 배너에 가리지 않는다.
 */
class ActivityTopBanner(private val activity: Activity) {
    private var adView: AdView? = null

    val heightPx: Int = if (AdConfig.isBannerEnabled()) adSize().getHeightInPixels(activity) else 0

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
