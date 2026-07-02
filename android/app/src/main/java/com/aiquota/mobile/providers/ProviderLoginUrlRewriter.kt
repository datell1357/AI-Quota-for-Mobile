package com.aiquota.mobile.providers

import com.aiquota.mobile.local.ProviderId
import java.net.URI
import java.net.URLDecoder
import java.net.URLEncoder
import java.nio.charset.StandardCharsets
import java.util.Locale

object ProviderLoginUrlRewriter {
    fun rewriteMainFrameUrl(providerId: ProviderId, url: String): String? {
        val uri = runCatching { URI(url.trim()) }.getOrNull() ?: return null
        if (!uri.scheme.equals("https", ignoreCase = true)) return null
        if (!uri.host.orEmpty().isAccountsGoogleHost()) return null
        if (providerId != ProviderId.CLAUDE && providerId != ProviderId.GLM) return null
        val forceAccountChooser = providerId == ProviderId.GLM
        if (!uri.looksLikeGoogleOAuthStart() && !(forceAccountChooser && uri.looksLikeGoogleServiceLogin())) {
            return null
        }
        if (
            uri.promptTokens().any { it.equals("select_account", ignoreCase = true) } &&
            (!forceAccountChooser || uri.queryValue("authuser") == "-1")
        ) {
            return null
        }

        return uri.withPromptSelectAccount(forceAccountChooser)
    }

    private fun URI.looksLikeGoogleOAuthStart(): Boolean {
        val path = rawPath.orEmpty().lowercase(Locale.US)
        val query = rawQuery.orEmpty().lowercase(Locale.US)
        return path.contains("/o/oauth2/") ||
            ("client_id=" in query && "redirect_uri=" in query)
    }

    private fun URI.looksLikeGoogleServiceLogin(): Boolean {
        val path = rawPath.orEmpty().lowercase(Locale.US)
        return path.endsWith("/servicelogin")
    }

    private fun URI.withPromptSelectAccount(forceAccountChooser: Boolean): String {
        val promptTokens = promptTokens()
            .filterNot { it.equals("none", ignoreCase = true) }
            .filterNot { it.equals("select_account", ignoreCase = true) }
        val nextPrompt = listOf("select_account") + promptTokens
        val queryParts = rawQuery.orEmpty()
            .split("&")
            .filter { it.isNotBlank() }
            .filterNot { part ->
                part.substringBefore("=").equals("prompt", ignoreCase = true)
            }
            .filterNot { part ->
                forceAccountChooser && part.substringBefore("=").equals("authuser", ignoreCase = true)
            }
            .let { parts ->
                parts + "prompt=${nextPrompt.joinToString(" ").urlEncode()}" +
                    if (forceAccountChooser) listOf("authuser=-1") else emptyList()
            }

        return buildString {
            append(scheme)
            append("://")
            append(rawAuthority)
            append(rawPath.orEmpty().ifBlank { "/" })
            if (queryParts.isNotEmpty()) {
                append("?")
                append(queryParts.joinToString("&"))
            }
            rawFragment?.let { fragment ->
                append("#")
                append(fragment)
            }
        }
    }

    private fun URI.promptTokens(): List<String> {
        return rawQuery.orEmpty()
            .split("&")
            .asSequence()
            .mapNotNull { part ->
                val separator = part.indexOf("=")
                if (separator < 0) return@mapNotNull null
                val key = part.substring(0, separator)
                if (!key.equals("prompt", ignoreCase = true)) return@mapNotNull null
                part.substring(separator + 1).urlDecode()
            }
            .flatMap { prompt -> prompt.split(Regex("""\s+""")).asSequence() }
            .map { it.trim() }
            .filter { it.isNotBlank() }
            .toList()
    }

    private fun URI.queryValue(key: String): String? {
        return rawQuery.orEmpty()
            .split("&")
            .firstOrNull { part -> part.substringBefore("=").equals(key, ignoreCase = true) }
            ?.substringAfter("=", missingDelimiterValue = "")
            ?.urlDecode()
    }

    private fun String.isAccountsGoogleHost(): Boolean {
        val normalized = lowercase(Locale.US)
        return GOOGLE_ACCOUNT_HOST.matches(normalized)
    }

    private fun String.urlEncode(): String {
        return URLEncoder.encode(this, StandardCharsets.UTF_8.name()).replace("+", "%20")
    }

    private fun String.urlDecode(): String {
        return URLDecoder.decode(this, StandardCharsets.UTF_8.name())
    }

    private val GOOGLE_ACCOUNT_HOST =
        Regex("""^accounts\.google\.(?:com|[a-z]{2}|co\.[a-z]{2}|com\.[a-z]{2})$""")
}
