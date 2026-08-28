package com.aiquota.mobile.accounts

import android.content.Context
import androidx.test.core.app.ApplicationProvider
import com.aiquota.mobile.local.ProviderCardPreferenceProjection
import com.aiquota.mobile.local.ProviderCardPreferencesRepository
import com.aiquota.mobile.local.ProviderConnectionState
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.local.ProviderPreferencesRepository
import com.aiquota.mobile.local.ProviderUsageLine
import com.aiquota.mobile.local.ProviderUsageSnapshot
import com.aiquota.mobile.providers.ProviderAccountLineKey
import com.aiquota.mobile.providers.ProviderNotificationStateProjection
import com.aiquota.mobile.providers.ProviderResetNotificationStateRepository
import com.aiquota.mobile.providers.ProviderSnapshotCodec
import com.aiquota.mobile.providers.ProviderUsageThresholdNotificationStateRepository
import com.aiquota.mobile.widget.WidgetSnapshotCache
import com.aiquota.mobile.widget.WidgetSnapshotProjection
import java.util.concurrent.atomic.AtomicInteger
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
class ProviderCardCompatibilityProjectionTest {
    private lateinit var context: Context
    private lateinit var databaseName: String
    private lateinit var authority: MainProcessAccountAuthority

    @Before
    fun setUp() {
        context = ApplicationProvider.getApplicationContext()
        databaseName = "card-projection-${counter.incrementAndGet()}.db"
        context.deleteDatabase(databaseName)
        clearStores()
        authority = MainProcessAccountAuthority.open(context, databaseName)
    }

    @After
    fun tearDown() {
        authority.close()
        context.deleteDatabase(databaseName)
        clearStores()
    }

    @Test
    fun legacyStateMigratesOnlyToExplicitPrimaryAndExplicitNoneClearsWithoutSiblingPromotion() {
        val codexA = id(ProviderId.CODEX, 1)
        val codexB = id(ProviderId.CODEX, 2)
        authority.register(seed(codexA, 81))
        authority.register(seed(codexB, 22))
        authority.assignAccountUsagePrimary(codexA, requireNotNull(authority.accountUsageRecord(codexA)).version)
        seedLegacyCodex(81)

        assertEquals(listOf(codexA), authority.compatibilityPrimarySnapshot().orderedAccounts)
        assertTrue(ProviderCardCompatibilityProjection(context, authority).reconcile())
        val cards = ProviderCardPreferencesRepository(context)
        val reset = ProviderResetNotificationStateRepository(context)
        val threshold = ProviderUsageThresholdNotificationStateRepository(context)
        val widgets = WidgetSnapshotCache(context)
        val lineA = ProviderAccountLineKey(codexA, "quota")
        assertEquals("#112233", cards.providerGaugeColor(codexA))
        assertNull(cards.providerGaugeColor(codexB))
        assertEquals(mapOf(lineA to 100L), reset.readExactPending())
        assertEquals(mapOf(lineA to true), threshold.readExactArmed())
        assertEquals(81, widgetRemaining(requireNotNull(widgets.readExactCardState(codexA))))
        assertNull(widgets.readExactCardState(codexB))

        cards.saveProviderGaugeColor(codexB, "#556677")
        widgets.writeExactCardSnapshot(codexB, ProviderSnapshotCodec.encode(listOf(snapshot(ProviderId.CODEX, 22))))
        assertTrue(authority.clearAccountUsagePrimary(ProviderId.CODEX))
        assertTrue(ProviderCardCompatibilityProjection(context, authority).reconcile())

        val legacy = ProviderPreferencesRepository(context)
        assertNull(legacy.providerGaugeColor(ProviderId.CODEX))
        assertFalse(reset.readPending().keys.any { it.startsWith("codex:") })
        assertFalse(threshold.readArmed().keys.any { it.startsWith("codex:") })
        assertFalse(ProviderSnapshotCodec.decode(widgets.read()).any { it.providerId == ProviderId.CODEX })
        assertEquals("#556677", cards.providerGaugeColor(codexB))
        assertEquals(22, widgetRemaining(requireNotNull(widgets.readExactCardState(codexB))))
        assertNull(authority.accountUsagePrimary(ProviderId.CODEX))
        assertTrue(authority.compatibilityPrimarySnapshot().orderedAccounts.isEmpty())
        assertTrue(ProviderCardCompatibilityProjection(context, authority).reconcile())
        assertNull(legacy.providerGaugeColor(ProviderId.CODEX))
    }

