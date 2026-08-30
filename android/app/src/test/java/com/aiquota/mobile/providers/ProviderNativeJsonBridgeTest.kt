package com.aiquota.mobile.providers

import com.aiquota.mobile.accounts.ExactProfileCookieSource
import com.aiquota.mobile.local.ProviderId
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

class ProviderNativeJsonBridgeTest {
    @Test
    fun nativeJsonBridgeAllowsScopedProviderEndpoints() {
        assertTrue(ProviderNativeJsonBridge.isAllowedJsonUrl(ProviderId.CLAUDE, "https://claude.ai/api/organizations"))
        assertTrue(ProviderNativeJsonBridge.isAllowedJsonUrl(ProviderId.CLAUDE, "https://claude.ai/api/organizations/me"))
        assertTrue(ProviderNativeJsonBridge.isAllowedJsonUrl(ProviderId.CLAUDE, "https://claude.ai/api/organizations/org_123/usage"))
        assertTrue(ProviderNativeJsonBridge.isAllowedJsonUrl(ProviderId.CODEX, "https://chatgpt.com/api/auth/session"))
        assertTrue(ProviderNativeJsonBridge.isAllowedJsonUrl(ProviderId.CODEX, "https://chatgpt.com/backend-api/subscriptions"))
        assertTrue(ProviderNativeJsonBridge.isAllowedJsonUrl(ProviderId.CODEX, "https://chatgpt.com/backend-api/wham/usage"))
        assertTrue(ProviderNativeJsonBridge.isAllowedJsonUrl(ProviderId.CODEX, "https://chatgpt.com/codex/cloud/settings/analytics"))
        assertFalse(ProviderNativeJsonBridge.isAllowedJsonUrl(ProviderId.GEMINI, "https://gemini.google.com/usage"))
        assertTrue(ProviderNativeJsonBridge.isAllowedJsonUrl(ProviderId.OPENCODE, "https://opencode.ai/workspace/wrk_123/go"))
        assertTrue(ProviderNativeJsonBridge.isAllowedJsonUrl(ProviderId.OPENCODE, "https://opencode.ai/zen/go/usage"))
        assertTrue(ProviderNativeJsonBridge.isAllowedJsonUrl(ProviderId.OPENCODE, "https://opencode.ai/billing/credits"))
        assertTrue(ProviderNativeJsonBridge.isAllowedJsonUrl(ProviderId.OPENCODE, "https://opencode.ai/_server?id=7abeebee372f304e050aaaf92be863f4a86490e382f8c79db68fd94040d691b4&args=%5B%22wrk_123%22%5D"))
        assertTrue(ProviderNativeJsonBridge.isAllowedJsonUrl(ProviderId.COPILOT, "https://github.com/github-copilot/chat/entitlement"))
        assertTrue(ProviderNativeJsonBridge.isAllowedJsonUrl(ProviderId.COPILOT, "https://api.github.com/copilot_internal/user"))
        assertFalse(ProviderNativeJsonBridge.isAllowedJsonUrl(ProviderId.CLAUDE, "https://firebase.googleapis.com/relay"))
        assertFalse(ProviderNativeJsonBridge.isAllowedJsonUrl(ProviderId.CODEX, "https://admin.openai.com/analytics/codex"))
        assertFalse(ProviderNativeJsonBridge.isAllowedJsonUrl(ProviderId.OPENCODE, "https://opencode.ai/auth"))
        assertFalse(ProviderNativeJsonBridge.isAllowedJsonUrl(ProviderId.OPENCODE, "https://opencode.ai/docs/go/"))
        assertFalse(ProviderNativeJsonBridge.isAllowedJsonUrl(ProviderId.COPILOT, "https://github.com/settings/profile"))
    }

