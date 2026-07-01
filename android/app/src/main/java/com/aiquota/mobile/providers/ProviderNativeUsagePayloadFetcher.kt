package com.aiquota.mobile.providers

import android.util.Log
import com.aiquota.mobile.local.ProviderId
import java.net.URLEncoder
import java.nio.charset.StandardCharsets
import java.util.Locale
import org.json.JSONArray
import org.json.JSONObject
import org.json.JSONTokener

internal typealias NativeJsonFetcher = (ProviderId, String, String, Map<String, String>) -> String

object ProviderNativeUsagePayloadFetcher {
    fun bridgeUsagePayload(
        providerId: ProviderId,
        userAgent: String = ProviderWebViewUserAgent.loginUserAgent(),
        cookieHeaderForUrl: (String) -> String? = { null },
        bridgePageUrl: String? = null,
        geminiRpcIds: List<String> = emptyList(),
        requestHeadersForUrl: (String) -> Map<String, String> = { emptyMap() }
    ): String {
        return bridgeUsagePayload(providerId, userAgent, requestHeadersForUrl, cookieHeaderForUrl, bridgePageUrl, geminiRpcIds, ProviderNativeJsonBridge::fetchJson)
    }

    internal fun codexUsagePayloadForTest(
        userAgent: String,
        requestHeadersForUrl: (String) -> Map<String, String>,
        fetchJson: NativeJsonFetcher
    ): String? {
        return fetchCodexPayload(userAgent, requestHeadersForUrl, fetchJson).payload
    }

    private fun bridgeUsagePayload(
        providerId: ProviderId,
        userAgent: String,
        requestHeadersForUrl: (String) -> Map<String, String>,
        cookieHeaderForUrl: (String) -> String?,
        bridgePageUrl: String?,
        geminiRpcIds: List<String>,
        fetchJson: NativeJsonFetcher
    ): String {
        if (!ProviderAboutBlankCollectorPolicy.isEnabled(providerId)) {
            return bridgeError(providerId, "provider_not_allowlisted")
        }
        val result = when (providerId) {
            ProviderId.CLAUDE -> fetchClaudePayload(userAgent)
            ProviderId.CODEX -> fetchCodexPayload(userAgent, requestHeadersForUrl, fetchJson)
            ProviderId.GEMINI -> {
                val usagePageUrl = GeminiUsagePageRoutes.canonicalUsageUrl(bridgePageUrl.orEmpty())
                    ?: GEMINI_USAGE_PAGE_URL
                fetchGeminiPayload(userAgent, cookieHeaderForUrl(usagePageUrl), usagePageUrl, geminiRpcIds)
            }
            ProviderId.GLM -> fetchGlmPayload(cookieHeaderForUrl)
            ProviderId.COPILOT -> NativePayloadResult(
                payload = CopilotNativeUsageFetcher.fetchUsagePayload(),
                diagnostic = "copilot_usage_unavailable"
            )
            else -> NativePayloadResult(payload = null, diagnostic = "provider_mismatch")
        }
        return bridgeResult(providerId, result)
    }

    fun bridgeCodexFetchedPayload(rawText: String, plan: String?, accountId: String?, account: String?): String {
        val payload = codexFetchedPayload(rawText, plan, accountId, account)
            ?: return bridgeResult(
                ProviderId.CODEX,
                NativePayloadResult(null, "codex_usage_unavailable")
            )
        return bridgeResult(
            ProviderId.CODEX,
            verifiedPayload(ProviderId.CODEX, payload, "codex_usage_unavailable", emptyList())
        )
    }

    internal fun codexFetchedPayloadForTest(rawText: String, plan: String?, accountId: String?, account: String?): JSONObject? {
        return codexFetchedPayload(rawText, plan, accountId, account)
    }

    private fun codexFetchedPayload(rawText: String, plan: String?, accountId: String?, account: String?): JSONObject? {
        val parsed = runCatching { JSONTokener(rawText).nextValue() }.getOrNull()
        val usage = codexUsageFromValue(parsed)
            ?: return null
        val payload = JSONObject()
            .put("provider", ProviderId.CODEX.storageId)
            .put("usage", usage)
        accountId?.takeIf { it.isNotBlank() }?.let { payload.put("accountId", it) }
        account?.takeIf { it.isNotBlank() }?.let { payload.put("account", it) }
        plan?.takeIf { it.isNotBlank() }?.let { payload.put("plan", it) }
        return payload
    }

