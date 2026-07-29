package com.aiquota.mobile.providers

import com.aiquota.mobile.BuildConfig
import com.aiquota.mobile.local.ProviderId
import java.net.URI
import java.util.Locale
import org.json.JSONObject

object ProviderWebCollectorScripts {
    fun isRefreshLoginPage(providerId: ProviderId, url: String): Boolean {
        val uri = runCatching { URI(url) }.getOrNull() ?: return false
        val host = uri.host.orEmpty().lowercase(Locale.US)
        val path = uri.path.orEmpty().lowercase(Locale.US)
        return when (providerId) {
            ProviderId.CLAUDE ->
                host.endsWith("claude.ai") && path.contains("login") ||
                    host == "accounts.google.com"
            ProviderId.CODEX ->
                host == "auth.openai.com" ||
                    host == "accounts.google.com" ||
                    ((host == "chatgpt.com" || host.endsWith(".chatgpt.com")) && path == "/auth/login")
            ProviderId.GLM ->
                host == "accounts.google.com" ||
                    ((host == "z.ai" || host == "www.z.ai") &&
                        (path.contains("login") || path.contains("signin") || path.contains("auth"))) ||
                    (host == "chat.z.ai" &&
                        (path.contains("login") || path.contains("signin")))
            ProviderId.OPENCODE ->
                host == "accounts.google.com" ||
                    host == "github.com" &&
                    (path.startsWith("/login") || path.startsWith("/sessions") || path.startsWith("/session")) ||
                    ((host == "opencode.ai" || host == "www.opencode.ai") &&
                        (path.contains("login") || path.contains("signin")))
            ProviderId.GEMINI ->
                host == "accounts.google.com"
            ProviderId.COPILOT ->
                host == "github.com" &&
                    (path.startsWith("/login") ||
                        path.startsWith("/sessions") ||
                        path.startsWith("/session") ||
                        path.contains("two-factor"))
            ProviderId.ANTIGRAVITY ->
                host == "accounts.google.com"
            ProviderId.CURSOR ->
                host == "accounts.google.com" ||
                    (host == "github.com" &&
                        (path.startsWith("/login") ||
                            path.startsWith("/sessions") ||
                            path.startsWith("/session") ||
                            path.contains("two-factor"))) ||
                    ((host == "cursor.com" || host == "www.cursor.com") &&
                        (path.contains("login") || path.contains("signin")))
            ProviderId.GROK ->
                host == "accounts.google.com" ||
                    host == "auth.grok.com" ||
                    host == "accounts.x.ai" ||
                    ((host == "grok.com" || host == "www.grok.com") &&
                        (path.contains("login") || path.contains("signin") || path.contains("sign-in")))
            ProviderId.KIMI ->
                host == "accounts.google.com" ||
                    ((host == "kimi.com" || host == "www.kimi.com") &&
                        (path.contains("login") || path.contains("signin") || path.contains("sign-in")))
            ProviderId.KIRO ->
                host == "accounts.google.com" ||
                    host == "github.com" ||
                    host == "signin.aws.amazon.com" ||
                    host.endsWith(".amazoncognito.com") ||
                    (host == "app.kiro.dev" &&
                        (path.contains("login") || path.contains("signin") || path.contains("sign-in")))
        }
    }

    fun isRefreshLoginPage(providerId: ProviderId, url: String, pageText: String): Boolean {
        if (isRefreshLoginPage(providerId, url)) return true
        val uri = runCatching { URI(url) }.getOrNull() ?: return false
        val host = uri.host.orEmpty().lowercase(Locale.US)
        val path = uri.path.orEmpty().lowercase(Locale.US)
        if (providerId == ProviderId.CODEX) {
            if (host != "chatgpt.com" && !host.endsWith(".chatgpt.com")) return false
            if (path != "/" && path.isNotBlank()) return false
            return looksLikeChatGptLoginText(pageText)
        }
        if (providerId == ProviderId.GLM) {
            if (host != "z.ai" && host != "www.z.ai" && host != "chat.z.ai") return false
            val text = pageText.lowercase(Locale.US)
            return text.contains("login") ||
                text.contains("log in") ||
                text.contains("sign in") ||
                text.contains("로그인")
        }
        if (providerId == ProviderId.OPENCODE) {
            if (host != "opencode.ai" && host != "www.opencode.ai" && host != "auth.opencode.ai") return false
            val text = pageText.lowercase(Locale.US)
            if (host == "auth.opencode.ai") return looksLikeOpenCodeLoginText(text)
            return (path == "/auth" || path.contains("login") || path.contains("signin")) &&
                looksLikeOpenCodeLoginText(text)
        }
        if (providerId == ProviderId.GEMINI) {
            if (!GeminiUsagePageRoutes.isLoginLandingUrl(url) && !GeminiUsagePageRoutes.isUsageUrl(url)) return false
            return looksLikeGeminiLoginText(pageText)
        }
        if (providerId == ProviderId.CURSOR) {
            if (host !in CURSOR_AUTH_EXCHANGE_HOSTS &&
                host != "cursor.com" &&
                host != "www.cursor.com"
            ) {
                return false
            }
            val text = pageText.lowercase(Locale.US)
            if (host in CURSOR_AUTH_EXCHANGE_HOSTS) return looksLikeCursorLoginText(text)
            return (path.contains("login") || path.contains("signin")) &&
                looksLikeCursorLoginText(text)
        }
        return false
    }

    private fun looksLikeGeminiLoginText(pageText: String): Boolean {
        val text = pageText.lowercase(Locale.US)
        if (text.isBlank()) return false
        val hasUsage = text.contains("usage limit") ||
            text.contains("current usage") ||
            text.contains("5-hour") ||
            text.contains("weekly") ||
            text.contains("사용량") ||
            text.contains("한도")
        if (hasUsage) return false
        val hasLoginAction = text.contains("로그인") ||
            text.contains("sign in") ||
            text.contains("log in")
        val hasGeminiLandingCopy = text.contains("gemini와의 대화") ||
            text.contains("개인 ai") ||
            text.contains("meet gemini") ||
            text.contains("personal ai")
        return hasLoginAction && hasGeminiLandingCopy
    }

