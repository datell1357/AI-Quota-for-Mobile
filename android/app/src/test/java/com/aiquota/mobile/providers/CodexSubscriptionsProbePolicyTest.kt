package com.aiquota.mobile.providers

import org.json.JSONObject
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * Codex 수집에서 backend-api/subscriptions는 plan 라벨만 공급한다. 실측상 이 엔드포인트는
 * 차단될 때 약 11KB HTML을 돌려주므로, 얻을 것이 없는 사이클에서는 호출하지 않아야 한다.
 */
class CodexSubscriptionsProbePolicyTest {
    private val requested = mutableListOf<String>()

    private fun fetcher(responses: (String) -> Pair<Int, String>): NativeJsonFetcher =
        { _, url, _, _ ->
            requested += url
            val (status, body) = responses(url)
            ProviderNativeJsonBridge.wrappedResponse(url, status, body).toString()
        }

    private fun collect(responses: (String) -> Pair<Int, String>): String? {
        return ProviderNativeUsagePayloadFetcher.codexUsagePayloadForTest(
            userAgent = "test-agent",
            requestHeadersForUrl = { emptyMap() },
            fetchJson = fetcher(responses)
        )
    }

    private fun subscriptionsCalls() = requested.count { it.contains("/backend-api/subscriptions") }

    @Test
    fun blockedAccountEndpointsSkipSubscriptionsButStillCollectUsage() {
        val payload = collect { url ->
            when {
                url.contains("/backend-api/wham/usage") -> 200 to WHAM_USAGE
                else -> 403 to CLOUDFLARE_HTML
            }
        }

        assertEquals("차단된 사이클에서는 subscriptions를 호출하지 않는다", 0, subscriptionsCalls())
        assertNotNull("wham/usage만 살아 있으면 사용량은 계속 수집한다", payload)
        val json = JSONObject(requireNotNull(payload))
        assertTrue(json.has("usage"))
        assertFalse("plan을 얻을 수 없으면 라벨을 비워 둔다", json.has("plan"))
    }

    @Test
    fun planFromAccountEndpointsSkipsSubscriptions() {
        val payload = collect { url ->
            when {
                url.contains("/backend-api/wham/usage") -> 200 to WHAM_USAGE
                url.contains("/backend-api/accounts/check") -> 200 to """{"account_id":"acc-1","plan_type":"Pro 20x"}"""
                else -> 200 to """{"user":{"email":"dev@example.com"}}"""
            }
        }

        assertEquals("plan이 이미 확보되면 subscriptions는 호출하지 않는다", 0, subscriptionsCalls())
        val json = JSONObject(requireNotNull(payload))
        assertEquals("Pro 20x", json.optString("plan"))
        assertEquals("acc-1", json.optString("accountId"))
    }

    @Test
    fun healthyEndpointsWithoutPlanStillProbeSubscriptions() {
        val payload = collect { url ->
            when {
                url.contains("/backend-api/wham/usage") -> 200 to WHAM_USAGE
                url.contains("/backend-api/subscriptions") -> 200 to """{"plan_name":"Plus"}"""
                url.contains("/backend-api/accounts/check") -> 200 to """{"account_id":"acc-2"}"""
                else -> 200 to """{"user":{"email":"dev@example.com"}}"""
            }
        }

        assertEquals("plan을 다른 곳에서 못 얻으면 subscriptions는 계속 호출한다", 1, subscriptionsCalls())
        assertTrue("account_id가 있으면 질의에 실어 보낸다", requested.any { it.contains("/backend-api/subscriptions?account_id=acc-2") })
        assertEquals("Plus", JSONObject(requireNotNull(payload)).optString("plan"))
    }

    private companion object {
        const val WHAM_USAGE = """{"rate_limits":{"primary_window":{"used_percent":41,"resets_in_seconds":3600}}}"""
        const val CLOUDFLARE_HTML = "<html><head><title>Just a moment...</title></head><body>challenge</body></html>"
    }
}
