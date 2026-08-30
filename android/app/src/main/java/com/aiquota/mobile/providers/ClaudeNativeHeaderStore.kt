package com.aiquota.mobile.providers

import java.net.URI
import java.util.Locale

internal object ClaudeNativeHeaderStore {
    fun capture(
        storedHeaders: MutableMap<String, Map<String, String>>,
        url: String,
        requestHeaders: Map<String, String>,
        wildcardKey: String
    ): Boolean {
        val headers = CodexNativeHeaderStore.forwardableHeaders(requestHeaders)
        if (headers.isEmpty()) return false
        val key = keyFor(url) ?: return false
        storedHeaders[key] = CodexNativeHeaderSelector.selectStoredHeaders(storedHeaders[key], headers)
        storedHeaders[wildcardKey] = CodexNativeHeaderSelector.selectStoredHeaders(storedHeaders[wildcardKey], headers)
        return true
    }

    fun headersFor(
        storedHeaders: Map<String, Map<String, String>>,
        url: String,
        wildcardKey: String
    ): Map<String, String> {
        val endpointHeaders = keyFor(url)?.let { storedHeaders[it] }.orEmpty()
        val wildcardHeaders = storedHeaders[wildcardKey].orEmpty()
            .ifEmpty { storedHeaders.values.firstOrNull { it.isNotEmpty() }.orEmpty() }
        return CodexNativeHeaderSelector.selectForFetch(endpointHeaders, wildcardHeaders)
    }

    fun snapshotRequestContext(
        storedHeaders: Map<String, Map<String, String>>
    ): Map<String, Map<String, String>> {
        return storedHeaders
            .filterKeys(String::isNotBlank)
            .mapValues { (_, headers) -> replaySafeHeaders(headers) }
            .filterValues(Map<String, String>::isNotEmpty)
    }

    fun replaySafeHeaders(headers: Map<String, String>): Map<String, String> {
        return headers
            .filterKeys(::isReplaySafeRequestHeader)
            .filterValues(String::isNotBlank)
    }

    private fun keyFor(url: String): String? {
        val uri = runCatching { URI(url) }.getOrNull() ?: return null
        if (!uri.scheme.equals("https", ignoreCase = true)) return null
        val host = uri.host.orEmpty().lowercase(Locale.US)
        if (!ProviderLoginStrategy.isClaudeHost(host)) return null
        val path = uri.path.orEmpty().lowercase(Locale.US)
        return "$host$path"
    }

    private fun isReplaySafeRequestHeader(name: String): Boolean {
        val normalized = name.trim().lowercase(Locale.US)
        return normalized == "authorization" ||
            normalized == "x-activity-session-id" ||
            normalized.startsWith("anthropic-")
    }
}
