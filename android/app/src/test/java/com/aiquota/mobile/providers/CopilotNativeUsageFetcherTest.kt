package com.aiquota.mobile.providers

import com.aiquota.mobile.local.ProviderId
import java.io.File
import org.json.JSONObject
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class CopilotNativeUsageFetcherTest {
    @Test
    fun nativeCopilotFetchRequiresTokenBackedAuth() {
        assertEquals(null, CopilotNativeUsageFetcher.fetchUsagePayload(githubAccessToken = null))
    }

    @Test
    fun nativeCopilotPayloadCarriesPremiumBillingCardIntoNormalizer() {
        val payload = CopilotNativeUsageFetcher.buildUsagePayload(
            entitlement = JSONObject(
                """
                {
                  "plan": "free",
                  "quotas": {
                    "remaining": {
                      "chat": 88,
                      "premiumInteractions": 0
                    },
                    "limits": {
                      "chat": 100,
                      "premiumInteractions": 0
                    },
                    "quota_reset_date": "2026-06-15"
                  }
                }
                """.trimIndent()
            ),
            internalUser = null,
            premiumBilling = JSONObject(
                """
                {
                  "discountQuantity": 27,
                  "userPremiumRequestEntitlement": 300,
                  "filteredUserPremiumRequestEntitlement": 300
                }
                """.trimIndent()
            ),
            billingInput = CopilotPremiumBillingInput("abc123", "3", "datell1357")
        )
        val snapshot = ProviderUsageNormalizer.normalize(
            ProviderId.COPILOT,
            payload!!.toString(),
            ProviderPayloadSource.PROVIDER_API
        )!!

        assertEquals(listOf("Chat", "Premium requests"), snapshot.lines.map { it.label })
        assertEquals("datell1357", snapshot.account)
        assertEquals(0.91f, snapshot.lines.single { it.label == "Premium requests" }.remainingPercent ?: 0f, 0.001f)
        assertEquals(27.0, snapshot.lines.single { it.label == "Premium requests" }.usedAmount ?: 0.0, 0.001)
        assertEquals(300.0, snapshot.lines.single { it.label == "Premium requests" }.limitAmount ?: 0.0, 0.001)
    }

    @Test
    fun nativeCopilotPayloadCarriesInlineSuggestionsFromInternalUserQuota() {
        val payload = CopilotNativeUsageFetcher.buildUsagePayload(
            entitlement = JSONObject(
                """
                {
                  "plan": "free",
                  "quotas": {
                    "remaining": {
                      "chat": 88
                    },
                    "limits": {
                      "chat": 100
                    },
                    "quota_reset_date": "2026-06-15"
                  }
                }
                """.trimIndent()
            ),
            internalUser = JSONObject(
                """
                {
                  "limited_user_quotas": {
                    "chat": 410,
                    "completions": 3000
                  },
                  "monthly_quotas": {
                    "chat": 500,
                    "completions": 4000
                  },
                  "limited_user_reset_date": "2026-06-15"
                }
                """.trimIndent()
            ),
            premiumBilling = null,
            billingInput = null
        )
        val snapshot = ProviderUsageNormalizer.normalize(
            ProviderId.COPILOT,
            payload!!.toString(),
            ProviderPayloadSource.PROVIDER_API
        )!!

        assertEquals(listOf("Chat", "Inline suggestions"), snapshot.lines.map { it.label })
        assertEquals(0.75f, snapshot.lines.single { it.label == "Inline suggestions" }.remainingPercent ?: 0f, 0.001f)
    }

    @Test
    fun copilotAuthTokenIsConvertedToGitHubBearerHeader() {
        val header = CopilotNativeUsageFetcher.copilotAuthorizationHeader(
            JSONObject(
                """
                {
                  "token": "abc123",
                  "expiration": "2026-06-15T00:00:00Z"
                }
                """.trimIndent()
            )
        )

        assertEquals("GitHub-Bearer abc123", header)
    }

    @Test
    fun copilotTokenCanBeRetriedAsGitHubApiTokenHeader() {
        val header = CopilotNativeUsageFetcher.copilotApiAuthorizationHeader(
            JSONObject(
                """
                {
                  "token": "abc123",
                  "expiration": "2026-06-15T00:00:00Z"
                }
                """.trimIndent()
            )
        )

        assertEquals("token abc123", header)
    }

    @Test
    fun copilotInternalUserResponseBuildsInlineSuggestionPayload() {
        val payload = CopilotNativeUsageFetcher.payloadFromInternalUserResponse(
            """
            {
              "ok": true,
              "status": 200,
              "json": {
                "limited_user_quotas": {
                  "chat": 410,
                  "completions": 3000
                },
                "monthly_quotas": {
                  "chat": 500,
                  "completions": 4000
                },
                "limited_user_reset_date": "2026-06-15"
              }
            }
            """.trimIndent()
        )
        val snapshot = ProviderUsageNormalizer.normalize(
            ProviderId.COPILOT,
            payload!!,
            ProviderPayloadSource.PROVIDER_API
        )!!

        assertEquals(listOf("Chat", "Inline suggestions"), snapshot.lines.map { it.label })
        assertEquals(0.75f, snapshot.lines.single { it.label == "Inline suggestions" }.remainingPercent ?: 0f, 0.001f)
    }

    @Test
    fun githubSessionInternalUserEndpointIsAllowed() {
        assertTrue(CopilotNativeUsageFetcher.isInternalUserUrl("https://github.com/copilot_internal/user"))
        assertTrue(CopilotNativeUsageFetcher.isInternalUserUrl("https://api.github.com/copilot_internal/user"))
    }

    @Test
    fun nativeCopilotFetcherRejectsNonHttpsEndpointsBeforeNetworkAccess() {
        assertFalse(CopilotNativeUsageFetcher.isInternalUserUrl("http://github.com/copilot_internal/user"))
        val result = CopilotNativeUsageFetcher.fetchJson("http://github.com/github-copilot/chat/entitlement")
        assertTrue(result.contains("blocked_copilot_endpoint"))
    }

    @Test
    fun productionCopilotFetcherDoesNotUseSettingsOrBillingHtmlFallback() {
        val source = File("src/main/java/com/aiquota/mobile/providers/CopilotNativeUsageFetcher.kt").readText()

        assertTrue(source.contains("copilot_internal/user"))
        assertFalse(source.contains("settings/copilot"))
        assertFalse(source.contains("settings/billing/premium_requests_usage"))
        assertFalse(source.contains("copilot_usage_card"))
        assertFalse(source.contains("react-app.embeddedData"))
        assertFalse(source.contains("extractPremiumBillingInput("))
    }
}
