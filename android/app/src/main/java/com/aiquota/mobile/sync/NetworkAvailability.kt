package com.aiquota.mobile.sync

import android.content.Context
import android.net.ConnectivityManager

/**
 * 자동 수집을 건너뛸 만큼 확실히 끊겨 있는지 판정한다.
 *
 * 판정은 일부러 최대한 좁게 잡는다. 활성 네트워크가 아예 없는 경우 — 기내 모드, SIM 없음,
 * Wi-Fi 꺼짐 — 만 오프라인으로 본다. `NET_CAPABILITY_VALIDATED` 같은 조건까지 요구하면
 * 캡티브 포털이나 검증이 늦는 네트워크에서 실제로는 통신이 되는데도 수집을 멈춰 버린다.
 * 준실시간 표시가 이 앱의 목적이므로, 애매하면 연결된 것으로 보고 시도하는 쪽이 맞다.
 */
object NetworkAvailability {
    fun isDefinitelyOffline(context: Context): Boolean {
        val manager = context.applicationContext
            .getSystemService(ConnectivityManager::class.java)
            ?: return false
        return runCatching { manager.activeNetwork == null }.getOrDefault(false)
    }
}
