package com.aiquota.mobile.providers

import org.junit.Assert.assertTrue
import org.junit.Test

class CursorNativeUsageFetcherTest {
    @Test
    fun nativeCursorFetcherRejectsNonHttpsEndpointsBeforeNetworkAccess() {
        val result = CursorNativeUsageFetcher.fetchJson("http://cursor.com/api/usage", null)

        assertTrue(result.contains("blocked_cursor_endpoint"))
    }
}