    @Test
    fun firstReconcilePreservesPreexistingExactNotificationAndWidgetStateAcrossRestart() {
        val codexA = id(ProviderId.CODEX, 51)
        val codexB = id(ProviderId.CODEX, 52)
        authority.register(seed(codexA, 81))
        authority.register(seed(codexB, 22))
        assignPrimary(codexA)
        seedLegacyCodex(81)
        val lineA = ProviderAccountLineKey(codexA, "quota")
        val lineB = ProviderAccountLineKey(codexB, "quota")
        val reset = ProviderResetNotificationStateRepository(context)
        val threshold = ProviderUsageThresholdNotificationStateRepository(context)
        val widgets = WidgetSnapshotCache(context)
        assertTrue(reset.writeExact(
            mapOf(lineA to 777L, lineB to 888L),
            mapOf(lineA to 666L, lineB to 555L),
        ))
        assertTrue(threshold.writeExactArmed(mapOf(lineA to false, lineB to true)))
        assertTrue(widgets.writeExactCardSnapshot(
            codexA,
            ProviderSnapshotCodec.encode(listOf(snapshot(ProviderId.CODEX, 44))),
            "exact-a",
        ))
        assertTrue(widgets.writeExactCardSnapshot(
            codexB,
            ProviderSnapshotCodec.encode(listOf(snapshot(ProviderId.CODEX, 22))),
            "exact-b",
        ))
        context.getSharedPreferences("ai_quota_reset_notifications", Context.MODE_PRIVATE)
            .edit().putString("external_reset_key", "reset-global").commit()
        context.getSharedPreferences("ai_quota_usage_threshold_notifications", Context.MODE_PRIVATE)
            .edit().putString("external_threshold_key", "threshold-global").commit()
        context.getSharedPreferences("ai_quota_widget_cache", Context.MODE_PRIVATE)
            .edit().putString("device_name", "widget-global").commit()
        val pendingBefore = reset.readExactPending()
        val notifiedBefore = reset.readExactNotified()
        val armedBefore = threshold.readExactArmed()
        val widgetABefore = requireNotNull(widgets.readExactCardState(codexA))
        val widgetBBefore = requireNotNull(widgets.readExactCardState(codexB))

        assertTrue(ProviderCardCompatibilityProjection(context, authority).reconcile())
        assertEquals(pendingBefore, reset.readExactPending())
        assertEquals(notifiedBefore, reset.readExactNotified())
        assertEquals(armedBefore, threshold.readExactArmed())
        assertEquals(widgetABefore, widgets.readExactCardState(codexA))
        assertEquals(widgetBBefore, widgets.readExactCardState(codexB))
        assertEquals(100L, reset.readPending().getValue("codex:quota"))
        assertEquals(true, threshold.readArmed().getValue("codex:quota"))

        assertTrue(ProviderCardCompatibilityProjection(context, authority).reconcile())
        assertEquals(pendingBefore, reset.readExactPending())
        assertEquals(notifiedBefore, reset.readExactNotified())
        assertEquals(armedBefore, threshold.readExactArmed())
        assertEquals(44, widgetRemaining(requireNotNull(widgets.readExactCardState(codexA))))
        assertEquals(22, widgetRemaining(requireNotNull(widgets.readExactCardState(codexB))))
        assertEquals("reset-global", context.getSharedPreferences("ai_quota_reset_notifications", Context.MODE_PRIVATE)
            .getString("external_reset_key", null))
        assertEquals("threshold-global", context.getSharedPreferences("ai_quota_usage_threshold_notifications", Context.MODE_PRIVATE)
            .getString("external_threshold_key", null))
        assertEquals("widget-global", context.getSharedPreferences("ai_quota_widget_cache", Context.MODE_PRIVATE)
            .getString("device_name", null))
    }

