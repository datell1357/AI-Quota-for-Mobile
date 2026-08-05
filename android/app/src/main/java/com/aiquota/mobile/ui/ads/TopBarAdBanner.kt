package com.aiquota.mobile.ui.ads

import android.app.Activity
import android.content.Context
import android.content.ContextWrapper
import android.util.Log
import androidx.compose.foundation.layout.BoxWithConstraints
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.runtime.Composable
import androidx.compose.runtime.DisposableEffect
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.LocalLifecycleOwner
import androidx.compose.ui.viewinterop.AndroidView
import androidx.lifecycle.Lifecycle
import androidx.lifecycle.LifecycleEventObserver
import com.aiquota.mobile.BuildConfig
import com.google.android.gms.ads.AdRequest
import com.google.android.gms.ads.AdSize
import com.google.android.gms.ads.AdView
import com.google.android.gms.ads.MobileAds
import java.util.concurrent.atomic.AtomicBoolean
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext

private const val TAG = "AIQuotaAds"

private tailrec fun Context.findActivity(): Activity? = when (this) {
    is Activity -> this
    is ContextWrapper -> baseContext.findActivity()
    else -> null
}

/**
 * 광고 노출 여부. 테스트 ID로 빌드된 릴리스는 사용자에게 테스트 광고를 보여주게 되므로 띄우지 않는다.
 * 실제 ID는 local.properties의 aiquota.admobAppId / aiquota.admobBannerUnitId로 주입한다.
 */
object AdConfig {
    fun isBannerEnabled(): Boolean = BuildConfig.DEBUG || !BuildConfig.ADMOB_TEST_IDS

    fun bannerUnitId(): String = BuildConfig.ADMOB_BANNER_UNIT_ID
}

/**
 * 광고 SDK 초기화는 한 번만, 그리고 앱 화면이 실제로 보일 때만 한다.
 *
 * Application.onCreate에서 초기화하지 않는 것이 중요하다. 이 앱은 위젯 갱신과 60초 주기
 * 백그라운드 수집 때문에 화면 없이도 프로세스가 자주 살아난다. 거기서 SDK를 띄우면 광고를
 * 보여주지도 않으면서 디스크·네트워크·배터리만 쓰게 된다.
 */
internal object AdMobInitializer {
    private val started = AtomicBoolean(false)

    suspend fun ensureInitialized(context: Context) {
        if (!started.compareAndSet(false, true)) return
        val appContext = context.applicationContext
        // 초기화는 디스크 I/O를 동반해 메인 스레드에서 하면 안 된다.
        withContext(Dispatchers.IO) {
            runCatching { MobileAds.initialize(appContext) }
                .onFailure { error ->
                    started.set(false)
                    Log.w(TAG, "admobInit ok=false error=${error.javaClass.simpleName}")
                }
        }
    }
}

/**
 * 상단바 앵커드 어댑티브 배너.
 *
 * 포그라운드에서만 살아 있다. ON_RESUME에 만들어 로드하고, ON_PAUSE에 멈추고, 화면을 벗어나면
 * 파기한다. 앱이 백그라운드로 가면 광고 요청도 타이머도 돌지 않으므로 위젯·수집 동작에 영향이 없다.
 */
@Composable
fun TopBarAdBanner(modifier: Modifier = Modifier) {
    if (!AdConfig.isBannerEnabled()) return
    // 배너 폭은 화면 전체가 아니라 이 슬롯에 실제로 주어진 폭으로 계산해야 한다. 상단바는
    // 좌우 패딩을 갖고 있어 화면 폭 기준으로 요청하면 배너가 그만큼 잘린다.
    BoxWithConstraints(modifier = modifier.fillMaxWidth()) {
        TopBarAdBannerContent(availableWidthDp = maxWidth.value.toInt())
    }
}

@Composable
private fun TopBarAdBannerContent(availableWidthDp: Int) {
    val context = LocalContext.current
    val lifecycleOwner = LocalLifecycleOwner.current
    val widthDp = availableWidthDp
    val unitId = remember { AdConfig.bannerUnitId() }
    var resumed by remember { mutableStateOf(false) }
    var adView by remember { mutableStateOf<AdView?>(null) }

    DisposableEffect(lifecycleOwner) {
        val observer = LifecycleEventObserver { _, event ->
            when (event) {
                Lifecycle.Event.ON_RESUME -> {
                    resumed = true
                    adView?.resume()
                }
                Lifecycle.Event.ON_PAUSE -> {
                    resumed = false
                    adView?.pause()
                }
                else -> Unit
            }
        }
        lifecycleOwner.lifecycle.addObserver(observer)
        onDispose {
            lifecycleOwner.lifecycle.removeObserver(observer)
            adView?.destroy()
            adView = null
        }
    }

    // 폐기와 재생성을 한 효과 안에서 처리한다. 둘을 나누면 실행 순서가 보장되지 않아
    // 재생성이 먼저 돌고("이미 있음"으로 건너뜀) 폐기가 뒤따라 배너가 사라질 수 있다.
    LaunchedEffect(resumed, unitId, widthDp) {
        val stale = adView
        if (stale != null && stale.tag != widthDp) {
            stale.destroy()
            adView = null
        }
        if (!resumed || adView != null || widthDp <= 0) return@LaunchedEffect
        // 동의 절차가 끝나기 전에는 광고를 요청하지 않는다. Activity가 없으면 띄우지 않는다.
        val activity = context.findActivity() ?: return@LaunchedEffect
        if (!AdConsentManager.ensureConsent(activity)) {
            Log.i(TAG, "topBanner skipped reason=consent_not_granted")
            return@LaunchedEffect
        }
        AdMobInitializer.ensureInitialized(context)
        adView = AdView(context).apply {
            // 어떤 폭으로 만든 배너인지 표시해 두고, 폭이 바뀌면 그때만 다시 만든다.
            tag = widthDp
            setAdSize(AdSize.getCurrentOrientationAnchoredAdaptiveBannerAdSize(context, widthDp))
            adUnitId = unitId
            runCatching { loadAd(AdRequest.Builder().build()) }
                .onFailure { error -> Log.w(TAG, "adLoad ok=false error=${error.javaClass.simpleName}") }
        }
    }

    adView?.let { view ->
        AndroidView(
            factory = { view },
            modifier = Modifier.fillMaxWidth()
        )
    }
}
