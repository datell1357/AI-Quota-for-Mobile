package com.aiquota.mobile.providers

import org.junit.Assert.*
import org.junit.Test

class ClaudeSessionPrimerRecoveryTest {
    private val credentials = ClaudeSessionPrimer.Credentials("lastActiveOrg=org_123; sessionKey=test", emptyMap(), "test-UA")
    @Test fun createsCompletesAndDeletesUsingTheSameConversationAndAccount() {
        val requests = mutableListOf<ClaudeSessionPrimer.Request>()
        val result = ClaudeSessionPrimer.prime(credentials, transport = { requests += it; 200 })
        assertTrue(result.ok)
        assertEquals(listOf("POST", "POST", "DELETE"), requests.map { it.method })
        assertTrue(requests.all { it.url.startsWith("https://claude.ai/api/organizations/org_123/chat_conversations") })
        assertEquals(requests[2].url + "/completion", requests[1].url)
        assertTrue(requests.all { it.credentials.cookieHeader == credentials.cookieHeader })
    }
    @Test fun optOutAfterCreatePreventsCompletionAndCleanupRequests() {
        var allowed = true; var requests = 0
        val result = ClaudeSessionPrimer.prime(credentials, { allowed }) { requests++; allowed = false; 200 }
        assertFalse(result.ok); assertEquals(1, requests)
    }
    @Test fun rejectsMalformedOrganizationBeforeAnyRequest() {
        var calls = 0
        val result = ClaudeSessionPrimer.prime(credentials.copy(cookieHeader = "lastActiveOrg=../../other"), transport = { calls++; 200 })
        assertFalse(result.ok); assertEquals(0, calls)
    }
    @Test fun failedCompletionStillAttemptsCleanupWhileAuthorized() {
        val methods = mutableListOf<String>()
        val result = ClaudeSessionPrimer.prime(credentials, transport = {
            methods += it.method; if (it.url.endsWith("/completion")) 403 else 200
        })
        assertFalse(result.ok); assertEquals(listOf("POST", "POST", "DELETE"), methods)
    }
}
