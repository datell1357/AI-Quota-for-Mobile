package com.aiquota.mobile.providers

import org.junit.Assert.assertEquals
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertNull
import org.junit.Test

/**
 * 2026-08-04 grok.com에서 실제로 받은 GetGrokCreditsConfig 응답 바이트다.
 * 같은 시점 화면 표시값이 32%였고 리셋이 8월 8일 오후 6:40(KST)이었다.
 */
class GrokWeeklyCreditsFetcherTest {
    private val realResponse = byteArrayOf(
        0, 0, 0, 0, 86, 10, 84, 13, 0, 0, 0, 66, 18, 0, 26, 0, 34, 12, 8, 137.toByte(), 254.toByte(),
        182.toByte(), 211.toByte(), 6, 16, 248.toByte(), 254.toByte(), 235.toByte(), 182.toByte(), 1,
        42, 12, 8, 137.toByte(), 243.toByte(), 219.toByte(), 211.toByte(), 6, 16, 248.toByte(),
        254.toByte(), 235.toByte(), 182.toByte(), 1, 58, 7, 8, 2, 21, 0, 0, 0, 66, 66, 30, 8, 2, 18,
        12, 8, 137.toByte(), 254.toByte(), 182.toByte(), 211.toByte(), 6, 16, 248.toByte(),
        254.toByte(), 235.toByte(), 182.toByte(), 1, 26, 12, 8, 137.toByte(), 243.toByte(),
        219.toByte(), 211.toByte(), 6, 16, 248.toByte(), 254.toByte(), 235.toByte(), 182.toByte(), 1,
        88, 1, 98, 0, 104, 1
    )

    @Test
    fun parsesUsedPercentMatchingTheWebsite() {
        val parsed = GrokWeeklyCreditsFetcher.parse(realResponse)

        assertNotNull(parsed)
        assertEquals(32.0f, parsed!!.usedPercent, 0.001f)
    }

    @Test
    fun parsesWeeklyResetInstant() {
        val parsed = GrokWeeklyCreditsFetcher.parse(realResponse)

        // 2026-08-08T09:40:25Z = 8월 8일 오후 6:40 KST, 화면 표시와 일치한다.
        assertEquals("2026-08-08T09:40:25Z", parsed!!.resetsAt)
    }

    /**
     * 2026-08-17 실측 응답. 8/15에 주간 한도가 리셋돼 소진율이 정확히 0%인 상태였고,
     * proto3가 기본값을 직렬화하지 않아 소진율 필드(f1.f1)가 통째로 빠져서 왔다.
     */
    private val zeroUsageResponse = byteArrayOf(
        0, 0, 0, 0, 72, 10, 70, 18, 0, 26, 0, 34, 12, 8, 137.toByte(), 232.toByte(), 128.toByte(),
        212.toByte(), 6, 16, 248.toByte(), 254.toByte(), 235.toByte(), 182.toByte(), 1, 42, 12, 8,
        137.toByte(), 221.toByte(), 165.toByte(), 212.toByte(), 6, 16, 248.toByte(), 254.toByte(),
        235.toByte(), 182.toByte(), 1, 66, 30, 8, 2, 18, 12, 8, 137.toByte(), 232.toByte(),
        128.toByte(), 212.toByte(), 6, 16, 248.toByte(), 254.toByte(), 235.toByte(), 182.toByte(),
        1, 26, 12, 8, 137.toByte(), 221.toByte(), 165.toByte(), 212.toByte(), 6, 16, 248.toByte(),
        254.toByte(), 235.toByte(), 182.toByte(), 1, 88, 1, 98, 0, 104, 1, 128.toByte(), 0, 0, 0,
        15, 103, 114, 112, 99, 45, 115, 116, 97, 116, 117, 115, 58, 48, 13, 10
    )

    @Test
    fun missingUsedPercentMeansZeroNotFailure() {
        val parsed = GrokWeeklyCreditsFetcher.parse(zeroUsageResponse)

        assertNotNull("리셋 직후 응답을 실패로 보면 일주일 내내 사용할 수 없음으로 뜬다", parsed)
        assertEquals(0.0f, parsed!!.usedPercent, 0.001f)
        assertEquals("2026-08-22T09:40:25Z", parsed.resetsAt)
    }

    @Test
    fun returnsNullForTruncatedOrEmptyResponses() {
        assertNull(GrokWeeklyCreditsFetcher.parse(ByteArray(0)))
        assertNull(GrokWeeklyCreditsFetcher.parse(ByteArray(5)))
        assertNull(GrokWeeklyCreditsFetcher.parse(realResponse.copyOfRange(0, 9)))
    }

    @Test
    fun emptyConfigIsStillTreatedAsFailure() {
        // 소진율도 주기 종료 시각도 없으면 구독이 없는 계정일 수 있다. 0%로 읽으면 안 된다.
        // grpc 프레임(5) + f1 LEN 0 -> 내용이 비어 있는 config
        val emptyConfig = byteArrayOf(0, 0, 0, 0, 2, 10, 0)

        assertNull(GrokWeeklyCreditsFetcher.parse(emptyConfig))
    }

    @Test
    fun usesGrpcWebEndpointNotRest() {
        // /rest/rate-limits는 2시간 한도라 주간 사용량과 다른 지표다.
        assertEquals(
            "https://grok.com/grok_api_v2.GrokBuildBilling/GetGrokCreditsConfig",
            GrokWeeklyCreditsFetcher.URL_PATH
        )
    }
}