    private fun fetchClaudePayload(userAgent: String): NativePayloadResult {
        val statuses = mutableListOf<String>()
        val organizations = fetchWrapped(ProviderId.CLAUDE, CLAUDE_ORGANIZATIONS_URL, statuses, userAgent)
        val accountProfile = fetchWrapped(ProviderId.CLAUDE, CLAUDE_ACCOUNT_PROFILE_URL, statuses, userAgent)
        val orgId = claudeOrgId(organizations.jsonValue())
            ?: fetchWrapped(ProviderId.CLAUDE, CLAUDE_ORGANIZATIONS_ME_URL, statuses, userAgent)
                .let { claudeOrgId(it.jsonValue()) }
            ?: claudeOrgId(accountProfile.jsonValue())
            ?: return NativePayloadResult(null, "claude_organization_unavailable", statuses)
        val encodedOrgId = encodePath(orgId)
        val subscription = fetchWrapped(
            ProviderId.CLAUDE,
            "https://claude.ai/api/organizations/$encodedOrgId/subscription_details",
            statuses,
            userAgent
        )
        val usage = fetchWrapped(
            ProviderId.CLAUDE,
            "https://claude.ai/api/organizations/$encodedOrgId/usage",
            statuses,
            userAgent
        )
        val usageJson = usage.jsonObject() ?: return NativePayloadResult(null, "claude_usage_unavailable", statuses)
        val usagePayload = usageJson.optJSONObject("usage") ?: usageJson
        val payload = JSONObject()
            .put("provider", ProviderId.CLAUDE.storageId)
            .put("organizationId", orgId)
            .put("usage", usagePayload)
        findFirstString(accountProfile.jsonValue(), EMAIL_KEYS)?.let { payload.put("account", it) }
        findFirstString(subscription.jsonValue(), PLAN_KEYS)
            ?.let { payload.put("plan", it) }
        return verifiedPayload(ProviderId.CLAUDE, payload, "claude_usage_unavailable", statuses)
    }

    private fun fetchCodexPayload(
        userAgent: String,
        requestHeadersForUrl: (String) -> Map<String, String>,
        fetchJson: NativeJsonFetcher
    ): NativePayloadResult {
        val statuses = mutableListOf<String>()
        val session = fetchWrapped(ProviderId.CODEX, CODEX_SESSION_URL, statuses, userAgent, requestHeadersForUrl(CODEX_SESSION_URL), fetchJson)
        val me = fetchWrapped(ProviderId.CODEX, CODEX_ME_URL, statuses, userAgent, requestHeadersForUrl(CODEX_ME_URL), fetchJson)
        val accountCheck = fetchWrapped(ProviderId.CODEX, CODEX_ACCOUNT_CHECK_URL, statuses, userAgent, requestHeadersForUrl(CODEX_ACCOUNT_CHECK_URL), fetchJson)
        val accountId = findFirstString(me.jsonValue(), CODEX_ACCOUNT_ID_KEYS)
            ?: findFirstString(accountCheck.jsonValue(), CODEX_ACCOUNT_ID_KEYS)
            ?: findFirstString(session.jsonValue(), CODEX_ACCOUNT_ID_KEYS)
        val subscriptionsUrl = accountId?.let { "$CODEX_SUBSCRIPTIONS_URL?account_id=${encodeQuery(it)}" } ?: CODEX_SUBSCRIPTIONS_URL
        val subscriptions = fetchWrapped(
            ProviderId.CODEX,
            subscriptionsUrl,
            statuses,
            userAgent,
            requestHeadersForUrl(subscriptionsUrl),
            fetchJson
        )
        val whamUsage = fetchWrapped(
            ProviderId.CODEX,
            CODEX_WHAM_USAGE_URL,
            statuses,
            userAgent,
            requestHeadersForUrl(CODEX_WHAM_USAGE_URL),
            fetchJson
        )
        val usage = codexUsageFromValue(whamUsage.jsonValue())
            ?: return NativePayloadResult(null, "codex_usage_unavailable", statuses)
        val payload = JSONObject()
            .put("provider", ProviderId.CODEX.storageId)
            .put("usage", usage)
        accountId?.let { payload.put("accountId", it) }
        val accountEmail = findFirstString(me.jsonValue(), EMAIL_KEYS)
            ?: findFirstString(session.jsonValue(), EMAIL_KEYS)
            ?: findFirstString(accountCheck.jsonValue(), EMAIL_KEYS)
        accountEmail?.let { payload.put("account", it) }
        val plan = findFirstString(subscriptions.jsonValue(), PLAN_KEYS)
            ?: findFirstString(accountCheck.jsonValue(), PLAN_KEYS)
            ?: findFirstString(me.jsonValue(), PLAN_KEYS)
        plan?.let { payload.put("plan", it) }
        return verifiedPayload(ProviderId.CODEX, payload, "codex_usage_unavailable", statuses)
    }

