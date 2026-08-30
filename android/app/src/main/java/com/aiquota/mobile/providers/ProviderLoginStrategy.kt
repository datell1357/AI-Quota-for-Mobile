package com.aiquota.mobile.providers

import com.aiquota.mobile.local.ProviderId
import java.net.URI
import java.util.Locale

object ProviderLoginStrategy {
    const val CODEX_CALLBACK_RECOVERY_URL = "https://chatgpt.com/codex/cloud/settings/analytics#usage"

    fun isLoginComplete(
        providerId: ProviderId,
        url: String,
        cookies: Map<String, String>,
        pageText: String
    ): Boolean {
        return when (providerId) {
            ProviderId.CLAUDE ->
                false
            ProviderId.CODEX ->
                false
            ProviderId.GLM ->
                false
            ProviderId.OPENCODE ->
                false
            ProviderId.GEMINI ->
                false
            ProviderId.COPILOT ->
                false
            ProviderId.ANTIGRAVITY ->
                false
            ProviderId.CURSOR ->
                false
            ProviderId.GROK ->
                false
            ProviderId.KIMI ->
                false
            ProviderId.KIRO ->
                false
        }
    }

    fun shouldRecoverCodexLocalAuthCallback(url: String): Boolean {
        val uri = runCatching { URI(url) }.getOrNull() ?: return false
        val host = uri.host.orEmpty().lowercase(Locale.US)
        val path = uri.path.orEmpty()
        if (host != "localhost" && host != "127.0.0.1") return false
        if (uri.port != 1455 || path != "/auth/callback") return false
        val query = uri.query.orEmpty()
        return query.contains("code=") || query.contains("error=")
    }

    fun isInteractiveLoginSessionReached(providerId: ProviderId, url: String): Boolean {
        if (providerId != ProviderId.GEMINI && providerId != ProviderId.ANTIGRAVITY) return false
        val uri = runCatching { URI(url) }.getOrNull() ?: return false
        val host = uri.host.orEmpty().lowercase(Locale.US)
        val rawQuery = uri.rawQuery.orEmpty()
        if (rawQuery.contains("up.signed_in=yes")) return true
        if (host == "play.google.com" &&
            uri.path.orEmpty() == "/log" &&
            rawQuery.contains("auth=SAPISID")
        ) {
            return true
        }
        return false
    }

    fun shouldFinishOnInteractiveLoginSessionReached(providerId: ProviderId): Boolean {
        return providerId == ProviderId.ANTIGRAVITY
    }

    fun shouldStartClaudeNativeCollection(url: String): Boolean {
        val uri = runCatching { URI(url) }.getOrNull() ?: return false
        if (!uri.scheme.equals("https", ignoreCase = true)) return false
        val host = uri.host.orEmpty().lowercase(Locale.US)
        if (!isClaudeHost(host)) return false
        val path = uri.path.orEmpty().lowercase(Locale.US)
        return path == "/new" || path.startsWith("/chat/")
    }

    fun shouldStartClaudeNativeCollectionFromResource(url: String): Boolean {
        val uri = runCatching { URI(url) }.getOrNull() ?: return false
        if (!uri.scheme.equals("https", ignoreCase = true)) return false
        val host = uri.host.orEmpty().lowercase(Locale.US)
        if (!isClaudeHost(host)) return false
        val path = uri.path.orEmpty().lowercase(Locale.US)
        if (!path.startsWith("/api/organizations/")) return false
        val organizationId = path.removePrefix("/api/organizations/").substringBefore("/")
        return organizationId.isNotBlank() && organizationId != "discoverable"
    }

