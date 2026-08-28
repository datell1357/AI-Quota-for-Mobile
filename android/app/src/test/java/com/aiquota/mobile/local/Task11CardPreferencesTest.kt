package com.aiquota.mobile.local

import android.content.Context
import androidx.test.core.app.ApplicationProvider
import com.aiquota.mobile.accounts.AccountKey
import com.aiquota.mobile.accounts.ProviderAccountId
import com.aiquota.mobile.accounts.ProviderAccountIdStorageCodec
import com.aiquota.mobile.ui.dashboard.ProviderCardOrder
import java.util.concurrent.CountDownLatch
import java.util.concurrent.Executors
import java.util.concurrent.TimeUnit
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNull
import org.junit.Assert.assertThrows
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner

@RunWith(RobolectricTestRunner::class)
class Task11CardPreferencesTest {
    private lateinit var context: Context
    private val codexA = id(1)
    private val codexB = id(2)

    @Before
    fun setUp() {
        context = ApplicationProvider.getApplicationContext()
        clear()
    }

    @After
    fun tearDown() = clear()

    @Test
    fun codexSiblingsRetainIndependentOrderGaugeNotificationAndWidgetStateAcrossRestart() {
        val repository = ProviderCardPreferencesRepository(context)
        assertTrue(repository.saveProviderGaugeColor(codexA, "#112233"))
        assertTrue(repository.setResetNotificationEnabled(codexA, false))
        assertTrue(repository.setUsageThresholdNotificationEnabled(codexA, true))
        assertTrue(repository.setUsageThresholdPercent(codexA, 17))
        assertTrue(repository.saveProviderGaugeColor(codexB, "#445566"))
        assertTrue(repository.setResetNotificationEnabled(codexB, true))
        assertTrue(repository.setUsageThresholdNotificationEnabled(codexB, false))
        assertTrue(repository.setUsageThresholdPercent(codexB, 31))
        assertTrue(repository.saveProviderWidgetSelection(7, codexB))
        assertTrue(repository.saveDashboardWidgetCardOrder(8, listOf(codexB, codexA)))
        assertTrue(repository.saveDashboardWidgetHiddenCards(8, setOf(codexA)))

        val restarted = ProviderCardPreferencesRepository(context)
        assertEquals("#112233", restarted.providerGaugeColor(codexA))
        assertEquals("#445566", restarted.providerGaugeColor(codexB))
        assertFalse(restarted.isResetNotificationEnabled(codexA))
        assertTrue(restarted.isResetNotificationEnabled(codexB))
        assertTrue(restarted.isUsageThresholdNotificationEnabled(codexA))
        assertFalse(restarted.isUsageThresholdNotificationEnabled(codexB))
        assertEquals(17, restarted.usageThresholdPercent(codexA))
        assertEquals(31, restarted.usageThresholdPercent(codexB))
        assertEquals(codexB, restarted.providerWidgetSelection(7))
        assertEquals(listOf(codexB, codexA), restarted.dashboardWidgetCardOrder(8))
        assertEquals(setOf(codexA), restarted.dashboardWidgetHiddenCards(8))
        assertEquals(listOf(codexB, codexA), ProviderCardOrder.previewExactVisibleOrder(listOf(codexA, codexB), codexB, 0))
    }

