package com.aiquota.mobile.providers

import android.webkit.CookieManager
import java.io.OutputStreamWriter
import java.net.HttpURLConnection
import java.net.URI
import java.net.URL
import java.nio.charset.StandardCharsets
import java.util.TimeZone
import org.json.JSONObject

object KimiNativeUsageFetcher {
    fun fetchJson(url: String, body: String?): String {
        val endpoint = kimiEndpoint(url)
            ?: return JSONObject().put("ok", false).put("error", "blocked_kimi_endpoint").toString()
        val cookieHeader = kimiCookieHeader()
            ?: return JSONObject().put("ok", false).put("endpoint", endpoint).put("error", "missing_kimi_cookie").toString()
        val authToken = kimiAuthToken(cookieHeader)
        return runCatching {
            val postBody = body.orEmpty().ifBlank { "{}" }
            val connection = (URL(url).openConnection() as HttpURLConnection).apply {
                connectTimeout = NETWORK_TIMEOUT_MS
                readTimeout = NETWORK_TIMEOUT_MS
                requestMethod = "POST"
                setRequestProperty("Accept", "application/json")
                setRequestProperty("Content-Type", "application/json")
                setRequestProperty("User-Agent", ProviderWebViewUserAgent.loginUserAgent())
                setRequestProperty("Origin", KIMI_ORIGIN)
                setRequestProperty("Referer", "$KIMI_ORIGIN/")
                setRequestProperty("Connect-Protocol-Version", "1")
                setRequestProperty("X-Msh-Platform", "web")
                setRequestProperty("R-Timezone", TimeZone.getDefault().id)
                setRequestProperty("Cookie", cookieHeader)
                authToken?.let { setRequestProperty("Authorization", "Bearer $it") }
                doOutput = true
                OutputStreamWriter(outputStream, StandardCharsets.UTF_8).use { it.write(postBody) }
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

    private fun kimiCookieHeader(): String? {
        val values = listOf(
            CookieManager.getInstance().getCookie(KIMI_ORIGIN),
            CookieManager.getInstance().getCookie("https://kimi.com")
        ).mapNotNull { it?.takeIf(String::isNotBlank) }
        return values.joinToString("; ").takeIf { it.isNotBlank() && it.contains(AUTH_COOKIE_NAME) }
    }

    internal fun kimiAuthToken(cookieHeader: String): String? {
        return cookieHeader
            .split(";")
            .asSequence()
            .map(String::trim)
            .firstOrNull { it.startsWith("$AUTH_COOKIE_NAME=") }
            ?.substringAfter("=")
            ?.takeIf { it.isNotBlank() }
    }

    private fun kimiEndpoint(url: String): String? {
        val uri = runCatching { URI(url) }.getOrNull() ?: return null
        val host = uri.host.orEmpty().lowercase()
        val path = uri.path.orEmpty()
        val allowed = when (host) {
            "www.kimi.com", "kimi.com" ->
                path == "/apiv2/kimi.gateway.membership.v2.MembershipService/GetSubscriptionStats"
            else -> false
        }
        return if (allowed) path else null
    }

    private const val KIMI_ORIGIN = "https://www.kimi.com"
    private const val AUTH_COOKIE_NAME = "kimi-auth"
    private const val NETWORK_TIMEOUT_MS = 10_000
    private const val RAW_TEXT_LIMIT = 1_000
}
