package com.aiquota.mobile.providers

import com.aiquota.mobile.local.ProviderConnectionState
import com.aiquota.mobile.local.ProviderId
import java.net.URI

object ProviderWebSessionClearPolicy {
    fun shouldClearBeforeLogin(providerId: ProviderId, connectionState: ProviderConnectionState?): Boolean {
        if (connectionState != ProviderConnectionState.INTERACTIVE_AUTH_REQUIRED) return false
        return providerId == ProviderId.CURSOR || providerId == ProviderId.GEMINI
    }

    fun shouldClearOnDisconnect(providerId: ProviderId): Boolean {
        return ProviderId.entries.contains(providerId)
    }

    /**
     * 연결이 유지되는 것으로 볼 상태. 이 상태의 provider가 쓰는 로그인 IdP 세션은
     * 다른 provider를 끊을 때 보존한다. 재인증 대기(INTERACTIVE_AUTH_REQUIRED)와
     * 연결 중(CONNECTING)도 사용자가 그 provider를 계속 쓰는 상태라 보존 대상이다.
     */
    fun retainsSharedIdentity(connectionState: ProviderConnectionState?): Boolean {
        return connectionState != null &&
            connectionState != ProviderConnectionState.DISCONNECTED &&
            connectionState != ProviderConnectionState.NOT_CONNECTED
    }

    /**
     * 연결 해제 시 만료시킬 쿠키 URL.
     *
     * 앱의 모든 provider가 WebView 쿠키 저장소 하나를 공유하므로, GitHub·Google·Apple 같은
     * 로그인 IdP 도메인을 지우면 그 IdP로 로그인한 다른 provider까지 함께 로그아웃된다.
     * 그래서 IdP 도메인은 [retainedProviders]에 그 IdP를 쓰는 provider가 하나도 없을 때만
     * 지운다. provider 고유 도메인은 항상 지운다.
     */
    fun cookieUrls(
        providerId: ProviderId,
        retainedProviders: Collection<ProviderId> = emptyList()
    ): List<String> {
        val retainedIdentities = retainedProviders
            .filterNot { it == providerId }
            .flatMap(::loginIdentities)
            .toSet()
        val clearableIdentities = clearableIdentities(providerId) - retainedIdentities
        return ownCookieUrls(providerId) +
            clearableIdentities.flatMap { identity -> sharedIdentityUrls(providerId, identity) }
    }

    /** provider 고유 세션 도메인. Copilot은 GitHub 세션이 곧 자기 세션이라 고유 도메인이 없다. */
    private fun ownCookieUrls(providerId: ProviderId): List<String> {
        return when (providerId) {
            ProviderId.CLAUDE -> listOf(
                "https://claude.ai",
                "https://claude.ai/",
                "https://www.claude.ai",
                "https://www.claude.ai/"
            )
            ProviderId.CODEX -> listOf(
                "https://chatgpt.com",
                "https://chatgpt.com/auth/login",
                "https://chatgpt.com/api/auth/session",
                "https://chatgpt.com/backend-api/me",
                "https://chatgpt.com/backend-api/accounts/check/v4-2023-04-27",
                "https://chatgpt.com/codex/cloud/settings/analytics",
                "https://chatgpt.com/codex/settings/usage",
                "https://ws.chatgpt.com",
                "https://sentinel.openai.com",
                "https://oaistatic.com",
                "https://chat.openai.com",
                "https://auth.openai.com",
                "https://auth.openai.com/authorize",
                "https://auth.openai.com/u/login"
            )
            ProviderId.GEMINI -> listOf("https://gemini.google.com")
            ProviderId.COPILOT -> emptyList()
            ProviderId.ANTIGRAVITY -> listOf(
                "https://antigravity.google",
                "https://www.antigravity.google"
            )
            ProviderId.CURSOR -> listOf(
                "https://cursor.com",
                "https://www.cursor.com",
                "https://cursor.sh",
                "https://api2.cursor.sh",
                "https://authenticate.cursor.sh",
                "https://authenticator.cursor.sh",
                "https://api.workos.com",
                "https://auth.workos.com",
                "https://workos.com"
            )
            ProviderId.GLM -> GLM_COOKIE_URLS
            ProviderId.OPENCODE -> listOf(
                "https://opencode.ai",
                "https://opencode.ai/auth",
                "https://www.opencode.ai",
                "https://auth.opencode.ai"
            )
            ProviderId.GROK -> listOf(
                "https://grok.com",
                "https://www.grok.com",
                "https://auth.grok.com",
                "https://accounts.x.ai",
                "https://x.ai"
            )
            ProviderId.KIMI -> listOf(
                "https://kimi.com",
                "https://www.kimi.com"
            )
            // Kiro 전용 Cognito 호스트는 Kiro 세션의 일부라 고유 도메인으로 포함한다.
            ProviderId.KIRO -> listOf(
                "https://app.kiro.dev",
                "https://kiro.dev",
                "https://www.kiro.dev",
                "https://prod.us-east-1.auth.desktop.kiro.dev",
                "https://kiro-prod-us-east-1.auth.us-east-1.amazoncognito.com"
            )
        }
    }