    private fun fetchGeminiPayload(
        userAgent: String,
        cookieHeader: String?,
        usagePageUrl: String,
        observedRpcIds: List<String>
    ): NativePayloadResult {
        val result = GeminiUsagePageNativeFetcher.fetchUsagePayload(userAgent, cookieHeader, usagePageUrl, observedRpcIds)
        val payload = result.payload
            ?: return NativePayloadResult(
                payload = null,
                diagnostic = result.diagnostic,
                statuses = result.statuses
            )
        val json = runCatching { JSONObject(payload) }
            .getOrElse {
                return NativePayloadResult(null, "gemini_usage_invalid", result.statuses)
            }
        return verifiedPayload(ProviderId.GEMINI, json, "gemini_usage_unavailable", result.statuses)
    }

    private fun fetchGlmPayload(cookieHeaderForUrl: (String) -> String?): NativePayloadResult {
        val cookieHeader = GoogleWebSessionCodeAssistFetcher.mergeCookieHeaders(
            GlmProviderUrls.WEB_COOKIE_URLS.map { url ->
                runCatching { cookieHeaderForUrl(url) }.getOrNull()
            }
        )
        val result = GlmUsageFetcher.fetchUsagePayloadWithCookie(cookieHeader)
        val payload = result.payload
            ?: return NativePayloadResult(null, result.diagnostic)
        val json = runCatching { JSONObject(payload) }
            .getOrElse {
                return NativePayloadResult(null, "glm_usage_invalid")
            }
        return verifiedPayload(ProviderId.GLM, json, "glm_usage_unavailable", emptyList())
    }

    private fun fetchWrapped(
        providerId: ProviderId,
        url: String,
        statuses: MutableList<String>,
        userAgent: String,
        requestHeaders: Map<String, String> = emptyMap(),
        fetchJson: NativeJsonFetcher = ProviderNativeJsonBridge::fetchJson
    ): JSONObject {
        val wrapped = runCatching { JSONObject(fetchJson(providerId, url, userAgent, requestHeaders)) }
            .getOrElse { JSONObject().put("ok", false).put("url", url).put("error", it.javaClass.simpleName) }
        statuses += "${urlStatusLabel(url)}:${wrapped.optInt("status", -1)}:${wrapped.optString("error")}"
        return wrapped
    }

    private fun verifiedPayload(
        providerId: ProviderId,
        payload: JSONObject,
        diagnostic: String,
        statuses: List<String>
    ): NativePayloadResult {
        val normalized = ProviderUsageNormalizer.normalize(
            providerId = providerId,
            rawPayload = payload.toString(),
            source = ProviderPayloadSource.NETWORK_RESPONSE
        )
        if (normalized == null) {
            return NativePayloadResult(null, "${diagnostic}_normalizer_rejected", statuses)
        }
        return NativePayloadResult(payload.toString(), "ok", statuses)
    }

    private fun bridgeResult(providerId: ProviderId, result: NativePayloadResult): String {
        val json = JSONObject()
            .put("ok", result.payload != null)
            .put("provider", providerId.storageId)
            .put("diagnostic", result.diagnostic)
            .put("statuses", JSONArray(result.statuses))
        result.payload?.let { payload ->
            json.put("payload", JSONTokener(payload).nextValue())
        }
        runCatching {
            val statusSummary = result.statuses.joinToString("|").take(500)
            Log.d(
                TAG,
                "nativeUsage provider=${providerId.storageId} ok=${result.payload != null} " +
                    "diagnostic=${result.diagnostic} statuses=$statusSummary"
            )
        }
        return json.toString()
    }

    private fun bridgeError(providerId: ProviderId, diagnostic: String): String {
        return JSONObject()
            .put("ok", false)
            .put("provider", providerId.storageId)
            .put("diagnostic", diagnostic)
            .toString()
    }

    private fun JSONObject.jsonValue(): Any? {
        return opt("json")
    }

    private fun JSONObject.jsonObject(): JSONObject? {
        return optJSONObject("json")
    }

    private fun JSONObject.rawText(): String? {
        return optJSONObject("json")?.optString("rawText")?.takeIf { it.isNotBlank() }
    }

    private fun claudeOrgId(value: Any?): String? {
        val values = mutableListOf<String>()
        collectStrings(value, CLAUDE_ORG_ID_KEYS, values, 0)
        return values.firstOrNull { it.startsWith("org_", ignoreCase = true) }
            ?: values.firstOrNull { it.isNotBlank() && it != "discoverable" && !it.all { char -> char.isDigit() } }
            ?: values.firstOrNull { it.isNotBlank() && it != "discoverable" }
    }