    @Test
    fun nativeJsonBridgeExcludesNonScopedProvidersAndAllowsCursorNativeEndpoint() {
        assertFalse(ProviderNativeJsonBridge.isAllowedJsonUrl(ProviderId.ANTIGRAVITY, "https://antigravity.google/usage"))
        assertTrue(ProviderNativeJsonBridge.isAllowedJsonUrl(ProviderId.GLM, "https://api.z.ai/api/monitor/usage/quota/limit"))
        assertTrue(ProviderNativeJsonBridge.isAllowedJsonUrl(ProviderId.CURSOR, "https://cursor.com/api/usage"))
        assertFalse(ProviderNativeJsonBridge.isAllowedJsonUrl(ProviderId.CURSOR, "https://cursor.com/settings"))
    }

    @Test
    fun nativeJsonBridgeFallsBackToOriginCookieWhenPathCookieIsBlank() {
        assertEquals(
            "auth=origin",
            ProviderNativeJsonBridge.firstNonBlankCookieForTest("", "auth=origin")
        )
        assertEquals(
            "auth=path",
            ProviderNativeJsonBridge.firstNonBlankCookieForTest("auth=path", "auth=origin")
        )
        assertNull(ProviderNativeJsonBridge.firstNonBlankCookieForTest("", ""))
    }

    @Test
    fun exactClaudeAndCodexRequestsUseOnlySelectedProfileCookieWithExactHeaders() {
        val profileA = ExactProfileCookieSource { _, _ -> "profile_session=A" }
        val profileB = ExactProfileCookieSource { _, _ -> "profile_session=B" }
        val cases = listOf(
            Triple(ProviderId.CLAUDE, "https://claude.ai/api/organizations", profileA),
            Triple(ProviderId.CODEX, "https://chatgpt.com/backend-api/wham/usage", profileB),
        )

        cases.forEach { (providerId, url, selected) ->
            val headers = ProviderNativeJsonBridge.assembledHeadersForTest(
                ProviderNativeJsonRequest(
                    providerId,
                    url,
                    "task14-agent",
                    mapOf("Authorization" to "Bearer B"),
                    selected,
                )
            )

            assertEquals("Bearer B", headers["Authorization"])
            assertEquals(
                if (providerId == ProviderId.CLAUDE) "profile_session=A" else "profile_session=B",
                headers["Cookie"],
            )
            assertFalse(headers.values.any { it.contains("default_session") })
        }
    }

    @Test
    fun exactClaudeAndCodexRequestsOmitCookieWhenSelectedProfileHasNone() {
        val emptySelectedProfile = ExactProfileCookieSource { _, _ -> null }
        listOf(
            ProviderId.CLAUDE to "https://claude.ai/api/organizations",
            ProviderId.CODEX to "https://chatgpt.com/backend-api/wham/usage",
        ).forEach { (providerId, url) ->
            val headers = ProviderNativeJsonBridge.assembledHeadersForTest(
                ProviderNativeJsonRequest(
                    providerId,
                    url,
                    "task14-agent",
                    mapOf("Authorization" to "Bearer B"),
                    emptySelectedProfile,
                )
            )

            assertEquals("Bearer B", headers["Authorization"])
            assertFalse(headers.keys.any { it.equals("Cookie", ignoreCase = true) })
        }
    }

    @Test
    fun nativeJsonBridgeWrapsArrayResponsesAsJson() {
        val wrapped = ProviderNativeJsonBridge.wrappedResponse(
            "https://claude.ai/api/organizations",
            200,
            """[{"uuid":"org_123"}]"""
        )

        assertTrue(wrapped.optBoolean("ok"))
        assertEquals("org_123", wrapped.getJSONArray("json").getJSONObject(0).getString("uuid"))
    }

    @Test
    fun nativeJsonBridgeKeepsRawTextOnlyForNonJsonResponses() {
        val wrapped = ProviderNativeJsonBridge.wrappedResponse(
            "https://claude.ai/api/organizations",
            200,
            "not-json"
        )

        assertEquals("not-json", wrapped.getJSONObject("json").getString("rawText"))
    }
}
