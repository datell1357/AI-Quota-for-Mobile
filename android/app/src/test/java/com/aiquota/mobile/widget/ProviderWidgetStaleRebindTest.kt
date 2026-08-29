package com.aiquota.mobile.widget

import android.app.Application
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
import com.aiquota.mobile.local.ProviderCardPreferencesRepository
import com.aiquota.mobile.local.ProviderConnectionState
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.local.ProviderUsageLine
import com.aiquota.mobile.local.ProviderUsageSnapshot
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.Shadows.shadowOf

@RunWith(RobolectricTestRunner::class)
class ProviderWidgetStaleRebindTest {
    private lateinit var context: Context
    private lateinit var application: Application
    private val codexA = id(ProviderId.CODEX, 1)
    private val codexB = id(ProviderId.CODEX, 2)
    private val claude = id(ProviderId.CLAUDE, 3)

    @Before
    fun setUp() {
        context = ApplicationProvider.getApplicationContext()
        application = context as Application
        clearState()
        MainProcessAccountAuthority.open(context).use { authority ->
            authority.register(seed(codexA, "Codex", 81))
            authority.register(seed(codexB, "Codex 2", 23))
            authority.register(seed(claude, "Claude", 64))
        }
    }

    @After
    fun tearDown() = clearState()

    @Test
    fun staleSiblingRefreshFailsClosedAfterRebindAndRestart() {
        // Given
        val repository = ProviderCardPreferencesRepository(context)
        repository.saveProviderWidgetSelection(WIDGET_ID, codexB)
        val stale = WidgetRefreshActions.widgetRefreshIntent(context, WIDGET_ID, codexB)
        repository.saveProviderWidgetSelection(WIDGET_ID, codexA)
        val restarted = ProviderCardPreferencesRepository(context)
        val broadcastsBefore = shadowOf(application).broadcastIntents.size
        val snapshotsBefore = activeSnapshots()

        // When
        WidgetManualRefreshReceiver().onReceive(context, stale)
        WidgetManualRefreshReceiver().onReceive(context, stale)

        // Then
        assertEquals(codexA, restarted.providerWidgetSelection(WIDGET_ID))
        assertEquals(broadcastsBefore, shadowOf(application).broadcastIntents.size)
        assertEquals(snapshotsBefore, activeSnapshots())
    }

    @Test
    fun staleDifferentProviderRefreshFailsClosedAfterRebind() {
        // Given
        val repository = ProviderCardPreferencesRepository(context)
        repository.saveProviderWidgetSelection(WIDGET_ID, codexB)
        val stale = WidgetRefreshActions.widgetRefreshIntent(context, WIDGET_ID, codexB)
        repository.saveProviderWidgetSelection(WIDGET_ID, claude)
        val broadcastsBefore = shadowOf(application).broadcastIntents.size

        // When
        WidgetManualRefreshReceiver().onReceive(context, stale)

        // Then
        assertEquals(claude, repository.providerWidgetSelection(WIDGET_ID))
        assertEquals(broadcastsBefore, shadowOf(application).broadcastIntents.size)
    }

    @Test
    fun exactDetailMissingConsumedAccountIdentityCannotUseCompatibilityFallback() {
        // Given
        val cursorDefault = ProviderAccountId(ProviderId.CURSOR, AccountKey.reservedDefault())
        MainProcessAccountAuthority.open(context).use { authority ->
            authority.register(seed(cursorDefault, "Cursor", 72))
        }
        ProviderCardPreferencesRepository(context).saveProviderWidgetSelection(WIDGET_ID, cursorDefault)
        val malformedExact = providerWidgetDetailIntent(context, WIDGET_ID, cursorDefault)
        malformedExact.removeExtra(WidgetRefreshActions.EXTRA_PROVIDER_ACCOUNT_ID)

        // When
        ProviderWidgetDetailReceiver().onReceive(context, malformedExact)

        // Then
        assertNull(shadowOf(application).nextStartedActivity)
        assertEquals(cursorDefault, ProviderCardPreferencesRepository(context).providerWidgetSelection(WIDGET_ID))
    }

    @Test
    fun exactDetailMalformedOrNoncanonicalConsumedIdentityCannotLaunch() {
        // Given
        ProviderCardPreferencesRepository(context).saveProviderWidgetSelection(WIDGET_ID, codexB)
        val malformedValues = listOf("pa1:broken", "codex:legacy-account")

        malformedValues.forEach { malformed ->
            val intent = providerWidgetDetailIntent(context, WIDGET_ID, codexB)
                .putExtra(WidgetRefreshActions.EXTRA_PROVIDER_ACCOUNT_ID, malformed)

            // When
            ProviderWidgetDetailReceiver().onReceive(context, intent)

            // Then
            assertNull(shadowOf(application).nextStartedActivity)
        }
    }

    @Test
    fun staleDetailFailsClosedAfterSiblingRebind() {
        // Given
        val repository = ProviderCardPreferencesRepository(context)
        repository.saveProviderWidgetSelection(WIDGET_ID, codexB)
        val stale = providerWidgetDetailIntent(context, WIDGET_ID, codexB)
        repository.saveProviderWidgetSelection(WIDGET_ID, codexA)
        val startedBefore = shadowOf(application).nextStartedActivity

        // When
        ProviderWidgetDetailReceiver().onReceive(context, stale)

        // Then
        assertEquals(codexA, repository.providerWidgetSelection(WIDGET_ID))
        assertEquals(startedBefore, shadowOf(application).nextStartedActivity)
    }

    private fun activeSnapshots(): Map<ProviderAccountId, ProviderUsageSnapshot?> =
        MainProcessAccountAuthority.open(context).use { authority ->
            listOf(codexA, codexB, claude).associateWith { authority.accountUsageRecord(it)?.snapshot }
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
        ProviderUsageSnapshot(
            providerId = accountId.providerId,
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
        ),
    )

    private fun id(providerId: ProviderId, index: Int) = ProviderAccountId(
        providerId,
        AccountKey.parseOpaque("acct_${index.toString(16).padStart(32, '0')}"),
    )

    private fun clearState() {
        if (!::context.isInitialized) return
        context.deleteDatabase(DATABASE_NAME)
        listOf("ai_quota_provider_preferences", "ai_quota_widget_refresh_feedback", "ai_quota_widget_cache")
            .forEach { context.getSharedPreferences(it, Context.MODE_PRIVATE).edit().clear().commit() }
    }

    private companion object {
        const val DATABASE_NAME = "ai_quota_accounts_v2.db"
        const val WIDGET_ID = 77
    }
}
