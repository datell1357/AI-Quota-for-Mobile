package com.aiquota.mobile.ui

import com.aiquota.mobile.accounts.AccountAuthState
import com.aiquota.mobile.accounts.AccountDeletionState
import com.aiquota.mobile.accounts.AccountGeneration
import com.aiquota.mobile.accounts.AccountRecord
import com.aiquota.mobile.accounts.AccountRefreshRequestResult
import com.aiquota.mobile.accounts.AccountState
import com.aiquota.mobile.accounts.AccountKey
import com.aiquota.mobile.accounts.DisplayVersion
import com.aiquota.mobile.accounts.ProviderAccountId
import com.aiquota.mobile.accounts.ProviderAccountIdStorageCodec
import com.aiquota.mobile.accounts.ProviderCardCatalogLoadFailure
import com.aiquota.mobile.accounts.ProviderCardCatalogLoadResult
import com.aiquota.mobile.accounts.ProviderCardCatalogLoader
import com.aiquota.mobile.accounts.ProviderCardCatalogSnapshot
import com.aiquota.mobile.accounts.ProviderCardDisplayPage
import com.aiquota.mobile.accounts.ProviderCardDisplayPageSource
import com.aiquota.mobile.accounts.ProviderCardDisplayRecord
import com.aiquota.mobile.accounts.SessionRevision
import com.aiquota.mobile.accounts.VersionedDisplayRecord
import com.aiquota.mobile.local.ProviderConnectionState
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.local.ProviderUsageLine
import com.aiquota.mobile.local.ProviderUsageSnapshot
import java.security.MessageDigest
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNotEquals
import org.junit.Assert.assertSame
import org.junit.Assert.assertThrows
import org.junit.Assert.assertTrue
import org.junit.Test

class ProviderCardShellStateTest {
    @Test
    fun zeroOneFourAndThousandLoadWithoutProviderCollapseInBoundedCalls() {
        val four = listOf(
            card(ProviderId.CLAUDE, 1, "Claude", 0),
            card(ProviderId.CODEX, 2, "Codex", 1),
            card(ProviderId.CODEX, 3, "Codex 2", 2),
            card(ProviderId.CURSOR, 4, "Cursor", 3),
        )
        listOf(0, 1, 4, 1_000).forEach { count ->
            val records = when (count) {
                0 -> emptyList()
                1 -> four.take(1)
                4 -> four
                else -> (0 until count).map { rank -> card(ProviderId.CODEX, rank + 10, "Codex ${rank + 1}", rank) }
            }
            val loaded = ProviderCardCatalogLoader(source(records), pageSize = 128).load()
                as ProviderCardCatalogLoadResult.Loaded
            assertEquals(count, loaded.snapshot.cards.size)
            assertEquals(records.map { it.accountId }, loaded.snapshot.cards.map { it.accountId })
            assertEquals(if (count == 0) 1 else (count + 127) / 128, loaded.pageCalls)
        }
        assertEquals(listOf("Claude", "Codex", "Codex 2", "Cursor"), four.map { it.alias })
    }

    @Test
    fun duplicateRepeatedSkippedDriftingAndMalformedPagesFailClosed() {
        val cards = (0 until 4).map { card(ProviderId.CODEX, it + 1, "Codex ${it + 1}", it) }
        val valid = source(cards)
        val mutations = listOf<ProviderCardDisplayPageSource>(
            ProviderCardDisplayPageSource { offset, limit ->
                if (offset == 0) valid.loadPage(offset, limit)
                else valid.loadPage(offset, limit).copy(records = listOf(cards[0].copy(activeRank = offset)))
            },
            ProviderCardDisplayPageSource { offset, limit ->
                valid.loadPage(offset, limit).copy(nextOffset = if (offset == 0) 3 else null)
            },
            ProviderCardDisplayPageSource { offset, limit ->
                valid.loadPage(offset, limit).copy(totalCount = if (offset == 0) 4 else 5)
            },
            ProviderCardDisplayPageSource { offset, limit ->
                valid.loadPage(offset, limit).copy(version = DisplayVersion.of((offset + 9).toLong()))
            },
            ProviderCardDisplayPageSource { offset, limit ->
                valid.loadPage(offset, limit).let { page ->
                    if (offset == 0) page.copy(records = page.records.mapIndexed { index, it -> it.copy(activeRank = index + 1) }) else page
                }
            },
        )
        val loadedState = ProviderCardShellState().applyCatalog(ProviderCardCatalogLoader(valid, 2).load())
        val prior = loadedState.beginOperation(cards[1].accountId, ProviderCardOperationKind.DISCONNECT).state
        mutations.forEach { mutation ->
            val result = ProviderCardCatalogLoader(mutation, 2).load()
            assertTrue(result is ProviderCardCatalogLoadResult.Rejected)
            val after = prior.applyCatalog(result)
            assertEquals(prior.catalog, after.catalog)
            assertEquals(prior.busyAccountIds, after.busyAccountIds)
        }
    }

