package com.aiquota.mobile.providers

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class GlmAuthenticatedWebSessionTest {
    @Test
    fun rejectsIncompleteContextBeforeClearingExistingSessionAndVerifiesPersistence() {
        val store = MemorySession()
        val repository = GlmUsageRepository(store)
        assertFalse(repository.saveAuthenticatedWebSession(null, emptyMap()))
        assertFalse(repository.saveAuthenticatedWebSession("new=test", emptyMap()))
        assertEquals("old=test", store.cookie)
        assertEquals(0, store.clears)
        assertTrue(repository.saveAuthenticatedWebSession("new=test", mapOf("Authorization" to "Bearer synthetic")))
        assertEquals("new=test", store.cookie)
        assertEquals("Bearer synthetic", store.headers["Authorization"])
        store.acceptWrites = false
        assertFalse(repository.saveAuthenticatedWebSession("next=test", mapOf("Authorization" to "Bearer next")))
    }

    private class MemorySession : GlmWebSessionStore {
        var cookie: String? = "old=test"
        var headers = mapOf("Authorization" to "Bearer old")
        var clears = 0
        var acceptWrites = true
        override fun cookieHeader() = cookie
        override fun requestHeaders() = headers
        override fun saveCookieHeader(cookieHeader: String) { if (acceptWrites) cookie = cookieHeader }
        override fun saveRequestHeaders(headers: Map<String, String>) { if (acceptWrites) this.headers = headers }
        override fun clear() { clears++; cookie = null; headers = emptyMap() }
    }
}