    @Test
    fun deletingOneExactCardLeavesSiblingAndMalformedUnrelatedBytesUntouched() {
        val repository = ProviderCardPreferencesRepository(context)
        repository.saveProviderGaugeColor(codexA, "#112233")
        repository.saveProviderGaugeColor(codexB, "#445566")
        repository.setUsageThresholdPercent(codexA, 17)
        repository.setUsageThresholdPercent(codexB, 31)
        repository.saveProviderWidgetSelection(3, codexA)
        val malformed = "pa1:5:CODEX:7:default"
        val prefs = context.getSharedPreferences(ProviderCardPreferencesRepository.PREFERENCES_NAME, Context.MODE_PRIVATE)
        prefs.edit()
            .putString("${ProviderCardPreferencesRepository.GAUGE_COLOR_PREFIX}$malformed", "#ABCDEF")
            .putString(
                "${ProviderCardPreferencesRepository.WIDGET_ORDER_PREFIX}9",
                "$malformed\n${ProviderAccountIdStorageCodec.encode(codexA)}\n${ProviderAccountIdStorageCodec.encode(codexB)}",
            )
            .commit()
        val siblingBefore = prefs.all.filterKeys { it.contains(ProviderAccountIdStorageCodec.encode(codexB)) }
        val malformedBefore = prefs.all.filterKeys { it.contains(malformed) }

        assertTrue(repository.clearExactCardArtifacts(codexA))

        assertEquals(siblingBefore, prefs.all.filterKeys { it.contains(ProviderAccountIdStorageCodec.encode(codexB)) })
        assertEquals(malformedBefore.keys, prefs.all.filterKeys { it.contains(malformed) }.keys)
        assertEquals("#445566", repository.providerGaugeColor(codexB))
        assertNull(repository.providerWidgetSelection(3))
        assertEquals(listOf(codexB), repository.dashboardWidgetCardOrder(9))
        assertEquals(mapOf(codexB to "#445566"), repository.providerGaugeColors())
    }

    @Test
    fun exhaustiveMalformedExactKeysRemainQuarantinedAcrossUnrelatedDeletion() {
        val malformed = listOf(
            "", "pa1", "pa1:+5:codex:7:default", "pa1:-5:codex:7:default",
            "pa1:0::7:default", "pa1:05:codex:7:default",
            "pa1:2147483648:codex:7:default", "pa1:2147483647:codex:7:default",
            "pa1:6:code\u0301x:7:default",
            "pa1:5:CODEX:7:default", "pa1:5:codex:7:DEFAULT",
            "pa1:5:codex:37:ACCT_00000000000000000000000000000001",
            "pa1:5:codex:7:default:tail",
        )
        val preferences = context.getSharedPreferences(
            ProviderCardPreferencesRepository.PREFERENCES_NAME,
            Context.MODE_PRIVATE,
        )
        val editor = preferences.edit()
        malformed.forEachIndexed { index, raw ->
            editor.putString("${ProviderCardPreferencesRepository.GAUGE_COLOR_PREFIX}$raw#$index", "value-$index")
        }
        assertTrue(editor.commit())
        val before = preferences.all.filterKeys { key -> malformed.indices.any { key.endsWith("#$it") } }
        val cards = ProviderCardPreferencesRepository(context)
        cards.saveProviderGaugeColor(codexA, "#112233")
        cards.saveProviderGaugeColor(codexB, "#445566")

        assertTrue(cards.clearExactCardArtifacts(codexA))

        assertEquals(before, preferences.all.filterKeys { key -> malformed.indices.any { key.endsWith("#$it") } })
        assertEquals("#445566", cards.providerGaugeColor(codexB))
        assertEquals(mapOf(codexB to "#445566"), cards.providerGaugeColors())
    }

