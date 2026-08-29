package com.aiquota.mobile.providers

import com.aiquota.mobile.accounts.AccountAuthState
import com.aiquota.mobile.accounts.AccountDeletionState
import com.aiquota.mobile.accounts.AccountGeneration
import com.aiquota.mobile.accounts.AccountKey
import com.aiquota.mobile.accounts.AccountRecord
import com.aiquota.mobile.accounts.AccountState
import com.aiquota.mobile.accounts.DisplayVersion
import com.aiquota.mobile.accounts.ProviderAccountId
import com.aiquota.mobile.accounts.ProviderCardDisplayRecord
import com.aiquota.mobile.accounts.SessionRevision
import com.aiquota.mobile.accounts.VersionedDisplayRecord
import com.aiquota.mobile.local.ProviderConnectionState
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.local.ProviderUsageSnapshot
import org.junit.Assert.assertEquals
import org.junit.Test

class ProviderNotificationCompatibilitySelectionTest {
    @Test
    fun disabledModeSelectsOnlyExplicitPrimaryAndReservedDefault_withoutFirstSiblingFallback() {
        // Given
        val a = card(account(ProviderId.CODEX, 1), "Codex", 0)
        val b = card(account(ProviderId.CODEX, 2), "Work", 1)
        val cursorId = ProviderAccountId(ProviderId.CURSOR, AccountKey.reservedDefault())
        val cursor = card(cursorId, "Cursor", 2)
        val compatibility = ProviderId.defaultOrder().associateWith<ProviderId, ProviderAccountId?> { null }
            .toMutableMap()
            .apply {
                put(ProviderId.CODEX, b.accountId)
                put(ProviderId.CURSOR, cursorId)
            }

        // When
        val selected = selectProviderNotificationCards(listOf(a, b, cursor), false, compatibility)
        val ambiguous = selectProviderNotificationCards(
            listOf(a, b),
            false,
            compatibility + (ProviderId.CODEX to null),
        )

        // Then
        assertEquals(listOf(b.accountId, cursorId), selected.map { it.accountId })
        assertEquals(emptyList<ProviderAccountId>(), ambiguous.map { it.accountId })
    }

    @Test
    fun enabledModePreservesAllSiblingCardsAndOrder() {
        // Given
        val cards = listOf(card(account(ProviderId.CODEX, 1), "Codex", 0), card(account(ProviderId.CODEX, 2), "Work", 1))
        val compatibility = ProviderId.defaultOrder().associateWith<ProviderId, ProviderAccountId?> { null }

        // When
        val selected = selectProviderNotificationCards(cards, true, compatibility)

        // Then
        assertEquals(cards, selected)
    }

    private fun card(id: ProviderAccountId, alias: String, rank: Int): ProviderCardDisplayRecord {
        val version = DisplayVersion.of(1)
        val account = AccountRecord(
            id,
            AccountState.ACTIVE,
            AccountAuthState.AUTHENTICATED,
            AccountDeletionState.NONE,
            AccountGeneration.of(1),
            SessionRevision.of(1),
            alias = alias,
            modifiedVersion = version,
        )
        return ProviderCardDisplayRecord(
            VersionedDisplayRecord(
                account,
                ProviderUsageSnapshot(id.providerId, connectionState = ProviderConnectionState.CONNECTED),
                version,
            ),
            rank,
        )
    }

    private fun account(providerId: ProviderId, index: Int) = ProviderAccountId(
        providerId,
        AccountKey.parseOpaque("acct_${index.toString(16).padStart(32, '0')}"),
    )
}
