package com.aiquota.mobile.ui.ads

import android.app.Activity
import android.content.Context
import com.aiquota.mobile.local.ProviderId
import com.google.android.gms.ads.AdRequest
import com.google.android.gms.ads.AdSize
import com.google.android.gms.ads.AdView

/**
 * provider 로그인 화면(WebLoginActivity) 상단 배너.
 *
 * 로그인 WebView가 화면을 꽉 채우므로 배너는 그 위쪽에 자리를 잡고, 본문은 배너 높이만큼
 * 내려간다. 대시보드 배너와 마찬가지로 화면이 보일 때만 살아 있다(Activity의 onResume /
 * onPause / onDestroy에 붙는다).
 */
object LoginScreenAd {
    /**
     * GLM 로그인은 `:glm_webview` 격리 프로세스에서 돈다. 그 프로세스는 쿠키 격리를 위해
     * WebView 데이터 디렉터리를 따로 쓰고 blank page·렌더러 종료 복구 로직이 얹혀 있어,
     * 광고 WebView를 하나 더 띄우면 그 복구 경로를 흔들 수 있다. 그래서 GLM만 제외한다.
     */
    fun isEnabled(providerId: ProviderId): Boolean {
        return AdConfig.isBannerEnabled() && providerId != ProviderId.GLM
    }

    fun heightPx(context: Context): Int = adSize(context).getHeightInPixels(context)

    fun createBanner(activity: Activity): AdView {
        return AdView(activity).apply {
            setAdSize(adSize(activity))
            adUnitId = AdConfig.bannerUnitId()
        }
    }

    fun loadInto(adView: AdView) {
        adView.loadAd(AdRequest.Builder().build())
    }

    private fun adSize(context: Context): AdSize {
        val widthDp = context.resources.configuration.screenWidthDp
        return AdSize.getCurrentOrientationAnchoredAdaptiveBannerAdSize(context, widthDp)
    }
}
