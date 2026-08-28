package com.aiquota.mobile.accounts

import android.content.Context
import androidx.test.core.app.ApplicationProvider
import com.aiquota.mobile.local.ProviderCardPreferencesRepository
import com.aiquota.mobile.local.ProviderConnectionState
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.local.ProviderPreferencesRepository
import com.aiquota.mobile.local.ProviderUsageLine
import com.aiquota.mobile.local.ProviderUsageSnapshot
import com.aiquota.mobile.providers.ProviderResetNotificationStateRepository
import com.aiquota.mobile.providers.ProviderSnapshotCodec
import com.aiquota.mobile.providers.ProviderUsageThresholdNotificationStateRepository
import com.aiquota.mobile.widget.WidgetSnapshotCache
import java.util.concurrent.atomic.AtomicBoolean
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
class ProviderCardCompatibilityProjectionRollbackTest {
    private lateinit var context: Context
    private var authority: MainProcessAccountAuthority? = null
    private val databases = mutableListOf<String>()

    @Before
    fun setUp() {
        context = ApplicationProvider.getApplicationContext()
        clearStores()
    }

    @After
    fun tearDown() {
        authority?.close()
        databases.forEach(context::deleteDatabase)
        clearStores()
    }

    @Test
    fun authorityFlipAtEachStoreBoundaryRetriesToOneCurrentPrimarySnapshot() {
        ProviderCardProjectionBoundary.entries.forEachIndexed { index, boundary ->
            val (codexA, codexB) = fresh("flip-${boundary.name}", index * 10 + 1)
            seedLegacyCodex(71)
            val global = providerPreferences()
            global.edit().putString("external_global_key", "global-$index").commit()
            val flipped = AtomicBoolean()

            val result = ProviderCardCompatibilityProjection(
                context,
                requireNotNull(authority),
                ProviderCardProjectionBoundaryCheck { observed ->
                    if (observed == boundary && flipped.compareAndSet(false, true)) assignPrimary(codexB)
                    true
                },
            ).reconcile()

            assertTrue(boundary.name, result)
            assertTrue(boundary.name, flipped.get())
            assertEquals(boundary.name, codexB, requireNotNull(authority).accountUsagePrimary(ProviderId.CODEX))
            assertNull(boundary.name, ProviderCardPreferencesRepository(context).providerGaugeColor(codexA))
            assertEquals(boundary.name, "#112233", ProviderCardPreferencesRepository(context).providerGaugeColor(codexB))
            assertEquals(boundary.name, "#112233", ProviderPreferencesRepository(context).providerGaugeColor(ProviderId.CODEX))
            assertEquals(
                boundary.name,
                setOf(codexB),
                ProviderResetNotificationStateRepository(context).readExactPending().keys.map { it.accountId }.toSet(),
            )
            assertEquals(
                boundary.name,
                setOf(codexB),
                ProviderUsageThresholdNotificationStateRepository(context).readExactArmed().keys.map { it.accountId }.toSet(),
            )
            assertNull(boundary.name, WidgetSnapshotCache(context).readExactCardState(codexA))
            assertEquals(boundary.name, 71, widgetRemaining(requireNotNull(WidgetSnapshotCache(context).readExactCardState(codexB))))
            assertEquals("global-$index", global.getString("external_global_key", null))
        }
    }

    @Test
    fun failureAtEachStoreBoundaryRestoresEveryEarlierManagedWriteAndSiblingBytes() {
        ProviderCardProjectionBoundary.entries.forEachIndexed { index, failedBoundary ->
            val (codexA, codexB) = fresh("failure-${failedBoundary.name}", index * 10 + 101)
            seedLegacyCodex(61)
            val cards = ProviderCardPreferencesRepository(context)
            cards.saveProviderGaugeColor(codexB, "#556677")
            providerPreferences().edit().putString("provider_wide_unmanaged", "keep-$index").commit()
            val before = allStoreBytes()

            val result = ProviderCardCompatibilityProjection(
                context,
                requireNotNull(authority),
                ProviderCardProjectionBoundaryCheck { it != failedBoundary },
            ).reconcile()

            assertFalse(failedBoundary.name, result)
            assertEquals(failedBoundary.name, before, allStoreBytes())
            assertEquals(failedBoundary.name, "#556677", cards.providerGaugeColor(codexB))
            assertNull(failedBoundary.name, cards.providerGaugeColor(codexA))
            assertEquals("keep-$index", providerPreferences().getString("provider_wide_unmanaged", null))
        }
    }

