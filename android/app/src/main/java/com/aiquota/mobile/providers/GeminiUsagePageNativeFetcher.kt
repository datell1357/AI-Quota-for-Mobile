package com.aiquota.mobile.providers

import android.util.Log
import android.webkit.CookieManager
import com.aiquota.mobile.local.ProviderId
import java.net.HttpURLConnection
import java.net.URL
import java.nio.charset.StandardCharsets
import java.time.Instant
import java.util.Locale
import org.json.JSONArray
import org.json.JSONObject
import org.json.JSONTokener

internal object GeminiUsagePageNativeFetcher {
    data class FetchResult(
        val payload: String?,
        val diagnostic: String,
        val statuses: List<String> = emptyList()
    )

    fun fetchUsagePayload(
        userAgent: String,
        sessionCookieHeader: String? = null,
        usagePageUrl: String = GEMINI_USAGE_PAGE_URL
    ): FetchResult {
        val requestUsagePageUrl = GeminiUsagePageRoutes.canonicalUsageUrl(usagePageUrl) ?: GEMINI_USAGE_PAGE_URL
        val usagePath = usagePathForLog(requestUsagePageUrl)
        val cookieHeader = sessionCookieHeader?.takeIf(String::isNotBlank)
            ?: CookieManager.getInstance().getCookie(requestUsagePageUrl)
            ?: CookieManager.getInstance().getCookie(GEMINI_ORIGIN)
            ?: return FetchResult(null, "gemini_usage_cookie_unavailable")
        val requestUserAgent = userAgent.takeIf { it.isNotBlank() } ?: ProviderWebViewUserAgent.loginUserAgent()
        val sessionResult = fetchUsagePageParams(cookieHeader, requestUserAgent, requestUsagePageUrl)
        val statuses = sessionResult.statuses.toMutableList()
        val params = sessionResult.params
            ?: return FetchResult(null, sessionResult.diagnostic, statuses)
        val endpoint = batchExecuteUrl(params, requestUsagePageUrl)
        val statusLabel = "gemini_usage_rpc"
        return runCatching {
            val body = if (params.at.isBlank()) {
                "f.req=${encodeQuery(JSF9QC_REQUEST)}&"
            } else {
                "f.req=${encodeQuery(JSF9QC_REQUEST)}&at=${encodeQuery(params.at)}&"
            }
            val bodyBytes = body.toByteArray(StandardCharsets.UTF_8)
            val connection = (URL(endpoint).openConnection() as HttpURLConnection).apply {
                connectTimeout = NETWORK_TIMEOUT_MS
                readTimeout = NETWORK_TIMEOUT_MS
                requestMethod = "POST"
                doOutput = true
                setRequestProperty("Accept", "*/*")
                setRequestProperty("Accept-Language", "${params.hl},en-US;q=0.8,en;q=0.7")
                setRequestProperty("Content-Type", "application/x-www-form-urlencoded;charset=UTF-8")
                setRequestProperty("Cookie", cookieHeader)
                setRequestProperty("Origin", GEMINI_ORIGIN)
                setRequestProperty("Referer", requestUsagePageUrl)
                setRequestProperty("User-Agent", requestUserAgent)
                setRequestProperty("X-Same-Domain", "1")
                outputStream.use { it.write(bodyBytes) }
            }
            val status = connection.responseCode
            val stream = if (status in 200..299) connection.inputStream else connection.errorStream
            val text = stream?.bufferedReader(StandardCharsets.UTF_8)?.use { it.readText() }.orEmpty()
            connection.disconnect()
            Log.d(TAG, "geminiUsageRpc usagePath=$usagePath status=$status payloadBytes=${text.length}")
            statuses += "$statusLabel:$status"
            if (status !in 200..299) {
                return FetchResult(null, "gemini_usage_rpc_http_$status", statuses)
            }
            val payload = usagePayloadFromBatchExecute(text)
                ?: return FetchResult(null, "gemini_usage_rpc_unavailable", statuses)
            FetchResult(payload.toString(), "ok", statuses)
        }.getOrElse { error ->
            Log.d(TAG, "geminiUsageRpc usagePath=$usagePath error=${error.javaClass.simpleName}")
            statuses += "$statusLabel:error"
            FetchResult(null, "gemini_usage_rpc_${error.javaClass.simpleName}", statuses)
        }
    }

    internal fun usagePayloadFromBatchExecuteForTest(rawText: String): JSONObject? {
        return usagePayloadFromBatchExecute(rawText)
    }