    /** provider가 로그인에 쓰는 공유 IdP. 연결돼 있는 동안 이 세션은 보존 대상이다. */
    private fun loginIdentities(providerId: ProviderId): Set<SharedIdentity> {
        return when (providerId) {
            ProviderId.CLAUDE,
            ProviderId.GEMINI,
            ProviderId.ANTIGRAVITY,
            ProviderId.GLM -> setOf(SharedIdentity.GOOGLE)
            ProviderId.CODEX,
            ProviderId.GROK,
            ProviderId.KIMI -> setOf(SharedIdentity.GOOGLE, SharedIdentity.APPLE)
            ProviderId.COPILOT -> setOf(SharedIdentity.GITHUB)
            ProviderId.CURSOR,
            ProviderId.OPENCODE -> setOf(SharedIdentity.GOOGLE, SharedIdentity.GITHUB)
            // Kiro는 GitHub·Google·AWS Builder ID로 로그인하므로 연결된 동안 두 IdP를 보존한다.
            ProviderId.KIRO -> setOf(SharedIdentity.GOOGLE, SharedIdentity.GITHUB)
        }
    }

    /**
     * 연결 해제 시 지울 수 있는 공유 IdP. Kiro는 자체 세션 쿠키만 지워도 연결이 끊기므로
     * IdP에 손대지 않는다(2026-07-31 기기 실측으로 확인).
     */
    private fun clearableIdentities(providerId: ProviderId): Set<SharedIdentity> {
        return when (providerId) {
            ProviderId.KIRO -> emptySet()
            else -> loginIdentities(providerId)
        }
    }

    /** GLM은 Google SSO 진입 도메인 2개만 쓰므로 지우는 범위도 그만큼으로 제한한다. */
    private fun sharedIdentityUrls(providerId: ProviderId, identity: SharedIdentity): List<String> {
        return when (identity) {
            SharedIdentity.GOOGLE ->
                if (providerId == ProviderId.GLM) GLM_GOOGLE_SSO_COOKIE_URLS else GOOGLE_AUTH_COOKIE_URLS
            SharedIdentity.GITHUB -> GITHUB_AUTH_COOKIE_URLS
            SharedIdentity.APPLE -> APPLE_AUTH_COOKIE_URLS
        }
    }

    private enum class SharedIdentity { GOOGLE, GITHUB, APPLE }

    fun googleAuthCookieUrls(): List<String> = GOOGLE_AUTH_COOKIE_URLS

    fun storageOrigins(
        providerId: ProviderId,
        retainedProviders: Collection<ProviderId> = emptyList()
    ): List<String> {
        return cookieUrls(providerId, retainedProviders)
    }

    fun browserStorageCleanupUrls(providerId: ProviderId): List<String> {
        return when (providerId) {
            ProviderId.GLM -> GLM_BROWSER_STORAGE_CLEANUP_URLS
            else -> emptyList()
        }
    }

    fun expiringCookieHeaders(
        cookieHeader: String?,
        url: String? = null,
        includeSharedGoogleIdentityParent: Boolean = false
    ): List<String> {
        if (cookieHeader.isNullOrBlank()) return emptyList()
        val domainVariants = cookieDomainVariants(url, includeSharedGoogleIdentityParent)
        val pathVariants = cookiePathVariants(url)
        return cookieHeader
            .split(";")
            .mapNotNull { cookie ->
                val name = cookie.trim().substringBefore("=").trim()
                name.takeIf { it.isNotBlank() && !it.contains(" ") }
            }
            .distinct()
            .flatMap { name ->
                pathVariants.flatMap { path ->
                    val base = "$name=; Max-Age=0; Expires=Thu, 01 Jan 1970 00:00:00 GMT; Path=$path"
                    val hostOnly = listOf(base, "$base; Secure")
                    val domainScoped = domainVariants.flatMap { domain ->
                        listOf("$base; Domain=$domain", "$base; Domain=$domain; Secure")
                    }
                    hostOnly + domainScoped
                }
            }
    }