    @Test
    fun authorityChangesAtEveryPreferenceBoundaryRollBackAllManagedStoreWrites() {
        val codexA = id(ProviderId.CODEX, 101)
        val codexB = id(ProviderId.CODEX, 102)
        authority.register(seed(codexA, 71))
        authority.register(seed(codexB, 29))
        assignPrimary(codexA)
        seedLegacyCodex(71)
        val global = context.getSharedPreferences("ai_quota_provider_preferences", Context.MODE_PRIVATE)
        global.edit().putString("external_global_key", "untouched").commit()
        val before = allStoreBytes()
        val flips = AtomicInteger()
        val reconciled = ProviderCardCompatibilityProjection(
            context,
            authority,
            ProviderCardProjectionBoundaryCheck { boundary ->
                if (boundary == ProviderCardProjectionBoundary.PREFERENCES_APPLIED) {
                    when (flips.getAndIncrement()) {
                        0 -> assignPrimary(codexB)
                        1 -> assignPrimary(codexA)
                        2 -> assignPrimary(codexB)
                    }
                }
                true
            },
        ).reconcile()

        assertFalse(reconciled)
        assertEquals(3, flips.get())
        assertEquals(before, allStoreBytes())
        assertEquals("untouched", global.getString("external_global_key", null))
        assertEquals(codexB, authority.accountUsagePrimary(ProviderId.CODEX))

        assertTrue(ProviderCardCompatibilityProjection(context, authority).reconcile())
        assertNull(ProviderCardPreferencesRepository(context).providerGaugeColor(codexA))
        assertEquals("#112233", ProviderCardPreferencesRepository(context).providerGaugeColor(codexB))
        assertEquals(
            setOf(codexB),
            ProviderResetNotificationStateRepository(context).readExactPending().keys.map { it.accountId }.toSet(),
        )
        assertEquals(71, widgetRemaining(requireNotNull(WidgetSnapshotCache(context).readExactCardState(codexB))))
    }

    @Test
    fun restartAtEachStoreBoundaryConvergesIdempotentlyWithoutRepeatedLegacyImport() {
        val codex = id(ProviderId.CODEX, 3)
        authority.register(seed(codex, 63))
        authority.assignAccountUsagePrimary(codex, requireNotNull(authority.accountUsageRecord(codex)).version)
        seedLegacyCodex(63)
        val selected = authority.compatibilityPrimarySnapshot().accounts

        assertTrue(ProviderCardPreferenceProjection(context).reconcile(selected) !is com.aiquota.mobile.local.ProviderCardPreferenceProjectionResult.WriteFailed)
        assertTrue(ProviderCardCompatibilityProjection(context, authority).reconcile())
        val exact = ProviderCardPreferencesRepository(context)
        exact.saveProviderGaugeColor(codex, "#223344")
        assertTrue(ProviderNotificationStateProjection(context).reconcile(selected))
        assertTrue(ProviderCardCompatibilityProjection(context, authority).reconcile())
        assertTrue(WidgetSnapshotProjection(context).reconcile(selected))
        assertTrue(ProviderCardCompatibilityProjection(context, authority).reconcile())

        assertEquals("#223344", exact.providerGaugeColor(codex))
        assertEquals("#223344", ProviderPreferencesRepository(context).providerGaugeColor(ProviderId.CODEX))
        assertEquals(1, ProviderResetNotificationStateRepository(context).readExactPending().size)
        assertEquals(1, ProviderUsageThresholdNotificationStateRepository(context).readExactArmed().size)
        assertEquals(63, widgetRemaining(requireNotNull(WidgetSnapshotCache(context).readExactCardState(codex))))
    }