    internal fun usagePageParamsFromHtmlForTest(rawText: String, nowMillis: Long): GeminiUsagePageRpcSession.Params? {
        return usagePageParamsFromHtml(rawText, nowMillis)
    }

    internal fun batchExecuteUrlForTest(params: GeminiUsagePageRpcSession.Params, usagePageUrl: String): String {
        return batchExecuteUrl(params, usagePageUrl)
    }

    private fun fetchUsagePageParams(cookieHeader: String, userAgent: String, usagePageUrl: String): RpcSessionResult {
        val statusLabel = "gemini_usage_page_html"
        val usagePath = usagePathForLog(usagePageUrl)
        return runCatching {
            val connection = (URL(usagePageUrl).openConnection() as HttpURLConnection).apply {
                connectTimeout = NETWORK_TIMEOUT_MS
                readTimeout = NETWORK_TIMEOUT_MS
                requestMethod = "GET"
                setRequestProperty("Accept", "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8")
                setRequestProperty("Accept-Language", "en-US,en;q=0.8")
                setRequestProperty("Cookie", cookieHeader)
                setRequestProperty("Referer", GEMINI_ORIGIN)
                setRequestProperty("User-Agent", userAgent)
            }
            val status = connection.responseCode
            val stream = if (status in 200..299) connection.inputStream else connection.errorStream
            val text = stream?.bufferedReader(StandardCharsets.UTF_8)?.use { it.readText() }.orEmpty()
            connection.disconnect()
            Log.d(TAG, "geminiUsagePageHtml usagePath=$usagePath status=$status payloadBytes=${text.length}")
            if (status !in 200..299) {
                return RpcSessionResult(null, "gemini_usage_page_http_$status", listOf("$statusLabel:$status"))
            }
            val params = usagePageParamsFromHtml(text)
                ?: return RpcSessionResult(null, "gemini_usage_page_rpc_params_unavailable", listOf("$statusLabel:$status"))
            RpcSessionResult(params, "ok", listOf("$statusLabel:$status"))
        }.getOrElse { error ->
            Log.d(TAG, "geminiUsagePageHtml usagePath=$usagePath error=${error.javaClass.simpleName}")
            RpcSessionResult(null, "gemini_usage_page_${error.javaClass.simpleName}", listOf("$statusLabel:error"))
        }
    }

    private fun usagePageParamsFromHtml(
        rawText: String,
        nowMillis: Long = System.currentTimeMillis()
    ): GeminiUsagePageRpcSession.Params? {
        val data = wizGlobalDataFromHtml(rawText) ?: return null
        val at = data.optString("SNlM0e").takeIf { it.startsWith("AD1_") }.orEmpty()
        val fSid = data.optString("FdrFJe").takeIf { it.isNotBlank() } ?: return null
        val bl = data.optString("cfb2h").takeIf { it.isNotBlank() } ?: return null
        val hl = data.optString("hl")
            .takeIf { it.isNotBlank() }
            ?: Locale.getDefault().language.takeIf { it.isNotBlank() }
            ?: "en"
        return GeminiUsagePageRpcSession.Params(
            at = at,
            fSid = fSid,
            bl = bl,
            hl = hl,
            capturedAtMillis = nowMillis
        )
    }

    private fun wizGlobalDataFromHtml(rawText: String): JSONObject? {
        val marker = rawText.indexOf("WIZ_global_data")
        if (marker < 0) return null
        val start = rawText.indexOf('{', marker)
        if (start < 0) return null
        val end = balancedJsonObjectEnd(rawText, start) ?: return null
        return runCatching { JSONObject(rawText.substring(start, end + 1)) }.getOrNull()
    }

    private fun balancedJsonObjectEnd(value: String, start: Int): Int? {
        var depth = 0
        var inString = false
        var escaped = false
        for (index in start until value.length) {
            val char = value[index]
            if (inString) {
                when {
                    escaped -> escaped = false
                    char == '\\' -> escaped = true
                    char == '"' -> inString = false
                }
                continue
            }
            when (char) {
                '"' -> inString = true
                '{' -> depth += 1
                '}' -> {
                    depth -= 1
                    if (depth == 0) return index
                }
            }
        }
        return null
    }

    private fun usagePayloadFromBatchExecute(rawText: String): JSONObject? {
        val quotaPayload = findRpcPayload(rawText, JSF9QC_RPC_ID) ?: return null
        val rows = quotaPayload.optJSONArray(1) ?: return null
        val lines = quotaRows(rows)
        if (lines.length() == 0) return null
        return JSONObject()
            .put("provider", ProviderId.GEMINI.storageId)
            .put("collectorMode", "native-usage-page-rpc")
            .put("usage", JSONObject().put("x", lines))
    }

