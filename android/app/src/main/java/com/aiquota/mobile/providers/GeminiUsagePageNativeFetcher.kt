package com.aiquota.mobile.providers

import android.util.Log
import android.webkit.CookieManager
import com.aiquota.mobile.local.ProviderId
import java.net.HttpURLConnection
import java.net.URL
import java.nio.charset.StandardCharsets
import java.time.Instant
import org.json.JSONArray
import org.json.JSONObject
import org.json.JSONTokener

internal object GeminiUsagePageNativeFetcher {
    data class FetchResult(
        val payload: String?,
        val diagnostic: String,
        val statuses: List<String> = emptyList()
    )

    fun fetchUsagePayload(userAgent: String): FetchResult {
        val params = GeminiUsagePageRpcSession.current()
            ?: return FetchResult(null, "gemini_usage_rpc_session_unavailable")
        val cookieHeader = CookieManager.getInstance().getCookie(GEMINI_USAGE_PAGE_URL)
            ?: CookieManager.getInstance().getCookie(GEMINI_ORIGIN)
            ?: return FetchResult(null, "gemini_usage_cookie_unavailable")
        val endpoint = batchExecuteUrl(params)
        val requestUserAgent = userAgent.takeIf { it.isNotBlank() } ?: ProviderWebViewUserAgent.loginUserAgent()
        val statusLabel = "gemini_usage_rpc"
        return runCatching {
            val body = "f.req=${encodeQuery(JSF9QC_REQUEST)}&at=${encodeQuery(params.at)}&"
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
                setRequestProperty("Referer", GEMINI_USAGE_PAGE_URL)
                setRequestProperty("User-Agent", requestUserAgent)
                setRequestProperty("X-Same-Domain", "1")
                outputStream.use { it.write(bodyBytes) }
            }
            val status = connection.responseCode
            val stream = if (status in 200..299) connection.inputStream else connection.errorStream
            val text = stream?.bufferedReader(StandardCharsets.UTF_8)?.use { it.readText() }.orEmpty()
            connection.disconnect()
            Log.d(TAG, "geminiUsageRpc status=$status payloadBytes=${text.length}")
            if (status !in 200..299) {
                return FetchResult(null, "gemini_usage_rpc_http_$status", listOf("$statusLabel:$status"))
            }
            val payload = usagePayloadFromBatchExecute(text)
                ?: return FetchResult(null, "gemini_usage_rpc_unavailable", listOf("$statusLabel:$status"))
            FetchResult(payload.toString(), "ok", listOf("$statusLabel:$status"))
        }.getOrElse { error ->
            Log.d(TAG, "geminiUsageRpc error=${error.javaClass.simpleName}")
            FetchResult(null, "gemini_usage_rpc_${error.javaClass.simpleName}", listOf("$statusLabel:error"))
        }
    }

    internal fun usagePayloadFromBatchExecuteForTest(rawText: String): JSONObject? {
        return usagePayloadFromBatchExecute(rawText)
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

    private fun batchExecuteUrl(params: GeminiUsagePageRpcSession.Params): String {
        val reqId = (System.currentTimeMillis() % 1_000_000L) + 100_000L
        return "$GEMINI_ORIGIN/_/BardChatUi/data/batchexecute" +
            "?rpcids=$JSF9QC_RPC_ID" +
            "&source-path=%2Fusage" +
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

    private const val TAG = "AIQuotaGeminiUsageRpc"
    private const val GEMINI_ORIGIN = "https://gemini.google.com"
    private const val GEMINI_USAGE_PAGE_URL = "https://gemini.google.com/usage"
    private const val JSF9QC_RPC_ID = "jSf9Qc"
    private const val JSF9QC_REQUEST = """[[["jSf9Qc","[]",null,"generic"]]]"""
    private const val NETWORK_TIMEOUT_MS = 10_000
}
