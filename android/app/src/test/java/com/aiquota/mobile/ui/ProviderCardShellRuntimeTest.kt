package com.aiquota.mobile.ui

import android.app.Application
import android.content.Context
import androidx.test.core.app.ApplicationProvider
import org.robolectric.annotation.Config
import com.aiquota.mobile.accounts.AccountAuthorityDatabase
import com.aiquota.mobile.accounts.AccountAuthState
import com.aiquota.mobile.accounts.AccountDeletionState
import com.aiquota.mobile.accounts.AccountGeneration
import com.aiquota.mobile.accounts.AccountKey
import com.aiquota.mobile.accounts.AccountRecord
import com.aiquota.mobile.accounts.AccountState
import com.aiquota.mobile.accounts.AuthorityAccountSeed
import com.aiquota.mobile.accounts.MainProcessAccountAuthority
import com.aiquota.mobile.accounts.ProviderAccountId
import com.aiquota.mobile.accounts.SessionRevision
import com.aiquota.mobile.local.LocalUsageRepository
import com.aiquota.mobile.local.ProviderConnectionState
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.local.ProviderUsageLine
import com.aiquota.mobile.local.ProviderUsageSnapshot
import com.aiquota.mobile.providers.ProviderConnector
import com.aiquota.mobile.providers.ProviderConnectorRegistry
import com.aiquota.mobile.providers.ProviderConnectorState
import com.aiquota.mobile.providers.ProviderSessionResetter
import kotlinx.coroutines.runBlocking
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner

@RunWith(RobolectricTestRunner::class)
@Config(application = Application::class, sdk = [28])
class ProviderCardShellRuntimeTest {
    private lateinit var context: Context

    @Before
    fun setUp() {
        context = ApplicationProvider.getApplicationContext()
        clearFixtureState()
    }

    @After
    fun tearDown() {
        clearFixtureState()
    }

    @Test
    fun disconnectSingleReservedLogsOutExactAccountAndClearsLegacySnapshot() = runBlocking {
        val accountId = ProviderAccountId(
            ProviderId.CURSOR,
            AccountKey.parseOpaque("acct_00000000000000000000000000000001"),
        )
        val before = MainProcessAccountAuthority.open(context).use { authority ->
            authority.register(seed(accountId)).account
        }
        LocalUsageRepository(context).saveSnapshot(connectedLegacySnapshot(accountId.providerId))

        val runtime = ProviderCardShellRuntime.open(context, enabled = true)
        try {
            val connector = RecordingConnector(accountId.providerId)
            val operation = runtime.beginDisconnect(accountId)

            runtime.disconnectSingleReserved(
                operation = operation,
                connectorRegistry = ProviderConnectorRegistry(listOf(connector)),
                sessionResetter = ProviderSessionResetter(context),
                localUsageRepository = LocalUsageRepository(context),
            )

            assertEquals(1, connector.disconnectCalls)
            assertNull(runtime.state.operation(accountId))
            val card = requireNotNull(runtime.state.card(accountId))
            assertEquals(AccountAuthState.REAUTH_REQUIRED, card.authState)
            assertTrue(card.sessionRevision.value > before.sessionRevision.value)
            assertEquals(ProviderConnectionState.DISCONNECTED, card.displayRecord.snapshot.connectionState)
            assertTrue(card.displayRecord.snapshot.lines.isEmpty())
        } finally {
            runtime.close()
        }

        MainProcessAccountAuthority.open(context).use { authority ->
            val after = requireNotNull(authority.accountUsageRecord(accountId))
            assertEquals(AccountAuthState.REAUTH_REQUIRED, after.account.authState)
            assertTrue(after.account.generation.value > before.generation.value)
            assertTrue(after.account.sessionRevision.value > before.sessionRevision.value)
            assertEquals(ProviderConnectionState.DISCONNECTED, after.snapshot.connectionState)
            assertTrue(after.snapshot.lines.isEmpty())
        }
        assertTrue(
            LocalUsageRepository(context).readSnapshots().none { it.providerId == accountId.providerId },
        )
    }

    private fun seed(accountId: ProviderAccountId): AuthorityAccountSeed = AuthorityAccountSeed(
        account = AccountRecord(
            id = accountId,
            state = AccountState.ACTIVE,
            authState = AccountAuthState.AUTHENTICATED,
            deletionState = AccountDeletionState.NONE,
            generation = AccountGeneration.of(4),
            sessionRevision = SessionRevision.of(7),
            alias = accountId.providerId.displayName,
        ),
        snapshot = connectedLegacySnapshot(accountId.providerId),
    )

    private fun connectedLegacySnapshot(providerId: ProviderId): ProviderUsageSnapshot =
        ProviderUsageSnapshot(
            providerId = providerId,
            connectionState = ProviderConnectionState.CONNECTED,
            lines = listOf(
                ProviderUsageLine(
                    key = "${providerId.storageId}:quota",
                    label = "Quota",
                    remainingPercent = 0.5f,
                ),
            ),
            updatedAt = "2026-09-05T00:00:00Z",
        )

    private fun clearFixtureState() {
        context.deleteDatabase(AccountAuthorityDatabase.DEFAULT_DATABASE_NAME)
        context.getSharedPreferences("ai_quota_local_usage", Context.MODE_PRIVATE)
            .edit()
            .clear()
            .commit()
    }

    private class RecordingConnector(
        override val providerId: ProviderId,
    ) : ProviderConnector {
        override val startUrl: String = "https://example.invalid/login"
        var disconnectCalls: Int = 0

        override suspend fun connectionState(): ProviderConnectorState = ProviderConnectorState.CONNECTED

        override suspend fun disconnect() {
            disconnectCalls++
        }
    }
}
