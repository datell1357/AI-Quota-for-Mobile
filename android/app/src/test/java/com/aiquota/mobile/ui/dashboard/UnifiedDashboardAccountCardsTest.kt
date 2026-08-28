package com.aiquota.mobile.ui.dashboard

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
import com.aiquota.mobile.local.ProviderRefreshState
import com.aiquota.mobile.local.ProviderUsageSnapshot
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNotEquals
import org.junit.Test

class UnifiedDashboardAccountCardsTest {
    @Test
    fun exactContentPreservesSiblingsAndMapsBusyErrorOnlyToB() {
        val cards = listOf(
            card(ProviderId.CLAUDE, 1, "Claude", 0),
            card(ProviderId.CODEX, 2, "Codex", 1),
            card(ProviderId.CODEX, 3, "Codex 2", 2),
            card(ProviderId.CURSOR, 4, "Cursor", 3),
        )
        val a = cards[1]
        val b = cards[2]

        val content = providerCardDashboardContent(
            cards,
            busyAccountIds = setOf(b.accountId),
            errors = mapOf(b.accountId to "B_ONLY"),
        )

        assertEquals(cards.map { it.accountId }, content.map { it.accountId })
        assertEquals(listOf("Claude", "Codex", "Codex 2", "Cursor"), content.map { it.snapshot.displayName })
        assertEquals(a.displayRecord.snapshot, content[1].snapshot)
        assertEquals(ProviderRefreshState.REFRESHING, content[2].snapshot.refreshState)
        assertEquals(ProviderConnectionState.ERROR, content[2].snapshot.connectionState)
        assertEquals("B_ONLY", content[2].snapshot.message)
        assertNotEquals(content[1].accountId, content[2].accountId)
    }

    @Test
    fun executableUnifiedDashboardTraceCoversZeroOneFourAndThousand() {
        val observed = listOf(0, 1, 4, 1_000).associateWith { count ->
            val cards = (0 until count).map { rank ->
                val provider = when (rank) {
                    0 -> ProviderId.CLAUDE
                    1, 2 -> ProviderId.CODEX
                    3 -> ProviderId.CURSOR
                    else -> ProviderId.CODEX
                }
                card(provider, rank + 1, "${provider.displayName}-$rank", rank)
            }
            val content = providerCardDashboardContent(cards, emptySet(), emptyMap())
            assertEquals(count, content.size)
            assertEquals(count, content.map { it.accountId }.toSet().size)
            content.size
        }
        assertEquals(mapOf(0 to 0, 1 to 1, 4 to 4, 1_000 to 1_000), observed)
        println("QA_TASK12_UNIFIED_TRACE=$observed;SIBLINGS=Codex,Codex 2;COLLAPSE=0")
    }

    private fun card(provider: ProviderId, index: Int, alias: String, rank: Int): ProviderCardDisplayRecord {
        val id = ProviderAccountId(
            provider,
            AccountKey.parseOpaque("acct_${index.toString(16).padStart(32, '0')}")
        )
        val version = DisplayVersion.of(8)
        return ProviderCardDisplayRecord(
            VersionedDisplayRecord(
                AccountRecord(
                    id = id,
                    state = AccountState.ACTIVE,
                    authState = AccountAuthState.AUTHENTICATED,
                    deletionState = AccountDeletionState.NONE,
                    generation = AccountGeneration.of(1),
                    sessionRevision = SessionRevision.of(1),
                    alias = alias,
                    modifiedVersion = version,
                ),
                ProviderUsageSnapshot(
                    providerId = provider,
                    connectionState = ProviderConnectionState.CONNECTED,
                    updatedAt = "2026-08-28T00:00:00Z",
                    statusUpdatedAt = "2026-08-28T00:00:00Z",
                ),
                version,
            ),
            rank,
        )
    }
}
