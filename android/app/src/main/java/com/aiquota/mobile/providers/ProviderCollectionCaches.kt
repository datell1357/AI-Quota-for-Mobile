package com.aiquota.mobile.providers

import android.util.Log
import com.aiquota.mobile.local.ProviderId

/**
 * 수집 비용을 줄이려고 들고 있는 프로세스 캐시를 한곳에서 비운다.
 *
 * 캐시들(Gemini batchexecute 토큰, Cursor 엔드포인트 쿨다운, Copilot 워밍업 판정)은 모두
 * "지금 이 세션에서 통했던 것"을 기억한다. 세션이 바뀌면 — 연결 해제, 재로그인, 계정 전환 —
 * 이전 세션의 기억이 남아 있으면 안 된다. 특히 재로그인은 연결 해제를 거치지 않으므로
 * 로그인 화면을 여는 쪽에서도 반드시 이 함수를 불러야 한다.
 */
object ProviderCollectionCaches {
    private const val TAG = "AIQuotaBgRefreshService"

    fun invalidate(providerId: ProviderId) {
        Log.d(TAG, "collectionCacheInvalidated provider=${providerId.storageId}")
        when (providerId) {
            ProviderId.GEMINI -> GeminiUsagePageNativeFetcher.invalidateRpcSession()
            ProviderId.COPILOT -> CopilotWarmUpState.requireWarmUp()
            // 쿨다운은 URL 단위라 provider별로 나눠 두지 않았다. 세션이 바뀌는 일은 드물고,
            // 전부 비워도 다음 주기에 한 번씩 다시 찔러 보는 비용뿐이다.
            ProviderId.CURSOR -> ProviderProbeCooldown.reset()
            else -> Unit
        }
    }
}

/**
 * Copilot 워밍업(github.com 홈 로드) 필요 여부. 서비스 인스턴스가 아니라 프로세스에 두어
 * 로그인 화면 등 서비스 밖에서도 되살릴 수 있게 한다.
 */
internal object CopilotWarmUpState {
    /** 세션을 강제로 되살리는 주기. 60초 수집 주기 기준 30번에 한 번이다. */
    const val WARM_UP_INTERVAL_MILLIS = 30 * 60_000L

    // 프로세스가 새로 뜨면 세션 상태를 알 수 없으므로 첫 주기에는 워밍업한다.
    @Volatile
    private var pending = true

    @Volatile
    private var lastWarmUpAtMillis = 0L

    /**
     * 워밍업이 필요한지. 직전 수집이 실패했거나, 마지막 워밍업으로부터 충분히 지났으면 한다.
     *
     * 경과 시간 조건이 필요한 이유는 Copilot이 인증이 부분적으로 깨져도(`token=422`,
     * `internal=401`) 요금제만 담긴 페이로드를 돌려줘 "성공"처럼 보이기 때문이다. 실패 판정만
     * 믿으면 세션이 상해도 워밍업이 영영 켜지지 않는다.
     */
    fun needsWarmUp(nowMillis: Long = System.currentTimeMillis()): Boolean {
        if (pending) return true
        return nowMillis - lastWarmUpAtMillis >= WARM_UP_INTERVAL_MILLIS
    }

    fun markWarmUpStarted(nowMillis: Long = System.currentTimeMillis()) {
        lastWarmUpAtMillis = nowMillis
    }

    fun markCollectionSucceeded() {
        pending = false
    }

    fun requireWarmUp() {
        pending = true
    }
}