    fun shouldRunCollector(providerId: ProviderId, url: String, cookies: Map<String, String>, pageText: String): Boolean {
        if (ProviderAboutBlankCollectorPolicy.isEnabled(providerId) && url == "about:blank") {
            return true
        }
        if (ProviderAboutBlankCollectorPolicy.isEnabled(providerId)) {
            return false
        }
        val uri = runCatching { URI(url) }.getOrNull() ?: return false
        val host = uri.host.orEmpty().lowercase(Locale.US)
        val path = uri.path.orEmpty().lowercase(Locale.US)
        val text = pageText.lowercase(Locale.US)
        return when (providerId) {
            ProviderId.CLAUDE ->
                host.endsWith("claude.ai") &&
                    !path.contains("login") &&
                    !path.contains("logout") &&
                    (cookies["lastActiveOrg"].isNullOrBlank().not() || path == "/" || path == "/new" || text.contains("claude"))
            ProviderId.CODEX ->
                (host == "chatgpt.com" || host.endsWith(".chatgpt.com") || host == "chat.openai.com") &&
                    path != "/auth/login" &&
                    (path != "/" || pageText.isNotBlank()) &&
                    !looksLikeChatGptLoginText(pageText)
            ProviderId.GLM ->
                (host == "z.ai" || host == "www.z.ai" || host == "chat.z.ai") &&
                    !path.contains("login") &&
                    !path.contains("signin") &&
                    !path.contains("auth") &&
                    (
                        path.startsWith("/manage-apikey/coding-plan") ||
                            path.startsWith("/manage-apikey/subscription") ||
                            path.startsWith("/manage-apikey") ||
                            (host == "chat.z.ai" && path == "/") ||
                            text.contains("coding plan") ||
                            text.contains("quota") ||
                            text.contains("usage")
                        )
            ProviderId.OPENCODE ->
                (host == "opencode.ai" || host == "www.opencode.ai") &&
                    !path.startsWith("/docs") &&
                    !path.startsWith("/brand") &&
                    !path.contains("login") &&
                    !path.contains("signin") &&
                    !looksLikeOpenCodeLoginText(text) &&
                    (
                        path.contains("console") ||
                            path.contains("usage") ||
                            path.contains("billing") ||
                            path.contains("credit") ||
                            path.contains("balance") ||
                            path.contains("zen") ||
                            path.contains("go") ||
                            text.contains("usage") ||
                            text.contains("limit") ||
                            text.contains("balance") ||
                            text.contains("credit")
                        )
            ProviderId.GEMINI ->
                false
            ProviderId.COPILOT ->
                host == "github.com" &&
                    !path.startsWith("/login") &&
                    !path.startsWith("/sessions") &&
                    !path.startsWith("/session") &&
                    !path.contains("two-factor") &&
                    (
                        path.startsWith("/settings/copilot") ||
                            path.startsWith("/settings/billing/premium_requests_usage") ||
                            path.startsWith("/github-copilot")
                        )
            ProviderId.ANTIGRAVITY ->
                (host == "antigravity.google" || host == "www.antigravity.google") &&
                    !path.startsWith("/docs") &&
                    !path.contains("login") &&
                    !path.contains("signin")
            ProviderId.CURSOR ->
                (host == "cursor.com" || host == "www.cursor.com") &&
                    (path.contains("dashboard") || path.contains("settings") || path.contains("account") || path.contains("billing"))
            ProviderId.GROK ->
                (host == "grok.com" || host == "www.grok.com") &&
                    !path.contains("login") &&
                    !path.contains("signin") &&
                    !path.contains("sign-in")
            ProviderId.KIMI ->
                (host == "kimi.com" || host == "www.kimi.com") &&
                    !path.contains("login") &&
                    !path.contains("signin") &&
                    !path.contains("sign-in")
            ProviderId.KIRO ->
                host == "app.kiro.dev" &&
                    !path.contains("login") &&
                    !path.contains("signin") &&
                    !path.contains("sign-in")
        }
    }

    fun collectorReadinessDiagnostic(
        providerId: ProviderId,
        url: String,
        cookies: Map<String, String>,
        pageText: String
    ): String {
        if (shouldRunCollector(providerId, url, cookies, pageText)) return "ready"
        val uri = runCatching { URI(url) }.getOrNull()
        val host = uri?.host.orEmpty().lowercase(Locale.US)
        val path = uri?.path.orEmpty().lowercase(Locale.US)
        val text = pageText.lowercase(Locale.US)
        return when {
            uri == null -> "invalid_url"
            providerId == ProviderId.CLAUDE ->
                "host=$host path=$path hasLastActiveOrg=${!cookies["lastActiveOrg"].isNullOrBlank()} hasClaudeText=${text.contains("claude")}"
            providerId == ProviderId.CODEX ->
                "host=$host path=$path textPresent=${pageText.isNotBlank()} loginText=${looksLikeChatGptLoginText(pageText)}"
            providerId == ProviderId.GLM ->
                "host=$host path=$path hasQuotaText=${text.contains("quota") || text.contains("usage") || text.contains("coding plan")}"
            providerId == ProviderId.OPENCODE ->
                "host=$host path=$path loginText=${looksLikeOpenCodeLoginText(text)} hasUsageText=${text.contains("usage") || text.contains("limit") || text.contains("balance") || text.contains("credit")}"
            providerId == ProviderId.GEMINI ->
                "host=$host path=$path usageUrl=${path.startsWith("/usage")} appUrl=${path.startsWith("/app")}"
            providerId == ProviderId.COPILOT ->
                "host=$host path=$path"
            providerId == ProviderId.ANTIGRAVITY ->
                "host=$host path=$path"
            providerId == ProviderId.CURSOR ->
                "host=$host path=$path"
            else ->
                "host=$host path=$path"
        }
    }

    fun shouldAllowCollectorReinjection(providerId: ProviderId): Boolean {
        return when (providerId) {
            ProviderId.CLAUDE,
            ProviderId.COPILOT,
            ProviderId.GLM,
            ProviderId.GEMINI -> true
            ProviderId.CURSOR,
            ProviderId.CODEX,
            ProviderId.OPENCODE,
            ProviderId.GROK,
            ProviderId.KIMI,
            ProviderId.KIRO,
            ProviderId.ANTIGRAVITY -> false
        }
    }

