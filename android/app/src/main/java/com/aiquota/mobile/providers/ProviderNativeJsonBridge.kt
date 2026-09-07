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
        return fetchJsonInternal(request) { url -> url.openConnection() as HttpURLConnection }
    }

    internal fun fetchJsonForTest(
        request: ProviderNativeJsonRequest,
        connectionFactory: (URL) -> HttpURLConnection,
    ): String = fetchJsonInternal(request, connectionFactory)

    private fun fetchJsonInternal(
        request: ProviderNativeJsonRequest,
        connectionFactory: (URL) -> HttpURLConnection,
    ): String {
        if (!isAllowedJsonUrl(request.providerId, request.url)) {
            return wrappedError(request.url, "blocked_provider_json_endpoint").toString()
        }
        val uri = runCatching { URI(request.url) }.getOrNull()
            ?: return wrappedError(request.url, "invalid_url").toString()
        return runCatching {
            var currentUrl = request.url
            var status = 0
            var text = ""
            for (hop in 0..MAX_REDIRECTS) {
                val currentUri = URI(currentUrl)
                val origin = originUrlOf(currentUri)
                val headers = assembledHeaders(request.copy(url = currentUrl), origin)
                val response = connectionFactory(URL(currentUrl)).apply {
                    connectTimeout = NETWORK_TIMEOUT_MS
                    readTimeout = NETWORK_TIMEOUT_MS
                    instanceFollowRedirects = false
                    requestMethod = "GET"
                    headers.forEach { (name, value) -> setRequestProperty(name, value) }
                }
                try {
                    status = response.responseCode
                    val location = response.getHeaderField("Location")
                    if (status in REDIRECT_STATUSES && !location.isNullOrBlank()) {
                        val nextUrl = URL(URL(currentUrl), location).toString()
                        if (hop == MAX_REDIRECTS || !canFollowRedirect(request.providerId, currentUrl, nextUrl)) {
                            val stream = response.errorStream
                            text = stream?.bufferedReader(StandardCharsets.UTF_8)?.use { it.readText() }.orEmpty()
                            break
                        }
                        currentUrl = nextUrl
                        continue
                    }
                    val stream = if (status in 200..299) response.inputStream else response.errorStream
                    text = stream?.bufferedReader(StandardCharsets.UTF_8)?.use { it.readText() }.orEmpty()
                    break
                } finally {
                    response.disconnect()
                }
            }
            val finalUri = runCatching { URI(currentUrl) }.getOrNull()
            Log.d(
                TAG,
                "nativeJson provider=${request.providerId.storageId} status=$status " +
                    "url=${finalUri?.host.orEmpty()}${finalUri?.path.orEmpty()}"
            )
            wrappedResponse(currentUrl, status, text).toString()
        }.getOrElse { error ->
            Log.d(
                TAG,
                "nativeJson provider=${request.providerId.storageId} error=${error.javaClass.simpleName} " +
                    "url=${uri.host.orEmpty()}${uri.path.orEmpty()}"
            )
            wrappedError(request.url, error.javaClass.simpleName).toString()
        }
    }

    internal fun canFollowRedirectForTest(providerId: ProviderId, fromUrl: String, toUrl: String): Boolean =
        canFollowRedirect(providerId, fromUrl, toUrl)

    private fun canFollowRedirect(providerId: ProviderId, fromUrl: String, toUrl: String): Boolean {
        if (providerId !in REDIRECT_COMPATIBLE_PROVIDERS) return false
        val from = runCatching { URI(fromUrl) }.getOrNull() ?: return false
        val to = runCatching { URI(toUrl) }.getOrNull() ?: return false
        return isAllowedJsonUrl(providerId, fromUrl) &&
            isAllowedJsonUrl(providerId, toUrl) &&
            originKeyOf(from).equals(originKeyOf(to), ignoreCase = true)
    }

    private fun originUrlOf(uri: URI): String = buildString {
        append(uri.scheme).append("://").append(uri.host)
        if (uri.port >= 0) append(":").append(uri.port)
    }

    private fun originKeyOf(uri: URI): String =
        "${uri.scheme.lowercase()}:${uri.host.lowercase()}:${uri.port.takeIf { it >= 0 } ?: defaultPort(uri.scheme)}"

    private fun defaultPort(scheme: String): Int = if (scheme.equals("https", ignoreCase = true)) 443 else -1

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
        return assembledHeaders(request, originUrlOf(uri))
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
    private const val MAX_REDIRECTS = 3
    private val REDIRECT_STATUSES = setOf(301, 302, 303, 307, 308)
    private val REDIRECT_COMPATIBLE_PROVIDERS = setOf(
        ProviderId.ANTIGRAVITY,
        ProviderId.COPILOT,
        ProviderId.GLM,
        ProviderId.KIRO,
        ProviderId.GEMINI,
        ProviderId.CURSOR,
        ProviderId.GROK,
        ProviderId.OPENCODE,
    )
}
