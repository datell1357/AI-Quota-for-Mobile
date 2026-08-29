package com.aiquota.mobile.widget

import android.content.Context
import androidx.test.core.app.ApplicationProvider
import com.aiquota.mobile.accounts.AccountAuthState
import com.aiquota.mobile.accounts.AccountDeletionState
import com.aiquota.mobile.accounts.AccountGeneration
import com.aiquota.mobile.accounts.AccountKey
import com.aiquota.mobile.accounts.AccountRecord
import com.aiquota.mobile.accounts.AccountState
import com.aiquota.mobile.accounts.AuthorityAccountSeed
import com.aiquota.mobile.accounts.DisplayVersion
import com.aiquota.mobile.accounts.MainProcessAccountAuthority
import com.aiquota.mobile.accounts.ProviderAccountId
import com.aiquota.mobile.accounts.SessionRevision
import com.aiquota.mobile.local.ProviderConnectionState
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.local.ProviderUsageLine
import com.aiquota.mobile.local.ProviderUsageSnapshot
import com.aiquota.mobile.providers.ProviderSnapshotCodec
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNotEquals
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner

@RunWith(RobolectricTestRunner::class)
class ProviderWidgetRemoteViewsExactTest {
    private lateinit var context: Context
    private val a = id(1)
    private val b = id(2)

    @Before
    fun setUp() {
        context = ApplicationProvider.getApplicationContext()
        context.deleteDatabase(DATABASE_NAME)
        context.getSharedPreferences("ai_quota_widget_cache", Context.MODE_PRIVATE).edit().clear().commit()
    }

    @After
    fun tearDown() {
        context.deleteDatabase(DATABASE_NAME)
        context.getSharedPreferences("ai_quota_widget_cache", Context.MODE_PRIVATE).edit().clear().commit()
    }

    @Test
    fun exactRenderAuthorityRetainsDistinctAliasAndUsageAcrossRestart() {
        // Given
        MainProcessAccountAuthority.open(context).use { authority ->
            authority.register(seed(a, "Codex", 81))
            authority.register(seed(b, "Codex 2", 23))
        }
        WidgetSnapshotCache(context).apply {
            write(ProviderSnapshotCodec.encode(listOf(snapshot(99))))
            writeExactCardSnapshot(a, ProviderSnapshotCodec.encode(listOf(snapshot(81))))
            writeExactCardSnapshot(b, ProviderSnapshotCodec.encode(listOf(snapshot(23))))
        }

        // When
        val presentationA = presentation(a)
        val presentationB = presentation(b)

        // Then
        assertEquals("Codex", presentationA.alias)
        assertEquals("Codex 2", presentationB.alias)
        assertEquals("81%", presentationA.payload.lines.single().remainingText)
        assertEquals("23%", presentationB.payload.lines.single().remainingText)
        assertNotEquals(presentationA, presentationB)
    }

    private fun presentation(accountId: ProviderAccountId): ProviderWidgetPresentation {
        val record = requireNotNull(ProviderWidgetCardCatalog.activeRecord(context, accountId))
        return providerWidgetPresentation(
            record,
            providerWidgetSnapshotJson(context, accountId, record),
        )
    }

    private fun seed(accountId: ProviderAccountId, alias: String, remaining: Int) = AuthorityAccountSeed(
        account = AccountRecord(
            id = accountId,
            state = AccountState.ACTIVE,
            authState = AccountAuthState.AUTHENTICATED,
            deletionState = AccountDeletionState.NONE,
            generation = AccountGeneration.of(1),
            sessionRevision = SessionRevision.of(1),
            alias = alias,
            modifiedVersion = DisplayVersion.ZERO,
        ),
        snapshot = snapshot(remaining),
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

    private companion object {
        const val DATABASE_NAME = "ai_quota_accounts_v2.db"
    }
}
