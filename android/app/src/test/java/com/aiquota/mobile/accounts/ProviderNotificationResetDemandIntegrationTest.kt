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
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner

@RunWith(RobolectricTestRunner::class)
class ProviderNotificationResetDemandIntegrationTest {
    private lateinit var context: Context
    private lateinit var databaseName: String
    private lateinit var authority: MainProcessAccountAuthority
    private lateinit var repository: AccountUsageRepository
    private val a = account(1)
    private val b = account(2)

    @Before
    fun setUp() {
        context = ApplicationProvider.getApplicationContext()
        databaseName = "notification-reset-demand-${counter.incrementAndGet()}.db"
        context.deleteDatabase(databaseName)
        authority = MainProcessAccountAuthority.open(context, databaseName)
        repository = AccountUsageRepository.openForTest(authority)
        authority.register(seed(a, "Codex"))
        authority.register(seed(b, "Work"))
    }

    @After
    fun tearDown() {
        repository.close()
        context.deleteDatabase(databaseName)
    }

    @Test
    fun exactResetDemandTargetsOnlyB_andDuplicateCallbackIsVersionRejected() {
        // Given
        val beforeA = requireNotNull(repository.read(a))
        val beforeB = requireNotNull(repository.read(b))
        val request = AccountRefreshRequest(
            b,
            beforeB.version,
            beforeB.account.generation,
            beforeB.account.sessionRevision,
            AccountDemand.RESET,
        )

        // When
        val accepted = repository.requestRefresh(request)
        val duplicate = repository.requestRefresh(request)
        val demands = authority.refreshDemandRecords().associate { it.card.accountId to it.demand }

        // Then
        assertTrue(accepted is AccountRefreshRequestResult.Accepted)
        assertEquals(AccountRefreshRequestResult.Rejected(AccountRefreshRequestRejection.VERSION_MISMATCH), duplicate)
        assertEquals(AccountDemandSet.NONE, demands.getValue(a))
        assertEquals(AccountDemandSet.of(AccountDemand.RESET), demands.getValue(b))
        assertEquals(beforeA, repository.read(a))
    }

    private fun seed(id: ProviderAccountId, alias: String): AuthorityAccountSeed {
        val version = DisplayVersion.ZERO
        return AuthorityAccountSeed(
            AccountRecord(
                id,
                AccountState.ACTIVE,
                AccountAuthState.AUTHENTICATED,
                AccountDeletionState.NONE,
                AccountGeneration.of(1),
                SessionRevision.of(1),
                alias = alias,
                modifiedVersion = version,
            ),
            ProviderUsageSnapshot(
                ProviderId.CODEX,
                connectionState = ProviderConnectionState.CONNECTED,
                lines = listOf(ProviderUsageLine("Primary", 0.5f, key = "primary:window")),
            ),
        )
    }

    private fun account(index: Int) = ProviderAccountId(
        ProviderId.CODEX,
        AccountKey.parseOpaque("acct_${index.toString(16).padStart(32, '0')}"),
    )

    private companion object {
        val counter = AtomicInteger()
    }
}
