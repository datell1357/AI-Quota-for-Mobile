package com.aiquota.mobile.providers

import java.net.HttpURLConnection
import java.net.URI
import java.net.URL
import java.nio.charset.StandardCharsets
import org.json.JSONArray
import org.json.JSONObject
import org.json.JSONTokener

/**
 * api.manus.im의 ConnectRPC 스타일 엔드포인트에서 사용량을 가져온다.
 *
 * manus.im 프런트엔드는 `POST /user.v1.<Service>/<Method>`에 `application/json` 본문과
 * `Authorization: Bearer <JWT>`를 단다(실계정 정찰로 확인). GET은 405라 POST가 필수다.
 * 인증은 WebView에서 캡처한 Bearer 헤더로만 통과하므로 쿠키는 싣지 않는다.
 */
object ManusNativeUsageFetcher {
    fun fetchJson(url: String, requestHeaders: Map<String, String>): String {
        val endpoint = manusEndpoint(url)
            ?: return JSONObject()
                .put("ok", false)
                .put("url", url)
                .put("error", "blocked_manus_endpoint")
                .toString()
        return runCatching {
            val connection = (URL(url).openConnection() as HttpURLConnection).apply {
                connectTimeout = NETWORK_TIMEOUT_MS
                readTimeout = NETWORK_TIMEOUT_MS
                instanceFollowRedirects = false
                requestMethod = "POST"
                setRequestProperty("Accept", JSON_CONTENT_TYPE)
                setRequestProperty("Content-Type", JSON_CONTENT_TYPE)
                setRequestProperty("User-Agent", ProviderWebViewUserAgent.loginUserAgent())
                setRequestProperty("Origin", MANUS_ORIGIN)
                setRequestProperty("Referer", "$MANUS_ORIGIN/app")
                requestHeaders
                    .filterKeys(::isForwardableHeader)
                    .filterValues(String::isNotBlank)
                    .forEach { (name, value) -> setRequestProperty(name, value) }
                doOutput = true
                outputStream.use { it.write(EMPTY_JSON_BODY) }
            }
            try {
                val status = connection.responseCode
                val stream = if (status in 200..299) connection.inputStream else connection.errorStream
                val text = stream?.bufferedReader(StandardCharsets.UTF_8)?.use { it.readText() }.orEmpty()
                wrappedResponse(endpoint, status, text).toString()
            } finally {
                connection.disconnect()
            }
        }.getOrElse { error ->
            JSONObject()
                .put("ok", false)
                .put("url", endpoint)
                .put("error", error.javaClass.simpleName)
                .toString()
        }
    }

    private fun wrappedResponse(url: String, status: Int, text: String): JSONObject {
        val parsed = runCatching { JSONTokener(text).nextValue() }
            .getOrNull()
            ?.takeIf { it is JSONObject || it is JSONArray }
        return JSONObject()
            .put("ok", status in 200..299)
            .put("status", status)
            .put("url", url)
            .put("json", parsed ?: JSONObject().put("rawText", text.take(RAW_TEXT_LIMIT)))
    }

    private fun isForwardableHeader(name: String): Boolean {
        val normalized = name.trim()
        if (normalized.isBlank()) return false
        return !normalized.equals("Host", ignoreCase = true) &&
            !normalized.equals("Connection", ignoreCase = true) &&
            !normalized.equals("Content-Length", ignoreCase = true) &&
            !normalized.equals("Content-Type", ignoreCase = true) &&
            !normalized.equals("Accept-Encoding", ignoreCase = true)
    }

    private fun manusEndpoint(url: String): String? {
        val uri = runCatching { URI(url) }.getOrNull() ?: return null
        if (!uri.scheme.equals("https", ignoreCase = true)) return null
        val host = uri.host.orEmpty().lowercase()
        val path = uri.path.orEmpty()
        val allowed = host == "api.manus.im" &&
            ALLOWED_PATH_PREFIXES.any { path.startsWith(it) }
        return if (allowed) url else null
    }

    private const val MANUS_ORIGIN = "https://manus.im"
    private const val JSON_CONTENT_TYPE = "application/json"
    private const val NETWORK_TIMEOUT_MS = 10_000
    private const val RAW_TEXT_LIMIT = 1_000_000
    private val EMPTY_JSON_BODY = "{}".toByteArray(StandardCharsets.UTF_8)
    private val ALLOWED_PATH_PREFIXES = listOf(
        "/user.v1.UserService/",
        "/user.v1.SubscriptionService/"
    )
}