    fun shouldRedirectCopilotToSettings(url: String, pageText: String): Boolean {
        val uri = runCatching { URI(url) }.getOrNull() ?: return false
        val host = uri.host.orEmpty().lowercase(Locale.US)
        if (host != "github.com" && host != "www.github.com") return false
        val path = uri.path.orEmpty().lowercase(Locale.US)
        if (path.startsWith("/login") ||
            path.startsWith("/sessions") ||
            path.startsWith("/session") ||
            path.contains("two-factor") ||
            path.startsWith("/settings/copilot") ||
            path.startsWith("/github-copilot")
        ) {
            return false
        }
        if (path == "/" || path == "/dashboard") return true
        val text = pageText.lowercase(Locale.US)
        val signedInHome = text.contains("dashboard") &&
            (text.contains("top repositories") || text.contains("pull requests") || text.contains("new repository"))
        return signedInHome && !text.contains("sign in to github")
    }

    fun shouldStartCopilotNativeCollection(url: String): Boolean {
        val uri = runCatching { URI(url) }.getOrNull() ?: return false
        val host = uri.host.orEmpty().lowercase(Locale.US)
        if (host != "github.com" && host != "www.github.com") return false
        val path = uri.path.orEmpty().lowercase(Locale.US)
        if (path.startsWith("/login") ||
            path.startsWith("/sessions") ||
            path.startsWith("/session") ||
            path.contains("two-factor")
        ) {
            return false
        }
        return path.startsWith("/settings/copilot") ||
            path.startsWith("/settings/billing/premium_requests_usage") ||
            path.startsWith("/github-copilot")
    }

    fun isTransientNavigationError(url: String, errorCode: Int): Boolean {
        val uri = runCatching { URI(url) }.getOrNull()
        val host = uri?.host.orEmpty().lowercase(Locale.US)
        if (errorCode == 0) return false
        return host == "localhost" ||
            host == "127.0.0.1" ||
            isGoogleAccountHost(host) ||
            host.endsWith("accounts.youtube.com") ||
            host.endsWith("google.com") ||
            host.endsWith("gstatic.com") ||
            host.endsWith("gemini.google.com") ||
            host.endsWith("github.com") ||
            host.endsWith("githubassets.com") ||
            (uri?.scheme.equals("https", ignoreCase = true) && host == "auth.openai.com") ||
            (uri?.scheme.equals("https", ignoreCase = true) && isCodexHost(host)) ||
            host.endsWith("z.ai") ||
            host.endsWith("api.z.ai") ||
            host.endsWith("opencode.ai") ||
            isClaudeHost(host) ||
            host.endsWith("antigravity.google") ||
            host.endsWith("cursor.com") ||
            host.endsWith("cursor.sh") ||
            host.endsWith("workos.com")
    }

    private fun isGoogleAccountHost(host: String): Boolean {
        return GOOGLE_ACCOUNT_HOST.matches(host)
    }

    internal fun isCodexHost(host: String): Boolean {
        return host == "chatgpt.com" || host == "mobile.chatgpt.com" || host == "chat.openai.com"
    }

    internal fun isClaudeHost(host: String): Boolean {
        return host == "claude.ai" || host == "www.claude.ai"
    }

    fun isBlockingHttpError(url: String, statusCode: Int): Boolean {
        val host = runCatching { URI(url).host.orEmpty().lowercase(Locale.US) }.getOrDefault("")
        if (statusCode < 400) return false
        if (isClaudeHost(host)) return false
        if (host == "authenticator.cursor.sh" && (statusCode == 401 || statusCode == 403)) return false
        return host.isNotBlank()
    }

    fun shouldKeepCodexLoginOpenForHttpError(url: String, statusCode: Int): Boolean {
        if (statusCode != 403) return false
        val uri = runCatching { URI(url) }.getOrNull() ?: return false
        if (!uri.scheme.equals("https", ignoreCase = true)) return false
        val host = uri.host.orEmpty().lowercase(Locale.US)
        if (host != "chatgpt.com") return false
        val path = uri.path.orEmpty().lowercase(Locale.US)
        return path.startsWith("/auth") ||
            path.startsWith("/api/auth") ||
            path.startsWith("/cdn-cgi/challenge-platform")
    }

    private val GOOGLE_ACCOUNT_HOST =
        Regex("""^accounts\.google\.(?:com|[a-z]{2}|co\.[a-z]{2}|com\.[a-z]{2})$""")
}
