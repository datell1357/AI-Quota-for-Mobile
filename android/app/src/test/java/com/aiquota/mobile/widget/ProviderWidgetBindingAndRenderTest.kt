package com.aiquota.mobile.widget

import android.content.Context
import androidx.test.core.app.ApplicationProvider
import com.aiquota.mobile.accounts.AccountAuthState
import com.aiquota.mobile.accounts.AccountDeletionState
import com.aiquota.mobile.accounts.AccountGeneration
import com.aiquota.mobile.accounts.AccountKey
import com.aiquota.mobile.accounts.AccountRecord
import com.aiquota.mobile.accounts.AccountState
import com.aiquota.mobile.accounts.DisplayVersion
import com.aiquota.mobile.accounts.ProviderAccountId
import com.aiquota.mobile.accounts.SessionRevision
import com.aiquota.mobile.accounts.VersionedDisplayRecord
import com.aiquota.mobile.local.ProviderCardPreferencesRepository
import com.aiquota.mobile.local.ProviderConnectionState
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.local.ProviderUsageLine
import com.aiquota.mobile.local.ProviderUsageSnapshot
import com.aiquota.mobile.providers.ProviderSnapshotCodec
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner

@RunWith(RobolectricTestRunner::class)
class ProviderWidgetBindingAndRenderTest {
    private lateinit var context: Context
    private val a = id(1)
    private val b = id(2)

    @Before
    fun setUp() {
        context = ApplicationProvider.getApplicationContext()
        preferences().edit().clear().commit()
    }

    @After
    fun tearDown() {
        preferences().edit().clear().commit()
    }

    @Test
    fun twoWidgetBindingsSurviveRestartWithExactDistinctCards() {
        // Given
        val repository = ProviderCardPreferencesRepository(context)
        assertTrue(repository.saveProviderWidgetSelection(101, a))
        assertTrue(repository.saveProviderWidgetSelection(102, b))

        // When
        val restarted = ProviderCardPreferencesRepository(context)

        // Then
        assertEquals(a, restarted.providerWidgetSelection(101))
        assertEquals(b, restarted.providerWidgetSelection(102))
        assertEquals(setOf(101), restarted.providerWidgetIds(a))
        assertEquals(setOf(102), restarted.providerWidgetIds(b))
    }

    @Test
    fun deletingOneBindingClearsOnlyItsWidgetAndPreservesUnrelatedBytes() {
        // Given
        val repository = ProviderCardPreferencesRepository(context)
        repository.saveProviderWidgetSelection(101, a)
        repository.saveProviderWidgetSelection(102, b)
        preferences().edit().putString("unrelated_widget_owner", "same-bytes").commit()

        // When
        val affected = repository.providerWidgetIds(b)
        val cleared = repository.clearExactCardArtifacts(b)

        // Then
        assertEquals(setOf(102), affected)
        assertTrue(cleared)
        assertEquals(a, repository.providerWidgetSelection(101))
        assertNull(repository.providerWidgetSelection(102))
        assertEquals("same-bytes", preferences().getString("unrelated_widget_owner", null))
    }

    @Test
    fun malformedPersistedBindingIsUnavailableWithoutProviderFallback() {
        // Given
        preferences().edit().putString(
            "${ProviderCardPreferencesRepository.WIDGET_SELECTION_PREFIX}103",
            "pa1:broken",
        ).commit()

        // When
        val repository = ProviderCardPreferencesRepository(context)

        // Then
        assertNull(repository.providerWidgetSelection(103))
        assertTrue(repository.providerWidgetIds(a).isEmpty())
        assertTrue(repository.providerWidgetIds(b).isEmpty())
    }

    @Test
    fun siblingPresentationsRetainAliasProviderAndIndependentUsage() {
        // Given
        val recordA = record(a, "Codex", 81)
        val recordB = record(b, "Codex 2", 23)

        // When
        val presentationA = providerWidgetPresentation(recordA, null)
        val presentationB = providerWidgetPresentation(recordB, null)

        // Then
        assertEquals("Codex", presentationA.alias)
        assertEquals("Codex 2", presentationB.alias)
        assertEquals(ProviderId.CODEX, presentationA.providerId)
        assertEquals(ProviderId.CODEX, presentationB.providerId)
        assertEquals("81%", presentationA.payload.lines.single().remainingText)
        assertEquals("23%", presentationB.payload.lines.single().remainingText)
        assertFalse(presentationA == presentationB)
    }

    private fun record(id: ProviderAccountId, alias: String, remaining: Int): VersionedDisplayRecord {
        val version = DisplayVersion.of(remaining.toLong())
        return VersionedDisplayRecord(
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
            snapshot(remaining),
            version,
        )
    }

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

    private fun preferences() = context.getSharedPreferences(
        ProviderCardPreferencesRepository.PREFERENCES_NAME,
        Context.MODE_PRIVATE,
    )
}
