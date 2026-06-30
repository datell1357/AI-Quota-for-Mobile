package com.aiquota.mobile.providers

import android.content.Context
import android.util.Log
import android.webkit.CookieManager
import com.aiquota.mobile.BuildConfig
import com.aiquota.mobile.local.ProviderId
import java.io.File
import java.net.URI
import java.time.Instant
import org.json.JSONArray
import org.json.JSONObject

internal object DebugProviderSessionCookieStore {
    fun capture(
        context: Context,
        providerId: ProviderId,
        cookieManager: CookieManager,
        reason: String,
        exportExternal: Boolean = true,
        nativeAuthContext: Map<String, Map<String, String>> = emptyMap()
    ) {
        if (!BuildConfig.DEBUG) return
        val shouldExportExternal = exportExternal && isRestorableSnapshotReason(reason)
        val restorableNativeAuthContext = restorableNativeAuthContext(nativeAuthContext)
        val entries = ProviderWebSessionClearPolicy.cookieUrls(providerId)
            .mapNotNull { url ->
                val cookieHeader = runCatching { cookieManager.getCookie(url) }.getOrNull()
                    ?.takeIf(String::isNotBlank)
                    ?: return@mapNotNull null
                CookieEntry(url, cookieHeader)
            }
        if (entries.isEmpty() && restorableNativeAuthContext.isEmpty()) {
            Log.i(TAG, "provider=${providerId.storageId} debugCookieSnapshot=false reason=$reason cookieCount=0")
            return
        }
        val payload = snapshotPayload(
            provider = providerId.storageId,
            capturedAt = Instant.now().toString(),
            reason = reason,
            cookies = entries,
            nativeAuthContext = restorableNativeAuthContext
        )
        SecureStringStore(context, PREFS).putString(providerId.storageId, payload.toString())
        if (shouldExportExternal) {
            exportSnapshot(context, providerId, payload.toString())
        }
        val nativeAuthHeaderCount = restorableNativeAuthContext.values.sumOf { it.size }
        Log.i(
            TAG,
            "provider=${providerId.storageId} debugCookieSnapshot=true reason=$reason " +
                "urlCount=${entries.distinctBy { it.url }.size} cookieCount=${entries.size} " +
                "nativeAuthContextCount=${restorableNativeAuthContext.size} nativeAuthHeaderCount=$nativeAuthHeaderCount"
        )
    }

    fun restore(
        context: Context,
        providerId: ProviderId,
        cookieManager: CookieManager,
        reason: String
    ): Boolean {
        if (!BuildConfig.DEBUG) return false
        val (payload, source) = readRestorableSnapshotPayload(context, providerId) ?: return false
        val cookies = runCatching { JSONObject(payload).optJSONArray("cookies") }.getOrNull() ?: return false
        var cookieCount = 0
        val urlCount = mutableSetOf<String>()
        for (index in 0 until cookies.length()) {
            val entry = cookies.optJSONObject(index) ?: continue
            val url = entry.optString("url").takeIf(String::isNotBlank) ?: continue
            val header = entry.optString("cookieHeader").takeIf(String::isNotBlank) ?: continue
            restorableCookieHeaders(header, url).forEach { cookie ->
                cookieManager.setCookie(url, cookie)
                cookieCount++
            }
            urlCount += url
        }
        if (cookieCount <= 0) return false
        cookieManager.flush()
        Log.i(
            TAG,
            "provider=${providerId.storageId} debugCookieRestore=true reason=$reason " +
                "source=$source urlCount=${urlCount.size} cookieCount=$cookieCount"
        )
        return true
    }

    fun restoreNativeAuthContext(
        context: Context,
        providerId: ProviderId
    ): Map<String, Map<String, String>> {
        if (!BuildConfig.DEBUG) return emptyMap()
        val (payload, source) = readRestorableSnapshotPayload(context, providerId) ?: return emptyMap()
        val nativeAuthContext = nativeAuthContextFromPayload(payload)
        if (nativeAuthContext.isEmpty()) return emptyMap()
        val nativeAuthHeaderCount = nativeAuthContext.values.sumOf { it.size }
        Log.i(
            TAG,
            "provider=${providerId.storageId} debugNativeAuthRestore=true source=$source " +
                "nativeAuthContextCount=${nativeAuthContext.size} nativeAuthHeaderCount=$nativeAuthHeaderCount"
        )
        return nativeAuthContext
    }