    private fun cookiePathVariants(url: String?): List<String> {
        val path = runCatching { URI(url.orEmpty()).path.orEmpty() }.getOrDefault("")
        val segments = path.split("/").filter { it.isNotBlank() }
        if (segments.isEmpty()) return listOf("/")

        val paths = mutableListOf("/")
        var current = ""
        segments.forEach { segment ->
            current += "/$segment"
            paths += current
        }
        return paths.distinct()
    }

    private fun cookieDomainVariants(url: String?, includeSharedGoogleIdentityParent: Boolean): List<String> {
        val host = runCatching { URI(url.orEmpty()).host.orEmpty().lowercase() }.getOrDefault("")
        if (host.isBlank() || host == "localhost" || host == "127.0.0.1") return emptyList()
        val domains = mutableListOf(host, ".$host")
        parentCookieDomain(host)
            ?.takeUnless { !includeSharedGoogleIdentityParent && isSharedGoogleIdentityParent(host, it) }
            ?.let { parent ->
            domains += parent
            domains += ".$parent"
        }
        return domains.distinct()
    }

    private fun isSharedGoogleIdentityParent(host: String, parent: String): Boolean {
        return parent == "google.com" && host != parent
    }

    private fun parentCookieDomain(host: String): String? {
        val labels = host.split(".").filter { it.isNotBlank() }
        if (labels.size < 3) return null
        val lastTwo = labels.takeLast(2).joinToString(".")
        return if (lastTwo in SECOND_LEVEL_PUBLIC_SUFFIXES && labels.size >= 4) {
            labels.takeLast(3).joinToString(".")
        } else {
            lastTwo
        }
    }

    private val SECOND_LEVEL_PUBLIC_SUFFIXES = setOf(
        "co.kr",
        "co.uk",
        "com.au",
        "com.br",
        "com.cn",
        "com.tw",
        "co.jp"
    )

    private val GOOGLE_AUTH_COOKIE_URLS = listOf(
        "https://accounts.google.com",
        "https://myaccount.google.com",
        "https://google.com",
        "https://www.google.com",
        "https://oauth2.googleapis.com",
        "https://accounts.youtube.com",
        "https://play.google.com"
    )

    private val GLM_COOKIE_URLS = listOf(
        "https://z.ai",
        "https://www.z.ai",
        GlmProviderUrls.WEB_LOGIN_URL,
        GlmProviderUrls.WEB_OAUTH_URL,
        GlmProviderUrls.WEB_USAGE_URL,
        "https://z.ai/manage-apikey",
        "https://z.ai/manage-apikey/coding-plan",
        "https://z.ai/manage-apikey/coding-plan/personal",
        "https://z.ai/manage-apikey/subscription",
        "https://chat.z.ai",
        "https://api.z.ai",
        GlmProviderUrls.API_QUOTA_URL,
        "https://api.z.ai/api/biz/subscription/list",
        "https://auth.z.ai",
        "https://login.z.ai",
        "https://accounts.z.ai",
        "https://account.z.ai"
    )

    private val GLM_GOOGLE_SSO_COOKIE_URLS = listOf(
        "https://accounts.google.com",
        "https://myaccount.google.com"
    )

    private val GLM_BROWSER_STORAGE_CLEANUP_URLS = listOf(
        "https://z.ai",
        "https://www.z.ai",
        "https://chat.z.ai",
        "https://auth.z.ai",
        "https://login.z.ai",
        "https://accounts.z.ai",
        "https://account.z.ai"
    )

    private val GITHUB_AUTH_COOKIE_URLS = listOf(
        "https://github.com",
        "https://www.github.com",
        "https://api.github.com"
    )

    private val APPLE_AUTH_COOKIE_URLS = listOf("https://appleid.apple.com")
}
