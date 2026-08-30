package com.aiquota.mobile.providers

import android.webkit.CookieManager
import android.util.Log
import java.net.HttpURLConnection
import java.net.URI
import java.net.URL
import java.nio.charset.StandardCharsets
import org.json.JSONArray
import org.json.JSONObject

object CopilotNativeUsageFetcher {
    fun fetchUsagePayload(githubAccessToken: String? = null): String? {
        val githubAuthorizationHeader = githubAccessToken?.let(::githubTokenAuthorizationHeader)
        val entitlement = fetchWrappedJson(COPILOT_ENTITLEMENT_URL)
        val token = fetchWrappedJson(COPILOT_CHAT_TOKEN_URL)
        val internalUser = fetchWrappedJson(
            COPILOT_INTERNAL_USER_URL,
            authorizationHeader = githubAuthorizationHeader
                ?: copilotApiAuthorizationHeader(token.optJSONObject("json"))
        )
        runCatching {
            Log.d(
                "AIQuotaCopilot",
                "nativeFetch entitlement=${entitlement.optInt("status", -1)} " +
                "token=${token.optInt("status", -1)} " +
                    "internal=${internalUser.optInt("status", -1)}"
            )
        }
        val payload = buildUsagePayload(
            entitlement = entitlement.optJSONObject("json"),
            internalUser = internalUser.takeIf { it.optBoolean("ok") }?.optJSONObject("json"),
            settingsPage = null,
            premiumBilling = null,
            billingInput = null
        )
        return payload?.takeIf(::hasCopilotUsage)?.toString()
    }

    fun fetchJson(url: String): String {
        return fetchWrappedJson(url).toString()
    }

    fun fetchJsonWithAuthorization(url: String, authorizationHeader: String): String {
        return fetchWrappedJson(url, authorizationHeader = authorizationHeader).toString()
    }

    fun isInternalUserUrl(url: String): Boolean {
        return copilotEndpoint(url) == "/copilot_internal/user"
    }

    fun apiAuthorizationHeaderFromRequest(headers: Map<String, String>): String? {
        val value = headers.entries
            .firstOrNull { it.key.equals("authorization", ignoreCase = true) }
            ?.value
            ?: return null
        return value.takeIf(::isGitHubApiAuthorizationHeader)
    }

    fun payloadFromInternalUserResponse(result: String): String? {
        val wrapped = runCatching { JSONObject(result) }.getOrNull() ?: return null
        if (!wrapped.optBoolean("ok")) return null
        val internalUser = wrapped.optJSONObject("json") ?: return null
        return buildUsagePayload(
            entitlement = null,
            internalUser = internalUser,
            settingsPage = null,
            premiumBilling = null,
            billingInput = null
        )?.takeIf(::hasCopilotUsage)?.toString()
    }

    internal fun buildUsagePayload(
        entitlement: JSONObject?,
        internalUser: JSONObject?,
        settingsPage: JSONObject? = null,
        premiumBilling: JSONObject?,
        billingInput: CopilotPremiumBillingInput?
    ): JSONObject? {
        val raw = entitlement ?: JSONObject()
        val quotas = raw.optJSONObject("quotas")
            ?: raw.optJSONObject("quota")
            ?: raw.optJSONObject("usage")
            ?: JSONObject()
        quotaSnapshots(internalUser ?: raw)?.let { snapshots ->
            if (!quotas.has("quota_snapshots")) quotas.put("quota_snapshots", snapshots)
        }
        copyObjectIfPresent(internalUser, quotas, "limited_user_quotas", "limitedUserQuotas")
        copyObjectIfPresent(internalUser, quotas, "monthly_quotas", "monthlyQuotas")
        copyObjectIfPresent(settingsPage, quotas, "limited_user_quotas", "limitedUserQuotas")
        copyObjectIfPresent(settingsPage, quotas, "monthly_quotas", "monthlyQuotas")
        premiumBilling?.let { quotas.put("premium_billing", it) }
        val resetDate = internalUser.optionalString("quota_reset_date")
            ?: internalUser.optionalString("resetDate")
            ?: settingsPage.optionalString("quota_reset_date")
            ?: settingsPage.optionalString("resetDate")
            ?: settingsPage.optionalString("limited_user_reset_date")
            ?: raw.optionalString("quota_reset_date")
            ?: raw.optionalString("resetDate")
            ?: quotas.optionalString("quota_reset_date")
            ?: quotas.optionalString("resetDate")
        resetDate?.let {
            if (!quotas.has("quota_reset_date")) quotas.put("quota_reset_date", it)
        }
        val account = raw.optionalString("account")
            ?: raw.optionalString("login")
            ?: raw.optionalString("user_login")
            ?: raw.optJSONObject("user")?.optionalString("login")
            ?: raw.optJSONObject("user")?.optionalString("name")
            ?: internalUser.optionalString("account")
            ?: internalUser.optionalString("login")
            ?: internalUser.optionalString("user_login")
            ?: settingsPage.optionalString("account")
            ?: settingsPage.optionalString("login")
            ?: settingsPage.optionalString("user_login")
            ?: billingInput?.account
        return JSONObject()
            .put("provider", "copilot")
            .put("plan", raw.optionalString("plan") ?: raw.optionalString("sku") ?: raw.optionalString("licenseType"))
            .put("account", account)
            .put("quotas", quotas)
    }

