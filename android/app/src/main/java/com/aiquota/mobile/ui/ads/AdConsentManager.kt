package com.aiquota.mobile.ui.ads

import android.app.Activity
import android.util.Log
import com.google.android.ump.ConsentInformation
import com.google.android.ump.ConsentRequestParameters
import com.google.android.ump.UserMessagingPlatform
import java.util.concurrent.atomic.AtomicBoolean
import kotlin.coroutines.resume
import kotlinx.coroutines.suspendCancellableCoroutine

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
    private val requested = AtomicBoolean(false)

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
     * 한 프로세스에서 여러 화면이 동시에 불러도 실제 갱신은 한 번만 일어난다.
     */
    suspend fun ensureConsent(activity: Activity): Boolean {
        val info = UserMessagingPlatform.getConsentInformation(activity)
        consentInformation = info
        if (!requested.compareAndSet(false, true)) return info.canRequestAds()

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
                    requested.set(false)
                    if (continuation.isActive) continuation.resume(false)
                }
            )
        }
        if (!updated) return info.canRequestAds()

        suspendCancellableCoroutine { continuation ->
            UserMessagingPlatform.loadAndShowConsentFormIfRequired(activity) { error ->
                if (error != null) {
                    Log.w(TAG, "consentForm ok=false code=${error.errorCode} message=${error.message}")
                }
                if (continuation.isActive) continuation.resume(Unit)
            }
        }
        Log.i(TAG, "consent resolved canRequestAds=${info.canRequestAds()}")
        return info.canRequestAds()
    }
}