    fun restorableCookieHeader(
        context: Context,
        providerId: ProviderId,
        url: String
    ): String? {
        if (!BuildConfig.DEBUG) return null
        val (payload, source) = readRestorableSnapshotPayload(context, providerId) ?: return null
        val header = cookieHeaderFromPayload(payload, url) ?: return null
        Log.i(TAG, "provider=${providerId.storageId} debugCookieHeaderRestore=true source=$source url=${originOf(url).orEmpty()}")
        return header
    }

    internal fun cookiePairsForTest(cookieHeader: String): List<String> = cookiePairs(cookieHeader)

    internal fun restorableCookieHeadersForTest(cookieHeader: String, url: String): List<String> {
        return restorableCookieHeaders(cookieHeader, url)
    }

    internal fun isRestorableSnapshotForTest(payload: String): Boolean = isRestorableSnapshotPayload(payload)

    internal fun snapshotPayloadForTest(
        providerId: String,
        reason: String,
        cookies: List<Pair<String, String>>,
        nativeAuthContext: Map<String, Map<String, String>>
    ): String {
        return snapshotPayload(
            provider = providerId,
            capturedAt = Instant.EPOCH.toString(),
            reason = reason,
            cookies = cookies.map { (url, cookieHeader) -> CookieEntry(url, cookieHeader) },
            nativeAuthContext = restorableNativeAuthContext(nativeAuthContext)
        ).toString()
    }

    internal fun nativeAuthContextForTest(payload: String): Map<String, Map<String, String>> {
        return nativeAuthContextFromPayload(payload)
    }

    internal fun cookieHeaderForUrlForTest(payload: String, url: String): String? {
        return cookieHeaderFromPayload(payload, url)
    }

    private fun exportSnapshot(context: Context, providerId: ProviderId, payload: String) {
        externalSnapshotFile(context, providerId)?.let { file ->
            runCatching {
                file.parentFile?.mkdirs()
                file.writeText(payload)
            }
        }
    }

    private fun isRestorableSnapshotPayload(payload: String): Boolean {
        val json = runCatching { JSONObject(payload) }.getOrNull() ?: return false
        if (!isRestorableSnapshotReason(json.optString("reason"))) return false
        return (json.optJSONArray("cookies")?.length() ?: 0) > 0 ||
            (json.optJSONObject("nativeAuthContext")?.length() ?: 0) > 0
    }

    private fun isRestorableSnapshotReason(reason: String): Boolean {
        return !reason.contains("failure", ignoreCase = true)
    }

    private fun externalSnapshotFile(context: Context, providerId: ProviderId): File? {
        return context.getExternalFilesDir(EXTERNAL_DIR)?.let { dir -> File(dir, "${providerId.storageId}.json") }
    }

    private fun readRestorableSnapshotPayload(context: Context, providerId: ProviderId): Pair<String, String>? {
        return externalSnapshotFile(context, providerId)
            ?.takeIf(File::isFile)
            ?.let { file -> runCatching { file.readText() }.getOrNull()?.let { it to "external" } }
            ?.takeIf { isRestorableSnapshotPayload(it.first) }
            ?: SecureStringStore(context, PREFS).getString(providerId.storageId)?.let { it to "internal" }
                ?.takeIf { isRestorableSnapshotPayload(it.first) }
    }

    private fun snapshotPayload(
        provider: String,
        capturedAt: String,
        reason: String,
        cookies: List<CookieEntry>,
        nativeAuthContext: Map<String, Map<String, String>>
    ): JSONObject {
        return JSONObject()
            .put("provider", provider)
            .put("capturedAt", capturedAt)
            .put("reason", reason)
            .put(
                "cookies",
                JSONArray().also { array ->
                    cookies.forEach { entry ->
                        array.put(
                            JSONObject()
                                .put("url", entry.url)
                                .put("cookieHeader", entry.cookieHeader)
                        )
                    }
                }
            )
            .put("nativeAuthContext", nativeAuthContextJson(nativeAuthContext))
    }

