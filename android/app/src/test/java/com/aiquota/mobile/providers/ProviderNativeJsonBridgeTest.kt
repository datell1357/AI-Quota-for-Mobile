package com.aiquota.mobile.providers

import com.aiquota.mobile.local.ProviderId
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class ProviderNativeJsonBridgeTest {
    @Test
    fun nativeJsonBridgeAllowsOnlyExistingScopedCollectorEndpoints() {
        assertTrue(ProviderNativeJsonBridge.isAllowedJsonUrl(ProviderId.CLAUDE, "https://claude.ai/api/organizations"))
        assertTrue(ProviderNativeJsonBridge.isAllowedJsonUrl(ProviderId.CLAUDE, "https://claude.ai/api/organizations/me"))
        assertTrue(ProviderNativeJsonBridge.isAllowedJsonUrl(ProviderId.CLAUDE, "https://claude.ai/api/organizations/org_123/usage"))
        assertTrue(ProviderNativeJsonBridge.isAllowedJsonUrl(ProviderId.CODEX, "https://chatgpt.com/api/auth/session"))
        assertTrue(ProviderNativeJsonBridge.isAllowedJsonUrl(ProviderId.CODEX, "https://chatgpt.com/backend-api/subscriptions"))
        assertTrue(ProviderNativeJsonBridge.isAllowedJsonUrl(ProviderId.COPILOT, "https://github.com/github-copilot/chat/entitlement"))
        assertTrue(ProviderNativeJsonBridge.isAllowedJsonUrl(ProviderId.COPILOT, "https://api.github.com/copilot_internal/user"))

        assertFalse(ProviderNativeJsonBridge.isAllowedJsonUrl(ProviderId.CLAUDE, "https://firebase.googleapis.com/relay"))
        assertFalse(ProviderNativeJsonBridge.isAllowedJsonUrl(ProviderId.CODEX, "https://admin.openai.com/analytics/codex"))
        assertFalse(ProviderNativeJsonBridge.isAllowedJsonUrl(ProviderId.COPILOT, "https://github.com/settings/profile"))
    }

    @Test
    fun nativeJsonBridgeExcludesNonScopedProviders() {
        assertFalse(ProviderNativeJsonBridge.isAllowedJsonUrl(ProviderId.ANTIGRAVITY, "https://antigravity.google/usage"))
        assertFalse(ProviderNativeJsonBridge.isAllowedJsonUrl(ProviderId.GLM, "https://api.z.ai/api/monitor/usage/quota/limit"))
        assertFalse(ProviderNativeJsonBridge.isAllowedJsonUrl(ProviderId.OPENCODE, "https://opencode.ai/zen/go/usage"))
        assertFalse(ProviderNativeJsonBridge.isAllowedJsonUrl(ProviderId.CURSOR, "https://cursor.com/api/usage"))
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