    private fun looksLikeChatGptLoginText(pageText: String): Boolean {
        val text = pageText.lowercase(Locale.US)
        return (text.contains("로그인") && (
            text.contains("회원가입") ||
                text.contains("회원 가입") ||
                text.contains("지금 무슨 생각")
            )) ||
            text.contains("google 계정으로 계속하기") ||
            text.contains("log in or sign up") ||
            (text.contains("log in") && text.contains("sign up")) ||
            text.contains("continue with google")
    }

    private fun looksLikeOpenCodeLoginText(pageText: String): Boolean {
        val text = pageText.lowercase(Locale.US)
        if (text.isBlank()) return false
        val hasUsage = text.contains("usage") ||
            text.contains("limit") ||
            text.contains("balance") ||
            text.contains("credit")
        return !hasUsage &&
            (text.contains("sign in") ||
                text.contains("login") ||
                text.contains("log in") ||
                text.contains("continue with google") ||
                text.contains("continue with github"))
    }

    private fun looksLikeCursorLoginText(pageText: String): Boolean {
        val text = pageText.lowercase(Locale.US)
        if (text.isBlank()) return false
        val hasUsage = text.contains("usage") ||
            text.contains("dashboard") ||
            text.contains("billing") ||
            text.contains("requests")
        return !hasUsage &&
            (text.contains("sign in") ||
                text.contains("login") ||
                text.contains("log in") ||
                text.contains("continue with google") ||
                text.contains("continue with github") ||
                text.contains("single sign-on"))
    }

    private val CURSOR_AUTH_EXCHANGE_HOSTS = setOf(
        "api.workos.com",
        "auth.workos.com",
        "workos.com",
        "authenticate.cursor.sh",
        "authenticator.cursor.sh"
    )

    fun shouldRunCollectorOnResource(providerId: ProviderId, url: String): Boolean {
        val uri = runCatching { URI(url) }.getOrNull() ?: return false
        val host = uri.host.orEmpty().lowercase(Locale.US)
        val path = uri.path.orEmpty().lowercase(Locale.US)
        return when (providerId) {
            ProviderId.CLAUDE ->
                host.endsWith("claude.ai") &&
                    (path == "/api/account_profile" ||
                        path == "/api/organizations" ||
                        path == "/api/organizations/me" ||
                        (path.startsWith("/api/organizations/") && path.endsWith("/usage")) ||
                        (path.startsWith("/api/bootstrap/") && path.endsWith("/current_user_access")) ||
                        (path.startsWith("/api/organizations/") && path.endsWith("/subscription_details")))
            ProviderId.CODEX ->
                (host == "chatgpt.com" || host.endsWith(".chatgpt.com") || host == "chat.openai.com") &&
                    (path == "/api/auth/session" ||
                        path == "/backend-api/subscriptions" ||
                        path == "/backend-api/wham/usage" ||
                        path == "/backend-api/me" ||
                        path.startsWith("/backend-api/accounts/check") ||
                        path == "/codex/cloud/settings/analytics" ||
                        path == "/codex/settings/usage")
            ProviderId.GLM ->
                (host == "api.z.ai" &&
                    (path == "/api/monitor/usage/quota/limit" ||
                        path == "/api/biz/subscription/list" ||
                        path.contains("/api/monitor/usage"))) ||
                    (host == "chat.z.ai" &&
                        (path.contains("usage") ||
                            path.contains("quota") ||
                            path.contains("plan") ||
                            path.contains("subscription"))) ||
                    ((host == "z.ai" || host == "www.z.ai" || host == "chat.z.ai") &&
                        path.startsWith("/manage-apikey"))
            ProviderId.OPENCODE ->
                (host == "opencode.ai" || host == "www.opencode.ai") &&
                    !path.startsWith("/docs") &&
                    !path.startsWith("/brand") &&
                    (path == "/_server" ||
                        path.contains("usage") ||
                        path.contains("billing") ||
                        path.contains("credit") ||
                        path.contains("balance") ||
                        path.contains("subscription") ||
                        path.contains("console") ||
                        path.contains("zen") ||
                        path.contains("go"))
            ProviderId.CURSOR ->
                (host == "cursor.com" || host == "www.cursor.com") &&
                    (path == "/api/auth/stripe" ||
                        path == "/api/usage" ||
                        path == "/api/auth/usage" ||
                        path == "/api/usage-summary" ||
                        path == "/api/dashboard/get-credit-grants-balance")
            ProviderId.GROK ->
                (host == "grok.com" || host == "www.grok.com") &&
                    path == "/rest/rate-limits"
            ProviderId.KIMI ->
                (host == "kimi.com" || host == "www.kimi.com") &&
                    // path는 위에서 lowercase돼 있으므로 대문자를 포함한 오퍼레이션 경로는
                    // 반드시 대소문자 무시로 비교한다.
                    path.equals(
                        "/apiv2/kimi.gateway.membership.v2.MembershipService/GetSubscriptionStats",
                        ignoreCase = true
                    )
            ProviderId.KIRO ->
                host == "app.kiro.dev" &&
                    path.equals(KiroNativeUsageFetcher.USAGE_OPERATION_PATH, ignoreCase = true)
            ProviderId.GEMINI ->
                false
            ProviderId.COPILOT ->
                (host == "github.com" &&
                    (path == "/github-copilot/chat/entitlement" ||
                        path == "/github-copilot/chat/token" ||
                        path == "/copilot_internal/user")) ||
                    (host == "api.github.com" && path == "/copilot_internal/user")
            ProviderId.ANTIGRAVITY ->
                (host == "antigravity.google" || host == "www.antigravity.google") &&
                    (path.contains("usage") || path.contains("quota") || path.contains("plan"))
            else -> false
        }
    }

