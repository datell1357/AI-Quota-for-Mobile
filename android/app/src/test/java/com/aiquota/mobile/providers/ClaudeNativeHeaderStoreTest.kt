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
class ClaudeNativeHeaderStoreTest {
    @Test
    fun capturesClaudeApiHeadersAndFiltersNonForwardableHeaders() {
        val stored = mutableMapOf<String, Map<String, String>>()

        assertTrue(
            ClaudeNativeHeaderStore.capture(
                stored,
                "https://claude.ai/api/organizations/org_123/usage",
                mapOf(
                    "Authorization" to "Bearer test",
                    "X-Claude-Test" to "1",
                    "Host" to "claude.ai",
                    "Accept-Encoding" to "gzip"
                ),
                "claude:*"
            )
        )

        val headers = ClaudeNativeHeaderStore.headersFor(
            stored,
            "https://claude.ai/api/organizations/org_123/subscription_details",
            "claude:*"
        )
        assertEquals("Bearer test", headers["Authorization"])
        assertEquals("1", headers["X-Claude-Test"])
        assertFalse(headers.containsKey("Host"))
        assertFalse(headers.containsKey("Accept-Encoding"))
    }

    @Test
    fun ignoresNonClaudeHosts() {
        val stored = mutableMapOf<String, Map<String, String>>()

        assertFalse(
            ClaudeNativeHeaderStore.capture(
                stored,
                "https://example.com/api/organizations/org_123/usage",
                mapOf("Authorization" to "Bearer test"),
                "claude:*"
            )
        )
        assertTrue(stored.isEmpty())
    }

    @Test
    fun ignoresUntrustedClaudeOrigins() {
        val stored = mutableMapOf<String, Map<String, String>>()
        val headers = mapOf("Authorization" to "Bearer test")

        assertFalse(ClaudeNativeHeaderStore.capture(stored, "https://evil.claude.ai/api/organizations/org_123/usage", headers, "claude:*"))
        assertFalse(ClaudeNativeHeaderStore.capture(stored, "http://claude.ai/api/organizations/org_123/usage", headers, "claude:*"))
        assertTrue(stored.isEmpty())
    }

    @Test
    fun replayRejectsUntrustedClaudeOrigins() {
        val stored = mapOf("claude:*" to mapOf("Authorization" to "Bearer test"))

        assertTrue(ClaudeNativeHeaderStore.headersFor(stored, "https://evil.claude.ai/api/organizations/org_123/usage", "claude:*").isEmpty())
        assertTrue(ClaudeNativeHeaderStore.headersFor(stored, "http://claude.ai/api/organizations/org_123/usage", "claude:*").isEmpty())
    }

    @Test
    fun persistedClaudeRequestContextKeepsOnlyReplaySafeHeaders() {
        val payload = ClaudeNativeRequestContextStore.encodeForTest(
            mapOf(
                "claude.ai/api/organizations/org_123/usage" to mapOf(
                    "Authorization" to "Bearer auth",
                    "anthropic-device-id" to "device",
                    "x-activity-session-id" to "activity",
                    "x-datadog-trace-id" to "trace",
                    "Accept" to "application/json",
                    "Cookie" to "secret=cookie"
                ),
                "claude.ai/api/account_profile" to mapOf("Accept" to "application/json")
            )
        )

        assertEquals(
            mapOf(
                "claude.ai/api/organizations/org_123/usage" to mapOf(
                    "Authorization" to "Bearer auth",
                    "anthropic-device-id" to "device",
                    "x-activity-session-id" to "activity"
                )
            ),
            ClaudeNativeRequestContextStore.decodeForTest(payload)
        )
        assertFalse(payload.contains("trace"))
        assertFalse(payload.contains("secret=cookie"))
        assertFalse(payload.contains("application/json"))
    }

    @Test
    fun exactClaudeContextNeverReadsCodexOrSiblingEnvelope() {
        val vault = AccountCredentialVault(InMemoryCredentialEnvelopeStore(), FakeCredentialVaultCrypto())
        val store = ClaudeNativeRequestContextStore(ApplicationProvider.getApplicationContext(), vault)
        val a = binding(1)
        val b = binding(2)
        val aMarker = mapOf("claude:a" to mapOf("Authorization" to "Bearer A"))
        val bMarker = mapOf("claude:b" to mapOf("Authorization" to "Bearer B"))

        assertTrue(store.saveExact(a, aMarker))
        assertTrue(store.saveExact(b, bMarker))
        assertEquals(aMarker, store.restoreExact(a))
        assertEquals(bMarker, store.restoreExact(b))
        val codex = a.copy(accountId = ProviderAccountId(ProviderId.CODEX, a.accountId.accountKey))
        assertTrue(vault.decrypt(com.aiquota.mobile.accounts.CredentialVaultBinding(
            com.aiquota.mobile.accounts.CredentialVaultSchema.CURRENT,
            com.aiquota.mobile.accounts.CredentialVaultAccountId.parse(codex.accountId),
            codex.generation,
            codex.sessionRevision,
            com.aiquota.mobile.accounts.SecretRevision.of(1),
        )) == null)
    }

    @Test
    fun replaySafeHeadersKeepClaudeFetchContextOnly() {
        val headers = ClaudeNativeHeaderStore.replaySafeHeaders(
            mapOf(
                "Authorization" to "Bearer auth",
                "x-activity-session-id" to "activity",
                "anthropic-client-platform" to "web",
                "Cookie" to "session=secret",
                "Accept" to "application/json",
                "User-Agent" to "agent"
            )
        )

        assertEquals(
            mapOf(
                "Authorization" to "Bearer auth",
                "x-activity-session-id" to "activity",
                "anthropic-client-platform" to "web"
            ),
            headers
        )
    }

    @Test
    fun aboutBlankHeaderLookupFallsBackToPersistedEndpointContext() {
        val stored = mapOf(
            "claude.ai/api/organizations" to mapOf(
                "Authorization" to "Bearer auth",
                "x-activity-session-id" to "activity"
            )
        )

        val headers = ClaudeNativeHeaderStore.headersFor(stored, "about:blank", "claude:*")

        assertEquals("Bearer auth", headers["Authorization"])
        assertEquals("activity", headers["x-activity-session-id"])
    }

    private fun binding(index: Int) = AccountLoginSessionBinding(
        ProviderAccountId(
            ProviderId.CLAUDE,
            AccountKey.parseOpaque("acct_${index.toString(16).padStart(32, '0')}"),
        ),
        AccountGeneration.of(4),
        SessionRevision.of(6),
    )
}
