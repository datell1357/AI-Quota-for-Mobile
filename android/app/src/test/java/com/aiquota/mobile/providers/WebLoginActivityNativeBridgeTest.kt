package com.aiquota.mobile.providers

import com.aiquota.mobile.local.ProviderId
import java.io.File
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

    @Test
    fun claudeSignedInChatRedirectsToAboutBlankNativeBridge() {
        val source = File("src/main/java/com/aiquota/mobile/providers/WebLoginActivity.kt").readText()

        assertTrue(source.contains("maybeStartClaudeNativeCollection(view, effectiveUrl, \"page_finished\")"))
        assertTrue(source.contains("ProviderLoginStrategy.shouldStartClaudeNativeCollectionFromResource(url)"))
        assertTrue(source.contains("maybeStartClaudeNativeCollection(view, url, \"resource\")"))
        assertTrue(source.contains("providerId == ProviderId.CLAUDE && effectiveUrl == \"about:blank\""))
        assertTrue(source.contains("captureDebugProviderSessionCookies(\"claude_native_collection_start\")"))
        assertTrue(source.contains("provider=claude nativeCollectorStart=aboutblank"))
    }

    @Test
    fun copilotSignedInSettingsRedirectsToAboutBlankNativeBridge() {
        val source = File("src/main/java/com/aiquota/mobile/providers/WebLoginActivity.kt").readText()
        val script = ProviderWebCollectorScripts.build(
            providerId = ProviderId.COPILOT,
            cookies = emptyMap(),
            geminiCollectorAsset = "",
            pageUrl = "about:blank",
            awaitInteractiveLoginUsage = true
        )

        assertTrue(source.contains("private var copilotNativeCollectionStarted = false"))
        assertTrue(source.contains("maybeStartCopilotNativeCollection(view, effectiveUrl, \"page_finished\")"))
        assertTrue(source.contains("providerId == ProviderId.COPILOT && effectiveUrl == \"about:blank\""))
        assertTrue(source.contains("provider=copilot nativeCollectorStart=aboutblank"))
        assertTrue(source.contains("awaitInteractiveLoginUsage = providerId == ProviderId.CODEX || providerId == ProviderId.GEMINI || providerId == ProviderId.COPILOT"))
        assertTrue(source.contains("ProviderId.COPILOT ->"))
        assertTrue(source.contains("copilot_usage_unavailable"))
        assertTrue(source.contains("copilot_native_usage_unavailable"))
        assertTrue(script.contains("fetchNativeUsagePayload"))
        assertFalse(script.contains("fetchCopilotJson("))
        assertFalse(script.contains("document.documentElement"))
        assertFalse(script.contains("settings/copilot"))
    }
}
