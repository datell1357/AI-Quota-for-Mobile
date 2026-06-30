package com.aiquota.mobile.providers

internal object CodexNativeHeaderSelector {
    fun selectStoredHeaders(
        currentHeaders: Map<String, String>?,
        capturedHeaders: Map<String, String>
    ): Map<String, String> {
        val current = currentHeaders.orEmpty()
        if (hasAuthContext(current) && !hasAuthContext(capturedHeaders)) {
            return current
        }
        return capturedHeaders
    }

    fun selectForFetch(
        endpointHeaders: Map<String, String>,
        fallbackHeaders: Map<String, String>
    ): Map<String, String> {
        if (hasAuthContext(fallbackHeaders) && !hasAuthContext(endpointHeaders)) {
            return fallbackHeaders
        }
        return endpointHeaders.ifEmpty { fallbackHeaders }
    }

    fun authContextHeaders(headers: Map<String, String>): Map<String, String> {
        return headers
            .filterKeys { name -> AUTH_CONTEXT_HEADERS.any { it.equals(name, ignoreCase = true) } }
            .filterValues(String::isNotBlank)
    }

    private fun hasAuthContext(headers: Map<String, String>): Boolean {
        return headers.any { (name, value) ->
            value.isNotBlank() && AUTH_CONTEXT_HEADERS.any { it.equals(name, ignoreCase = true) }
        }
    }

    private val AUTH_CONTEXT_HEADERS = setOf(
        "Authorization",
        "ChatGPT-Account-ID",
        "OAI-Session-Id"
    )
}