    fun shouldRunCollectorFromResource(providerId: ProviderId, pageUrl: String, resourceUrl: String): Boolean {
        if (ProviderAboutBlankCollectorPolicy.isEnabled(providerId) && pageUrl != "about:blank") {
            return false
        }
        return shouldRunCollectorOnResource(providerId, resourceUrl) &&
            (shouldRunCollector(providerId, pageUrl, emptyMap(), "") || isCodexChatGptRoot(providerId, pageUrl))
    }

    fun shouldAcceptCollectorPayload(providerId: ProviderId, pageUrl: String): Boolean {
        if (ProviderAboutBlankCollectorPolicy.isEnabled(providerId) && pageUrl == "about:blank") {
            return true
        }
        if (ProviderAboutBlankCollectorPolicy.isEnabled(providerId)) {
            return false
        }
        val uri = runCatching { URI(pageUrl) }.getOrNull() ?: return false
        val host = uri.host.orEmpty().lowercase(Locale.US)
        val path = uri.path.orEmpty().lowercase(Locale.US)
        return when (providerId) {
            ProviderId.CLAUDE ->
                host.endsWith("claude.ai") &&
                    !path.contains("login") &&
                    !path.contains("logout")
            ProviderId.CODEX ->
                (host == "chatgpt.com" || host.endsWith(".chatgpt.com") || host == "chat.openai.com") &&
                    path != "/auth/login"
            else -> shouldRunCollector(providerId, pageUrl, emptyMap(), "")
        }
    }

    fun shouldAcceptCollectorPayload(providerId: ProviderId, pageUrl: String, rawPayload: String): Boolean {
        if (!shouldAcceptCollectorPayload(providerId, pageUrl)) return false
        val payloadProvider = runCatching {
            JSONObject(rawPayload)
                .optString("provider")
                .trim()
                .lowercase(Locale.US)
        }.getOrDefault("")
        return payloadProvider == providerId.storageId
    }

    fun shouldAcceptCollectorError(providerId: ProviderId, pageUrl: String, rawError: String? = null): Boolean {
        if (isCodexChatGptRoot(providerId, pageUrl)) {
            return isTrustedRootAuthCollectorError(providerId, pageUrl, rawError)
        }
        return shouldAcceptCollectorPayload(providerId, pageUrl) ||
            isRefreshLoginPage(providerId, pageUrl) ||
            isTrustedRootAuthCollectorError(providerId, pageUrl, rawError)
    }

    private fun isTrustedRootAuthCollectorError(providerId: ProviderId, pageUrl: String, rawError: String?): Boolean {
        if (providerId != ProviderId.CODEX || rawError.isNullOrBlank()) return false
        val uri = runCatching { URI(pageUrl) }.getOrNull() ?: return false
        val host = uri.host.orEmpty().lowercase(Locale.US)
        val path = uri.path.orEmpty().lowercase(Locale.US)
        if ((host != "chatgpt.com" && !host.endsWith(".chatgpt.com")) || (path != "/" && path.isNotBlank())) return false
        val payloadProvider = runCatching {
            JSONObject(rawError)
                .optString("provider")
                .trim()
                .lowercase(Locale.US)
        }.getOrDefault("")
        if (payloadProvider != providerId.storageId) return false
        val errorKind = ProviderCollectorErrorPolicy.errorKind(rawError)
        return errorKind == "codex_auth_required" ||
            errorKind == "codex_usage_unavailable"
    }

    private fun isCodexChatGptRoot(providerId: ProviderId, pageUrl: String): Boolean {
        if (providerId != ProviderId.CODEX) return false
        val uri = runCatching { URI(pageUrl) }.getOrNull() ?: return false
        val host = uri.host.orEmpty().lowercase(Locale.US)
        val path = uri.path.orEmpty().lowercase(Locale.US)
        return (host == "chatgpt.com" || host.endsWith(".chatgpt.com") || host == "chat.openai.com") &&
            (path == "/" || path.isBlank())
    }

    fun build(
        providerId: ProviderId,
        cookies: Map<String, String>,
        geminiCollectorAsset: String,
        antigravityCollectorAsset: String = "",
        observedAccountId: String? = null,
        pageText: String = "",
        pageUrl: String = "",
        awaitInteractiveLoginUsage: Boolean = false,
        providerRequestHeaders: Map<String, String> = emptyMap()
    ): String {
        if (ProviderAboutBlankCollectorPolicy.isEnabled(providerId) && pageUrl != "about:blank") {
            return ""
        }
        val collectorScript = if (ProviderAboutBlankCollectorPolicy.isEnabled(providerId)) {
            when (providerId) {
                ProviderId.CLAUDE -> claudeAboutBlankApiPayload(
                    requestHeaders = providerRequestHeaders,
                    planStructureDebugCallbackEnabled = BuildConfig.DEBUG
                )
                ProviderId.CODEX -> codexAboutBlankJsonPayload(forceCollectorStart = awaitInteractiveLoginUsage)
                else -> nativeProviderPayload(providerId)
            }
        } else {
            ""
        }
        return common(providerId, cookies, observedAccountId, pageText, pageUrl, awaitInteractiveLoginUsage) + "\n" +
            collectorScript
    }

    internal fun commonForTest(
        providerId: ProviderId,
        cookies: Map<String, String>,
        observedAccountId: String?,
        pageText: String,
        pageUrl: String = "",
        awaitInteractiveLoginUsage: Boolean = false,
        nativeJsonBridgeEnabled: Boolean = ProviderAboutBlankCollectorPolicy.isEnabled(providerId)
    ): String = common(
        providerId,
        cookies,
        observedAccountId,
        pageText,
        pageUrl,
        awaitInteractiveLoginUsage,
        nativeJsonBridgeEnabled
    )