    @Test
    fun staleSameCardCompletionCannotClearASecondOperation() {
        val a = card(ProviderId.CODEX, 1, "Codex", 0)
        val b = card(ProviderId.CODEX, 2, "Codex 2", 1)
        val initial = ProviderCardShellState()
            .applyCatalog(ProviderCardCatalogLoader(source(listOf(a, b))).load())
        val first = initial.beginOperation(a.accountId, ProviderCardOperationKind.DISCONNECT)
        val second = first.state.beginOperation(a.accountId, ProviderCardOperationKind.REFRESH)
        assertTrue(second.operation.epoch.value > first.operation.epoch.value)

        assertSame(second.state, second.state.completeOperation(first.operation))
        assertSame(second.state, second.state.failOperation(first.operation, "STALE"))
        assertTrue(a.accountId in second.state.refreshPendingAccountIds)

        val sibling = second.state.beginOperation(b.accountId, ProviderCardOperationKind.DISCONNECT)
        val beforeSiblingCompletion = sibling.state
        val afterSiblingCompletion = sibling.state.completeOperation(sibling.operation)
        assertEquals(beforeSiblingCompletion.operation(a.accountId), afterSiblingCompletion.operation(a.accountId))
        assertTrue(a.accountId in afterSiblingCompletion.busyAccountIds)
        assertTrue(b.accountId !in afterSiblingCompletion.busyAccountIds)

        val failedSecond = afterSiblingCompletion.failOperation(second.operation, "NEWEST")
        assertEquals("NEWEST", failedSecond.errors[a.accountId])
        assertTrue(a.accountId !in failedSecond.busyAccountIds)
        assertSame(failedSecond, failedSecond.completeOperation(second.operation))
        assertSame(failedSecond, failedSecond.failOperation(second.operation, "DUPLICATE"))

        val third = failedSecond.beginOperation(a.accountId, ProviderCardOperationKind.DISCONNECT)
        assertTrue(a.accountId in third.state.busyAccountIds)
        val completedThird = third.state.completeOperation(third.operation)
        assertTrue(a.accountId !in completedThird.busyAccountIds)
        assertTrue(a.accountId !in completedThird.errors)
        assertSame(completedThird, completedThird.completeOperation(third.operation))
    }

    @Test
    fun reloadVersionChangeInvalidatesCapturedTokenWithoutReusingItsEpoch() {
        val original = card(ProviderId.CODEX, 1, "Codex", 0)
        val initial = ProviderCardShellState()
            .applyCatalog(ProviderCardCatalogLoader(source(listOf(original))).load())
        val started = initial.beginOperation(original.accountId, ProviderCardOperationKind.DISCONNECT)
        val nextVersion = DisplayVersion.of(9)
        val updated = original.copy(
            displayRecord = original.displayRecord.copy(
                account = original.displayRecord.account.copy(modifiedVersion = nextVersion),
                version = nextVersion,
            )
        )
        val reloaded = started.state.applyCatalog(
            ProviderCardCatalogLoadResult.Loaded(
                ProviderCardCatalogSnapshot(nextVersion, listOf(updated)),
                pageCalls = 1,
            )
        )

        assertTrue(reloaded.operations.isEmpty())
        assertSame(reloaded, reloaded.completeOperation(started.operation))
        assertSame(reloaded, reloaded.failOperation(started.operation, "STALE"))
        val newer = reloaded.beginOperation(original.accountId, ProviderCardOperationKind.DISCONNECT)
        assertTrue(newer.operation.epoch.value > started.operation.epoch.value)
    }

    @Test
    fun exactBStateAndCommittedSnapshotLeaveSiblingAObjectIdentical() {
        val a = card(ProviderId.CODEX, 1, "Codex", 0)
        val b = card(ProviderId.CODEX, 2, "Codex 2", 1)
        var state = ProviderCardShellState().applyCatalog(ProviderCardCatalogLoader(source(listOf(a, b))).load())
        val aBefore = state.card(a.accountId)

        val refresh = state.beginOperation(b.accountId, ProviderCardOperationKind.REFRESH)
        state = refresh.state
        val nextVersion = DisplayVersion.of(b.displayRecord.version.value + 1)
        val committed = b.displayRecord.copy(
            account = b.displayRecord.account.copy(modifiedVersion = nextVersion),
            snapshot = snapshot(ProviderId.CODEX, 12),
            version = nextVersion,
        )
        state = state.applyRefresh(refresh.operation, AccountRefreshRequestResult.Accepted(committed))

        assertSame(aBefore, state.card(a.accountId))
        assertTrue(a.accountId !in state.busyAccountIds)
        assertTrue(a.accountId !in state.refreshPendingAccountIds)
        assertTrue(a.accountId !in state.errors)
        assertEquals(12, state.card(b.accountId)?.displayRecord?.snapshot?.lines?.single()?.remainingText?.removeSuffix("%")?.toInt())
        assertThrows(IllegalArgumentException::class.java) {
            state.applyRefresh(refresh.operation, AccountRefreshRequestResult.Accepted(b.displayRecord))
        }

        val beforeStaleReload = state
        val staleReload = ProviderCardCatalogLoadResult.Loaded(
            ProviderCardCatalogSnapshot(DisplayVersion.of(8), listOf(a, b)),
            pageCalls = 1,
        )
        state = state.applyCatalog(staleReload)
        assertEquals(beforeStaleReload.catalog, state.catalog)
        assertEquals(ProviderCardCatalogLoadFailure.STALE_DISPLAY, state.catalogFailure)
    }

