package com.aiquota.mobile.accounts

import android.content.Context
import androidx.test.core.app.ApplicationProvider
import com.aiquota.mobile.local.ProviderConnectionState
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.local.ProviderUsageLine
import com.aiquota.mobile.local.ProviderUsageSnapshot
import java.util.concurrent.atomic.AtomicInteger
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner

@RunWith(RobolectricTestRunner::class)
class AccountLoginAuthorityTest {
    private lateinit var context: Context
    private lateinit var database: String
    private lateinit var authority: MainProcessAccountAuthority

    @Before
    fun open() {
        context = ApplicationProvider.getApplicationContext()
        database = "exact-login-${counter.incrementAndGet()}.db"
        context.deleteDatabase(database)
        authority = MainProcessAccountAuthority.open(context, database)
    }

    @After
    fun close() {
        authority.close()
        context.deleteDatabase(database)
    }

    @Test
    fun staleCallbackCannotPersistAfterNewGenerationAndSession() {
        val a = id(1)
        val b = id(2)
        authority.register(seed(a))
        authority.register(seed(b))
        val aBefore = requireNotNull(authority.accountUsageRecord(a)).account
        val oldB = requireNotNull(authority.beginAuthentication(b))
        val currentB = requireNotNull(authority.beginAuthentication(b))
        var stalePersisted = false

        assertFalse(authority.completeAuthentication(oldB) { stalePersisted = true; true })
        assertFalse(authority.completeAuthentication(
            currentB.copy(generation = oldB.generation)
        ) { stalePersisted = true; true })
        assertFalse(authority.completeAuthentication(
            currentB.copy(sessionRevision = oldB.sessionRevision)
        ) { stalePersisted = true; true })
        assertFalse(stalePersisted)
        assertTrue(authority.completeAuthentication(currentB) { true })
        assertEquals(currentB, authority.currentBinding(b))
        assertEquals(aBefore, requireNotNull(authority.accountUsageRecord(a)).account)
    }

    @Test
    fun exactReauthLogoutAndRestartNeverMutateSibling() {
        val a = id(1)
        val b = id(2)
        authority.register(seed(a))
        authority.register(seed(b))
        val aBefore = requireNotNull(authority.accountUsageRecord(a)).account
        val bLogin = requireNotNull(authority.beginAuthentication(b))

        assertTrue(authority.markReauthentication(bLogin))
        assertEquals(AccountAuthState.REAUTH_REQUIRED, requireNotNull(authority.accountUsageRecord(b)).account.authState)
        assertEquals(aBefore, requireNotNull(authority.accountUsageRecord(a)).account)
        var cleared = false
        assertTrue(authority.logoutExact(b) { cleared = true; true })
        assertTrue(cleared)
        val afterLogout = requireNotNull(authority.currentBinding(b))
        assertTrue(afterLogout.generation.value > bLogin.generation.value)
        assertTrue(afterLogout.sessionRevision.value > bLogin.sessionRevision.value)

        authority.close()
        authority = MainProcessAccountAuthority.open(context, database)
        assertEquals(afterLogout, authority.currentBinding(b))
        assertEquals(aBefore, requireNotNull(authority.accountUsageRecord(a)).account)
    }

    /**
     * 로그아웃하면 그 계정의 사용량 스냅샷도 사라져야 한다. 남겨두면 카드가 "연결 끊김"인데도
     * 직전 사용량과 수집 중 상태를 계속 보여준다(2026-09-04 실측).
     */
    @Test
    fun logoutDropsTheAccountUsageSnapshotWithoutTouchingSiblings() {
        val a = id(1)
        val b = id(2)
        authority.register(seed(a))
        authority.register(seed(b))
        val repository = AccountUsageRepository.openForTest(authority)
        val usage = listOf(ProviderUsageLine(key = "codex:session", label = "Session", remainingPercent = 0.44f))
        listOf(a, b).forEach { accountId ->
            val record = requireNotNull(authority.accountUsageRecord(accountId))
            val committed = repository.write(
                AccountUsageWrite(
                    accountId,
                    record.version,
                    record.account.generation,
                    record.account.sessionRevision,
                    ProviderUsageSnapshot(
                        providerId = accountId.providerId,
                        connectionState = ProviderConnectionState.CONNECTED,
                        lines = usage,
                        updatedAt = "2026-09-04T00:00:00Z",
                    ),
                )
            )
            assertTrue(committed is AccountUsageWriteResult.Committed)
        }
        val siblingBefore = requireNotNull(authority.accountUsageRecord(a)).snapshot
        assertEquals(listOf("codex:session"), siblingBefore.lines.map { it.key })

        assertTrue(authority.logoutExact(b) { true })

        // 로그아웃한 계정은 사용량이 사라지고, 형제 카드는 그대로다.
        val afterLogout = requireNotNull(authority.accountUsageRecord(b)).snapshot
        assertEquals(ProviderConnectionState.DISCONNECTED, afterLogout.connectionState)
        assertTrue(afterLogout.lines.isEmpty())
        assertEquals(siblingBefore, requireNotNull(authority.accountUsageRecord(a)).snapshot)
    }

    private fun seed(id: ProviderAccountId) = AuthorityAccountSeed(
        AccountRecord(
            id,
            AccountState.ACTIVE,
            AccountAuthState.AUTHENTICATED,
            AccountDeletionState.NONE,
            AccountGeneration.of(1),
            SessionRevision.of(1),
        ),
        ProviderUsageSnapshot(
            providerId = id.providerId,
            connectionState = ProviderConnectionState.CONNECTED,
            updatedAt = "2026-08-29T00:00:00Z",
        ),
    )

    private fun id(value: Int) = ProviderAccountId(
        ProviderId.CODEX,
        AccountKey.parseOpaque("acct_${value.toString(16).padStart(32, '0')}"),
    )

    private companion object {
        val counter = AtomicInteger()
    }
}