    @Test
    fun legacyProviderDataMigratesOnceToExplicitPrimaryAndExplicitNoneNeverPromotesSibling() {
        val legacy = ProviderPreferencesRepository(context)
        legacy.setDashboardViewMode(DashboardViewMode.CARD)
        legacy.setClaudeAutoResetPrimeEnabled(true)
        legacy.saveProviderGaugeColor(ProviderId.CODEX, "#112233")
        legacy.setResetNotificationEnabled(ProviderId.CODEX, false)
        legacy.setUsageThresholdNotificationEnabled(ProviderId.CODEX, true)
        legacy.setUsageThresholdPercent(ProviderId.CODEX, 17)
        legacy.saveProviderWidgetSelection(12, ProviderId.CODEX)
        val projection = ProviderCardPreferenceProjection(context)
        val primaryA = primaries(codexA)

        assertEquals(ProviderCardPreferenceProjectionResult.Applied, projection.reconcile(primaryA))
        val exact = ProviderCardPreferencesRepository(context)
        assertEquals("#112233", exact.providerGaugeColor(codexA))
        assertNull(exact.providerGaugeColor(codexB))
        assertEquals(codexA, exact.providerWidgetSelection(12))
        assertEquals(DashboardViewMode.CARD, legacy.dashboardViewMode())
        assertTrue(legacy.isClaudeAutoResetPrimeEnabled())

        exact.saveProviderGaugeColor(codexA, "#223344")
        assertEquals(ProviderCardPreferenceProjectionResult.Applied, projection.reconcile(primaryA))
        assertEquals("#223344", legacy.providerGaugeColor(ProviderId.CODEX))
        exact.saveProviderGaugeColor(codexB, "#556677")
        assertEquals(
            ProviderCardPreferenceProjectionResult.Applied,
            projection.reconcile(primaries(codexB)),
        )
        assertEquals("#556677", legacy.providerGaugeColor(ProviderId.CODEX))

        assertEquals(
            ProviderCardPreferenceProjectionResult.Applied,
            projection.reconcile(primaries(null)),
        )
        assertNull(legacy.providerGaugeColor(ProviderId.CODEX))
        assertNull(legacy.providerWidgetSelection(12))
        assertEquals("#556677", exact.providerGaugeColor(codexB))
        assertEquals(DashboardViewMode.CARD, legacy.dashboardViewMode())
        assertTrue(legacy.isClaudeAutoResetPrimeEnabled())
    }

    @Test
    fun firstReconcilePreservesPreexistingExactScalarsAndWidgetStateBeforeCompatibilityConverges() {
        val exact = ProviderCardPreferencesRepository(context)
        exact.saveProviderGaugeColor(codexA, "#A1B2C3")
        exact.setResetNotificationEnabled(codexA, true)
        exact.setUsageThresholdNotificationEnabled(codexA, false)
        exact.setUsageThresholdPercent(codexA, 31)
        exact.saveProviderGaugeColor(codexB, "#445566")
        exact.setResetNotificationEnabled(codexB, false)
        exact.setUsageThresholdNotificationEnabled(codexB, true)
        exact.setUsageThresholdPercent(codexB, 73)
        exact.saveProviderWidgetSelection(71, codexB)
        exact.saveDashboardWidgetCardOrder(72, listOf(codexB, codexA))
        exact.saveDashboardWidgetHiddenCards(72, setOf(codexB))
        val legacy = ProviderPreferencesRepository(context)
        legacy.saveProviderGaugeColor(ProviderId.CODEX, "#112233")
        legacy.setResetNotificationEnabled(ProviderId.CODEX, false)
        legacy.setUsageThresholdNotificationEnabled(ProviderId.CODEX, true)
        legacy.setUsageThresholdPercent(ProviderId.CODEX, 17)
        legacy.saveProviderWidgetSelection(71, ProviderId.CODEX)
        legacy.saveDashboardWidgetProviderOrder(72, listOf(ProviderId.CURSOR, ProviderId.CODEX))
        legacy.saveDashboardWidgetHiddenProviders(72, setOf(ProviderId.CODEX))
        legacy.setDashboardViewMode(DashboardViewMode.CARD)
        legacy.setClaudeAutoResetPrimeEnabled(true)
        val preferences = context.getSharedPreferences(
            ProviderCardPreferencesRepository.PREFERENCES_NAME,
            Context.MODE_PRIVATE,
        )
        preferences.edit().putString("unrelated_external_key", "unchanged").commit()
        val exactBefore = preferences.all.filterKeys(::isExactCardPreferenceKey)

        val projection = ProviderCardPreferenceProjection(context)
        assertEquals(ProviderCardPreferenceProjectionResult.Applied, projection.reconcile(primaries(codexA)))

        assertEquals(exactBefore, preferences.all.filterKeys(::isExactCardPreferenceKey))
        assertEquals(codexB, exact.providerWidgetSelection(71))
        assertEquals(listOf(codexB, codexA), exact.dashboardWidgetCardOrder(72))
        assertEquals(setOf(codexB), exact.dashboardWidgetHiddenCards(72))
        assertEquals("#445566", exact.providerGaugeColor(codexB))
        assertEquals(73, exact.usageThresholdPercent(codexB))

        assertEquals(ProviderCardPreferenceProjectionResult.Applied, projection.reconcile(primaries(codexA)))
        assertEquals("#A1B2C3", legacy.providerGaugeColor(ProviderId.CODEX))
        assertTrue(legacy.isResetNotificationEnabled(ProviderId.CODEX))
        assertFalse(legacy.isUsageThresholdNotificationEnabled(ProviderId.CODEX))
        assertEquals(31, legacy.usageThresholdPercent(ProviderId.CODEX))
        assertEquals(ProviderId.CODEX, legacy.providerWidgetSelection(71))
        assertEquals(exactBefore, preferences.all.filterKeys(::isExactCardPreferenceKey))
        assertEquals(DashboardViewMode.CARD, legacy.dashboardViewMode())
        assertTrue(legacy.isClaudeAutoResetPrimeEnabled())
        assertEquals("unchanged", preferences.getString("unrelated_external_key", null))
    }