    private fun findRpcPayload(rawText: String, rpcId: String): JSONArray? {
        rawText.lineSequence()
            .map(String::trim)
            .filter { it.startsWith("[[") }
            .forEach { line ->
                val outer = runCatching { JSONTokener(line).nextValue() as? JSONArray }.getOrNull() ?: return@forEach
                for (index in 0 until outer.length()) {
                    val entry = outer.optJSONArray(index) ?: continue
                    if (entry.optString(0) != "wrb.fr" || entry.optString(1) != rpcId) continue
                    val payloadText = entry.optString(2).takeIf { it.isNotBlank() && it != "null" } ?: return null
                    return runCatching { JSONTokener(payloadText).nextValue() as? JSONArray }.getOrNull()
                }
            }
        return null
    }

    private fun quotaRows(rows: JSONArray): JSONArray {
        val parsed = mutableListOf<JSONObject>()
        for (index in 0 until rows.length()) {
            val row = rows.optJSONArray(index) ?: continue
            quotaLine(row)?.let(parsed::add)
        }
        return JSONArray(parsed.sortedBy { it.optInt("_order", Int.MAX_VALUE) }.map { line ->
            line.remove("_order")
            line
        })
    }

    private fun quotaLine(row: JSONArray): JSONObject? {
        val remaining = row.optionalDouble(0) ?: return null
        val used = row.optionalDouble(1) ?: 0.0
        val type = row.optInt(2)
        val label = when (type) {
            1 -> "5-hour limit"
            2 -> "Weekly limit"
            else -> return null
        }
        val limit = (remaining + used).takeIf { it > 0.0 } ?: return null
        val resetAt = row.optJSONArray(3)
            ?.optJSONArray(0)
            ?.let(::resetInstant)
        return JSONObject()
            .put("_order", type)
            .put("l", label)
            .put("remaining", remaining)
            .put("used", used)
            .put("limit", limit)
            .put("remaining_percent", (remaining / limit) * 100.0)
            .put("unit", "requests")
            .apply { resetAt?.let { put("r", it) } }
    }

    private fun resetInstant(value: JSONArray): String? {
        val seconds = value.optionalLong(0) ?: return null
        val nanos = value.optionalLong(1) ?: 0L
        return runCatching { Instant.ofEpochSecond(seconds, nanos).toString() }.getOrNull()
    }

    private fun batchExecuteUrl(params: GeminiUsagePageRpcSession.Params, usagePageUrl: String): String {
        val reqId = (System.currentTimeMillis() % 1_000_000L) + 100_000L
        val sourcePath = usagePathForLog(usagePageUrl)
        return "$GEMINI_ORIGIN/_/BardChatUi/data/batchexecute" +
            "?rpcids=$JSF9QC_RPC_ID" +
            "&source-path=${encodeQuery(sourcePath)}" +
            "&bl=${encodeQuery(params.bl)}" +
            "&f.sid=${encodeQuery(params.fSid)}" +
            "&hl=${encodeQuery(params.hl)}" +
            "&_reqid=$reqId" +
            "&rt=c"
    }

    private fun JSONArray.optionalDouble(index: Int): Double? {
        if (index < 0 || index >= length() || isNull(index)) return null
        return opt(index)?.toString()?.toDoubleOrNull()
    }

    private fun JSONArray.optionalLong(index: Int): Long? {
        if (index < 0 || index >= length() || isNull(index)) return null
        return opt(index)?.toString()?.toLongOrNull()
    }

    private fun encodeQuery(value: String): String {
        return java.net.URLEncoder.encode(value, StandardCharsets.UTF_8.name())
    }

    private fun usagePathForLog(usagePageUrl: String): String {
        return runCatching { URL(usagePageUrl).path }.getOrDefault("/usage").ifBlank { "/usage" }
    }

    private data class RpcSessionResult(
        val params: GeminiUsagePageRpcSession.Params?,
        val diagnostic: String,
        val statuses: List<String>
    )

    private const val TAG = "AIQuotaGeminiUsageRpc"
    private const val GEMINI_ORIGIN = "https://gemini.google.com"
    private const val GEMINI_USAGE_PAGE_URL = "https://gemini.google.com/usage"
    private const val JSF9QC_RPC_ID = "jSf9Qc"
    private const val JSF9QC_REQUEST = """[[["jSf9Qc","[]",null,"generic"]]]"""
    private const val NETWORK_TIMEOUT_MS = 10_000
}
