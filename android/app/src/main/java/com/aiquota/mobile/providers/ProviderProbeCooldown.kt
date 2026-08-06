package com.aiquota.mobile.providers

import java.util.concurrent.ConcurrentHashMap

/**
 * 계정 구성상 절대 성공하지 않는 엔드포인트를 잠시 쉬게 한다.
 *
 * 수집기는 계정마다 응답하는 엔드포인트가 달라서 여러 곳을 순서대로 찔러 본다. 문제는 실패가
 * 공짜가 아니라는 점이다 — 401/404 응답도 오류 페이지 본문을 실어 오기 때문에, 60초마다
 * 같은 실패를 반복하면 데이터만 축난다(Cursor 실측 기준 주기당 66~102KB 중 대부분).
 *
 * 그래서 인증·경로 문제로 거절당한 URL은 [COOLDOWN_MILLIS] 동안 건너뛰고, 시간이 지나면 다시
 * 시도해 요금제 변경 같은 상황을 스스로 따라잡는다. 성공하면 즉시 해제한다. 상태는 프로세스
 * 메모리에만 두므로 앱이 다시 뜨면 전부 초기화된다.
 */
internal object ProviderProbeCooldown {
    const val COOLDOWN_MILLIS = 30 * 60_000L

    /** 재시도해도 결과가 달라지지 않는 응답들. 5xx나 네트워크 오류는 일시적이라 제외한다. */
    private val REJECTED_STATUSES = setOf(400, 401, 403, 404, 405)

    private val blockedUntilMillis = ConcurrentHashMap<String, Long>()

    fun shouldSkip(url: String, nowMillis: Long = System.currentTimeMillis()): Boolean {
        val until = blockedUntilMillis[url] ?: return false
        if (nowMillis >= until) {
            blockedUntilMillis.remove(url)
            return false
        }
        return true
    }

    fun record(url: String, status: Int, nowMillis: Long = System.currentTimeMillis()) {
        when {
            status in 200..299 -> blockedUntilMillis.remove(url)
            status in REJECTED_STATUSES -> blockedUntilMillis[url] = nowMillis + COOLDOWN_MILLIS
        }
    }

    fun reset() {
        blockedUntilMillis.clear()
    }
}
