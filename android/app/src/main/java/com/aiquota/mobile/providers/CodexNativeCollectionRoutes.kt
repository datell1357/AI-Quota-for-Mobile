package com.aiquota.mobile.providers

import java.net.URI
import java.util.Locale

internal object CodexNativeCollectionRoutes {
    fun shouldStartFromResource(url: String): Boolean {
        val uri = runCatching { URI(url) }.getOrNull() ?: return false
        if (!uri.scheme.equals("https", ignoreCase = true)) return false
        val host = uri.host.orEmpty().lowercase(Locale.US)
        if (!ProviderLoginStrategy.isCodexHost(host)) return false
        val path = uri.path.orEmpty().lowercase(Locale.US)
        return path == "/backend-api/wham/usage"
    }

    fun canStartFromResource(
        url: String,
        hasNativeFetchAuthContext: Boolean,
        hasSessionCookies: Boolean
    ): Boolean {
        return shouldStartFromResource(url) &&
            (hasNativeFetchAuthContext || hasSessionCookies)
    }

    fun isAboutBlankNavigation(collectionStarted: Boolean, url: String): Boolean {
        if (!collectionStarted) return false
        if (url == "about:blank") return true
        val scheme = runCatching { URI(url).scheme.orEmpty() }.getOrDefault("")
        return scheme.equals("about", ignoreCase = true)
    }
}