    @Test
    fun singleReservedDefaultProviderPreservesLegacyBehaviorWithoutSiblingGuessing() {
        val cursor = ProviderAccountId(ProviderId.CURSOR, AccountKey.reservedDefault())
        authority.register(seed(cursor, 47))
        ProviderPreferencesRepository(context).saveProviderGaugeColor(ProviderId.CURSOR, "#334455")

        assertTrue(ProviderCardCompatibilityProjection(context, authority).reconcile())

        assertEquals(cursor, authority.compatibilityPrimarySnapshot().accounts[ProviderId.CURSOR])
        assertEquals(listOf(cursor), authority.compatibilityPrimarySnapshot().orderedAccounts)
        assertEquals("#334455", ProviderCardPreferencesRepository(context).providerGaugeColor(cursor))
        assertEquals("#334455", ProviderPreferencesRepository(context).providerGaugeColor(ProviderId.CURSOR))
    }

    private fun assignPrimary(id: ProviderAccountId) {
        val record = requireNotNull(authority.accountUsageRecord(id))
        assertTrue(authority.assignAccountUsagePrimary(id, record.version) is PrimaryAssignmentResult.Assigned)
    }

    private fun allStoreBytes(): Map<String, Map<String, Any?>> = listOf(
        "ai_quota_provider_preferences",
        "ai_quota_reset_notifications",
        "ai_quota_usage_threshold_notifications",
        "ai_quota_widget_cache",
    ).associateWith { name -> context.getSharedPreferences(name, Context.MODE_PRIVATE).all.toSortedMap() }

    private fun seedLegacyCodex(remaining: Int) {
        ProviderPreferencesRepository(context).apply {
            saveProviderGaugeColor(ProviderId.CODEX, "#112233")
            setResetNotificationEnabled(ProviderId.CODEX, false)
            setUsageThresholdNotificationEnabled(ProviderId.CODEX, true)
            setUsageThresholdPercent(ProviderId.CODEX, 17)
        }
        ProviderResetNotificationStateRepository(context).write(
            mapOf("codex:quota" to 100L),
            mapOf("codex:quota" to 90L),
        )
        ProviderUsageThresholdNotificationStateRepository(context).writeArmed(mapOf("codex:quota" to true))
        WidgetSnapshotCache(context).write(ProviderSnapshotCodec.encode(listOf(snapshot(ProviderId.CODEX, remaining))))
    }

    private fun seed(id: ProviderAccountId, remaining: Int) = AuthorityAccountSeed(
        AccountRecord(
            id,
            AccountState.ACTIVE,
            AccountAuthState.AUTHENTICATED,
            AccountDeletionState.NONE,
            AccountGeneration.of(1),
            SessionRevision.of(1),
        ),
        snapshot(id.providerId, remaining),
    )

    private fun snapshot(provider: ProviderId, remaining: Int) = ProviderUsageSnapshot(
        providerId = provider,
        connectionState = ProviderConnectionState.CONNECTED,
        updatedAt = "2026-08-28T00:00:00Z",
        statusUpdatedAt = "2026-08-28T00:00:00Z",
        lines = listOf(ProviderUsageLine("Quota", remaining / 100f, "$remaining%", key = "quota")),
    )

    private fun widgetRemaining(state: com.aiquota.mobile.widget.WidgetSnapshotState): Int =
        ProviderSnapshotCodec.decode(state.snapshotJson).single().lines.single().remainingText.removeSuffix("%").toInt()

    private fun id(provider: ProviderId, index: Int) = ProviderAccountId(
        provider,
        AccountKey.parseOpaque("acct_${index.toString(16).padStart(32, '0')}"),
    )

    private fun clearStores() {
        listOf(
            "ai_quota_provider_preferences",
            "ai_quota_reset_notifications",
            "ai_quota_usage_threshold_notifications",
            "ai_quota_widget_cache",
        ).forEach { context.getSharedPreferences(it, Context.MODE_PRIVATE).edit().clear().commit() }
    }

    private companion object {
        val counter = AtomicInteger()
    }
}
