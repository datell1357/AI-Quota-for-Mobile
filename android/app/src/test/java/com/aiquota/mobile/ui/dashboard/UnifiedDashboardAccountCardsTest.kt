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
import com.aiquota.mobile.local.ProviderUsageLine
import com.aiquota.mobile.local.ProviderUsageSnapshot
import com.aiquota.mobile.ui.appLayoutMetrics
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNotEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class UnifiedDashboardAccountCardsTest {
    @Test
    fun headerActionsStackWhenPhoneUsesAccessibilityFontScale() {
        // Given a 375dp phone at the accessibility font-scale boundary.
        val boundaryMetrics = appLayoutMetrics(screenWidthDp = 375, screenHeightDp = 812, fontScale = 1.5f)
        val twoHundredPercentMetrics = appLayoutMetrics(screenWidthDp = 375, screenHeightDp = 812, fontScale = 2f)

        // When the dashboard chooses its header layout.
        val stacksAtBoundary = shouldStackDashboardHeaderActions(boundaryMetrics)
        val stacksAtTwoHundredPercent = shouldStackDashboardHeaderActions(twoHundredPercentMetrics)

        // Then actions move below the title at and above the boundary.
        assertTrue(stacksAtBoundary)
        assertTrue(stacksAtTwoHundredPercent)
    }

    @Test
    fun headerActionsRemainInlineForNormalFontOrTablet() {
        // Given either normal phone text or a tablet width.
        val normalPhoneMetrics = appLayoutMetrics(screenWidthDp = 375, screenHeightDp = 812, fontScale = 1.49f)
        val accessibilityTabletMetrics = appLayoutMetrics(screenWidthDp = 600, screenHeightDp = 1024, fontScale = 2f)

        // When the dashboard chooses its header layout.
        val normalPhoneStacks = shouldStackDashboardHeaderActions(normalPhoneMetrics)
        val accessibilityTabletStacks = shouldStackDashboardHeaderActions(accessibilityTabletMetrics)

        // Then both retain the existing inline header.
        assertFalse(normalPhoneStacks)
        assertFalse(accessibilityTabletStacks)
    }

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

    /**
     * 로그인이 끊긴 카드는 저장된 사용량을 보여주지 않는다. 연결 해제·로그인 취소 뒤에도 스냅샷에는
     * 직전 사용량과 수집 중 상태가 남아, 버튼은 "연결"인데 화면은 "연결 중 + 사용량"으로 어긋났다
     * (2026-09-04 실측).
     */
    @Test
    fun signedOutCardsHideStaleUsageWhileConnectedSiblingsKeepTheirs() {
        val usage = listOf(
            ProviderUsageLine(key = "claude:session", label = "Claude Session", remainingPercent = 0.44f),
        )
        val cards = listOf(
            card(ProviderId.CLAUDE, 1, "Claude", 0, AccountAuthState.REAUTH_REQUIRED, usage),
            card(ProviderId.CLAUDE, 2, "Claude 2", 1, AccountAuthState.SIGNED_OUT, usage),
            card(ProviderId.CODEX, 3, "Codex", 2, AccountAuthState.AUTHENTICATED, usage),
            card(ProviderId.CLAUDE, 4, "Claude 3", 3, AccountAuthState.AUTHENTICATING, usage),
        )

        val content = providerCardDashboardContent(cards, emptySet(), emptyMap())

        // 로그인이 끊긴 두 장은 사용량을 감추고 연결 버튼을 노출한다.
        listOf(content[0], content[1]).forEach { signedOut ->
            assertEquals(ProviderConnectionState.DISCONNECTED, signedOut.snapshot.connectionState)
            assertTrue(signedOut.snapshot.lines.isEmpty())
            assertTrue(signedOut.showConnectAction)
        }
        // 별칭은 그대로 유지한다.
        assertEquals(listOf("Claude", "Claude 2"), content.take(2).map { it.snapshot.displayName })
        // 연결된 카드와 로그인 창이 떠 있는 카드는 손대지 않는다.
        assertEquals(usage, content[2].snapshot.lines)
        assertEquals(ProviderConnectionState.CONNECTED, content[2].snapshot.connectionState)
        assertEquals(usage, content[3].snapshot.lines)
    }

    private fun card(
        provider: ProviderId,
        index: Int,
        alias: String,
        rank: Int,
        authState: AccountAuthState = AccountAuthState.AUTHENTICATED,
        lines: List<ProviderUsageLine> = emptyList(),
    ): ProviderCardDisplayRecord {
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
                    authState = authState,
                    deletionState = AccountDeletionState.NONE,
                    generation = AccountGeneration.of(1),
                    sessionRevision = SessionRevision.of(1),
                    alias = alias,
                    modifiedVersion = version,
                ),
                ProviderUsageSnapshot(
                    providerId = provider,
                    connectionState = ProviderConnectionState.CONNECTED,
                    lines = lines,
                    updatedAt = "2026-08-28T00:00:00Z",
                    statusUpdatedAt = "2026-08-28T00:00:00Z",
                ),
                version,
            ),
            rank,
        )
    }
}
