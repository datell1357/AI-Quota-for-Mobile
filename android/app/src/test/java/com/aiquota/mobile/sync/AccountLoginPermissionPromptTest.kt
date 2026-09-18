package com.aiquota.mobile.sync

import com.aiquota.mobile.accounts.*
import com.aiquota.mobile.local.*
import org.junit.Assert.*
import org.junit.Test

class AccountLoginPermissionPromptTest {
    private fun card(provider: ProviderId, auth: AccountAuthState = AccountAuthState.AUTHENTICATED,
        revision: Long = 1, index: Int = 1): ProviderCardDisplayRecord {
        val account = AccountRecord(
            id = ProviderAccountId(provider, AccountKey.parseOpaque("acct_${index.toString().padStart(32, '0')}")),
            state = AccountState.ACTIVE, authState = auth, deletionState = AccountDeletionState.NONE,
            generation = AccountGeneration.of(1), sessionRevision = SessionRevision.of(revision), alias = provider.displayName,
        )
        // Auth completed before quota collection or the legacy compatibility cache has caught up.
        return ProviderCardDisplayRecord(VersionedDisplayRecord(account,
            ProviderUsageSnapshot.disconnected(provider), DisplayVersion.ZERO), 0)
    }

    @Test fun refreshRunsForAuthenticatedAccountsWithoutWaitingForTheLegacyCache() {
        ProviderId.entries.forEach { provider ->
            assertTrue(ForegroundRefreshPolicy.shouldRunForAccounts(listOf(card(provider)), true, true))
            assertFalse(ForegroundRefreshPolicy.shouldRunForAccounts(listOf(card(provider, AccountAuthState.AUTHENTICATING)), true, true))
            assertFalse(ForegroundRefreshPolicy.shouldRunForAccounts(listOf(card(provider)), false, true))
            assertFalse(ForegroundRefreshPolicy.shouldRunForAccounts(listOf(card(provider)), true, false))
        }
    }

    @Test fun everyProviderPromptsAfterAuthenticationEvenWithoutLegacyUsageData() {
        ProviderId.entries.forEach { provider ->
            assertTrue("Missing prompt for $provider", LiveRefreshPromptPolicy.shouldShowForAccounts(
                listOf(card(provider)), false, false, false))
        }
    }

    @Test fun authenticatingCancelledAndFailedLoginsDoNotPrompt() {
        ProviderId.entries.forEach { provider ->
            listOf(AccountAuthState.SIGNED_OUT, AccountAuthState.AUTHENTICATING, AccountAuthState.REAUTH_REQUIRED).forEach { auth ->
                assertFalse("Premature prompt for $provider/$auth", LiveRefreshPromptPolicy.shouldShowForAccounts(
                    listOf(card(provider, auth)), false, false, false))
            }
        }
    }

    @Test fun alreadyGrantedPermissionsDoNotRequireAnotherPrompt() {
        ProviderId.entries.forEach { provider ->
            assertFalse(LiveRefreshPromptPolicy.shouldShowForAccounts(listOf(card(provider)), true, true, true))
            assertTrue(LiveRefreshPromptPolicy.shouldShowForAccounts(listOf(card(provider)), true, false, true))
            assertFalse(LiveRefreshPromptPolicy.shouldShowForAccounts(listOf(card(provider)), true, true, false))
        }
    }

    @Test fun configuredLiveRefreshDoesNotReopenOnlyForBatteryOptimizationAdvice() {
        ProviderId.entries.forEach { provider ->
            assertFalse("Configured $provider login should not nag again", LiveRefreshPromptPolicy.shouldShowForAccounts(
                listOf(card(provider)), true, true, false))
        }
    }

    @Test fun aNewProviderLoginRearmsThePromptAfterDismissal() {
        val tracker = LiveRefreshPromptLoginTracker()
        val cards = mutableListOf<ProviderCardDisplayRecord>()
        ProviderId.entries.forEach { provider ->
            assertFalse(tracker.observe(cards + card(provider, AccountAuthState.AUTHENTICATING)))
            cards += card(provider)
            assertTrue("New $provider login was not detected", tracker.observe(cards))
            assertFalse("Unchanged accounts reopened prompt", tracker.observe(cards))
        }
    }

    @Test fun quotaChangesAndRenameDoNotCountAsAnotherLogin() {
        val tracker = LiveRefreshPromptLoginTracker()
        val original = card(ProviderId.CLAUDE)
        assertTrue(tracker.observe(listOf(original)))
        val changed = original.copy(displayRecord = original.displayRecord.copy(
            snapshot = ProviderUsageSnapshot(providerId = ProviderId.CLAUDE, connectionState = ProviderConnectionState.CONNECTED),
            account = original.displayRecord.account.copy(alias = "Work"),
        ))
        assertFalse(tracker.observe(listOf(changed)))
    }

    @Test fun reauthenticationAndSecondAccountCountAsNewLogins() {
        val tracker = LiveRefreshPromptLoginTracker()
        assertTrue(tracker.observe(listOf(card(ProviderId.CODEX))))
        assertTrue(tracker.observe(listOf(card(ProviderId.CODEX, revision = 2))))
        assertTrue(tracker.observe(listOf(card(ProviderId.CODEX, revision = 2), card(ProviderId.CODEX, index = 2))))
    }
}
