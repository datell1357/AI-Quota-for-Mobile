package com.aiquota.mobile.providers

import java.io.File
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class WebLoginActivityNativeBridgeTest {
    @Test
    fun nativeFetchBridgeUsesRecordedPageUrlInsteadOfTouchingWebViewFromJavaBridgeThread() {
        val source = File("src/main/java/com/aiquota/mobile/providers/WebLoginActivity.kt").readText()
        val usageBridge = source.substringAfter("private inner class UsageBridge")
        val nativeFetchGuard = usageBridge.substringAfter("private fun isNativeFetchBridgePageAllowed")
            .substringBefore("    }")

        assertTrue(source.contains("private var currentBridgePageUrl = \"\""))
        assertTrue(source.contains("private fun noteBridgePageUrl(url: String?)"))
        assertTrue(source.contains("noteBridgePageUrl(requestedStartUrl)"))
        assertTrue(nativeFetchGuard.contains("currentBridgePageUrl"))
        assertFalse(nativeFetchGuard.contains("webView.url"))
    }

    @Test
    fun nativeUsagePayloadUsesTheLoginWebViewUserAgent() {
        val loginSource = File("src/main/java/com/aiquota/mobile/providers/WebLoginActivity.kt").readText()
        val nativeJsonSource = File("src/main/java/com/aiquota/mobile/providers/ProviderNativeJsonBridge.kt").readText()
        val nativeUsageSource = File("src/main/java/com/aiquota/mobile/providers/ProviderNativeUsagePayloadFetcher.kt").readText()

        assertTrue(loginSource.contains("currentBridgeUserAgent = loginUserAgent"))
        assertTrue(
            loginSource.contains(
                "ProviderNativeUsagePayloadFetcher.bridgeUsagePayload(providerId, currentBridgeUserAgent)"
            )
        )
        assertTrue(nativeJsonSource.contains("url: String,\n        userAgent: String"))
        assertTrue(nativeJsonSource.contains("setRequestProperty(\"User-Agent\", requestUserAgent)"))
        assertTrue(nativeUsageSource.contains("fun bridgeUsagePayload(\n        providerId: ProviderId,\n        userAgent: String"))
        assertTrue(nativeUsageSource.contains("ProviderNativeJsonBridge.fetchJson(providerId, url, userAgent)"))
    }

    @Test
    fun codexLoginSwitchesToAboutBlankBeforeNativeCollection() {
        val source = File("src/main/java/com/aiquota/mobile/providers/WebLoginActivity.kt").readText()
        val overrideNavigationBlock = source.substringAfter("override fun shouldOverrideUrlLoading")
            .substringBefore("override fun shouldInterceptRequest")
        val onLoadResourceBlock = source.substringAfter("override fun onLoadResource")
            .substringBefore("override fun onPageFinished")
        val onPageFinishedBlock = source.substringAfter("override fun onPageFinished")
            .substringBefore("override fun onReceivedError")
        val interceptRequestBlock = source.substringAfter("override fun shouldInterceptRequest")
            .substringBefore("override fun onLoadResource")
        val collectorErrorBlock = source.substringAfter("fun postCollectorError")
            .substringBefore("fun fetchCursorJson")
        val injectBlock = source.substringAfter("private fun injectCollectorIfReady")
            .substringBefore("        val injectionKey")

        assertTrue(onLoadResourceBlock.contains("if (providerId == ProviderId.CODEX)"))
        assertTrue(onLoadResourceBlock.contains("maybeStartCodexNativeCollection(view, pageUrl, \"resource\")"))
        assertTrue(onPageFinishedBlock.contains("val effectiveUrl = if (isCodexAboutBlankNavigation(url)) \"about:blank\" else url"))
        assertTrue(onPageFinishedBlock.contains("providerId == ProviderId.CODEX && ProviderWebCollectorScripts.shouldAcceptCollectorPayload(providerId, effectiveUrl)"))
        assertTrue(onPageFinishedBlock.contains("if (effectiveUrl == \"about:blank\")"))
        assertTrue(onPageFinishedBlock.contains("maybeStartCodexNativeCollection(view, effectiveUrl, \"page_finished\")"))
        assertTrue(overrideNavigationBlock.contains("if (isCodexAboutBlankNavigation(url))"))
        assertTrue(overrideNavigationBlock.contains("noteBridgePageUrl(\"about:blank\")"))
        assertTrue(interceptRequestBlock.contains("shouldStartCodexNativeCollectionFromResource(url)"))
        assertTrue(interceptRequestBlock.contains("maybeStartCodexNativeCollection(view, pageUrl, \"resource\")"))
        assertFalse(interceptRequestBlock.contains("view.url"))
        assertTrue(collectorErrorBlock.contains("if (providerId == ProviderId.CODEX)"))
        assertTrue(collectorErrorBlock.contains("codexNativeCollectionStarted = false"))
        assertTrue(collectorErrorBlock.contains("collectorInjectionKeys.clear()"))
        assertTrue(injectBlock.contains("resourceTriggered: Boolean = false"))
        assertTrue(injectBlock.contains("if (!resourceTriggered && !ProviderWebCollectorScripts.shouldRunCollector(providerId, url, cookies, pageText)) return"))
        assertFalse(source.contains("location.replace('about:blank')"))
        assertTrue(source.contains("private fun injectCodexAboutBlankFrameCollector"))
        assertTrue(source.contains("frame.src = \"about:blank\""))
        assertTrue(source.contains("__aiquota_codex_native_frame"))
        assertTrue(source.contains("private fun isCodexAboutBlankNavigation(url: String): Boolean"))
        assertTrue(source.contains("if (providerId != ProviderId.CODEX || !codexNativeCollectionStarted) return false"))
    }
}