    private fun common(
        providerId: ProviderId,
        cookies: Map<String, String>,
        observedAccountId: String?,
        pageText: String,
        pageUrl: String,
        awaitInteractiveLoginUsage: Boolean,
        nativeJsonBridgeEnabled: Boolean = ProviderAboutBlankCollectorPolicy.isEnabled(providerId)
    ): String {
        val collectorCookies = when (providerId) {
            ProviderId.CLAUDE -> cookies.filterKeys { it == "lastActiveOrg" }
            else -> emptyMap()
        }
        val cookieJson = JSONObject(collectorCookies).toString()
        val observedAccountJson = JSONObject.quote(observedAccountId.orEmpty())
        val pageTextJson = JSONObject.quote(pageText)
        val pageUrlJson = JSONObject.quote(pageUrl)
        val awaitInteractiveLoginUsageJson = if (awaitInteractiveLoginUsage) "true" else "false"
        val nativeJsonBridgeEnabledJson = if (nativeJsonBridgeEnabled) "true" else "false"
        val fetchJsonScript = if (nativeJsonBridgeEnabled) {
            """
                 fetchJson: function(url) {
                   var href = "";
                   try { href = String(location && location.href || ""); } catch (error) {}
                   if (href !== "about:blank") {
                     return Promise.resolve({
                       ok: false,
                       status: 0,
                       url: url,
                       json: { error: "native_json_bridge_requires_about_blank" }
                     });
                   }
                   return this.fetchNativeJson(url);
                 }
            """.trimIndent()
        } else {
            """
                 fetchJson: function(url) {
                   return fetch(url, {
                     credentials: "include",
                     headers: { "accept": "application/json, text/html" }
                   }).then(function(response) {
                     return response.text().then(function(text) {
                       var json = {};
                       try { json = text ? JSON.parse(text) : {}; } catch (error) { json = { rawText: text }; }
                       return { ok: response.ok, status: response.status, url: url, json: json };
                     });
                   });
                  }
            """.trimIndent()
        }
        val pageScanHelpersScript = """
                 text: function() {
                   return "";
                 },
                 rows: function() {
                   return [];
                 }
            """.trimIndent()
        return """
            (function(){
              if (!window.__AIQuotaStartProviderCollector) {
                window.__AIQuotaStartProviderCollector = function(provider, force) {
                  var now = Date.now ? Date.now() : new Date().getTime();
                  var collectorStartTtlMs = 30000;
                  var href = "";
                  try { href = String(location && location.href || ""); } catch (error) {}
                  var state = window.__AIQuotaProviderCollectorState || {};
                  if (!force && state.provider === provider && state.href === href && now - (state.startedAt || 0) < collectorStartTtlMs) {
                    return false;
                  }
                  window.__AIQuotaProviderCollectorState = {
                    provider: provider,
                    startedAt: now,
                    href: href
                  };
                  return true;
                };
              }
              window.__AIQuotaCollector = {
                provider: "${providerId.storageId}",
                cookies: $cookieJson,
                observedAccountId: $observedAccountJson,
                pageText: $pageTextJson,
                pageUrl: $pageUrlJson,
                awaitInteractiveLoginUsage: $awaitInteractiveLoginUsageJson,
                post: function(payload) {
                  payload = payload || {};
                  payload.provider = payload.provider || "${providerId.storageId}";
                  payload.collectorMode = payload.collectorMode || "webview-js";
                  window.AIQuotaCollectorBridge.postUsagePayload(JSON.stringify(payload));
                },
                fail: function(kind, message) {
                  window.AIQuotaCollectorBridge.postCollectorError(JSON.stringify({
                    provider: "${providerId.storageId}",
                    errorKind: kind || "collector_error",
                    message: message || ""
                  }));
                },
                $fetchJsonScript,
                $pageScanHelpersScript,
                first: function(object, keys) {
                  if (!object) return null;
                  for (var index = 0; index < keys.length; index += 1) {
                    var key = keys[index];
                    if (Object.prototype.hasOwnProperty.call(object, key) && object[key] !== null && object[key] !== undefined && object[key] !== "") return object[key];
                  }
                  return null;
                },
                number: function(value) {
                  if (value === null || value === undefined || value === "") return null;
                  var parsed = Number(value);
                  return Number.isFinite(parsed) ? parsed : null;
                },
                 line: function(value, fallbackLabel) {
                  if (!value) return null;
                  var used = this.number(this.first(value, ["used_percent", "usedPercent", "totalPercentUsed", "utilization", "u"]));
                  var remainingFraction = this.number(this.first(value, ["remainingFraction", "remaining_fraction"]));
                  var remainingPercent = this.number(this.first(value, ["remaining_percent", "remainingPercent"]));
                  var amountRemaining = this.number(this.first(value, ["remaining", "remainingAmount", "remaining_amount", "balance"]));
                  var amountUsed = this.number(this.first(value, ["used", "usedAmount", "used_amount"]));
                  var amountLimit = this.number(this.first(value, ["limit", "limitAmount", "limit_amount", "total", "total_credits"]));
                  var line = {};
                  if (used !== null) line.used_percent = used;
                  if (remainingFraction !== null) line.remaining_fraction = remainingFraction;
                  if (remainingPercent !== null) line.remaining_percent = remainingPercent;
                  if (used === null && remainingFraction === null && remainingPercent === null && amountLimit !== null && amountLimit > 0) {
                    if (amountRemaining !== null) line.remaining_percent = (amountRemaining / amountLimit) * 100;
                    if (amountUsed !== null) line.used_percent = (amountUsed / amountLimit) * 100;
                  }
                  if (line.used_percent === undefined && line.remaining_fraction === undefined && line.remaining_percent === undefined) return null;
                  line.reset_text = this.first(value, ["reset_text", "resetText", "t"]);
                  line.resetAt = this.first(value, ["resetAt", "resets_at", "r"]);
                   line.label = this.first(value, ["label", "name", "title"]) || fallbackLabel;
                   return line;
                 },
                 fetchNativeJson: function(url) {
                   if (!$nativeJsonBridgeEnabledJson) return Promise.resolve({ ok: false, url: url, error: "native_bridge_disabled" });
                   try {
                     if (!window.AIQuotaCollectorBridge || !window.AIQuotaCollectorBridge.fetchProviderJson) {
                       return Promise.resolve({ ok: false, url: url, error: "native_bridge_missing" });
                     }
                     return Promise.resolve(JSON.parse(window.AIQuotaCollectorBridge.fetchProviderJson(url)));
                   } catch (error) {
                     return Promise.resolve({ ok: false, url: url, error: String(error && error.message || error) });
                   }
                 },
                 fetchNativeUsagePayload: function() {
                   if (!$nativeJsonBridgeEnabledJson) return Promise.resolve({ ok: false, error: "native_bridge_disabled" });
                   try {
                     if (!window.AIQuotaCollectorBridge || !window.AIQuotaCollectorBridge.fetchProviderUsagePayload) {
                       return Promise.resolve({ ok: false, error: "native_bridge_missing" });
                     }
                     return Promise.resolve(JSON.parse(window.AIQuotaCollectorBridge.fetchProviderUsagePayload()));
                   } catch (error) {
                     return Promise.resolve({ ok: false, error: String(error && error.message || error) });
                   }
                 }
               };
            })();
        """.trimIndent()
    }

