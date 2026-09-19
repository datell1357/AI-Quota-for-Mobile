package com.aiquota.mobile.providers

import org.json.JSONObject
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class ManusNativeUsagePayloadTest {
    private val creditsBody = """
        {
          "totalCredits": 1300,
          "freeCredits": 1000,
          "refreshCredits": 300,
          "maxRefreshCredits": 300,
          "nextRefreshTime": "2026-09-19T15:00:00Z",
          "refreshInterval": "daily",
          "qualityTrial": 2
        }
    """.trimIndent()

    private val userInfoBody = """
        {
          "email": "user@example.com",
          "membershipVersion": "free",
          "userType": "USER_TYPE_PERSONAL"
        }
    """.trimIndent()

    private fun wrapped(status: Int, body: String): String {
        return JSONObject()
            .put("ok", status in 200..299)
            .put("status", status)
            .put("url", "https://api.manus.im")
            .put("json", JSONObject(body))
            .toString()
    }

    private fun fetcherReturning(credits: String, userInfo: String): ManusJsonFetcher {
        return { url, _ ->
            when {
                url.contains("GetAvailableCredits") -> credits
                url.contains("UserInfo") -> userInfo
                else -> JSONObject().put("ok", false).put("status", 404).toString()
            }
        }
    }

    @Test
    fun payloadAssemblesCreditsAndUserInfo() {
        val payload = ProviderNativeUsagePayloadFetcher.manusUsagePayloadForTest(
            requestHeadersForUrl = { mapOf("authorization" to "Bearer jwt") },
            fetchJson = fetcherReturning(wrapped(200, creditsBody), wrapped(200, userInfoBody))
        )!!

        val json = JSONObject(payload)
        val credits = json.getJSONObject("credits")
        assertEquals(1300, credits.getInt("totalCredits"))
        assertEquals(300, credits.getInt("maxRefreshCredits"))
        assertEquals("user@example.com", json.getString("account"))
        assertEquals("free", json.getString("plan"))
    }

    @Test
    fun capturedAuthorizationHeaderIsForwarded() {
        var seenAuth: String? = null
        val payload = ProviderNativeUsagePayloadFetcher.manusUsagePayloadForTest(
            requestHeadersForUrl = { url ->
                if (url.contains("GetAvailableCredits")) mapOf("authorization" to "Bearer jwt-token") else emptyMap()
            },
            fetchJson = { url, headers ->
                if (url.contains("GetAvailableCredits")) seenAuth = headers["authorization"]
                wrapped(200, creditsBody)
            }
        )

        assertEquals("Bearer jwt-token", seenAuth)
        // credits 응답만으로도 일간/잔여 라인이 만들어지므로 페이로드는 조립된다.
        assertTrue(payload != null)
    }

    @Test
    fun unauthorizedCreditsYieldsSessionExpiredDiagnostic() {
        val diagnostic = ProviderNativeUsagePayloadFetcher.manusDiagnosticForTest(
            requestHeadersForUrl = { emptyMap() },
            fetchJson = { _, _ ->
                JSONObject()
                    .put("ok", false)
                    .put("status", 401)
                    .put("url", "https://api.manus.im")
                    .put("json", JSONObject().put("code", "unauthenticated"))
                    .toString()
            }
        )

        assertEquals("manus_session_expired", diagnostic)
    }

    @Test
    fun fetcherBlocksNonManusEndpointsWithoutNetwork() {
        val response = JSONObject(
            ManusNativeUsageFetcher.fetchJson(
                "https://evil.manus.im/user.v1.UserService/GetAvailableCredits",
                mapOf("authorization" to "Bearer jwt")
            )
        )
        assertEquals("blocked_manus_endpoint", response.getString("error"))

        val wrongPath = JSONObject(
            ManusNativeUsageFetcher.fetchJson(
                "https://api.manus.im/other.v1.OtherService/Method",
                emptyMap()
            )
        )
        assertEquals("blocked_manus_endpoint", wrongPath.getString("error"))
    }

    @Test
    fun fetcherRejectsNonHttpsUrls() {
        val response = JSONObject(
            ManusNativeUsageFetcher.fetchJson(
                "http://api.manus.im/user.v1.UserService/GetAvailableCredits",
                emptyMap()
            )
        )
        assertEquals("blocked_manus_endpoint", response.getString("error"))
    }
}