    @Test
    fun conflictingExternalLegacyChangeIsNotOverwrittenOrImportedIntoSibling() {
        val legacy = ProviderPreferencesRepository(context)
        legacy.saveProviderGaugeColor(ProviderId.CODEX, "#112233")
        val projection = ProviderCardPreferenceProjection(context)
        projection.reconcile(primaries(codexA))
        val exact = ProviderCardPreferencesRepository(context)
        exact.saveProviderGaugeColor(codexA, "#223344")
        legacy.saveProviderGaugeColor(ProviderId.CODEX, "#ABCDEF")

        assertEquals(
            ProviderCardPreferenceProjectionResult.Conflicted(setOf(ProviderId.CODEX)),
            projection.reconcile(primaries(codexA)),
        )
        assertEquals("#ABCDEF", legacy.providerGaugeColor(ProviderId.CODEX))
        assertEquals("#223344", exact.providerGaugeColor(codexA))
        assertNull(exact.providerGaugeColor(codexB))
    }

    @Test
    fun executableTwoSiblingRestartDeleteTracePrintsCanonicalStoredKeys() {
        val repository = ProviderCardPreferencesRepository(context)
        repository.saveProviderGaugeColor(codexA, "#112233")
        repository.saveProviderGaugeColor(codexB, "#445566")
        repository.setUsageThresholdPercent(codexA, 17)
        repository.setUsageThresholdPercent(codexB, 31)
        repository.saveDashboardWidgetCardOrder(44, listOf(codexA, codexB))
        val before = storedCardDump()
        val restarted = ProviderCardPreferencesRepository(context)
        val afterRestart = listOf(
            restarted.providerGaugeColor(codexA),
            restarted.providerGaugeColor(codexB),
            restarted.usageThresholdPercent(codexA),
            restarted.usageThresholdPercent(codexB),
            restarted.dashboardWidgetCardOrder(44).map(ProviderAccountIdStorageCodec::encode),
        )
        restarted.clearExactCardArtifacts(codexA)
        val afterDelete = storedCardDump()

        assertTrue(before.keys.any { it.contains(ProviderAccountIdStorageCodec.encode(codexA)) })
        assertTrue(before.keys.any { it.contains(ProviderAccountIdStorageCodec.encode(codexB)) })
        assertEquals(listOf("#112233", "#445566", 17, 31, listOf(
            ProviderAccountIdStorageCodec.encode(codexA),
            ProviderAccountIdStorageCodec.encode(codexB),
        )), afterRestart)
        assertFalse(afterDelete.keys.any { it.contains(ProviderAccountIdStorageCodec.encode(codexA)) })
        assertTrue(afterDelete.keys.any { it.contains(ProviderAccountIdStorageCodec.encode(codexB)) })
        println("QA_TASK11_CARD_TRACE=before=$before;restart=$afterRestart;afterDelete=$afterDelete")
    }

