package com.aiquota.mobile.widget

import com.aiquota.mobile.accounts.AccountAuthState
import com.aiquota.mobile.accounts.AccountDeletionState
import com.aiquota.mobile.accounts.AccountGeneration
import com.aiquota.mobile.accounts.AccountKey
import com.aiquota.mobile.accounts.AccountRecord
import com.aiquota.mobile.accounts.AccountState
import com.aiquota.mobile.accounts.DisplayVersion
import com.aiquota.mobile.accounts.ProviderAccountId
import com.aiquota.mobile.accounts.ProviderAccountIdStorageCodec
import com.aiquota.mobile.accounts.ProviderCardCatalogLoadResult
import com.aiquota.mobile.accounts.ProviderCardCatalogSnapshot
import com.aiquota.mobile.accounts.ProviderCardDisplayRecord
import com.aiquota.mobile.accounts.SessionRevision
import com.aiquota.mobile.accounts.VersionedDisplayRecord
import com.aiquota.mobile.local.ProviderConnectionState
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.local.ProviderUsageLine
import com.aiquota.mobile.local.ProviderUsageSnapshot
import org.junit.Assert.assertEquals
import org.junit.Test

class ProviderWidgetCardCatalogTest {
    @Test
    fun activeCardsRemainDistinctAndRankedWhenOneThousandIncludeProviderSiblings() {
        // Given
        val cards = List(1_000) { index -> card(index, "Codex ${index + 1}") }
        val loaded = ProviderCardCatalogLoadResult.Loaded(
            ProviderCardCatalogSnapshot(DisplayVersion.of(1_001), cards),
            pageCalls = 8,
        )

        // When
        val selections = ProviderWidgetCardCatalog.selectionsFrom(loaded)

        // Then
        assertEquals(1_000, selections.size)
        assertEquals(cards.map { it.accountId }, selections.map { it.accountId })
        assertEquals("Codex 1", selections.first().alias)
        assertEquals("Codex 1000", selections.last().alias)
    }

    @Test
    fun zeroAndOneActiveCardCatalogsPreserveExactCardCounts() {
        // Given
        val empty = ProviderCardCatalogLoadResult.Loaded(
            ProviderCardCatalogSnapshot.EMPTY,
            pageCalls = 1,
        )
        val one = ProviderCardCatalogLoadResult.Loaded(
            ProviderCardCatalogSnapshot(DisplayVersion.of(2), listOf(card(0, "Codex"))),
            pageCalls = 1,
        )

        // When
        val counts = listOf(
            ProviderWidgetCardCatalog.selectionsFrom(empty).size,
            ProviderWidgetCardCatalog.selectionsFrom(one).size,
        )

        // Then
        assertEquals(listOf(0, 1), counts)
    }

    @Test
    fun malformedStaleAndAmbiguousPreselectionNeverSelectsOnlySibling() {
        // Given
        val a = card(0, "Codex")
        val b = card(1, "Codex 2")
        val onlyB = ProviderWidgetCardCatalog.selectionsFrom(
            ProviderCardCatalogLoadResult.Loaded(
                ProviderCardCatalogSnapshot(DisplayVersion.of(3), listOf(b.copy(activeRank = 0))),
                pageCalls = 1,
            )
        )

        // When
        val malformed = ProviderWidgetCardCatalog.resolvePreselection(
            ProviderWidgetPreselection("pa1:broken", ProviderId.CODEX.storageId),
            onlyB,
        ) { a.accountId }
        val stale = ProviderWidgetCardCatalog.resolvePreselection(
            ProviderWidgetPreselection(ProviderAccountIdStorageCodec.encode(a.accountId), null),
            onlyB,
        ) { b.accountId }
        val ambiguousLegacy = ProviderWidgetCardCatalog.resolvePreselection(
            ProviderWidgetPreselection(null, ProviderId.CODEX.storageId),
            onlyB,
        ) { null }

        // Then
        assertEquals(null, malformed)
        assertEquals(null, stale)
        assertEquals(null, ambiguousLegacy)
    }

    private fun card(index: Int, alias: String): ProviderCardDisplayRecord {
        val id = ProviderAccountId(
            ProviderId.CODEX,
            AccountKey.parseOpaque("acct_${(index + 1).toString(16).padStart(32, '0')}"),
        )
        val version = DisplayVersion.of((index + 1).toLong())
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
                    providerId = ProviderId.CODEX,
                    connectionState = ProviderConnectionState.CONNECTED,
                    updatedAt = "2026-08-29T00:00:00Z",
                    statusUpdatedAt = "2026-08-29T00:00:00Z",
                    lines = listOf(
                        ProviderUsageLine(
                            key = "quota",
                            label = "Quota",
                            remainingPercent = (index % 100) / 100f,
                            remainingText = "${index % 100}%",
                        )
                    ),
                ),
                version,
            ),
            activeRank = index,
        )
    }
}
