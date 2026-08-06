package com.aiquota.mobile.providers

import java.io.File
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * Gemini 사용량 페이지 HTML은 한 번에 190KB에 가깝다(실측). 정작 사용량은 뒤따르는
 * batchexecute RPC가 주므로, 토큰을 잠시 재사용해 HTML 왕복을 줄인다.
 */
class GeminiRpcSessionCacheTest {
    private val fetcher = File(
        "src/main/java/com/aiquota/mobile/providers/GeminiUsagePageNativeFetcher.kt"
    ).readText()
    private val service = File(
        "src/main/java/com/aiquota/mobile/providers/ProviderBackgroundRefreshService.kt"
    ).readText()

    @Test
    fun cachedTokensSkipTheUsagePageFetch() {
        val entry = fetcher.substringAfter("fun fetchUsagePayload").substringBefore("private fun fetchBatchExecuteRpc")
        val cacheUse = entry.indexOf("cachedRpcSession()")
        val htmlFetch = entry.indexOf("fetchUsagePageParams(cookieHeader")

        assertTrue("캐시 확인이 HTML 요청보다 먼저 와야 왕복이 줄어든다", cacheUse in 0 until htmlFetch)
        assertTrue(
            "요금제·계정 표시값은 HTML에서만 나오므로 캐시에 함께 담아 붙여 준다",
            entry.contains("mergeGeminiMetadata(cachedPayload, cached.metadata)")
        )
    }

    @Test
    fun expiredOrRejectedTokensFallBackToTheUsagePageInTheSameCall() {
        assertTrue("만료는 시간으로 판정한다", fetcher.contains("nowMillis >= cached.expiresAtMillis"))
        assertTrue(
            "RPC가 실패하면 캐시를 버리고 같은 호출 안에서 HTML을 다시 받는다",
            fetcher.contains("invalidateRpcSession()")
        )
        assertTrue(
            "재사용 기간은 수집 주기보다 충분히 길어야 절감이 생긴다",
            fetcher.contains("RPC_SESSION_TTL_MILLIS = 15 * 60_000L")
        )
    }

    @Test
    fun bootstrapOnlyAccountsAreNotCached() {
        val entry = fetcher.substringAfter("fun fetchUsagePayload").substringBefore("private fun fetchBatchExecuteRpc")
        val bootstrapReturn = entry.indexOf("gemini_usage_page_bootstrap:200")
        val bootstrapBlock = entry.substring(0, bootstrapReturn)

        assertTrue(
            "HTML 안에 사용량이 들어오는 계정은 RPC를 쓰지 않으므로 캐시하면 헛된 호출만 는다",
            !bootstrapBlock.contains("rememberRpcSession(")
        )
    }

    @Test
    fun sessionResetClearsProviderCaches() {
        val reset = service.substringAfter("private fun handleProviderSessionReset")
            .substringBefore("private fun startForegroundNotification")

        assertTrue(reset.contains("ProviderCollectionCaches.invalidate(providerId)"))

        // 재로그인·계정 전환은 연결 해제를 거치지 않으므로 로그인 진입에서도 비워야 한다.
        val shell = File("src/main/java/com/aiquota/mobile/ui/AIQuotaAppShell.kt").readText()
        val connect = shell.substringAfter("fun connectProvider(providerId: ProviderId) {")
            .substringBefore("fun disconnectProvider")
        assertTrue(
            "재로그인 시 캐시를 비우지 않으면 새 계정 화면에 옛 요금제·계정이 남는다",
            connect.contains("ProviderCollectionCaches.invalidate(providerId)")
        )
    }
}
