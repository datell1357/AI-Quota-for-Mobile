package com.aiquota.mobile.providers

import androidx.test.core.app.ApplicationProvider
import com.aiquota.mobile.accounts.AccountCredentialVault
import com.aiquota.mobile.accounts.AccountGeneration
import com.aiquota.mobile.accounts.AccountKey
import com.aiquota.mobile.accounts.AccountLoginSessionBinding
import com.aiquota.mobile.accounts.FakeCredentialVaultCrypto
import com.aiquota.mobile.accounts.InMemoryCredentialEnvelopeStore
import com.aiquota.mobile.accounts.ProviderAccountId
import com.aiquota.mobile.accounts.SessionRevision
import com.aiquota.mobile.local.ProviderId
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner

@RunWith(RobolectricTestRunner::class)
class CodexNativeHeaderStoreTest {
    @Test
    fun captureRejectsUntrustedCodexOrigins() {
        val storedHeaders = mutableMapOf<String, Map<String, String>>()
        val headers = mapOf("Authorization" to "Bearer auth")

        assertFalse(CodexNativeHeaderStore.capture(storedHeaders, "https://evil.chatgpt.com/backend-api/wham/usage", headers, "fallback"))
        assertFalse(CodexNativeHeaderStore.capture(storedHeaders, "http://chatgpt.com/backend-api/wham/usage", headers, "fallback"))
        assertTrue(storedHeaders.isEmpty())
    }

    @Test
    fun captureKeepsAuthenticatedEndpointAndFallbackHeadersAfterUnauthenticatedCapture() {
        val storedHeaders = mutableMapOf<String, Map<String, String>>()
        val usageUrl = "https://chatgpt.com/backend-api/wham/usage"
        val fallbackKey = "fallback"

        assertTrue(
            CodexNativeHeaderStore.capture(
                storedHeaders,
                usageUrl,
                mapOf("Authorization" to "Bearer auth", "Accept" to "application/json"),
                fallbackKey
            )
        )
        assertTrue(
            CodexNativeHeaderStore.capture(
                storedHeaders,
                usageUrl,
                mapOf("Accept" to "application/json"),
                fallbackKey
            )
        )

        assertEquals("Bearer auth", storedHeaders["chatgpt.com/backend-api/wham/usage"]?.get("Authorization"))
        assertEquals("Bearer auth", storedHeaders[fallbackKey]?.get("Authorization"))
    }

    @Test
    fun snapshotAuthContextKeepsOnlyCodexAuthHeaders() {
        val storedHeaders = mapOf(
            "chatgpt.com/backend-api/wham/usage" to mapOf(
                "Authorization" to "Bearer auth",
                "ChatGPT-Account-ID" to "account",
                "OAI-Session-Id" to "session",
                "Accept" to "application/json",
                "Cookie" to "secret=cookie"
            ),
            "empty" to mapOf("Accept" to "application/json")
        )

        assertEquals(
            mapOf(
                "chatgpt.com/backend-api/wham/usage" to mapOf(
                    "Authorization" to "Bearer auth",
                    "ChatGPT-Account-ID" to "account",
                    "OAI-Session-Id" to "session"
                )
            ),
            CodexNativeHeaderStore.snapshotAuthContext(storedHeaders)
        )
    }

    @Test
    fun exactVaultKeepsSiblingsAndRejectsStaleGenerationAndSession() {
        val vault = AccountCredentialVault(InMemoryCredentialEnvelopeStore(), FakeCredentialVaultCrypto())
        val store = CodexNativeAuthContextStore(ApplicationProvider.getApplicationContext(), vault)
        val a = binding(1, 3, 5)
        val b = binding(2, 7, 11)
        val aMarker = mapOf("a" to mapOf("Authorization" to "Bearer A"))
        val bMarker = mapOf("b" to mapOf("Authorization" to "Bearer B"))

        assertTrue(store.saveExact(a, aMarker))
        assertTrue(store.saveExact(b, bMarker))
        assertEquals(aMarker, store.restoreExact(a))
        assertEquals(bMarker, store.restoreExact(b))
        assertTrue(store.restoreExact(b.copy(generation = AccountGeneration.of(8))).isEmpty())
        assertTrue(store.restoreExact(b.copy(sessionRevision = SessionRevision.of(12))).isEmpty())
        assertTrue(store.clearExact(b.accountId))
        assertTrue(store.restoreExact(b).isEmpty())
        assertEquals(aMarker, store.restoreExact(a))
    }

    @Test
    fun persistedCodexAuthContextKeepsOnlyNativeAuthHeaders() {
        val payload = CodexNativeAuthContextStore.encodeForTest(
            mapOf(
                "chatgpt.com/backend-api/wham/usage" to mapOf(
                    "Authorization" to "Bearer auth",
                    "ChatGPT-Account-ID" to "account",
                    "OAI-Session-Id" to "session",
                    "Accept" to "application/json",
                    "Cookie" to "secret=cookie"
                ),
                "chatgpt.com/api/auth/session" to mapOf("Accept" to "application/json")
            )
        )

        assertEquals(
            mapOf(
                "chatgpt.com/backend-api/wham/usage" to mapOf(
                    "Authorization" to "Bearer auth",
                    "ChatGPT-Account-ID" to "account",
                    "OAI-Session-Id" to "session"
                )
            ),
            CodexNativeAuthContextStore.decodeForTest(payload)
        )
        assertTrue(!payload.contains("secret=cookie"))
        assertTrue(!payload.contains("application/json"))
    }

    private fun binding(index: Int, generation: Long, session: Long) = AccountLoginSessionBinding(
        ProviderAccountId(
            ProviderId.CODEX,
            AccountKey.parseOpaque("acct_${index.toString(16).padStart(32, '0')}"),
        ),
        AccountGeneration.of(generation),
        SessionRevision.of(session),
    )
}