    private fun fetchWrappedJson(url: String, authorizationHeader: String? = null): JSONObject {
        val endpoint = copilotEndpoint(url)
            ?: return JSONObject().put("ok", false).put("error", "blocked_copilot_endpoint")
        return runCatching {
            val connection = (URL(url).openConnection() as HttpURLConnection).apply {
                connectTimeout = NETWORK_TIMEOUT_MS
                readTimeout = NETWORK_TIMEOUT_MS
                requestMethod = if (endpoint == "/github-copilot/chat/token") "POST" else "GET"
                setRequestProperty("Accept", "application/vnd.github+json, application/json, text/html")
                setRequestProperty("Content-Type", "application/json")
                setRequestProperty("User-Agent", ProviderWebViewUserAgent.loginUserAgent())
                setRequestProperty("Referer", "https://github.com/")
                setRequestProperty("X-Requested-With", "XMLHttpRequest")
                setRequestProperty("X-GitHub-Api-Version", "2022-11-28")
                if (endpoint == "/copilot_internal/user") {
                    authorizationHeader?.takeIf(::isAllowedCopilotAuthorizationHeader)
                        ?.let { setRequestProperty("Authorization", it) }
                }
                copilotCookieHeader()?.let { setRequestProperty("Cookie", it) }
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
                .put("json", parsed ?: JSONObject().put("rawText", text.take(rawTextLimit(endpoint))))
        }.getOrElse { error ->
            JSONObject()
                .put("ok", false)
                .put("endpoint", endpoint)
                .put("error", error.javaClass.simpleName)
        }
    }

    private fun quotaSnapshots(json: JSONObject?): JSONObject? {
        if (json == null) return null
        return json.optJSONObject("quota_snapshots")
            ?: json.optJSONObject("quotaSnapshots")
            ?: json.optJSONObject("quotas")?.optJSONObject("quota_snapshots")
            ?: json.optJSONObject("quotas")?.optJSONObject("quotaSnapshots")
    }

    internal fun copilotAuthorizationHeader(json: JSONObject?): String? {
        if (json == null) return null
        val direct = json.optionalString("authorizationHeaderValue")
            ?: json.optionalString("authorization_header_value")
            ?: json.optionalString("authorizationHeader")
        if (direct != null && isAllowedCopilotAuthorizationHeader(direct)) return direct
        val token = json.optionalString("token")
            ?: json.optionalString("value")
            ?: json.optionalString("accessToken")
            ?: json.optionalString("access_token")
            ?: return null
        return "GitHub-Bearer $token".takeIf(::isAllowedCopilotAuthorizationHeader)
    }

    internal fun copilotApiAuthorizationHeader(json: JSONObject?): String? {
        if (json == null) return null
        val direct = json.optionalString("apiAuthorizationHeader")
            ?: json.optionalString("api_authorization_header")
            ?: json.optionalString("githubAuthorizationHeader")
            ?: json.optionalString("github_authorization_header")
            ?: json.optionalString("authorizationHeaderValue")
            ?: json.optionalString("authorization_header_value")
            ?: json.optionalString("authorizationHeader")
        if (direct != null && isGitHubApiAuthorizationHeader(direct)) return direct
        val token = json.optionalString("github_token")
            ?: json.optionalString("githubToken")
            ?: json.optionalString("accessToken")
            ?: json.optionalString("access_token")
            ?: json.optionalString("token")
            ?: json.optionalString("value")
            ?: return null
        return githubTokenAuthorizationHeader(token)
    }

    private fun isAllowedCopilotAuthorizationHeader(value: String): Boolean {
        val trimmed = value.trim()
        if (trimmed.any { it == '\r' || it == '\n' }) return false
        return trimmed.startsWith("GitHub-Bearer ") || trimmed.startsWith("Bearer ") || trimmed.startsWith("token ")
    }

    private fun isGitHubApiAuthorizationHeader(value: String): Boolean {
        val trimmed = value.trim()
        return trimmed.startsWith("Bearer ") || trimmed.startsWith("token ")
    }

    private fun githubTokenAuthorizationHeader(value: String): String? {
        val trimmed = value.trim()
        if (trimmed.isBlank() || trimmed.any { it == '\r' || it == '\n' }) return null
        return if (trimmed.startsWith("Bearer ") || trimmed.startsWith("token ")) {
            trimmed
        } else {
            "token $trimmed"
        }
    }

    private fun findCopilotQuotaEnvelope(value: Any?, depth: Int = 0): JSONObject? {
        if (value == null || depth > 8) return null
        when (value) {
            is JSONObject -> {
                if (value.has("limited_user_quotas") || value.has("limitedUserQuotas") ||
                    value.has("monthly_quotas") || value.has("monthlyQuotas") ||
                    value.has("quota_snapshots") || value.has("quotaSnapshots")
                ) {
                    return value
                }
                val keys = value.keys()
                while (keys.hasNext()) {
                    findCopilotQuotaEnvelope(value.opt(keys.next()), depth + 1)?.let { return it }
                }
            }
            is JSONArray -> {
                for (index in 0 until value.length()) {
                    findCopilotQuotaEnvelope(value.opt(index), depth + 1)?.let { return it }
                }
            }
        }
        return null
    }

    private fun hasCopilotUsage(payload: JSONObject): Boolean {
        val quotas = payload.optJSONObject("quotas") ?: return false
        if (quotas.has("quota_snapshots") || quotas.has("quotaSnapshots")) return true
        if (quotas.has("premium_billing") || quotas.has("premiumBilling")) return true
        if (quotas.has("premium_requests") || quotas.has("premiumRequests")) return true
        if (quotas.has("chat") || quotas.has("completions")) return true
        val limited = quotas.optJSONObject("limited_user_quotas") ?: quotas.optJSONObject("limitedUserQuotas")
        val monthly = quotas.optJSONObject("monthly_quotas") ?: quotas.optJSONObject("monthlyQuotas")
        if (limited != null && monthly != null && (
                limited.has("chat") ||
                    limited.has("completions") ||
                    monthly.has("chat") ||
                    monthly.has("completions")
                )
        ) {
            return true
        }
        val remaining = quotas.optJSONObject("remaining") ?: return false
        return remaining.has("chat") || remaining.has("completions") || remaining.has("premiumInteractions")
    }

    private fun selectedPeriod(periods: JSONArray?): String? {
        if (periods == null) return null
        for (index in 0 until periods.length()) {
            val period = periods.optJSONObject(index) ?: continue
            if (period.optBoolean("selected") || period.optBoolean("default") || period.optInt("type", -1) == 3) {
                return period.optionalString("type")
                    ?: period.optionalString("id")
                    ?: period.optionalString("value")
            }
        }
        return null
    }

    private fun copilotCookieHeader(): String? {
        val values = listOf(
            CookieManager.getInstance().getCookie("https://github.com"),
            CookieManager.getInstance().getCookie("https://www.github.com"),
            CookieManager.getInstance().getCookie("https://api.github.com")
        ).mapNotNull { it?.takeIf(String::isNotBlank) }
        return values.joinToString("; ").takeIf { it.isNotBlank() }
    }

    private fun copilotEndpoint(url: String): String? {
        val uri = runCatching { URI(url) }.getOrNull() ?: return null
        if (!uri.scheme.equals("https", ignoreCase = true)) return null
        val host = uri.host.orEmpty().lowercase()
        val path = uri.path.orEmpty()
        val allowed = when (host) {
            "github.com", "www.github.com" -> path in setOf(
                "/github-copilot/chat/entitlement",
                "/github-copilot/chat/token",
                "/github-copilot/chat",
                "/github-copilot/chat/deferred_payload.json",
                "/copilot_internal/user"
            )
            "api.github.com" -> path == "/copilot_internal/user"
            else -> false
        }
        return if (allowed) path else null
    }

    private fun rawTextLimit(endpoint: String): Int {
        return 4_000
    }

    private fun copyObjectIfPresent(source: JSONObject?, target: JSONObject, snakeKey: String, camelKey: String) {
        val value = source?.optJSONObject(snakeKey)
            ?: source?.optJSONObject(camelKey)
            ?: source?.optJSONObject("quotas")?.optJSONObject(snakeKey)
            ?: source?.optJSONObject("quotas")?.optJSONObject(camelKey)
            ?: return
        if (!target.has(snakeKey) && !target.has(camelKey)) {
            target.put(snakeKey, value)
        }
    }

    private fun JSONArray.firstObject(): JSONObject? {
        for (index in 0 until length()) {
            optJSONObject(index)?.let { return it }
        }
        return null
    }

    private fun JSONObject?.optionalString(key: String): String? {
        if (this == null || !has(key) || isNull(key)) return null
        return optString(key).takeIf { it.isNotBlank() && it != "null" }
    }

    private const val COPILOT_ENTITLEMENT_URL = "https://github.com/github-copilot/chat/entitlement"
    private const val COPILOT_CHAT_TOKEN_URL = "https://github.com/github-copilot/chat/token"
    private const val COPILOT_INTERNAL_USER_URL = "https://api.github.com/copilot_internal/user"
    private const val NETWORK_TIMEOUT_MS = 10_000
}

internal data class CopilotPremiumBillingInput(
    val customerId: String,
    val period: String,
    val account: String?
)
