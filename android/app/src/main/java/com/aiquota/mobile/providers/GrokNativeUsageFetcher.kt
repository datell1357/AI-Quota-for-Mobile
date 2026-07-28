package com.aiquota.mobile.providers

import android.webkit.CookieManager
import java.io.OutputStreamWriter
import java.net.HttpURLConnection
import java.net.URI
import java.net.URL
import java.nio.charset.StandardCharsets
import org.json.JSONObject

object GrokNativeUsageFetcher {
    fun fetchJson(url: String, body: String?): String {
        val endpoint = grokEndpoint(url)
            ?: return JSONObject().put("ok", false).put("error", "blocked_grok_endpoint").toString()
        return runCatching {
            val postBody = body.orEmpty().takeIf { it.isNotBlank() }
            val connection = (URL(url).openConnection() as HttpURLConnection).apply {
                connectTimeout = NETWORK_TIMEOUT_MS
                readTimeout = NETWORK_TIMEOUT_MS
                requestMethod = if (postBody == null) "GET" else "POST"
                setRequestProperty("Accept", "application/json")
                setRequestProperty("Content-Type", "application/json")
                setRequestProperty("User-Agent", ProviderWebViewUserAgent.loginUserAgent())
                setRequestProperty("Origin", GROK_ORIGIN)
                setRequestProperty("Referer", "$GROK_ORIGIN/")
                grokCookieHeader()?.let { setRequestProperty("Cookie", it) }
                if (postBody != null) {
                    doOutput = true
                    OutputStreamWriter(outputStream, StandardCharsets.UTF_8).use { it.write(postBody) }
                }
            }
            val status = connection.responseCode
            val stream = if (status in 200..299) connection.inputStream else connection.errorStream
            val text = stream?.bufferedReader(StandardCharsets.UTF_8)?.use { it.readText() }.orEmpty()
            connection.disconnect()
            val parsed = runCatching { JSONObject(text) }.getOrNull()
            JSONObject()
                .put("ok", status in 200..299)
                .put("status", status)
                .put("endpoint", endpoint)
                .put("json", parsed ?: JSONObject().put("rawText", text.take(RAW_TEXT_LIMIT)))
                .toString()
        }.getOrElse { error ->
            JSONObject()
                .put("ok", false)
                .put("endpoint", endpoint)
                .put("error", error.javaClass.simpleName)
                .toString()
        }
    }

    private fun grokCookieHeader(): String? {
        val values = listOf(
            CookieManager.getInstance().getCookie(GROK_ORIGIN),
            CookieManager.getInstance().getCookie("https://www.grok.com")
        ).mapNotNull { it?.takeIf(String::isNotBlank) }
        return values.joinToString("; ").takeIf { it.isNotBlank() }
    }

    private fun grokEndpoint(url: String): String? {
        val uri = runCatching { URI(url) }.getOrNull() ?: return null
        val host = uri.host.orEmpty().lowercase()
        val path = uri.path.orEmpty()
        val allowed = when (host) {
            "grok.com", "www.grok.com" -> path == "/rest/rate-limits"
            else -> false
        }
        return if (allowed) path else null
    }

    private const val GROK_ORIGIN = "https://grok.com"
    private const val NETWORK_TIMEOUT_MS = 10_000
    private const val RAW_TEXT_LIMIT = 1_000
}
