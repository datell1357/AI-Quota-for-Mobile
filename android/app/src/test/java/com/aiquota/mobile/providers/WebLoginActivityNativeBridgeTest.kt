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
    fun claudeAboutBlankBridgeRetriesButDoesNotHoldFinalErrorOpen() {
        val source = File("src/main/java/com/aiquota/mobile/providers/WebLoginActivity.kt").readText()
        val collectorInjection = source.substringAfter("private fun injectCollectorIfReady")
            .substringBefore("private fun shouldKeepLoginOpenUntilUsagePayload")
        val keepOpen = source.substringAfter("private fun shouldKeepLoginOpenUntilUsagePayload")
            .substringBefore("private fun captureCodexAccountId")

        assertTrue(collectorInjection.contains("providerId == ProviderId.CLAUDE"))
        assertFalse(keepOpen.contains("ProviderId.CLAUDE"))
        assertFalse(keepOpen.contains("claude_organization_unavailable"))
        assertFalse(keepOpen.contains("claude_usage_unavailable"))
        assertFalse(keepOpen.contains("claude_native_usage_unavailable"))
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
        assertTrue(source.contains("awaitInteractiveLoginUsage = providerId == ProviderId.CODEX ||"))
        assertTrue(source.contains("providerId == ProviderId.COPILOT"))
        assertTrue(source.contains("ProviderId.COPILOT ->"))
        assertTrue(source.contains("copilot_usage_unavailable"))
        assertTrue(source.contains("copilot_native_usage_unavailable"))
        assertTrue(script.contains("fetchNativeUsagePayload"))
        assertFalse(script.contains("fetchCopilotJson("))
        assertFalse(script.contains("document.documentElement"))
        assertFalse(script.contains("settings/copilot"))
    }

    @Test
    fun cursorSignedInDashboardStartsAboutBlankNativeBridge() {
        val source = File("src/main/java/com/aiquota/mobile/providers/WebLoginActivity.kt").readText()
        val script = ProviderWebCollectorScripts.build(
            providerId = ProviderId.CURSOR,
            cookies = emptyMap(),
            geminiCollectorAsset = "",
            pageUrl = "about:blank",
            awaitInteractiveLoginUsage = true
        )

        assertTrue(ProviderLoginStrategy.shouldStartCursorNativeCollection("https://cursor.com/dashboard"))
        assertTrue(ProviderLoginStrategy.shouldStartCursorNativeCollection("https://www.cursor.com/dashboard?tab=usage"))
        assertFalse(ProviderLoginStrategy.shouldStartCursorNativeCollection("https://cursor.com/login"))
        assertFalse(ProviderLoginStrategy.shouldStartCursorNativeCollection("https://cursor.com/api/usage"))
        assertFalse(ProviderLoginStrategy.shouldStartCursorNativeCollection("https://api.workos.com/sso/authorize"))
        assertFalse(ProviderLoginStrategy.shouldStartCursorNativeCollection("https://github.com/login"))

        assertTrue(source.contains("private var cursorNativeCollectionStarted = false"))
        assertTrue(source.contains("maybeStartCursorNativeCollection(view, effectiveUrl, \"page_finished\")"))
        assertTrue(source.contains("providerId == ProviderId.CURSOR && effectiveUrl == \"about:blank\""))
        assertTrue(source.contains("provider=cursor nativeCollectorStart=aboutblank"))
        assertTrue(source.contains("providerId == ProviderId.CURSOR"))
        assertTrue(script.contains("fetchNativeUsagePayload"))
        assertFalse(script.contains("document.documentElement"))
        assertFalse(script.contains("__AIQuotaCursorNetworkRows"))
        assertFalse(script.contains("scanCursorPageState"))
    }

    @Test
    fun geminiAboutBlankBridgeKeepsAccountScopedUsageUrl() {
        val login = File("src/main/java/com/aiquota/mobile/providers/WebLoginActivity.kt").readText()
        val refresh = File("src/main/java/com/aiquota/mobile/providers/ProviderBackgroundRefreshService.kt").readText()

        assertTrue(login.contains("geminiNativeUsagePageUrl = canonicalUsageUrl"))
        assertTrue(login.contains("saveGeminiUsageUrl(canonicalUsageUrl)"))
        assertTrue(login.contains("bridgePageUrl = nativeUsageBridgePageUrl()"))
        assertTrue(refresh.contains("saveGeminiUsageUrl(usageUrl)"))
        assertTrue(refresh.contains("bridgePageUrl = nativeUsageBridgePageUrl(ownerProviderId)"))
        assertTrue(refresh.contains("readGeminiUsageUrl()"))
    }

    @Test
    fun opencodeLoginStartsAboutBlankNativeCollectionFromGoUsagePage() {
        val source = File("src/main/java/com/aiquota/mobile/providers/WebLoginActivity.kt").readText()

        assertTrue(source.contains("private var openCodeNativeCollectionStarted = false"))
        assertTrue(source.contains("maybeStartOpenCodeNativeCollection(view, url, \"page_finished\")"))
        assertTrue(source.contains("providerId == ProviderId.OPENCODE && effectiveUrl == \"about:blank\""))
        assertTrue(source.contains("OpenCodeUsagePageRoutes.canonicalGoUsageUrlFrom(url)"))
        assertTrue(source.contains("provider=opencode nativeCollectorStart=aboutblank"))
        assertTrue(source.contains("readOpenCodeUsageUrl()"))
        assertTrue(source.contains("ProviderId.OPENCODE ->"))
        assertTrue(source.contains("opencode_usage_unavailable"))
        assertTrue(source.contains("providerId == ProviderId.OPENCODE ||"))
    }

    @Test
    fun geminiNativeStartWaitsForLastRedirectedUsageUrl() {
        val login = File("src/main/java/com/aiquota/mobile/providers/WebLoginActivity.kt").readText()

        assertTrue(login.contains("private var geminiExpectedUsagePageUrl = \"\""))
        assertTrue(login.contains("geminiExpectedUsagePageUrl = GeminiUsagePageRoutes.canonicalUsageUrl(usageUrl).orEmpty()"))
        assertTrue(login.contains("val expectedUsageUrl = geminiExpectedUsagePageUrl"))
        assertTrue(login.contains("expectedUsageUrl.isNotBlank() && canonicalUsageUrl != expectedUsageUrl"))
        assertTrue(login.contains("GeminiUsagePageRoutes.isUsageUrl(currentViewUrl)"))
        assertTrue(login.contains("provider=gemini ignoreStaleRedirect"))
    }
}