    internal fun nativeProviderPayload(providerId: ProviderId, forceCollectorStart: Boolean = false): String {
        val provider = providerId.storageId
        val forceCollectorStartJson = if (forceCollectorStart) "true" else "false"
        return """
            (function(){
              if (!window.__AIQuotaStartProviderCollector || !window.__AIQuotaStartProviderCollector("$provider", $forceCollectorStartJson)) return;
              var c = window.__AIQuotaCollector;
              if (!c || !c.fetchNativeUsagePayload) return;
              c.fetchNativeUsagePayload().then(function(result) {
                if (result && result.ok && result.payload) {
                  result.payload.collectorMode = result.payload.collectorMode || "native-bridge";
                  c.post(result.payload);
                  return;
                }
                var diagnostic = result && (result.diagnostic || result.error) || "${provider}_native_usage_unavailable";
                c.fail(diagnostic, JSON.stringify(result || {}));
              }).catch(function(error) {
                c.fail("${provider}_native_usage_unavailable", String(error && error.message || error));
              });
            })();
        """.trimIndent()
    }

    internal fun claudeAboutBlankApiPayload(
        requestHeaders: Map<String, String> = emptyMap(),
        planStructureDebugCallbackEnabled: Boolean = BuildConfig.DEBUG
    ): String {
        val requestHeadersJson = JSONObject().also { json ->
            requestHeaders.forEach { (name, value) ->
                if (name.isNotBlank() && value.isNotBlank()) json.put(name, value)
            }
        }.toString()
        return """
            (function(){
              if (!window.__AIQuotaStartProviderCollector || !window.__AIQuotaStartProviderCollector("claude")) return;
              var c = window.__AIQuotaCollector;
              if (!c) return;
              var replayHeaders = $requestHeadersJson;
              var planStructureDebugCallbackEnabled = $planStructureDebugCallbackEnabled;
              var maxAttempts = 4;
              var retryDelayMs = 2500;
              function first(object, keys) {
                if (!object || typeof object !== "object") return null;
                for (var index = 0; index < keys.length; index += 1) {
                  var key = keys[index];
                  if (Object.prototype.hasOwnProperty.call(object, key) && object[key] !== null && object[key] !== undefined && object[key] !== "") {
                    return object[key];
                  }
                }
                return null;
              }
              function orgFromText(text) {
                var apiMatch = /\/api\/organizations\/([^\/?#]+)/.exec(text || "");
                if (apiMatch && apiMatch[1]) return normalizeClaudeOrgId(apiMatch[1]);
                var orgMatch = /org[_-][A-Za-z0-9_-]+/.exec(text || "");
                return orgMatch ? orgMatch[0] : null;
              }
              function normalizeClaudeOrgId(value) {
                var text = String(value || "").trim();
                if (!text || text === "discoverable") return null;
                if (/^org[_-][A-Za-z0-9_-]+$/.test(text)) return text;
                if (/^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$/.test(text)) return text;
                if (/^[0-9]+$/.test(text)) return text;
                if (/^[A-Za-z0-9_-]{8,}$/.test(text) && text.indexOf(" ") < 0 && text.indexOf("'") < 0) return text;
                return null;
              }
              function isNumericClaudeOrgId(value) {
                return /^[0-9]+$/.test(String(value || ""));
              }
              function preferClaudeOrg(current, candidate) {
                var normalized = normalizeClaudeOrgId(candidate);
                if (!normalized) return current || null;
                if (!current || (isNumericClaudeOrgId(current) && !isNumericClaudeOrgId(normalized))) return normalized;
                return current;
              }
              function pickOrg(value, depth) {
                if (!value || depth > 7) return null;
                if (typeof value === "string") return orgFromText(value);
                if (Array.isArray(value)) {
                  var arrayPicked = null;
                  for (var i = 0; i < value.length; i += 1) {
                    arrayPicked = preferClaudeOrg(arrayPicked, pickOrg(value[i], depth + 1));
                  }
                  return arrayPicked;
                }
                if (typeof value === "object") {
                  var direct = first(value, [
                    "uuid",
                    "organization_uuid",
                    "organizationUuid",
                    "organization_id",
                    "organizationId",
                    "org_uuid",
                    "orgUuid",
                    "account_uuid",
                    "accountUuid",
                    "workspace_id",
                    "workspaceId",
                    "id"
                  ]);
                  var picked = normalizeClaudeOrgId(direct);
                  var keys = Object.keys(value);
                  for (var keyIndex = 0; keyIndex < keys.length; keyIndex += 1) {
                    picked = preferClaudeOrg(picked, pickOrg(value[keys[keyIndex]], depth + 1));
                  }
                  return picked || orgFromText(JSON.stringify(value));
                }
                return null;
              }
              function firstString(value, keys, depth) {
                if (!value || depth > 7) return null;
                if (typeof value === "string") return value.length > 0 && value.length < 160 ? value : null;
                if (Array.isArray(value)) {
                  for (var index = 0; index < value.length; index += 1) {
                    var arrayResult = firstString(value[index], keys, depth + 1);
                    if (arrayResult) return arrayResult;
                  }
                  return null;
                }
                if (typeof value === "object") {
                  var direct = first(value, keys);
                  if (typeof direct === "string" && direct.length > 0 && direct.length < 160) return direct;
                  var objectKeys = Object.keys(value);
                  for (var keyIndex = 0; keyIndex < objectKeys.length; keyIndex += 1) {
                    var childResult = firstString(value[objectKeys[keyIndex]], keys, depth + 1);
                    if (childResult) return childResult;
                  }
                }
                return null;
              }
              function usageObject(value, depth) {
                if (!value || typeof value !== "object" || depth > 7) return null;
                if (hasClaudeUsagePayload(value)) return value.usage || value;
                if (Array.isArray(value)) {
                  for (var index = 0; index < value.length; index += 1) {
                    var arrayUsage = usageObject(value[index], depth + 1);
                    if (arrayUsage) return arrayUsage;
                  }
                  return null;
                }
                var keys = Object.keys(value);
                for (var keyIndex = 0; keyIndex < keys.length; keyIndex += 1) {
                  var childUsage = usageObject(value[keys[keyIndex]], depth + 1);
                  if (childUsage) return childUsage;
                }
                return null;
              }
              function hasClaudeUsagePayload(value) {
                if (!value || typeof value !== "object") return false;
                if (value.usage ||
                  value.five_hour || value.fiveHour ||
                  value.seven_day || value.sevenDay ||
                  value.seven_day_omelette || value.sevenDayOmelette ||
                  value.session || value.weekly ||
                  value.weekly_opus || value.weeklyOpus || value.opus_weekly || value.opusWeekly || value.opus ||
                  value.weekly_sonnet || value.weeklySonnet || value.sonnet_weekly || value.sonnetWeekly || value.sonnet ||
                  value.weekly_cowork || value.weeklyCowork || value.cowork_weekly || value.coworkWeekly || value.cowork ||
                  value.weekly_design || value.weeklyDesign || value.design_weekly || value.designWeekly || value.design ||
                  value.models || value.model_usage || value.modelUsage || value.model_limits || value.modelLimits ||
                  value.limits || value.quotas || value.quotaBuckets || value.quota_buckets || value.buckets || value.windows) {
                  return true;
                }
                return false;
              }
              function fetchClaudeJson(url) {
                if (typeof fetch !== "function") {
                  return Promise.resolve({ ok: false, status: 0, url: url, error: "fetch_missing" });
                }
                function claudeRequestHeaders() {
                  var headers = { "accept": "application/json" };
                  Object.keys(replayHeaders || {}).forEach(function(name) {
                    var value = replayHeaders[name];
                    if (value) headers[name] = value;
                  });
                  return headers;
                }
                var controller = null;
                var timer = null;
                try {
                  if (typeof AbortController !== "undefined") {
                    controller = new AbortController();
                    timer = setTimeout(function(){ controller.abort(); }, 8000);
                  }
                } catch (error) {}
                return fetch(url, {
                  credentials: "include",
                  headers: claudeRequestHeaders(),
                  signal: controller ? controller.signal : undefined
                }).then(function(response) {
                  return response.text().then(function(text) {
                    var json = null;
                    try { json = text ? JSON.parse(text) : {}; } catch (error) {}
                    return { ok: response.ok, status: response.status, url: url, json: json, bodyPresent: !!(text && text.length) };
                  });
                }).catch(function(error) {
                  return { ok: false, status: 0, url: url, error: String(error && (error.name || error.message) || error) };
                }).then(function(result) {
                  if (timer) clearTimeout(timer);
                  return result;
                });
              }
              function statusSummary(results) {
                var summary = {};
                Object.keys(results).forEach(function(key) {
                  var value = results[key] || {};
                  summary[key] = {
                    ok: !!value.ok,
                    status: value.status || 0,
                    bodyPresent: !!value.bodyPresent,
                    error: value.error || null
                  };
                });
                return summary;
              }
              var claudePlanStructureContainerKeys = [
                "subscription",
                "subscription_details",
                "subscriptionDetails",
                "billing",
                "plan_info",
                "planInfo"
              ];
              var claudePlanStructureFieldKeys = [
                "plan",
                "plan_name",
                "planName",
                "plan_type",
                "planType",
                "subscription_plan",
                "subscriptionPlan",
                "tier",
                "membershipType",
                "product_name",
                "productName"
              ];
              function claudePlanStructureJsonType(value) {
                if (value === undefined) return "missing";
                if (value === null) return "null";
                if (Array.isArray(value)) return "array";
                return typeof value === "object" ? "object" : typeof value;
              }
              function claudePlanStructurePropertyRecord(pathId, object, key) {
                var present = !!object && typeof object === "object" && !Array.isArray(object) &&
                  Object.prototype.hasOwnProperty.call(object, key);
                return {
                  pathId: pathId,
                  jsonType: present ? claudePlanStructureJsonType(object[key]) : "missing",
                  present: present
                };
              }
              function postClaudeSubscriptionDetailsPlanStructure(source) {
                if (!planStructureDebugCallbackEnabled || !c.postClaudeSubscriptionDetailsPlanStructure) return;
                var rootPresent = source !== null && source !== undefined;
                var rootIsObject = !!source && typeof source === "object" && !Array.isArray(source);
                var paths = [{
                  pathId: "root",
                  jsonType: claudePlanStructureJsonType(source),
                  present: rootPresent
                }];
                claudePlanStructureFieldKeys.forEach(function(field) {
                  paths.push(claudePlanStructurePropertyRecord("root." + field, rootIsObject ? source : null, field));
                });
                claudePlanStructureContainerKeys.forEach(function(container) {
                  var containerRecord = claudePlanStructurePropertyRecord(container, rootIsObject ? source : null, container);
                  paths.push(containerRecord);
                  claudePlanStructureFieldKeys.forEach(function(field) {
                    paths.push(claudePlanStructurePropertyRecord(
                      container + "." + field,
                      containerRecord.present ? source[container] : null,
                      field
                    ));
                  });
                });
                c.postClaudeSubscriptionDetailsPlanStructure(JSON.stringify({
                  routeId: "claude_subscription_details",
                  rootJsonType: claudePlanStructureJsonType(source),
                  rootPresent: rootPresent,
                  rootKeyCount: rootIsObject ? Object.keys(source).length : 0,
                  requestCountDelta: 0,
                  paths: paths
                }));
              }
              function isRejectedClaudePlanValue(value) {
                var text = String(value || "").trim();
                var compact = text.toLowerCase().replace(/[^a-z0-9]+/g, "");
                return !text
                  || /^\d{4}[-/]\d{1,2}[-/]\d{1,2}(?:[T\s].*)?$/.test(text)
                  || /\b(jan(uary)?|feb(ruary)?|mar(ch)?|apr(il)?|may|jun(e)?|jul(y)?|aug(ust)?|sep(t|tember)?|oct(ober)?|nov(ember)?|dec(ember)?)\.?\s+\d{1,2},?\s+\d{4}\b/i.test(text)
                  || /\b(reset|resets|renew|renews|renewal|billing\s*(window|period|cycle))\b/i.test(text)
                  || /^\d+(?:[.,]\d+)?$/.test(text)
                  || compact === "unknown"
                  || compact === "claudeunknown";
              }
              function firstClaudePlanValue(json, keys) {
                for (var i = 0; i < keys.length; i++) {
                  var values = [];
                  collectClaudePlanValues(json, keys[i], 0, values);
                  for (var valueIndex = 0; valueIndex < values.length; valueIndex++) {
                    if (!isRejectedClaudePlanValue(values[valueIndex])) return values[valueIndex];
                  }
                }
                return null;
              }
              function collectClaudePlanValues(value, key, depth, values) {
                if (!value || depth > 7) return;
                if (Array.isArray(value)) {
                  for (var index = 0; index < value.length; index++) {
                    collectClaudePlanValues(value[index], key, depth + 1, values);
                  }
                  return;
                }
                if (typeof value !== "object") return;
                var direct = value[key];
                if (typeof direct === "string" && direct.length > 0 && direct.length < 160) values.push(direct);
                Object.keys(value).forEach(function(childKey) {
                  collectClaudePlanValues(value[childKey], key, depth + 1, values);
                });
              }
              function probeClaudeSession() {
                var results = {};
                return fetchClaudeJson("https://claude.ai/api/organizations").then(function(organizations) {
                  results.organizations = organizations;
                  return fetchClaudeJson("https://claude.ai/api/account_profile");
                }).then(function(accountProfile) {
                  results.accountProfile = accountProfile;
                  return fetchClaudeJson("https://claude.ai/api/organizations/me");
                }).then(function(organizationsMe) {
                  results.organizationsMe = organizationsMe;
                  var orgId = preferClaudeOrg(
                    preferClaudeOrg(pickOrg(results.organizations && results.organizations.json, 0), pickOrg(results.organizationsMe && results.organizationsMe.json, 0)),
                    pickOrg(results.accountProfile && results.accountProfile.json, 0)
                  );
                  orgId = preferClaudeOrg(orgId, c.cookies && c.cookies.lastActiveOrg);
                  if (!orgId) {
                    return { ok: false, diagnostic: "claude_organization_unavailable", statuses: statusSummary(results) };
                  }
                  var encodedOrgId = encodeURIComponent(orgId);
                  return fetchClaudeJson("https://claude.ai/api/organizations/" + encodedOrgId + "/subscription_details").then(function(subscription) {
                    results.subscription = subscription;
                    postClaudeSubscriptionDetailsPlanStructure(subscription && subscription.json);
                    return fetchClaudeJson("https://claude.ai/api/organizations/" + encodedOrgId + "/usage");
                  }).then(function(usage) {
                    results.usage = usage;
                    var usagePayload = usageObject(usage && usage.json, 0);
                    if (!usage.ok || !usagePayload) {
                      return { ok: false, diagnostic: "claude_usage_unavailable", statuses: statusSummary(results) };
                    }
                    return {
                      ok: true,
                      payload: {
                        provider: "claude",
                        collectorMode: "aboutblank-js-fetch",
                        account: firstString(results.accountProfile && results.accountProfile.json, ["email", "account_email", "accountEmail", "user_email", "userEmail"], 0),
                        plan: firstClaudePlanValue(results.subscription && results.subscription.json, ["plan", "plan_type", "planType", "plan_name", "planName", "subscription_plan", "subscriptionPlan", "subscription_type", "subscriptionType", "tier", "sku", "name", "display_name", "displayName", "title"]),
                        organizationId: orgId,
                        usage: usagePayload
                      }
                    };
                  });
                });
              }
              function runProbe(attempt) {
                probeClaudeSession().then(function(result) {
                  if (result && result.ok && result.payload && hasClaudeUsagePayload(result.payload.usage)) {
                    c.post(result.payload);
                    return;
                  }
                  if (attempt < maxAttempts) {
                    setTimeout(function(){ runProbe(attempt + 1); }, retryDelayMs);
                    return;
                  }
                  c.fail(result && result.diagnostic || "claude_usage_unavailable", JSON.stringify({ statuses: result && result.statuses || {} }));
                }).catch(function(error) {
                  if (attempt < maxAttempts) {
                    setTimeout(function(){ runProbe(attempt + 1); }, retryDelayMs);
                    return;
                  }
                  c.fail("claude_usage_unavailable", String(error && error.message || error));
                });
              }
              setTimeout(function(){ runProbe(1); }, 300);
            })();
        """.trimIndent()
    }

    internal fun codexAboutBlankJsonPayload(forceCollectorStart: Boolean = false): String {
        val forceCollectorStartJson = if (forceCollectorStart) "true" else "false"
        return """
            (function(){
              if (!window.__AIQuotaStartProviderCollector || !window.__AIQuotaStartProviderCollector("codex", $forceCollectorStartJson)) return;
              var c = window.__AIQuotaCollector;
              if (!c) return;
              c.fetchNativeUsagePayload().then(function(parsed) {
                 if (parsed && parsed.ok && parsed.payload) {
                   parsed.payload.collectorMode = parsed.payload.collectorMode || "native-bridge";
                   c.post(parsed.payload);
                   return;
                 }
                 c.fail(parsed && (parsed.diagnostic || parsed.error) || "codex_usage_unavailable", JSON.stringify(parsed || {}));
              }).catch(function(error) {
                c.fail("codex_usage_unavailable", String(error && error.message || error));
              });
            })();
        """.trimIndent()
    }

}
