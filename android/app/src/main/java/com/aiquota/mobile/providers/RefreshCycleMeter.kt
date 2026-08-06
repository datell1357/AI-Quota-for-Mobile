package com.aiquota.mobile.providers

import android.net.TrafficStats
import android.os.Process
import android.os.SystemClock
import android.util.Log
import com.aiquota.mobile.BuildConfig

/**
 * 수집 한 주기가 실제로 얼마나 걸리고 얼마나 주고받는지 남긴다.
 *
 * 데이터·배터리 조정을 추정이 아니라 실측으로 판단하기 위한 계측이다. 릴리스 빌드에서는
 * 아무 일도 하지 않으며, 디버그 빌드에서도 주기당 로그 한 줄과 카운터 조회 두 번이 전부다.
 */
internal object RefreshCycleMeter {
    data class Sample(
        val elapsedRealtimeMillis: Long,
        val rxBytes: Long,
        val txBytes: Long
    )

    fun sample(): Sample? {
        if (!BuildConfig.DEBUG) return null
        val uid = Process.myUid()
        return Sample(
            elapsedRealtimeMillis = SystemClock.elapsedRealtime(),
            rxBytes = TrafficStats.getUidRxBytes(uid),
            txBytes = TrafficStats.getUidTxBytes(uid)
        )
    }

    fun log(tag: String, start: Sample?, providerCount: Int) {
        val begin = start ?: return
        val end = sample() ?: return
        // TrafficStats는 기기에 따라 UNSUPPORTED(-1)를 준다. 그때는 차이가 0으로 남는다.
        val rx = (end.rxBytes - begin.rxBytes).coerceAtLeast(0)
        val tx = (end.txBytes - begin.txBytes).coerceAtLeast(0)
        Log.i(
            tag,
            "cycleMetrics providers=$providerCount " +
                "elapsedMs=${end.elapsedRealtimeMillis - begin.elapsedRealtimeMillis} " +
                "rxBytes=$rx txBytes=$tx"
        )
    }
}
