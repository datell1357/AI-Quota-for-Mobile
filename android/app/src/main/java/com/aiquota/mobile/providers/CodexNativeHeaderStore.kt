package com.aiquota.mobile.providers

import java.net.URI
import java.util.Locale

internal object CodexNativeHeaderStore {
    fun capture(
        storedHeaders: MutableMap<String, Map<String, String>>,
        url: String,
        requestHeaders: Map<String, String>,
        fallbackKey: String
    ): Boolean {
        val headers = forwardableHeaders(requestHeaders)
        if (headers.isEmpty()) return false
        val key = keyFor(url) ?: return false
        storedHeaders[key] = CodexNativeHeaderSelector.selectStoredHeaders(storedHeaders[key], headers)
        storedHeaders[fallbackKey] = CodexNativeHeaderSelector.selectStoredHeaders(storedHeaders[fallbackKey], headers)
        return true
    }

    fun forwardableHeaders(requestHeaders: Map<String, String>): Map<String, String> {
        return requestHeaders
            .filterKeys(::isForwardableHeader)
            .filterValues(String::isNotBlank)
    }

    fun headersFor(
        storedHeaders: Map<String, Map<String, String>>,
        url: String,
        fallbackKey: String
    ): Map<String, String> {
        val key = keyFor(url) ?: return emptyMap()
        val endpointHeaders = storedHeaders[key].orEmpty()
        val fallbackHeaders = storedHeaders[fallbackKey].orEmpty()
        return CodexNativeHeaderSelector.selectForCodexFetch(endpointHeaders, fallbackHeaders)
    }

    fun snapshotAuthContext(
        storedHeaders: Map<String, Map<String, String>>
    ): Map<String, Map<String, String>> {
        return storedHeaders
            .mapValues { (_, headers) -> CodexNativeHeaderSelector.authContextHeaders(headers) }
            .filterValues(Map<String, String>::isNotEmpty)
    }

    private fun keyFor(url: String): String? {
        val uri = runCatching { URI(url) }.getOrNull() ?: return null
        if (!uri.scheme.equals("https", ignoreCase = true)) return null
        val host = uri.host.orEmpty().lowercase(Locale.US)
        val path = uri.path.orEmpty().lowercase(Locale.US)
        if (!ProviderLoginStrategy.isCodexHost(host)) return null
        return "$host$path"
    }

    private fun isForwardableHeader(name: String): Boolean {
        val normalized = name.trim()
        if (normalized.isBlank()) return false
        return !normalized.equals("Host", ignoreCase = true) &&
            !normalized.equals("Connection", ignoreCase = true) &&
            !normalized.equals("Content-Length", ignoreCase = true) &&
            !normalized.equals("Accept-Encoding", ignoreCase = true)
    }
}
