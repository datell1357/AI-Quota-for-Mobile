package com.aiquota.mobile.providers

import com.aiquota.mobile.local.ProviderId
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class WebLoginActivityNativeBridgeTest {
    @Test
    fun codexNativeCollectionStartsOnlyFromAuthenticatedWhamUsageResource() {
        assertTrue(
            CodexNativeCollectionRoutes.shouldStartFromResource(
                "https://chatgpt.com/backend-api/wham/usage"
            )
        )
        assertTrue(
            CodexNativeCollectionRoutes.shouldStartFromResource(
                "https://mobile.chatgpt.com/backend-api/wham/usage"
            )
        )

        assertFalse(CodexNativeCollectionRoutes.shouldStartFromResource("https://chatgpt.com/"))
        assertFalse(CodexNativeCollectionRoutes.shouldStartFromResource("https://chatgpt.com/api/auth/session"))
        assertFalse(CodexNativeCollectionRoutes.shouldStartFromResource("https://chatgpt.com/backend-api/me"))
        assertFalse(
            CodexNativeCollectionRoutes.shouldStartFromResource(
                "https://chatgpt.com/codex/cloud/settings/analytics"
            )
        )
        assertFalse(
            CodexNativeCollectionRoutes.shouldStartFromResource(
                "https://example.com/backend-api/wham/usage"
            )
        )
    }

    @Test
    fun codexTopLevelAboutBlankNavigationRequiresNativeCollectionStart() {
        assertTrue(CodexNativeCollectionRoutes.isAboutBlankNavigation(true, "about:blank"))
        assertTrue(CodexNativeCollectionRoutes.isAboutBlankNavigation(true, "about:srcdoc"))

        assertFalse(CodexNativeCollectionRoutes.isAboutBlankNavigation(false, "about:blank"))
        assertFalse(
            CodexNativeCollectionRoutes.isAboutBlankNavigation(
                true,
                "https://chatgpt.com/codex/cloud/settings/analytics"
            )
        )
    }

    @Test
    fun codexAboutBlankCollectorUsesOnlyNativeUsagePayloadBridge() {
        val script = ProviderWebCollectorScripts.build(
            providerId = ProviderId.CODEX,
            cookies = emptyMap(),
            geminiCollectorAsset = "",
            pageUrl = "about:blank",
            awaitInteractiveLoginUsage = true
        )

        assertTrue(script.contains("fetchNativeUsagePayload"))
        assertFalse(script.contains("parseCodexFetchedPayload"))
        assertFalse(script.contains("c.fetchJson(\"https://chatgpt.com/backend-api/wham/usage\")"))
        assertFalse(script.contains("c.fetchJson(\"https://chatgpt.com/codex/cloud/settings/analytics\")"))
        assertFalse(script.contains("__AIQuotaCodexNetworkRows"))
        assertFalse(script.contains("scanCodexPageState"))
        assertFalse(script.contains("scanCodexUsageText"))
    }
}
