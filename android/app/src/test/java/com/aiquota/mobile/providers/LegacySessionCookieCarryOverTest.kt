package com.aiquota.mobile.providers

import org.junit.Assert.assertEquals
import org.junit.Test

class LegacySessionCookieCarryOverTest {
    @Test
    fun `parses a cookie header keeping equals signs inside values`() {
        assertEquals(
            listOf("sessionKey" to "sk-ant=abc==", "__Secure-next-auth.session-token" to "t"),
            LegacySessionCookieCarryOver.parseCookieHeader(
                "sessionKey=sk-ant=abc==; __Secure-next-auth.session-token=t; ; novalue",
            ),
        )
        assertEquals(emptyList<Pair<String, String>>(), LegacySessionCookieCarryOver.parseCookieHeader(null))
    }

    @Test
    fun `copies every legacy cookie per host as a secure root path cookie`() {
        val legacy = mapOf(
            "https://chatgpt.com" to "a=1; b=2",
            "https://chat.openai.com" to null,
        )
        val written = mutableListOf<Pair<String, String>>()

        val count = LegacySessionCookieCarryOver.copy(
            listOf("chatgpt.com", "chat.openai.com"),
            read = { legacy[it] },
            write = { url, cookie -> written += url to cookie },
        )

        assertEquals(2, count)
        assertEquals(
            listOf(
                "https://chatgpt.com" to "a=1; Path=/; Secure",
                "https://chatgpt.com" to "b=2; Path=/; Secure",
            ),
            written,
        )
    }
}