    @Test
    fun compareAwareRollbackPreservesNewerExternalManagedAndUnmanagedValues() {
        fresh("external", 201)
        seedLegacyCodex(51)
        val preferences = providerPreferences()
        preferences.edit().putString("external_global_key", "before").commit()
        val changed = AtomicBoolean()

        val result = ProviderCardCompatibilityProjection(
            context,
            requireNotNull(authority),
            ProviderCardProjectionBoundaryCheck { boundary ->
                if (boundary == ProviderCardProjectionBoundary.NOTIFICATIONS_APPLIED &&
                    changed.compareAndSet(false, true)
                ) {
                    preferences.edit()
                        .putString("provider_gauge_color_codex", "#ABCDEF")
                        .putString("external_global_key", "newer")
                        .commit()
                    false
                } else {
                    true
                }
            },
        ).reconcile()

        assertFalse(result)
        assertEquals("#ABCDEF", ProviderPreferencesRepository(context).providerGaugeColor(ProviderId.CODEX))
        assertEquals("newer", preferences.getString("external_global_key", null))
        assertTrue(ProviderCardPreferencesRepository(context).providerGaugeColors().isEmpty())
        assertTrue(ProviderResetNotificationStateRepository(context).readExactPending().isEmpty())
        assertTrue(ProviderUsageThresholdNotificationStateRepository(context).readExactArmed().isEmpty())
        assertTrue(WidgetSnapshotCache(context).exactCardSnapshots().isEmpty())
    }

    private fun fresh(label: String, seed: Int): Pair<ProviderAccountId, ProviderAccountId> {
        authority?.close()
        clearStores()
        val name = "card-projection-rollback-$label.db".also {
            databases += it
            context.deleteDatabase(it)
        }
        authority = MainProcessAccountAuthority.open(context, name)
        val codexA = id(seed)
        val codexB = id(seed + 1)
        requireNotNull(authority).register(accountSeed(codexA, 71))
        requireNotNull(authority).register(accountSeed(codexB, 29))
        assignPrimary(codexA)
        return codexA to codexB
    }

    private fun assignPrimary(id: ProviderAccountId) {
        val current = requireNotNull(requireNotNull(authority).accountUsageRecord(id))
        assertTrue(requireNotNull(authority).assignAccountUsagePrimary(id, current.version) is PrimaryAssignmentResult.Assigned)
    }

    private fun seedLegacyCodex(remaining: Int) {
        ProviderPreferencesRepository(context).apply {
            saveProviderGaugeColor(ProviderId.CODEX, "#112233")
            setResetNotificationEnabled(ProviderId.CODEX, false)
            setUsageThresholdNotificationEnabled(ProviderId.CODEX, true)
            setUsageThresholdPercent(ProviderId.CODEX, 17)
        }
        ProviderResetNotificationStateRepository(context).write(mapOf("codex:quota" to 100L), mapOf("codex:quota" to 90L))
        ProviderUsageThresholdNotificationStateRepository(context).writeArmed(mapOf("codex:quota" to true))
        WidgetSnapshotCache(context).write(ProviderSnapshotCodec.encode(listOf(snapshot(remaining))))
    }

    private fun allStoreBytes(): Map<String, Map<String, Any?>> = STORE_NAMES.associateWith { name ->
        context.getSharedPreferences(name, Context.MODE_PRIVATE).all.toSortedMap()
    }

    private fun providerPreferences() = context.getSharedPreferences("ai_quota_provider_preferences", Context.MODE_PRIVATE)

    private fun accountSeed(id: ProviderAccountId, remaining: Int) = AuthorityAccountSeed(
        AccountRecord(
            id, AccountState.ACTIVE, AccountAuthState.AUTHENTICATED, AccountDeletionState.NONE,
            AccountGeneration.of(1), SessionRevision.of(1),
        ),
        snapshot(remaining),
    )

    private fun snapshot(remaining: Int) = ProviderUsageSnapshot(
        providerId = ProviderId.CODEX,
        connectionState = ProviderConnectionState.CONNECTED,
        updatedAt = "2026-08-28T00:00:00Z",
        statusUpdatedAt = "2026-08-28T00:00:00Z",
        lines = listOf(ProviderUsageLine("Quota", remaining / 100f, "$remaining%", key = "quota")),
    )

    private fun widgetRemaining(state: com.aiquota.mobile.widget.WidgetSnapshotState): Int =
        ProviderSnapshotCodec.decode(state.snapshotJson).single().lines.single().remainingText.removeSuffix("%").toInt()

    private fun id(index: Int) = ProviderAccountId(
        ProviderId.CODEX,
        AccountKey.parseOpaque("acct_${index.toString(16).padStart(32, '0')}"),
    )

    private fun clearStores() = STORE_NAMES.forEach { name ->
        context.getSharedPreferences(name, Context.MODE_PRIVATE).edit().clear().commit()
    }

    private companion object {
        val STORE_NAMES = listOf(
            "ai_quota_provider_preferences",
            "ai_quota_reset_notifications",
            "ai_quota_usage_threshold_notifications",
            "ai_quota_widget_cache",
        )
    }
}
