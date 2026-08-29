package com.aiquota.mobile.notification

import com.aiquota.mobile.accounts.AccountAuthState
import com.aiquota.mobile.accounts.AccountDeletionState
import com.aiquota.mobile.accounts.AccountDemand
import com.aiquota.mobile.accounts.AccountGeneration
import com.aiquota.mobile.accounts.AccountKey
import com.aiquota.mobile.accounts.AccountRecord
import com.aiquota.mobile.accounts.AccountState
import com.aiquota.mobile.accounts.DisplayVersion
import com.aiquota.mobile.accounts.ProviderAccountId
import com.aiquota.mobile.accounts.SessionRevision
import com.aiquota.mobile.accounts.VersionedDisplayRecord
import com.aiquota.mobile.local.ProviderConnectionState
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.local.ProviderUsageLine
import com.aiquota.mobile.local.ProviderUsageSnapshot
import com.aiquota.mobile.providers.ProviderAccountLineKey
import org.junit.Assert.assertEquals
import org.junit.Test

class ProviderNotificationResetActionTest {
    private val codexA = account(1)
    private val codexB = account(2)

    @Test
    fun resetActionBuildsExactResetDemand_whenBindingAndLineRemainCurrent() {
        // Given
        val current = record(codexB)
        val action = ProviderNotificationResetAction(
            ProviderAccountLineKey(codexB, "primary:window"),
            current.version,
            current.account.generation,
            current.account.sessionRevision,
        )

        // When
        val result = ProviderNotificationResetActionBoundary.resolve(action, current)

        // Then
        val accepted = result as ProviderNotificationResetActionResolution.Accepted
        assertEquals(codexB, accepted.request.accountId)
        assertEquals(AccountDemand.RESET, accepted.request.demand)
    }

    @Test
    fun staleDeletedOrReboundActionRejects_withoutSubstitutingSibling() {
        // Given
        val stale = record(codexB)
        val action = ProviderNotificationResetAction(
            ProviderAccountLineKey(codexB, "primary:window"),
            stale.version,
            stale.account.generation,
            stale.account.sessionRevision,
        )
        val rebound = record(codexB, generation = 8, session = 9)
        val newerVersion = stale.copy(version = DisplayVersion.of(12))

        // When
        val missing = ProviderNotificationResetActionBoundary.resolve(action, null)
        val reboundResult = ProviderNotificationResetActionBoundary.resolve(action, rebound)
        val newerVersionResult = ProviderNotificationResetActionBoundary.resolve(action, newerVersion)
        val siblingResult = ProviderNotificationResetActionBoundary.resolve(action, record(codexA))

        // Then
        assertEquals(ProviderNotificationResetActionResolution.Rejected, missing)
        assertEquals(ProviderNotificationResetActionResolution.Rejected, reboundResult)
        assertEquals(ProviderNotificationResetActionResolution.Rejected, newerVersionResult)
        assertEquals(ProviderNotificationResetActionResolution.Rejected, siblingResult)
    }

    @Test
    fun missingOrDifferentLineRejects_withoutProviderWideDemand() {
        // Given
        val current = record(codexB)
        val action = ProviderNotificationResetAction(
            ProviderAccountLineKey(codexB, "weekly"),
            current.version,
            current.account.generation,
            current.account.sessionRevision,
        )

        // When
        val result = ProviderNotificationResetActionBoundary.resolve(action, current)

        // Then
        assertEquals(ProviderNotificationResetActionResolution.Rejected, result)
    }

    private fun record(
        id: ProviderAccountId,
        generation: Long = 3,
        session: Long = 4,
    ): VersionedDisplayRecord {
        val version = DisplayVersion.of(11)
        return VersionedDisplayRecord(
            AccountRecord(
                id,
                AccountState.ACTIVE,
                AccountAuthState.AUTHENTICATED,
                AccountDeletionState.NONE,
                AccountGeneration.of(generation),
                SessionRevision.of(session),
                alias = if (id == codexA) "Codex" else "Work",
                modifiedVersion = version,
            ),
            ProviderUsageSnapshot(
                providerId = ProviderId.CODEX,
                connectionState = ProviderConnectionState.CONNECTED,
                lines = listOf(ProviderUsageLine("Primary", 0.5f, key = "primary:window")),
            ),
            version,
        )
    }

    private fun account(index: Int) = ProviderAccountId(
        ProviderId.CODEX,
        AccountKey.parseOpaque("acct_${index.toString(16).padStart(32, '0')}"),
    )
}