    @Test
    fun executableStateTraceCoversCardinalityAndExactBMutation() {
        val counts = listOf(0, 1, 4, 1_000).associateWith { count ->
            val cards = (0 until count).map { rank ->
                val provider = when (rank) {
                    0 -> ProviderId.CLAUDE
                    1, 2 -> ProviderId.CODEX
                    3 -> ProviderId.CURSOR
                    else -> ProviderId.CODEX
                }
                card(provider, rank + 1, "${provider.displayName}-$rank", rank)
            }
            val loaded = ProviderCardCatalogLoader(source(cards), 128).load() as ProviderCardCatalogLoadResult.Loaded
            "${loaded.snapshot.cards.size}/${loaded.pageCalls}/${sha256(loaded.snapshot.cards.joinToString { ProviderAccountIdStorageCodec.encode(it.accountId) })}"
        }
        val a = card(ProviderId.CODEX, 2_001, "Codex", 0)
        val b = card(ProviderId.CODEX, 2_002, "Codex 2", 1)
        val loaded = ProviderCardShellState()
            .applyCatalog(ProviderCardCatalogLoader(source(listOf(a, b))).load())
        val state = loaded.beginOperation(b.accountId, ProviderCardOperationKind.DISCONNECT).state
            .setError(b.accountId, "B")
        assertTrue(a.accountId !in state.busyAccountIds && a.accountId !in state.errors)
        println(
            "QA_TASK12_TRACE=counts=$counts;order=Claude,Codex,Codex 2,Cursor;" +
                "B_BUSY=${b.accountId in state.busyAccountIds};A_BUSY=${a.accountId in state.busyAccountIds};" +
                "B_ERROR=${state.errors[b.accountId]};A_ERROR=${state.errors[a.accountId]}"
        )
    }

    @Test
    fun accountKeyNotAliasProviderOrRankDefinesIdentity() {
        val first = card(ProviderId.CODEX, 1, "Shared", 0)
        val second = card(ProviderId.CODEX, 2, "Shared", 1)
        assertNotEquals(first.accountId, second.accountId)
        val loaded = ProviderCardCatalogLoader(source(listOf(first, second))).load()
        assertTrue(loaded is ProviderCardCatalogLoadResult.Loaded)
    }

    private fun source(cards: List<ProviderCardDisplayRecord>) = ProviderCardDisplayPageSource { offset, limit ->
        val page = cards.drop(offset).take(limit)
        ProviderCardDisplayPage(
            records = page,
            offset = offset,
            totalCount = cards.size,
            nextOffset = (offset + page.size).takeIf { it < cards.size },
            version = DisplayVersion.of(8),
        )
    }

    private fun card(provider: ProviderId, index: Int, alias: String, rank: Int): ProviderCardDisplayRecord {
        val accountId = ProviderAccountId(
            provider,
            AccountKey.parseOpaque("acct_${index.toString(16).padStart(32, '0')}")
        )
        val version = DisplayVersion.of(8)
        return ProviderCardDisplayRecord(
            VersionedDisplayRecord(
                AccountRecord(
                    id = accountId,
                    state = AccountState.ACTIVE,
                    authState = AccountAuthState.AUTHENTICATED,
                    deletionState = AccountDeletionState.NONE,
                    generation = AccountGeneration.of(1),
                    sessionRevision = SessionRevision.of(1),
                    alias = alias,
                    modifiedVersion = version,
                ),
                snapshot(provider, 50),
                version,
            ),
            rank,
        )
    }

    private fun sha256(value: String): String = MessageDigest.getInstance("SHA-256")
        .digest(value.toByteArray())
        .joinToString("") { "%02x".format(it) }

    private fun snapshot(provider: ProviderId, remaining: Int) = ProviderUsageSnapshot(
        providerId = provider,
        connectionState = ProviderConnectionState.CONNECTED,
        updatedAt = "2026-08-28T00:00:00Z",
        statusUpdatedAt = "2026-08-28T00:00:00Z",
        lines = listOf(
            ProviderUsageLine(
                label = "Quota",
                remainingPercent = remaining / 100f,
                remainingText = "$remaining%",
            )
        ),
    )
}
