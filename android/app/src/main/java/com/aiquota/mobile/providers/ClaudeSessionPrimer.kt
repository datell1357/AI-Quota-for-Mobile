package com.aiquota.mobile.providers

import android.content.Context
import android.util.Log
import android.webkit.CookieManager
import com.aiquota.mobile.local.ProviderId
import java.io.OutputStreamWriter
import java.net.HttpURLConnection
import java.net.URL
import java.nio.charset.StandardCharsets
import java.util.UUID
import org.json.JSONObject

/**
 * Sends a throwaway Claude chat message so a new 5-hour usage window starts right
 * after the previous one reset, then deletes the conversation it created.
 *
 * Uses the authenticated claude.ai web session (cookies + captured replay headers),
 * the same mechanism the usage collector relies on. Fails safe: any error is logged
 * and returned; the session is never disconnected or mutated on failure.
 *
 * NOTE: claude.ai's chat API is undocumented and changes over time. If priming stops
 * working, verify [PRIME_PROMPT], the request bodies, and [PRIME_MODEL] against a live
 * session on the emulator. [PRIME_MODEL] is left null so the account default model is
 * used; set it to a concrete model id only if the completion endpoint rejects a null.
 */
object ClaudeSessionPrimer {
    data class Result(val ok: Boolean, val detail: String)

    private const val BASE = "https://claude.ai"
    private const val PRIME_PROMPT = "."
    private const val EMPTY_PARENT_MESSAGE_UUID = "00000000-0000-4000-8000-000000000000"
    private val PRIME_MODEL: String? = null
    private const val NETWORK_TIMEOUT_MS = 15_000
    private const val TAG = "AIQuotaClaudePrimer"

    fun prime(context: Context): Result {
        val organizationId = organizationId()
            ?: return fail("no_organization_id")
        val cookieHeader = CookieManager.getInstance().getCookie(BASE)?.takeIf { it.isNotBlank() }
            ?: return fail("no_session_cookie")
        val replayHeaders = ClaudeNativeRequestContextStore(context).restore()
            .values
            .fold(linkedMapOf<String, String>()) { acc, headers -> acc.apply { putAll(headers) } }
        // Must match the collector WebView's UA: cf_clearance is bound to that UA, so a
        // different UA (even with a valid cookie) is rejected by Cloudflare with 403.
        val userAgent = ProviderWebViewUserAgent.hiddenCollectorUserAgent(context, ProviderId.CLAUDE)

        return prime(Credentials(cookieHeader, replayHeaders, userAgent))
    }

    data class Credentials(val cookieHeader: String, val replayHeaders: Map<String, String>, val userAgent: String)
    data class Request(val method: String, val url: String, val body: String?, val accept: String, val credentials: Credentials)
    fun interface Transport { fun send(request: Request): Int }

    fun prime(
        credentials: Credentials,
        authorized: () -> Boolean = { true },
        transport: Transport = Transport { request ->
            send(request.method, request.url, request.body, request.accept,
                request.credentials.cookieHeader, request.credentials.replayHeaders, request.credentials.userAgent).status
        },
    ): Result {
        val organizationId = organizationId(credentials.cookieHeader)
            ?.takeIf { it.matches(Regex("[A-Za-z0-9_-]+")) } ?: return Result(false, "no_organization_id")
        if (credentials.cookieHeader.isBlank()) return Result(false, "no_session_cookie")
        fun request(method: String, url: String, body: String?, accept: String): Int =
            if (authorized()) transport.send(Request(method, url, body, accept,
                credentials.copy(replayHeaders = ClaudeNativeHeaderStore.replaySafeHeaders(credentials.replayHeaders)))) else -1
        val conversationUuid = UUID.randomUUID().toString()
        val url = "$BASE/api/organizations/$organizationId/chat_conversations"
        val created = request("POST", url, JSONObject().put("uuid", conversationUuid).put("name", "").toString(), "application/json")
        if (created !in 200..299) return Result(false, "create_conversation_status=$created")
        val body = JSONObject().apply {
            put("prompt", PRIME_PROMPT)
            put("parent_message_uuid", EMPTY_PARENT_MESSAGE_UUID)
            put("timezone", "UTC")
            put("attachments", org.json.JSONArray())
            put("files", org.json.JSONArray())
            put("sync_sources", org.json.JSONArray())
            put("rendering_mode", "messages")
            PRIME_MODEL?.let { put("model", it) }
        }.toString()
        val completion = request("POST", "$url/$conversationUuid/completion", body, "text/event-stream")
        request("DELETE", "$url/$conversationUuid", null, "application/json")
        return Result(completion in 200..299, "completion_status=$completion")
    }

    private fun organizationId(cookieHeader: String? = CookieManager.getInstance().getCookie(BASE)): String? {
        return cookieHeader
            ?.split(";")
            ?.firstNotNullOfOrNull { cookie ->
                val parts = cookie.trim().split("=", limit = 2)
                if (parts.size == 2 && parts[0].trim() == "lastActiveOrg") {
                    parts[1].trim().takeIf { it.isNotBlank() }
                } else {
                    null
                }
            }
    }

    private data class Response(val ok: Boolean, val status: Int)

    private fun send(
        method: String,
        url: String,
        body: String?,
        accept: String,
        cookieHeader: String,
        replayHeaders: Map<String, String>,
        userAgent: String
    ): Response {
        return runCatching {
            val connection = (URL(url).openConnection() as HttpURLConnection).apply {
                connectTimeout = NETWORK_TIMEOUT_MS
                readTimeout = NETWORK_TIMEOUT_MS
                requestMethod = method
                instanceFollowRedirects = false
                setRequestProperty("Accept", accept)
                setRequestProperty("Content-Type", "application/json")
                setRequestProperty("User-Agent", userAgent)
                setRequestProperty("Origin", BASE)
                setRequestProperty("Referer", "$BASE/")
                setRequestProperty("X-Requested-With", "XMLHttpRequest")
                setRequestProperty("Cookie", cookieHeader)
                replayHeaders.forEach { (name, value) ->
                    if (name.isNotBlank() && value.isNotBlank()) setRequestProperty(name, value)
                }
                if (body != null) {
                    doOutput = true
                    OutputStreamWriter(outputStream, StandardCharsets.UTF_8).use { it.write(body) }
                }
            }
            val status = connection.responseCode
            val stream = if (status in 200..299) connection.inputStream else connection.errorStream
            // Drain a small amount so the request is actually delivered, then stop.
            stream?.use { it.read(ByteArray(2048)) }
            connection.disconnect()
            Response(ok = status in 200..299, status = status)
        }.getOrElse { error ->
            Log.w(TAG, "provider=claude request=${method} error=${error.javaClass.simpleName}")
            Response(ok = false, status = -1)
        }
    }

    private fun fail(detail: String): Result {
        Log.w(TAG, "provider=claude primed=false reason=$detail")
        return Result(false, detail)
    }
}
