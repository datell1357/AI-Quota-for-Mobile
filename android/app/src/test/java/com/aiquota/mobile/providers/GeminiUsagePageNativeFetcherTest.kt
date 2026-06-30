package com.aiquota.mobile.providers

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNotNull
import org.junit.Test
import java.io.File

class GeminiUsagePageNativeFetcherTest {
    @Test
    fun usagePageHtmlSuppliesNativeRpcParams() {
        val html = """
            <html><head><script>
              window.WIZ_global_data = {"SNlM0e":"AD1_test","FdrFJe":"-123","cfb2h":"boq_assistant","hl":"ko"};
            </script></head></html>
        """.trimIndent()

        val params = GeminiUsagePageNativeFetcher.usagePageParamsFromHtmlForTest(html, nowMillis = 1234L)

        assertNotNull(params)
        assertEquals("AD1_test", params?.at)
        assertEquals("-123", params?.fSid)
        assertEquals("boq_assistant", params?.bl)
        assertEquals("ko", params?.hl)
        assertEquals(1234L, params?.capturedAtMillis)
    }

    @Test
    fun usagePageHtmlAllowsReadOnlyRpcWithoutAtToken() {
        val html = """
            <html><head><script>
              var WIZ_global_data = {"FdrFJe":"-123","cfb2h":"boq_assistant","hl":"en"};
            </script></head></html>
        """.trimIndent()

        val params = GeminiUsagePageNativeFetcher.usagePageParamsFromHtmlForTest(html, nowMillis = 1234L)

        assertNotNull(params)
        assertEquals("", params?.at)
        assertEquals("-123", params?.fSid)
        assertEquals("boq_assistant", params?.bl)
    }

    @Test
    fun geminiNativeCollectionDoesNotDependOnUsagePageDomSessionCapture() {
        val loginSource = File("src/main/java/com/aiquota/mobile/providers/WebLoginActivity.kt").readText()
        val refreshSource = File("src/main/java/com/aiquota/mobile/providers/ProviderBackgroundRefreshService.kt").readText()

        assertFalse(loginSource.contains("GeminiUsagePageRpcSession.captureScript()"))
        assertFalse(refreshSource.contains("GeminiUsagePageRpcSession.captureScript()"))
        assertFalse(refreshSource.contains("geminiRpcSessionWarmUpUrl(job)"))
        assertFalse(refreshSource.contains("ProviderId.GEMINI -> \"https://gemini.google.com/\""))
    }
}