    private fun codexUsageFromValue(value: Any?): JSONObject? {
        return findFirstObject(value, 0) { candidate ->
            candidate.has("rate_limits") ||
                candidate.has("rate_limit") ||
                candidate.has("primary_window") ||
                candidate.has("secondary_window") ||
                candidate.optJSONArray("x") != null
        }?.let { usage -> usage.optJSONObject("usage") ?: usage }
    }

    private fun findFirstObject(value: Any?, depth: Int, predicate: (JSONObject) -> Boolean): JSONObject? {
        if (depth > MAX_JSON_DEPTH || value == null || value == JSONObject.NULL) return null
        return when (value) {
            is JSONObject -> {
                if (predicate(value)) {
                    value
                } else {
                    val keys = value.keys()
                    while (keys.hasNext()) {
                        findFirstObject(value.opt(keys.next()), depth + 1, predicate)?.let { return it }
                    }
                    null
                }
            }
            is JSONArray -> {
                for (index in 0 until value.length()) {
                    findFirstObject(value.opt(index), depth + 1, predicate)?.let { return it }
                }
                null
            }
            else -> null
        }
    }

    private fun findFirstString(value: Any?, keyNames: Set<String>): String? {
        val values = mutableListOf<String>()
        collectStrings(value, keyNames, values, 0)
        return values.firstOrNull { it.isNotBlank() && it != "null" }
    }

    private fun collectStrings(value: Any?, keyNames: Set<String>, output: MutableList<String>, depth: Int) {
        if (depth > MAX_JSON_DEPTH || value == null || value == JSONObject.NULL || output.size >= MAX_STRING_MATCHES) return
        when (value) {
            is JSONObject -> {
                val keys = value.keys()
                while (keys.hasNext()) {
                    val key = keys.next()
                    val child = value.opt(key)
                    if (keyNames.contains(key.lowercase(Locale.US))) {
                        when (child) {
                            is String -> output += child
                            is Number, is Boolean -> output += child.toString()
                        }
                    }
                    collectStrings(child, keyNames, output, depth + 1)
                }
            }
            is JSONArray -> {
                for (index in 0 until value.length()) {
                    collectStrings(value.opt(index), keyNames, output, depth + 1)
                }
            }
        }
    }

    private fun urlStatusLabel(url: String): String {
        return runCatching {
            val uri = java.net.URI(url)
            "${uri.host}${uri.path}"
        }.getOrDefault(url.take(80))
    }

    private fun encodePath(value: String): String {
        return URLEncoder.encode(value, StandardCharsets.UTF_8.name()).replace("+", "%20")
    }

    private fun encodeQuery(value: String): String {
        return URLEncoder.encode(value, StandardCharsets.UTF_8.name())
    }

    private data class NativePayloadResult(
        val payload: String?,
        val diagnostic: String,
        val statuses: List<String> = emptyList()
    )

    private const val TAG = "AIQuotaNativeUsage"
    private const val MAX_JSON_DEPTH = 16
    private const val MAX_STRING_MATCHES = 64

    private const val CLAUDE_ACCOUNT_PROFILE_URL = "https://claude.ai/api/account_profile"
    private const val CLAUDE_ORGANIZATIONS_URL = "https://claude.ai/api/organizations"
    private const val CLAUDE_ORGANIZATIONS_ME_URL = "https://claude.ai/api/organizations/me"

    private const val CODEX_SESSION_URL = "https://chatgpt.com/api/auth/session"
    private const val CODEX_ME_URL = "https://chatgpt.com/backend-api/me"
    private const val CODEX_ACCOUNT_CHECK_URL = "https://chatgpt.com/backend-api/accounts/check/v4-2023-04-27"
    private const val CODEX_SUBSCRIPTIONS_URL = "https://chatgpt.com/backend-api/subscriptions"
    private const val CODEX_WHAM_USAGE_URL = "https://chatgpt.com/backend-api/wham/usage"
    private const val GEMINI_USAGE_PAGE_URL = "https://gemini.google.com/usage"
    private val CLAUDE_ORG_ID_KEYS = setOf(
        "uuid",
        "id",
        "organization_uuid",
        "organizationuuid",
        "organization_id",
        "organizationid",
        "org_id",
        "orgid"
    )
    private val CODEX_ACCOUNT_ID_KEYS = setOf(
        "account_id",
        "accountid",
        "account_uuid",
        "accountuuid",
        "workspace_id",
        "workspaceid",
        "id"
    )
    private val EMAIL_KEYS = setOf("email", "account_email", "accountemail", "user_email", "useremail", "e")
    private val PLAN_KEYS = setOf(
        "plan",
        "plan_type",
        "plantype",
        "plan_name",
        "planname",
        "subscription_plan",
        "subscriptionplan",
        "subscription_type",
        "subscriptiontype",
        "tier",
        "sku",
        "name",
        "display_name",
        "displayname",
        "title",
        "label"
    )
}
