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

    @Test
    fun returnsNullForTruncatedOrEmptyResponses() {
        assertNull(GrokWeeklyCreditsFetcher.parse(ByteArray(0)))
        assertNull(GrokWeeklyCreditsFetcher.parse(ByteArray(5)))
        assertNull(GrokWeeklyCreditsFetcher.parse(realResponse.copyOfRange(0, 9)))
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
