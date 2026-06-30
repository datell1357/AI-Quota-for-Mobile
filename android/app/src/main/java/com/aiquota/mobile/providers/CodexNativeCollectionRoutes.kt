package com.aiquota.mobile.providers

import java.net.URI
import java.util.Locale

internal object CodexNativeCollectionRoutes {
    fun shouldStartFromResource(url: String): Boolean {
        val uri = runCatching { URI(url) }.getOrNull() ?: return false
        val host = uri.host.orEmpty().lowercase(Locale.US)
        if (host != "chatgpt.com" && !host.endsWith(".chatgpt.com")) return false
        val path = uri.path.orEmpty().lowercase(Locale.US)
        return path == "/backend-api/wham/usage"
    }

    fun isAboutBlankNavigation(collectionStarted: Boolean, url: String): Boolean {
        if (!collectionStarted) return false
        if (url == "about:blank") return true
        val scheme = runCatching { URI(url).scheme.orEmpty() }.getOrDefault("")
        return scheme.equals("about", ignoreCase = true)
    }
}
