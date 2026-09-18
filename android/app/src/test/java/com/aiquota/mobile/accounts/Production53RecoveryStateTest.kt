package com.aiquota.mobile.accounts

import android.content.Context
import androidx.test.core.app.ApplicationProvider
import com.aiquota.mobile.local.*
import com.aiquota.mobile.providers.ClaudeSessionPrimeStateRepository
import org.junit.Assert.*
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner

@RunWith(RobolectricTestRunner::class)
class Production53RecoveryStateTest {
    private val context: Context get() = ApplicationProvider.getApplicationContext()
    private fun id(n: Int) = ProviderAccountId(ProviderId.CLAUDE, AccountKey.parseOpaque("acct_${n.toString().padStart(32, '0')}"))
    @Test fun optOutReenableAndDeletionInvalidateCapturedPrimeRevision() {
        context.getSharedPreferences("ai_quota_provider_preferences", 0).edit().clear().commit()
        val prefs = ProviderCardPreferencesRepository(context)
        assertNull(prefs.claudeAutoResetPrimeRevision(id(1)))
        assertTrue(prefs.setClaudeAutoResetPrimeEnabled(id(1), true))
        val first = prefs.claudeAutoResetPrimeRevision(id(1))!!
        prefs.setClaudeAutoResetPrimeEnabled(id(1), true)
        assertEquals(first, prefs.claudeAutoResetPrimeRevision(id(1)))
        assertFalse(prefs.isClaudeAutoResetPrimeEnabled(id(2)))
        prefs.setClaudeAutoResetPrimeEnabled(id(1), false)
        assertNull(prefs.claudeAutoResetPrimeRevision(id(1)))
        prefs.setClaudeAutoResetPrimeEnabled(id(1), true)
        assertTrue(prefs.claudeAutoResetPrimeRevision(id(1))!! > first)
        prefs.clearExactCardArtifacts(id(1))
        assertNull(prefs.claudeAutoResetPrimeRevision(id(1)))
    }
    @Test fun persistedPrimeClaimSurvivesRepositoryReopenAndDoesNotLeakAcrossSessions() {
        context.getSharedPreferences("ai_quota_claude_prime_state", 0).edit().clear().commit()
        val binding = AccountLoginSessionBinding(id(1), AccountGeneration.of(1), SessionRevision.of(1))
        val state = ClaudeSessionPrimeStateRepository(context).exactState(1)
        state.savePending(binding, 123L)
        assertTrue(state.claim(binding, 123L))
        val reopened = ClaudeSessionPrimeStateRepository(context).exactState(1)
        assertEquals(123L, reopened.pending(binding)); assertFalse(reopened.claim(binding, 123L))
        assertNull(reopened.pending(binding.copy(sessionRevision = SessionRevision.of(2))))
        assertNull(ClaudeSessionPrimeStateRepository(context).exactState(2).pending(binding))
    }
    @Test fun deletingFirstCardCompactsSeveralUniqueRanksWithoutCollisions() {
        val dbName = "production53-rank-recovery.db"
        context.deleteDatabase(dbName)
        try {
            MainProcessAccountAuthority.open(context, dbName).use { authority ->
                (1..4).forEach { n -> authority.register(AuthorityAccountSeed(
                    AccountRecord(id(n), AccountState.ACTIVE, AccountAuthState.AUTHENTICATED, AccountDeletionState.NONE,
                        AccountGeneration.of(1), SessionRevision.of(1)),
                    ProviderUsageSnapshot(providerId = ProviderId.CLAUDE, displayName = "Account $n", connectionState = ProviderConnectionState.CONNECTED),
                )) }
                assertTrue(authority.beginProviderCardDeletion(id(1)) is BeginProviderCardDeletionResult.Ready)
                val rows = authority.activeProviderCards(0, 20).records
                assertEquals(listOf(id(2), id(3), id(4)), rows.map { it.accountId })
                assertEquals(listOf(0, 1, 2), rows.map { it.activeRank })
            }
        } finally { context.deleteDatabase(dbName) }
    }
}
