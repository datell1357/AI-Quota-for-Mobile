package com.aiquota.mobile.providers

import com.aiquota.mobile.local.ProviderId
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test
import java.io.File
import org.json.JSONObject

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

    /**
     * Regression guard: Google changed the SNlM0e XSRF token prefix (AD1_ → ADR5za…). The old
     * startsWith("AD1_") filter dropped the valid token, so the usage batchexecute went out without
     * `at` and returned HTTP 400 ("xsrf"), breaking Gemini usage collection. Any non-blank token
     * must now be accepted.
     */
    @Test
    fun usagePageHtmlAcceptsNonAd1AtTokenPrefix() {
        val html = """
            <html><head><script>
              window.WIZ_global_data = {"SNlM0e":"ADR5zaXsRfTokenValue","FdrFJe":"-123","cfb2h":"boq_assistant","hl":"ko"};
            </script></head></html>
        """.trimIndent()

        val params = GeminiUsagePageNativeFetcher.usagePageParamsFromHtmlForTest(html, nowMillis = 1234L)

        assertNotNull(params)
        assertEquals("ADR5zaXsRfTokenValue", params?.at)
    }

    /**
     * The live batchexecute usage response (captured 2026-07-24) still uses the historical row
     * shape `[limit, used, type, [[resetEpoch, nanos]]]` — types 1 (5-hour) and 2 (weekly), with
     * an ignorable type 4. Only the request's `at` token was the problem, so the existing parser
     * must extract usage lines from this payload.
     */
    @Test
    fun batchExecuteResponseInCurrentFormatParsesUsageLines() {
        val raw = ")]}'\n\n234\n" +
            "[[\"wrb.fr\",\"jSf9Qc\"," +
            "\"[1,[[12096,0,2,[[1785401913,33483000]]]," +
            "[0,0,4,null,null,[[1784874204,16436000],4]]," +
            "[600,0,1,[[1784872713,33384000]]]]]\"," +
            "null,null,null,\"generic\"]]"

        val payload = GeminiUsagePageNativeFetcher.usagePayloadFromBatchExecuteForTest(raw)

        assertNotNull(payload)
        val snapshot = ProviderUsageNormalizer.normalize(
            providerId = ProviderId.GEMINI,
            rawPayload = payload!!.toString(),
            source = ProviderPayloadSource.NETWORK_RESPONSE,
            fetchedAt = "2026-07-24T00:00:00Z"
        )
        assertNotNull(snapshot)
        assertTrue(snapshot!!.lines.isNotEmpty())
    }

    @Test
    fun accountScopedUsagePageSuppliesAccountScopedRpcSourcePath() {
        val params = GeminiUsagePageRpcSession.Params(
            at = "",
            fSid = "-123",
            bl = "boq_assistant",
            hl = "ko",
            capturedAtMillis = 1234L
        )

        val url = GeminiUsagePageNativeFetcher.batchExecuteUrlForTest(
            params,
            "https://gemini.google.com/u/1/usage?pli=1"
        )

        assertEquals(true, url.contains("source-path=%2Fu%2F1%2Fusage"))
        assertEquals(true, url.startsWith("https://gemini.google.com/u/1/_/BardChatUi/data/batchexecute?"))
    }

    @Test
    fun batchExecuteDiscoveryMetadataIsRedactedAndQuotaShaped() {
        val rawText = """
            )]}'
            [["wrb.fr","jSf9Qc","[null,[[120.0,30.0,1,[[1700000000,0]]],[80.0,20.0,2,null]]]"]]
        """.trimIndent()

        val metadata = GeminiUsagePageNativeFetcher.discoveryMetadataFromBatchExecuteForTest(
            rawText = rawText,
            status = 200,
            usagePageUrl = "https://gemini.google.com/u/0/usage?authuser=secret@example.com&token=abc",
            payloadBytes = rawText.length
        )

        assertTrue(metadata.contains("provider=gemini"))
        assertTrue(metadata.contains("usagePath=/u/0/usage"))
        assertTrue(metadata.contains("rpcId=jSf9Qc"))
        assertTrue(metadata.contains("status=200"))
        assertTrue(metadata.contains("payloadBytes=${rawText.length}"))
        assertTrue(metadata.contains("rowCount=2"))
        assertTrue(metadata.contains("labels=5-hour limit|Weekly limit"))
        assertTrue(metadata.contains("remainingPercents=80.0|80.0"))
        assertFalse(metadata.contains("secret@example.com"))
        assertFalse(metadata.contains("token=abc"))
        assertFalse(metadata.contains("authuser"))
        assertFalse(metadata.contains("[[\"wrb.fr\""))
    }

    @Test
    fun batchExecuteJsf9QcDirectRowsPreserveSanitizedMetadata() {
        val rawText = """
            )]}'
            [["wrb.fr","jSf9Qc","[{\"plan\":\"Gemini Pro\",\"account\":\"anon@example.com\"},[[2357.0,0.02,1,[[1782793673,919528000]]],[48302.0,0.0,2,[[1783337273,919653000]]]]]"]]
        """.trimIndent()

        val payload = GeminiUsagePageNativeFetcher.usagePayloadFromBatchExecuteForTest(rawText)

        assertNotNull(payload)
        assertEquals("native-usage-page-rpc", payload!!.getString("collectorMode"))
        assertEquals("Gemini Pro", payload.getString("plan"))
        assertEquals("anon@example.com", payload.getString("account"))
        val lines = payload.getJSONObject("usage").getJSONArray("x")
        assertEquals(2, lines.length())
        assertEquals(98.0, lines.getJSONObject(0).getDouble("remaining_percent"), 0.01)
        assertEquals(100.0, lines.getJSONObject(1).getDouble("remaining_percent"), 0.01)
        assertEquals(0.02, lines.getJSONObject(0).getDouble("used"), 0.01)
        assertEquals(0.0, lines.getJSONObject(1).getDouble("used"), 0.01)
        assertEquals(2.0, lines.getJSONObject(0).getDouble("used_percent"), 0.01)
        assertEquals(0.0, lines.getJSONObject(1).getDouble("used_percent"), 0.01)
    }

    @Test
    fun batchExecuteRpcDropsMalformedAndDateLikeMetadata() {
        val rawText = """
            )]}'
            [["wrb.fr","jSf9Qc","[{\"plan\":{\"bad\":true},\"account\":\"2026-07-10\"},[[2357.0,0.02,1,[[1782793673,919528000]]],[48302.0,0.0,2,[[1783337273,919653000]]]]]"]]
        """.trimIndent()

        val payload = GeminiUsagePageNativeFetcher.usagePayloadFromBatchExecuteForTest(rawText)
        val lines = payload!!.getJSONObject("usage").getJSONArray("x")

        assertFalse(payload.has("plan"))
        assertFalse(payload.has("account"))
        assertEquals(2, lines.length())
        assertEquals(98.0, lines.getJSONObject(0).getDouble("remaining_percent"), 0.01)
        assertEquals(100.0, lines.getJSONObject(1).getDouble("remaining_percent"), 0.01)
    }

    @Test
    fun batchExecuteDiscoveryMetadataSummarizesCandidateShapeWithoutRawPayload() {
        val rawText = """
            )]}'
            [["wrb.fr","usageRpc2","[7,[\"visible quota label\"],{\"private\":\"secret@example.com\"}]",null,null,null,"usage-page"]]
        """.trimIndent()

        val metadata = GeminiUsagePageNativeFetcher.discoveryMetadataFromBatchExecuteForTest(
            rawText = rawText,
            status = 200,
            usagePageUrl = "https://gemini.google.com/usage",
            payloadBytes = rawText.length,
            rpcId = "usageRpc2"
        )

        assertTrue(metadata.contains("rpcId=usageRpc2"))
        assertTrue(metadata.contains("shape=array[3]:number|array[1]|object[1]"))
        assertTrue(metadata.contains("rowCount=0"))
        assertFalse(metadata.contains("visible quota label"))
        assertFalse(metadata.contains("secret@example.com"))
        assertFalse(metadata.contains("private"))
    }

    @Test
    fun batchExecuteNestedOtAQ7bPayloadIsMetadataOnly() {
        val rawText = """
            )]}'
            [["wrb.fr","otAQ7b","[7,[\"state\",null,null],true,null,null,null,true,null,null,null,null,null,true,true,1,[\"x\"],[\"y\"],[null,[[450.0,150.0,1,[[1782793673,919528000]]],[300.0,300.0,2,[[1783337273,919653000]]]]],\"tail\",[\"z\"],\"usage-page\"]",null,null,null,"usage-page"]]
        """.trimIndent()

        val payload = GeminiUsagePageNativeFetcher.usagePayloadFromBatchExecuteForTest(rawText, rpcId = "otAQ7b")
        val metadata = GeminiUsagePageNativeFetcher.discoveryMetadataFromBatchExecuteForTest(
            rawText = rawText,
            status = 200,
            usagePageUrl = "https://gemini.google.com/usage",
            payloadBytes = rawText.length,
            rpcId = "otAQ7b"
        )

        assertNull(payload)
        assertTrue(metadata.contains("rowCount=0"))
        assertTrue(metadata.contains("deepRowCount=2"))
        assertTrue(metadata.contains("deepRemainingPercents=75.0|50.0"))
    }

    @Test
    fun usagePageHtmlDiscoveryMetadataIsRedactedAndListsCandidateRpcIds() {
        val html = """
            <html><body data-account="secret@example.com">
              <script nonce="token-123">window.WIZ_global_data = {"FdrFJe":"-123","cfb2h":"boq_assistant"};</script>
              <a href="/_/BardChatUi/data/batchexecute?rpcids%3DquotaRpc1&authuser=secret@example.com">usage</a>
              <script>AF_initDataCallback({key: 'ds:usage', data: ['quota', '/_/BardChatUi/data/batchexecute?rpcids=usageRpc2&token=abc']});</script>
              Cookie: SID=private
            </body></html>
        """.trimIndent()

        val metadata = GeminiUsagePageNativeFetcher.discoveryMetadataFromHtmlForTest(
            rawText = html,
            status = 200,
            usagePageUrl = "https://gemini.google.com/u/0/usage?authuser=secret@example.com",
            payloadBytes = html.length
        )

        assertTrue(metadata.contains("geminiUsageHtmlDiscovery"))
        assertTrue(metadata.contains("provider=gemini"))
        assertTrue(metadata.contains("usagePath=/u/0/usage"))
        assertTrue(metadata.contains("status=200"))
        assertTrue(metadata.contains("payloadBytes=${html.length}"))
        assertTrue(metadata.contains("candidateRpcCount="))
        assertTrue(metadata.contains("quotaRpc1"))
        assertTrue(metadata.contains("usageRpc2"))
        assertFalse(metadata.contains("secret@example.com"))
        assertFalse(metadata.contains("token=abc"))
        assertFalse(metadata.contains("authuser"))
        assertFalse(metadata.contains("SID=private"))
        assertFalse(metadata.contains("<script"))
    }

    @Test
    fun usagePageHtmlDiscoveryDecodesEscapedRpcIdSeparators() {
        val html = """
            <script>
              AF_initDataCallback({data:['/_/BardChatUi/data/batchexecute?rpcids\u003dquotaRpc1']});
              AF_initDataCallback({data:['/_/BardChatUi/data/batchexecute?rpcids\x3dquotaRpc2']});
            </script>
        """.trimIndent()

        val metadata = GeminiUsagePageNativeFetcher.discoveryMetadataFromHtmlForTest(
            rawText = html,
            status = 200,
            usagePageUrl = "https://gemini.google.com/usage",
            payloadBytes = html.length
        )

        assertTrue(metadata.contains("candidateRpcCount=2"))
        assertTrue(metadata.contains("rpcIds=quotaRpc1|quotaRpc2"))
    }

    @Test
    fun usagePageBootstrapPayloadParsesQuotaRowsWithoutDomFallback() {
        val html = """
            <script>
              AF_initDataCallback({data:[null,[[450,150,1,[[1782793673,919528000]]],[300,300,2,[[1783337273,919653000]]]]]});
            </script>
        """.trimIndent()

        val payload = GeminiUsagePageNativeFetcher.usagePayloadFromHtmlBootstrapForTest(html)
        val lines = payload?.getJSONObject("usage")?.getJSONArray("x")

        assertNotNull(payload)
        assertEquals("native-usage-page-bootstrap", payload?.getString("collectorMode"))
        assertEquals(2, lines?.length())
        assertEquals("5-hour limit", lines?.getJSONObject(0)?.getString("l"))
        assertEquals(75.0, lines?.getJSONObject(0)?.getDouble("remaining_percent"))
        assertEquals("Weekly limit", lines?.getJSONObject(1)?.getString("l"))
        assertEquals(50.0, lines?.getJSONObject(1)?.getDouble("remaining_percent"))
    }

    @Test
    fun usagePageBootstrapPayloadCarriesAccountPlanMetadata() {
        val html = """
            <script>
              AF_initDataCallback({data:[null,[[450,150,1,[[1782793673,919528000]]],[300,300,2,[[1783337273,919653000]]]],{"p":"GEMINI_ULTRA","e":"user@example.com"}]});
            </script>
        """.trimIndent()

        val payload = GeminiUsagePageNativeFetcher.usagePayloadFromHtmlBootstrapForTest(html)
        val account = payload?.getJSONObject("account")

        assertNotNull(payload)
        assertNotNull(account)
        assertEquals("GEMINI_ULTRA", account?.getString("p"))
        assertEquals("user@example.com", account?.getString("e"))
        assertEquals(2, payload?.getJSONObject("usage")?.getJSONArray("x")?.length())
    }

    @Test
    fun normalRpcPayloadReceivesHtmlMetadataWithoutChangingQuotaRows() {
        val payload = JSONObject("""{"provider":"gemini","usage":{"x":[{"l":"5-hour limit","remaining_percent":75.0,"used":150.0},{"l":"Weekly limit","remaining_percent":50.0,"used":300.0}]}}""")
        val before = payload.getJSONObject("usage").getJSONArray("x").toString()
        val htmlMetadata = GeminiUsagePageNativeFetcher.geminiPlanAccountFromHtmlForTest(
            """<script>AF_initDataCallback({data:[{"plan":"Gemini Pro","account":"user@example.com"}]});</script>"""
        )

        GeminiUsagePageNativeFetcher.mergeGeminiMetadataForTest(
            payload,
            htmlMetadata
        )

        assertEquals("Gemini Pro", payload.getString("plan"))
        assertEquals("user@example.com", payload.getJSONObject("account").getString("e"))
        assertEquals(before, payload.getJSONObject("usage").getJSONArray("x").toString())
    }

    @Test
    fun compactMetadataRequiresValidPairAndSkipsArbitraryObjectForLaterValidObject() {
        val html = """
            <script>
              AF_initDataCallback({data:[{"p":"position","e":"event"},{"p":"G1_PRO_TIER","e":"valid@example.com"}]});
            </script>
        """.trimIndent()

        val metadata = GeminiUsagePageNativeFetcher.geminiPlanAccountFromHtmlForTest(html)

        assertEquals("G1_PRO_TIER", metadata?.getString("plan"))
        assertEquals("valid@example.com", metadata?.getString("account"))
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