    private fun nativeAuthContextJson(nativeAuthContext: Map<String, Map<String, String>>): JSONObject {
        return JSONObject().also { root ->
            restorableNativeAuthContext(nativeAuthContext).forEach { (key, headers) ->
                root.put(key, JSONObject().also { headerJson ->
                    headers.forEach { (name, value) -> headerJson.put(name, value) }
                })
            }
        }
    }

    private fun nativeAuthContextFromPayload(payload: String): Map<String, Map<String, String>> {
        val root = runCatching { JSONObject(payload).optJSONObject("nativeAuthContext") }.getOrNull()
            ?: return emptyMap()
        val restored = linkedMapOf<String, Map<String, String>>()
        val keys = root.keys()
        while (keys.hasNext()) {
            val key = keys.next().takeIf(String::isNotBlank) ?: continue
            val headers = root.optJSONObject(key) ?: continue
            val restoredHeaders = linkedMapOf<String, String>()
            val headerNames = headers.keys()
            while (headerNames.hasNext()) {
                val name = headerNames.next().takeIf(String::isNotBlank) ?: continue
                val value = headers.optString(name).takeIf(String::isNotBlank) ?: continue
                restoredHeaders[name] = value
            }
            if (restoredHeaders.isNotEmpty()) restored[key] = restoredHeaders
        }
        return restorableNativeAuthContext(restored)
    }

    private fun cookieHeaderFromPayload(payload: String, url: String): String? {
        val targetOrigin = originOf(url) ?: return null
        val cookies = runCatching { JSONObject(payload).optJSONArray("cookies") }.getOrNull() ?: return null
        var originMatch: String? = null
        for (index in 0 until cookies.length()) {
            val entry = cookies.optJSONObject(index) ?: continue
            val entryUrl = entry.optString("url").takeIf(String::isNotBlank) ?: continue
            val header = entry.optString("cookieHeader").takeIf(String::isNotBlank) ?: continue
            if (entryUrl == url) return header
            if (originOf(entryUrl) == targetOrigin && originMatch == null) originMatch = header
        }
        return originMatch
    }

    private fun restorableNativeAuthContext(
        nativeAuthContext: Map<String, Map<String, String>>
    ): Map<String, Map<String, String>> {
        return nativeAuthContext
            .filterKeys(String::isNotBlank)
            .mapValues { (_, headers) -> CodexNativeHeaderSelector.authContextHeaders(headers) }
            .filterValues(Map<String, String>::isNotEmpty)
    }

    private fun cookiePairs(cookieHeader: String): List<String> {
        return cookieHeader.split(";")
            .map(String::trim)
            .filter { it.contains("=") }
    }

    private fun restorableCookieHeaders(cookieHeader: String, url: String): List<String> {
        return cookiePairs(cookieHeader).map { cookie ->
            val name = cookie.substringBefore("=").trim()
            val secure = url.startsWith("https://", ignoreCase = true) ||
                name.startsWith("__Secure-", ignoreCase = true) ||
                name.startsWith("__Host-", ignoreCase = true)
            buildString {
                append(cookie)
                if (secure) append("; Secure")
                append("; Path=/")
            }
        }
    }

    private fun originOf(url: String): String? {
        val uri = runCatching { URI(url) }.getOrNull() ?: return null
        val scheme = uri.scheme?.takeIf(String::isNotBlank) ?: return null
        val host = uri.host?.takeIf(String::isNotBlank) ?: return null
        return "$scheme://$host"
    }

    private data class CookieEntry(val url: String, val cookieHeader: String)

    private const val TAG = "AIQuotaDebugCookie"
    private const val PREFS = "debug_provider_session_cookies"
    private const val EXTERNAL_DIR = "debug-session-cookies"
}
