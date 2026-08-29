package com.aiquota.mobile.widget

import android.content.Context
import androidx.test.core.app.ApplicationProvider
import androidx.test.ext.junit.runners.AndroidJUnit4
import com.aiquota.mobile.accounts.AccountAuthState
import com.aiquota.mobile.accounts.AccountDeletionState
import com.aiquota.mobile.accounts.AccountDemandSet
import com.aiquota.mobile.accounts.AccountGeneration
import com.aiquota.mobile.accounts.AccountKey
import com.aiquota.mobile.accounts.AccountRecord
import com.aiquota.mobile.accounts.AccountState
import com.aiquota.mobile.accounts.AuthorityAccountSeed
import com.aiquota.mobile.accounts.DisplayVersion
import com.aiquota.mobile.accounts.MainProcessAccountAuthority
import com.aiquota.mobile.accounts.ProviderAccountId
import com.aiquota.mobile.accounts.ProviderAccountIdStorageCodec
import com.aiquota.mobile.accounts.SessionRevision
import com.aiquota.mobile.local.ProviderCardPreferencesRepository
import com.aiquota.mobile.local.ProviderConnectionState
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.local.ProviderUsageLine
import com.aiquota.mobile.local.ProviderUsageSnapshot
import com.aiquota.mobile.providers.ProviderSnapshotCodec
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith

@RunWith(AndroidJUnit4::class)
class ProviderWidgetExactInstrumentationTest {
    private lateinit var context: Context
    private val a = id(1)
    private val b = id(2)

    @Before
    fun setUp() {
        context = ApplicationProvider.getApplicationContext()
        clearState()
    }

    @After
    fun tearDown() = clearState()

    @Test
    fun twoExactWidgetBindingsSurviveRestartWithDistinctSnapshotsAndActions() {
        // Given
        seedCards()
        ProviderCardPreferencesRepository(context).apply {
            saveProviderWidgetSelection(WIDGET_A, a)
            saveProviderWidgetSelection(WIDGET_B, b)
        }
        WidgetSnapshotCache(context).apply {
            writeExactCardSnapshot(a, ProviderSnapshotCodec.encode(listOf(snapshot(81))))
            writeExactCardSnapshot(b, ProviderSnapshotCodec.encode(listOf(snapshot(23))))
        }

        // When
        val restarted = ProviderCardPreferencesRepository(context)
        val refreshA = WidgetRefreshActions.widgetRefreshIntent(context, WIDGET_A, a)
        val refreshB = WidgetRefreshActions.widgetRefreshIntent(context, WIDGET_B, b)
        val stateA = requireNotNull(WidgetSnapshotCache(context).readExactCardState(a))
        val stateB = requireNotNull(WidgetSnapshotCache(context).readExactCardState(b))

        // Then
        assertEquals(a, restarted.providerWidgetSelection(WIDGET_A))
        assertEquals(b, restarted.providerWidgetSelection(WIDGET_B))
        assertEquals("81%", ProviderSnapshotCodec.decode(stateA.snapshotJson).single().lines.single().remainingText)
        assertEquals("23%", ProviderSnapshotCodec.decode(stateB.snapshotJson).single().lines.single().remainingText)
        assertEquals(ProviderAccountIdStorageCodec.encode(a), refreshA.getStringExtra(WidgetRefreshActions.EXTRA_PROVIDER_ACCOUNT_ID))
        assertEquals(ProviderAccountIdStorageCodec.encode(b), refreshB.getStringExtra(WidgetRefreshActions.EXTRA_PROVIDER_ACCOUNT_ID))
        assertTrue(refreshA.data != refreshB.data)
        android.util.Log.i(TAG, "happy widgets=$WIDGET_A:$a,$WIDGET_B:$b usage=81,23")
    }

    @Test
    fun tombstonedWidgetActionDoesNotFallbackToSiblingOrSubmitDemand() {
        // Given
        seedCards()
        val preferences = ProviderCardPreferencesRepository(context)
        preferences.saveProviderWidgetSelection(WIDGET_A, a)
        preferences.saveProviderWidgetSelection(WIDGET_B, b)
        MainProcessAccountAuthority.open(context).use { authority ->
            authority.beginProviderCardDeletion(b)
        }
        preferences.clearExactCardArtifacts(b)
        val stale = WidgetRefreshActions.widgetRefreshIntent(context, WIDGET_B, b)

        // When
        WidgetManualRefreshReceiver().onReceive(context, stale)

        // Then
        assertEquals(a, preferences.providerWidgetSelection(WIDGET_A))
        assertNull(preferences.providerWidgetSelection(WIDGET_B))
        MainProcessAccountAuthority.open(context).use { authority ->
            val demands = authority.refreshDemandRecords()
            assertEquals(AccountDemandSet.NONE, demands.single { it.card.accountId == a }.demand)
            assertTrue(demands.none { it.card.accountId == b })
        }
        android.util.Log.i(TAG, "failure stale=$b sibling=$a demand=0 unavailable=true")
    }

    private fun seedCards() {
        MainProcessAccountAuthority.open(context).use { authority ->
            authority.register(seed(a, "Codex", 81))
            authority.register(seed(b, "Codex 2", 23))
        }
    }

    private fun seed(accountId: ProviderAccountId, alias: String, remaining: Int) = AuthorityAccountSeed(
        AccountRecord(
            accountId,
            AccountState.ACTIVE,
            AccountAuthState.AUTHENTICATED,
            AccountDeletionState.NONE,
            AccountGeneration.of(1),
            SessionRevision.of(1),
            alias = alias,
            modifiedVersion = DisplayVersion.ZERO,
        ),
        snapshot(remaining),
    )

    private fun snapshot(remaining: Int) = ProviderUsageSnapshot(
        providerId = ProviderId.CODEX,
        connectionState = ProviderConnectionState.CONNECTED,
        updatedAt = "2026-08-29T00:00:00Z",
        statusUpdatedAt = "2026-08-29T00:00:00Z",
        lines = listOf(
            ProviderUsageLine(
                key = "quota",
                label = "Quota",
                remainingPercent = remaining / 100f,
                remainingText = "$remaining%",
            )
        ),
    )

    private fun id(index: Int) = ProviderAccountId(
        ProviderId.CODEX,
        AccountKey.parseOpaque("acct_${index.toString(16).padStart(32, '0')}"),
    )

    private fun clearState() {
        if (!::context.isInitialized) return
        context.deleteDatabase(DATABASE_NAME)
        listOf("ai_quota_provider_preferences", "ai_quota_widget_cache", "ai_quota_widget_refresh_feedback")
            .forEach { context.getSharedPreferences(it, Context.MODE_PRIVATE).edit().clear().commit() }
    }

    private companion object {
        const val TAG = "Task16WidgetQA"
        const val DATABASE_NAME = "ai_quota_accounts_v2.db"
        const val WIDGET_A = 1_601
        const val WIDGET_B = 1_602
    }
}
