package com.aiquota.mobile.providers

import java.net.URI
import java.util.Locale

object GeminiUsagePageRoutes {
    const val USAGE_URL = "https://gemini.google.com/usage"

    fun usageUrlFrom(url: String): String? {
        val uri = runCatching { URI(url) }.getOrNull() ?: return null
        val host = uri.host.orEmpty().lowercase(Locale.US)
        val path = normalizedPath(uri)
        if (host == "myaccount.google.com") return USAGE_URL
        if (host != "gemini.google.com") return null
        if (isUsagePath(path)) return null
        return accountScopedUsageUrl(path) ?: if (isLandingPath(path)) USAGE_URL else null
    }

    fun isUsageUrl(url: String): Boolean {
        val uri = runCatching { URI(url) }.getOrNull() ?: return false
        val host = uri.host.orEmpty().lowercase(Locale.US)
        return host == "gemini.google.com" && isUsagePath(normalizedPath(uri))
    }

    fun canonicalUsageUrl(url: String): String? {
        val uri = runCatching { URI(url) }.getOrNull() ?: return null
        val host = uri.host.orEmpty().lowercase(Locale.US)
        if (host != "gemini.google.com") return null
        val path = normalizedPath(uri)
        return if (isUsagePath(path)) "https://gemini.google.com$path" else null
    }

    fun isLoginLandingUrl(url: String): Boolean {
        val uri = runCatching { URI(url) }.getOrNull() ?: return false
        val host = uri.host.orEmpty().lowercase(Locale.US)
        return host == "gemini.google.com" && isLandingPath(normalizedPath(uri))
    }

    private fun normalizedPath(uri: URI): String {
        return uri.path.orEmpty().lowercase(Locale.US).trimEnd('/')
    }

    private fun isUsagePath(path: String): Boolean {
        return path == "/usage" || Regex("""^/u/\d+/usage$""").matches(path)
    }

    private fun isLandingPath(path: String): Boolean {
        return path.isBlank() ||
            path == "/" ||
            path == "/app" ||
            path.startsWith("/app/") ||
            Regex("""^/u/\d+/?$""").matches(path) ||
            Regex("""^/u/\d+/app(?:/.*)?$""").matches(path)
    }

    private fun accountScopedUsageUrl(path: String): String? {
        val match = Regex("""^(/u/\d+)(?:/app(?:/.*)?|/?)$""").matchEntire(path) ?: return null
        return "https://gemini.google.com${match.groupValues[1]}/usage"
    }
}
