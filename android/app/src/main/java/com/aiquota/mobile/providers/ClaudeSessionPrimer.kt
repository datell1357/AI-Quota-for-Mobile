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

        val conversationUuid = UUID.randomUUID().toString()
        val createBody = JSONObject()
            .put("uuid", conversationUuid)
            .put("name", "")
            .toString()
        val created = send(
            method = "POST",
            url = "$BASE/api/organizations/$organizationId/chat_conversations",
            body = createBody,
            accept = "application/json",
            cookieHeader = cookieHeader,
            replayHeaders = replayHeaders,
            userAgent = userAgent
        )
        if (!created.ok) return fail("create_conversation_status=${created.status}")

        val completionBody = JSONObject().apply {
            put("prompt", PRIME_PROMPT)
            put("parent_message_uuid", EMPTY_PARENT_MESSAGE_UUID)
            put("timezone", "UTC")
            put("attachments", org.json.JSONArray())
            put("files", org.json.JSONArray())
            put("sync_sources", org.json.JSONArray())
            put("rendering_mode", "messages")
            PRIME_MODEL?.let { put("model", it) }
        }.toString()
        val completion = send(
            method = "POST",
            url = "$BASE/api/organizations/$organizationId/chat_conversations/$conversationUuid/completion",
            body = completionBody,
            accept = "text/event-stream",
            cookieHeader = cookieHeader,
            replayHeaders = replayHeaders,
            userAgent = userAgent
        )

        // Best-effort cleanup regardless of completion outcome.
        send(
            method = "DELETE",
            url = "$BASE/api/organizations/$organizationId/chat_conversations/$conversationUuid",
            body = null,
            accept = "application/json",
            cookieHeader = cookieHeader,
            replayHeaders = replayHeaders,
            userAgent = userAgent
        )

        return if (completion.ok) {
            Log.i(TAG, "provider=claude primed=true completionStatus=${completion.status}")
            Result(true, "completion_status=${completion.status}")
        } else {
            fail("completion_status=${completion.status}")
        }
    }

    private fun organizationId(): String? {
        return CookieManager.getInstance().getCookie(BASE)
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
