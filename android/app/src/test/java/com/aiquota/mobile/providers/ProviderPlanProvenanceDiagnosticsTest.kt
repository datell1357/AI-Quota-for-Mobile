package com.aiquota.mobile.providers

import java.io.File
import org.json.JSONArray
import org.json.JSONObject
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class ProviderPlanProvenanceDiagnosticsTest {
    @Test
    fun providerPlanProvenanceDiagnosticsUseDedicatedClosedSchemaTag() {
        val sources = providerSources()

        assertTrue(sources.any { it.contains("""AIQuotaPlanProvenance""") })
        listOf(
            "claude_subscription_details",
            "codex_wham_usage",
            "glm_subscription_list",
            "gemini_usage_rpc"
        ).forEach { endpoint ->
            assertTrue("missing provenance endpoint $endpoint", sources.any { it.contains(endpoint) })
        }
        listOf("rawText", "sample", "body", "value", "email", "accountId", "Authorization", "Cookie").forEach { token ->
            sources.forEach { source ->
                source.lines()
                    .filter { it.contains("AIQuotaPlanProvenance") || it.contains("PlanProvenance") }
                    .forEach { line -> assertFalse("unsafe provenance token $token in $line", line.contains(token)) }
            }
        }
    }

    @Test
    fun closedSchemaRejectsRawScalarFieldsAndValues() {
        val forbidden = listOf(
            JSONObject(mapOf("provider" to "claude", "endpointLabel" to "claude_subscription_details", "plan" to "Max")),
            JSONObject(mapOf("provider" to "codex", "endpointLabel" to "codex_wham_usage", "account" to "user@example.com")),
            JSONObject(mapOf("provider" to "glm", "endpointLabel" to "glm_my_plan", "raw" to "{}")),
            JSONObject(mapOf("provider" to "gemini", "endpointLabel" to "gemini_usage_rpc", "keyPath" to "${'$'}.data.productName")),
            JSONObject(mapOf("provider" to "gemini", "endpointLabel" to "gemini_usage_rpc", "keyPath" to "${'$'}.account.email"))
        )

        forbidden.forEach { record ->
            assertFalse("record should be rejected: $record", record.isClosedSchemaProvenanceRecord())
        }
    }

    @Test
    fun closedSchemaAllowsOnlyStructuralPlanProvenanceRecord() {
        val record = JSONObject(
            ProviderPlanProvenanceDiagnostics.formatForTest(
                ProviderPlanProvenanceDiagnostics.Record(
                    provider = "gemini",
                    endpointLabel = "gemini_usage_rpc",
                    rpcLabel = "jSf9Qc",
                    httpStatus = 200,
                    keyPath = "${'$'}.wrb.fr[1]",
                    jsonType = "array",
                    present = true,
                    planPresent = false,
                    accountPresent = false,
                    itemCount = 2,
                    byteCount = 1200,
                    endpointCount = 2,
                    requestCountDelta = 0,
                    transformTarget = "T6_GEMINI_EXISTING_RESPONSE_MERGE",
                    fallbackPolicy = "WEBVIEW_DEVTOOLS_ONLY_IF_NO_OBSERVED_SOURCE",
                    protectedFlow = "GeminiUsagePageNativeFetcher.fetchBatchExecuteRpc"
                )
            )
        )

        assertTrue(record.isClosedSchemaProvenanceRecord())
    }

    private fun providerSources(): List<String> {
        return listOf(
            "ProviderNativeUsagePayloadFetcher.kt",
            "ProviderPlanProvenanceDiagnostics.kt",
            "GlmUsageRepository.kt",
            "GeminiUsagePageNativeFetcher.kt"
        ).map { name -> File("src/main/java/com/aiquota/mobile/providers/$name").readText() }
    }

    private fun JSONObject.isClosedSchemaProvenanceRecord(): Boolean {
        val allowed = setOf(
            "provider",
            "endpointLabel",
            "rpcLabel",
            "httpStatus",
            "keyPath",
            "jsonType",
            "present",
            "planPresent",
            "accountPresent",
            "count",
            "keyCount",
            "itemCount",
            "byteCount",
            "requestCount",
            "endpointCount",
            "requestCountDelta",
            "transformTarget",
            "fallbackPolicy",
            "protectedFlowsTouched"
        )
        val keys = keys().asSequence().toList()
        if (!keys.all(allowed::contains)) return false
        if (optString("provider") !in setOf("claude", "codex", "glm", "gemini")) return false
        if (optString("jsonType") !in setOf("object", "array", "string", "number", "boolean", "null", "missing")) return false
        if (optString("transformTarget") !in setOf(
                "T3_CLAUDE_OBSERVED_CANDIDATE",
                "T4_CODEX_OBSERVED_SOURCE",
                "T5_GLM_OBSERVED_PLAN_SHAPE",
                "T6_GEMINI_EXISTING_RESPONSE_MERGE"
            )
        ) return false
        if (optString("fallbackPolicy") !in setOf(
                "PRESERVE_USAGE_WITHOUT_PLAN",
                "WEBVIEW_DEVTOOLS_ONLY_IF_NO_OBSERVED_SOURCE"
            )
        ) return false
        if (optString("keyPath").contains(Regex("""(?i)(productName|subscription\.name|display_name|title|label|sku|email|account|raw|sample|body|value|plan|tier)"""))) return false
        keys.forEach { key ->
            when (val field = opt(key)) {
                is String -> if (field.contains(Regex("""(?i)(@|bearer|cookie|token|secret|plan\s|pro\s|max\s|plus\s)"""))) return false
                is Int, is Boolean, is JSONArray -> Unit
                else -> return false
            }
        }
        return true
    }

    private fun Iterator<String>.asSequence(): Sequence<String> = sequence {
        while (hasNext()) yield(next())
    }
}