    @Test
    fun incompletePrimaryAuthoritySnapshotIsRejectedBeforeAnyBroadProjection() {
        val legacy = ProviderPreferencesRepository(context)
        legacy.saveProviderGaugeColor(ProviderId.CODEX, "#112233")
        assertThrows(IllegalArgumentException::class.java) {
            ProviderCardPreferenceProjection(context).reconcile(mapOf(ProviderId.CODEX to codexA))
        }
        assertEquals("#112233", legacy.providerGaugeColor(ProviderId.CODEX))
        assertNull(ProviderCardPreferencesRepository(context).providerGaugeColor(codexA))
    }

    @Test
    fun concurrentExactWritesAndThousandCardSerializationPreserveEveryCard() {
        val ids = List(1_000) { id(it + 1) }
        val repository = ProviderCardPreferencesRepository(context)
        listOf(0, 1, 4).forEach { count ->
            assertTrue(repository.saveDashboardWidgetCardOrder(count, ids.take(count)))
            assertEquals(ids.take(count), ProviderCardPreferencesRepository(context).dashboardWidgetCardOrder(count))
        }
        assertTrue(repository.saveDashboardWidgetCardOrder(88, ids))
        assertEquals(ids, ProviderCardPreferencesRepository(context).dashboardWidgetCardOrder(88))

        val ready = CountDownLatch(8)
        val start = CountDownLatch(1)
        val executor = Executors.newFixedThreadPool(8)
        try {
            val futures = ids.chunked(125).mapIndexed { worker, chunk ->
                executor.submit<Boolean> {
                    ready.countDown()
                    if (!start.await(10, TimeUnit.SECONDS)) return@submit false
                    chunk.all { repository.saveProviderGaugeColor(it, "#${(worker + 1).toString().repeat(6)}") }
                }
            }
            assertTrue(ready.await(10, TimeUnit.SECONDS))
            start.countDown()
            assertTrue(futures.all { it.get(30, TimeUnit.SECONDS) })
        } finally {
            executor.shutdownNow()
        }
        assertEquals(1_000, ProviderCardPreferencesRepository(context).providerGaugeColors().size)
    }

    private fun isExactCardPreferenceKey(key: String): Boolean = listOf(
        ProviderCardPreferencesRepository.WIDGET_SELECTION_PREFIX,
        ProviderCardPreferencesRepository.WIDGET_ORDER_PREFIX,
        ProviderCardPreferencesRepository.WIDGET_HIDDEN_PREFIX,
        ProviderCardPreferencesRepository.GAUGE_COLOR_PREFIX,
        ProviderCardPreferencesRepository.RESET_PREFIX,
        ProviderCardPreferencesRepository.THRESHOLD_ENABLED_PREFIX,
        ProviderCardPreferencesRepository.THRESHOLD_PERCENT_PREFIX,
    ).any(key::startsWith)

    private fun primaries(codex: ProviderAccountId?): Map<ProviderId, ProviderAccountId?> =
        ProviderId.defaultOrder().associateWith { provider -> if (provider == ProviderId.CODEX) codex else null }

    private fun storedCardDump(): Map<String, Any?> =
        context.getSharedPreferences(ProviderCardPreferencesRepository.PREFERENCES_NAME, Context.MODE_PRIVATE)
            .all.toSortedMap()

    private fun id(index: Int) = ProviderAccountId(
        ProviderId.CODEX,
        AccountKey.parseOpaque("acct_${index.toString(16).padStart(32, '0')}"),
    )

    private fun clear() {
        context.getSharedPreferences(ProviderCardPreferencesRepository.PREFERENCES_NAME, Context.MODE_PRIVATE)
            .edit().clear().commit()
    }
}
