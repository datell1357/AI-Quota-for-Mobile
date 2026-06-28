package com.aiquota.mobile.providers

import android.util.Log
import android.webkit.CookieManager
import com.aiquota.mobile.local.ProviderId
import java.net.HttpURLConnection
import java.net.URI
import java.net.URL
import java.nio.charset.StandardCharsets
import org.json.JSONArray
import org.json.JSONObject
import org.json.JSONTokener

object ProviderNativeJsonBridge {
    fun isAllowedJsonUrl(providerId: ProviderId, url: String): Boolean {
        return ProviderAboutBlankCollectorPolicy.isEnabled(providerId) &&
            ProviderWebCollectorScripts.shouldRunCollectorOnResource(providerId, url)
    }

    fun fetchJson(providerId: ProviderId, url: String): String {
        if (!isAllowedJsonUrl(providerId, url)) {
            return wrappedError(url, "blocked_provider_json_endpoint").toString()
        }
        val uri = runCatching { URI(url) }.getOrNull()
            ?: return wrappedError(url, "invalid_url").toString()
        val origin = "${uri.scheme}://${uri.host}"
        return runCatching {
            val connection = (URL(url).openConnection() as HttpURLConnection).apply {
                connectTimeout = NETWORK_TIMEOUT_MS
                readTimeout = NETWORK_TIMEOUT_MS
                requestMethod = "GET"
                setRequestProperty("Accept", "application/json, text/html")
                setRequestProperty("User-Agent", ProviderWebViewUserAgent.loginUserAgent())
                setRequestProperty("Referer", "$origin/")
                setRequestProperty("X-Requested-With", "XMLHttpRequest")
                CookieManager.getInstance().getCookie(origin)
                    ?.takeIf(String::isNotBlank)
                    ?.let { setRequestProperty("Cookie", it) }
            }
            val status = connection.responseCode
            val stream = if (status in 200..299) connection.inputStream else connection.errorStream
            val text = stream?.bufferedReader(StandardCharsets.UTF_8)?.use { it.readText() }.orEmpty()
            connection.disconnect()
            Log.d(
                TAG,
                "nativeJson provider=${providerId.storageId} status=$status " +
                    "url=${uri.host.orEmpty()}${uri.path.orEmpty()} cookieHost=${uri.host.orEmpty()}"
            )
            wrappedResponse(url, status, text).toString()
        }.getOrElse { error ->
            Log.d(
                TAG,
                "nativeJson provider=${providerId.storageId} error=${error.javaClass.simpleName} " +
                    "url=${uri.host.orEmpty()}${uri.path.orEmpty()}"
            )
            wrappedError(url, error.javaClass.simpleName).toString()
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

    private const val TAG = "AIQuotaNativeJson"
    private const val NETWORK_TIMEOUT_MS = 10_000
    private const val RAW_TEXT_LIMIT = 1_000_000
}
