package com.aiquota.mobile.ui.ads

import android.app.Activity
import android.util.Log
import com.google.android.ump.ConsentInformation
import com.google.android.ump.ConsentRequestParameters
import com.google.android.ump.UserMessagingPlatform
import kotlin.coroutines.resume
import kotlinx.coroutines.suspendCancellableCoroutine
import kotlinx.coroutines.sync.Mutex
import kotlinx.coroutines.sync.withLock

private const val TAG = "AIQuotaAds"

/**
 * EEA·영국 사용자에게 요구되는 광고 동의 수집(UMP).
 *
 * Google은 해당 지역 트래픽에 인증된 CMP를 통한 동의 수집을 의무화했고, 이를 건너뛰면
 * 그 지역 광고 게재가 제한된다. UMP는 Google이 제공하는 인증 CMP다.
 *
 * 규칙은 하나다 — **광고 요청 전에 동의 절차를 끝낸다.** 그래서 배너는 이 클래스가
 * [canRequestAds]를 참으로 돌려준 뒤에만 SDK를 초기화하고 광고를 요청한다.
 *
 * 동의를 거부하거나 폼이 실패해도 광고를 아예 막지는 않는다. UMP가 계산한
 * `canRequestAds`를 그대로 따르며, 비개인화 광고만 허용되는 상황이면 SDK가 알아서
 * 그 범위로 요청한다. 동의 대상 지역이 아니면(대부분의 국내 사용자) 즉시 참이 된다.
 */
object AdConsentManager {
    private val mutex = Mutex()

    @Volatile
    private var resolved = false

    @Volatile
    private var consentInformation: ConsentInformation? = null

    /** UMP가 판단한 "지금 광고를 요청해도 되는가". 동의 절차 전에는 false일 수 있다. */
    fun canRequestAds(activity: Activity): Boolean {
        val info = consentInformation ?: UserMessagingPlatform.getConsentInformation(activity)
            .also { consentInformation = it }
        return info.canRequestAds()
    }

    /**
     * 동의 정보를 갱신하고 필요하면 동의 폼을 띄운다. 완료 후 [canRequestAds] 값을 돌려준다.
     *
     * 갱신·표시는 프로세스당 한 번만 수행한다. 다만 동시에 들어온 호출은 **먼저 시작한 절차가
     * 끝날 때까지 기다린다.** 곧바로 현재 값을 돌려주면 아직 갱신 전이라 배너가 "동의 없음"으로
     * 건너뛴 뒤 다시 시도하지 않는다.
     */
    suspend fun ensureConsent(activity: Activity): Boolean {
        val info = UserMessagingPlatform.getConsentInformation(activity)
        consentInformation = info
        if (resolved) return info.canRequestAds()

        mutex.withLock {
            if (resolved) return info.canRequestAds()

            // 동의 폼은 EEA·영국 트래픽에서만 뜬다. 국내에서 폼을 확인하려면 logcat에 찍히는
            // 테스트 기기 해시 ID를 ConsentDebugSettings에 넣고 DEBUG_GEOGRAPHY_EEA를 지정하면 된다.
            val params = ConsentRequestParameters.Builder().build()
            val updated = suspendCancellableCoroutine { continuation ->
                info.requestConsentInfoUpdate(
                    activity,
                    params,
                    {
                        if (continuation.isActive) continuation.resume(true)
                    },
                    { error ->
                        Log.w(TAG, "consentInfoUpdate ok=false code=${error.errorCode} message=${error.message}")
                        if (continuation.isActive) continuation.resume(false)
                    }
                )
            }
            // 일시적 실패는 굳히지 않는다. 다음 화면에서 처음부터 다시 시도한다.
            if (!updated) return info.canRequestAds()

            // 이전 세션에서 이미 동의가 확보된 경우다(동의 대상 지역이 아닌 사용자 포함).
            // 이때 폼은 어차피 뜨지 않으므로 완료를 기다리지 않고 바로 광고를 요청하게 한다.
            // 이 대기가 신규 설치 첫 배너 지연의 큰 몫이었다.
            if (info.canRequestAds()) {
                resolved = true
                showConsentFormIfRequired(activity)
                return true
            }

            suspendCancellableCoroutine { continuation ->
                UserMessagingPlatform.loadAndShowConsentFormIfRequired(activity) { error ->
                    if (error != null) {
                        Log.w(TAG, "consentForm ok=false code=${error.errorCode} message=${error.message}")
                    }
                    if (continuation.isActive) continuation.resume(Unit)
                }
            }
            resolved = true
            Log.i(TAG, "consent resolved canRequestAds=${info.canRequestAds()}")
        }
        return info.canRequestAds()
    }

    /** 폼이 필요한 상태면 띄우되 결과를 기다리지 않는다. 필요 없으면 UMP가 그대로 no-op 한다. */
    private fun showConsentFormIfRequired(activity: Activity) {
        UserMessagingPlatform.loadAndShowConsentFormIfRequired(activity) { error ->
            if (error != null) {
                Log.w(TAG, "consentForm ok=false code=${error.errorCode} message=${error.message}")
            }
        }
    }
}
