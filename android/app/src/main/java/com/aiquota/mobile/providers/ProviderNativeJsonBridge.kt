package com.aiquota.mobile.providers

import android.util.Log
import android.webkit.CookieManager
import com.aiquota.mobile.accounts.ExactProfileCookieSource
import com.aiquota.mobile.local.ProviderId
import java.net.HttpURLConnection
import java.net.URI
import java.net.URL
import java.nio.charset.StandardCharsets
import org.json.JSONArray
import org.json.JSONObject
import org.json.JSONTokener

data class ProviderNativeJsonRequest(
    val providerId: ProviderId,
    val url: String,
    val userAgent: String,
    val requestHeaders: Map<String, String>,
    val cookieSource: ExactProfileCookieSource,
)

object ProviderNativeJsonBridge {
    fun isAllowedJsonUrl(providerId: ProviderId, url: String): Boolean {
        return ProviderAboutBlankCollectorPolicy.isEnabled(providerId) &&
            ProviderWebCollectorScripts.shouldRunCollectorOnResource(providerId, url)
    }

    fun fetchJson(
        providerId: ProviderId,
        url: String,
        userAgent: String = ProviderWebViewUserAgent.loginUserAgent(),
        requestHeaders: Map<String, String> = emptyMap()
    ): String = fetchJson(
        ProviderNativeJsonRequest(
            providerId,
            url,
            userAgent,
            requestHeaders,
            legacyGlobalCookieSource(),
        )
    )

    fun fetchJson(request: ProviderNativeJsonRequest): String {
        if (!isAllowedJsonUrl(request.providerId, request.url)) {
            return wrappedError(request.url, "blocked_provider_json_endpoint").toString()
        }
        val uri = runCatching { URI(request.url) }.getOrNull()
            ?: return wrappedError(request.url, "invalid_url").toString()
        val origin = "${uri.scheme}://${uri.host}"
        val headers = assembledHeaders(request, origin)
        return runCatching {
            val connection = (URL(request.url).openConnection() as HttpURLConnection).apply {
                connectTimeout = NETWORK_TIMEOUT_MS
                readTimeout = NETWORK_TIMEOUT_MS
                instanceFollowRedirects = false
                requestMethod = "GET"
                headers.forEach { (name, value) -> setRequestProperty(name, value) }
            }
            val status = connection.responseCode
            val stream = if (status in 200..299) connection.inputStream else connection.errorStream
            val text = stream?.bufferedReader(StandardCharsets.UTF_8)?.use { it.readText() }.orEmpty()
            connection.disconnect()
            Log.d(
                TAG,
                "nativeJson provider=${request.providerId.storageId} status=$status " +
                    "url=${uri.host.orEmpty()}${uri.path.orEmpty()} cookieHost=${uri.host.orEmpty()}"
            )
            wrappedResponse(request.url, status, text).toString()
        }.getOrElse { error ->
            Log.d(
                TAG,
                "nativeJson provider=${request.providerId.storageId} error=${error.javaClass.simpleName} " +
                    "url=${uri.host.orEmpty()}${uri.path.orEmpty()}"
            )
            wrappedError(request.url, error.javaClass.simpleName).toString()
        }
    }

    internal fun wrappedResponse(url: String, status: Int, text: String): JSONObject {
        val parsed = runCatching { JSONTokener(text).nextValue() }
            .getOrNull()
            ?.takeIf { it is JSONObject || it is JSONArray }
        return JSONObject()
            .put("ok", status in 200..299)
            .put("status", status)
            .put("url", url)
            .put("json", parsed ?: JSONObject().put("rawText", text.take(RAW_TEXT_LIMIT)))
    }

    private fun wrappedError(url: String, error: String): JSONObject {
        return JSONObject()
            .put("ok", false)
            .put("url", url)
            .put("error", error)
    }

    private fun assembledHeaders(
        request: ProviderNativeJsonRequest,
        origin: String,
    ): Map<String, String> = buildMap {
        put("Accept", "application/json, text/html")
        put(
            "User-Agent",
            request.userAgent.takeIf(String::isNotBlank) ?: ProviderWebViewUserAgent.loginUserAgent(),
        )
        put("Referer", "$origin/")
        put("X-Requested-With", "XMLHttpRequest")
        request.requestHeaders
            .filterKeys(::isForwardableHeader)
            .filterValues(String::isNotBlank)
            .forEach(::put)
        if (keys.none { it.equals("Cookie", ignoreCase = true) }) {
            request.cookieSource.cookieHeader(request.url, origin)
                ?.takeIf(String::isNotBlank)
                ?.let { put("Cookie", it) }
        }
    }

    internal fun assembledHeadersForTest(request: ProviderNativeJsonRequest): Map<String, String> {
        val uri = requireNotNull(runCatching { URI(request.url) }.getOrNull())
        return assembledHeaders(request, "${uri.scheme}://${uri.host}")
    }

    internal fun legacyGlobalCookieSource() = ExactProfileCookieSource { requestUrl, origin ->
        firstNonBlankCookie(
            CookieManager.getInstance().getCookie(requestUrl),
            CookieManager.getInstance().getCookie(origin),
        )
    }

    private fun isForwardableHeader(name: String): Boolean {
        val normalized = name.trim()
        if (normalized.isBlank()) return false
        return !normalized.equals("Host", ignoreCase = true) &&
            !normalized.equals("Connection", ignoreCase = true) &&
            !normalized.equals("Content-Length", ignoreCase = true) &&
            !normalized.equals("Accept-Encoding", ignoreCase = true)
    }

    private fun firstNonBlankCookie(primary: String?, fallback: String?): String? {
        return primary?.takeIf(String::isNotBlank) ?: fallback?.takeIf(String::isNotBlank)
    }

    internal fun firstNonBlankCookieForTest(primary: String?, fallback: String?): String? {
        return firstNonBlankCookie(primary, fallback)
    }

    private const val TAG = "AIQuotaNativeJson"
    private const val NETWORK_TIMEOUT_MS = 10_000
    private const val RAW_TEXT_LIMIT = 1_000_000
}
