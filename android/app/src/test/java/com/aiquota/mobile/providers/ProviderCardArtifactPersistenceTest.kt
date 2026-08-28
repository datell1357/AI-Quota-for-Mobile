package com.aiquota.mobile.providers

import android.content.Context
import androidx.test.core.app.ApplicationProvider
import com.aiquota.mobile.accounts.AccountKey
import com.aiquota.mobile.accounts.ProviderAccountId
import com.aiquota.mobile.local.ProviderConnectionState
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.local.ProviderUsageLine
import com.aiquota.mobile.local.ProviderUsageSnapshot
import com.aiquota.mobile.widget.WidgetSnapshotCache
import org.json.JSONObject
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner

@RunWith(RobolectricTestRunner::class)
class ProviderCardArtifactPersistenceTest {
    private lateinit var context: Context
    private val codexA = id(1)
    private val codexB = id(2)
    private val lineA = ProviderAccountLineKey(codexA, "primary:window")
    private val lineB = ProviderAccountLineKey(codexB, "primary:window")

    @Before
    fun setUp() {
        context = ApplicationProvider.getApplicationContext()
        clear()
    }

    @After
    fun tearDown() = clear()

    @Test
    fun resetThresholdAndWidgetSnapshotsRemainByteIndependentAcrossRestartAndExactDelete() {
        val reset = ProviderResetNotificationStateRepository(context)
        val threshold = ProviderUsageThresholdNotificationStateRepository(context)
        val widgets = WidgetSnapshotCache(context)
        assertTrue(reset.writeExact(mapOf(lineA to 10L, lineB to 20L), mapOf(lineA to 9L, lineB to 19L)))
        assertTrue(threshold.writeExactArmed(mapOf(lineA to true, lineB to false)))
        assertTrue(widgets.writeExactCardSnapshot(codexA, ProviderSnapshotCodec.encode(listOf(snapshot(11)))))
        assertTrue(widgets.writeExactCardSnapshot(codexB, ProviderSnapshotCodec.encode(listOf(snapshot(22)))))
        val pendingB = reset.readExactPending().getValue(lineB)
        val notifiedB = reset.readExactNotified().getValue(lineB)
        val armedB = threshold.readExactArmed().getValue(lineB)
        val widgetB = requireNotNull(widgets.readExactCardState(codexB))

        val restartedReset = ProviderResetNotificationStateRepository(context)
        val restartedThreshold = ProviderUsageThresholdNotificationStateRepository(context)
        val restartedWidgets = WidgetSnapshotCache(context)
        assertEquals(mapOf(lineA to 10L, lineB to 20L), restartedReset.readExactPending())
        assertEquals(mapOf(lineA to 9L, lineB to 19L), restartedReset.readExactNotified())
        assertEquals(mapOf(lineA to true, lineB to false), restartedThreshold.readExactArmed())
        assertEquals(11, remaining(requireNotNull(restartedWidgets.readExactCardState(codexA))))
        assertEquals(22, remaining(requireNotNull(restartedWidgets.readExactCardState(codexB))))

        assertTrue(restartedReset.clearExact(codexA))
        assertTrue(restartedThreshold.clearExact(codexA))
        assertTrue(restartedWidgets.removeExactCard(codexA))
        assertEquals(mapOf(lineB to 20L), restartedReset.readExactPending())
        assertEquals(mapOf(lineB to 19L), restartedReset.readExactNotified())
        assertEquals(mapOf(lineB to false), restartedThreshold.readExactArmed())
        assertNull(restartedWidgets.readExactCardState(codexA))
        assertEquals(widgetB, restartedWidgets.readExactCardState(codexB))
        assertEquals(pendingB, restartedReset.readExactPending().getValue(lineB))
        assertEquals(notifiedB, restartedReset.readExactNotified().getValue(lineB))
        assertEquals(armedB, restartedThreshold.readExactArmed().getValue(lineB))
    }

    @Test
    fun malformedNotificationAndWidgetKeysFailClosedAndSurviveUnrelatedExactDeletion() {
        val malformed = "1:x:1:y"
        context.getSharedPreferences("ai_quota_reset_notifications", Context.MODE_PRIVATE).edit()
            .putString("pending_cards_v1", JSONObject().put(malformed, 77L).put(ProviderAccountLineKeyCodec.encode(lineB), 20L).toString())
            .putString("notified_cards_v1", JSONObject().put(malformed, 66L).put(ProviderAccountLineKeyCodec.encode(lineB), 19L).toString())
            .commit()
        context.getSharedPreferences("ai_quota_usage_threshold_notifications", Context.MODE_PRIVATE).edit()
            .putString("armed_cards_v1", JSONObject().put(malformed, true).put(ProviderAccountLineKeyCodec.encode(lineB), false).toString())
            .commit()
        context.getSharedPreferences("ai_quota_widget_cache", Context.MODE_PRIVATE).edit()
            .putString("card_snapshot_v1_pa1:5:CODEX:7:default", "malformed")
            .commit()

        val reset = ProviderResetNotificationStateRepository(context)
        val threshold = ProviderUsageThresholdNotificationStateRepository(context)
        assertEquals(mapOf(lineB to 20L), reset.readExactPending())
        assertEquals(mapOf(lineB to false), threshold.readExactArmed())
        assertTrue(reset.clearExact(codexA))
        assertTrue(threshold.clearExact(codexA))
        assertTrue(context.getSharedPreferences("ai_quota_reset_notifications", Context.MODE_PRIVATE)
            .getString("pending_cards_v1", "").orEmpty().contains(malformed))
        assertTrue(context.getSharedPreferences("ai_quota_usage_threshold_notifications", Context.MODE_PRIVATE)
            .getString("armed_cards_v1", "").orEmpty().contains(malformed))
        assertTrue(WidgetSnapshotCache(context).exactCardSnapshots().isEmpty())
        assertTrue(context.getSharedPreferences("ai_quota_widget_cache", Context.MODE_PRIVATE).all.keys
            .contains("card_snapshot_v1_pa1:5:CODEX:7:default"))
    }

    private fun remaining(state: com.aiquota.mobile.widget.WidgetSnapshotState): Int =
        ProviderSnapshotCodec.decode(state.snapshotJson).single().lines.single().remainingText.removeSuffix("%").toInt()

    private fun snapshot(remaining: Int) = ProviderUsageSnapshot(
        providerId = ProviderId.CODEX,
        connectionState = ProviderConnectionState.CONNECTED,
        updatedAt = "2026-08-28T00:00:00Z",
        statusUpdatedAt = "2026-08-28T00:00:00Z",
        lines = listOf(ProviderUsageLine("Quota", remaining / 100f, "$remaining%", key = "primary:window")),
    )

    private fun id(index: Int) = ProviderAccountId(
        ProviderId.CODEX,
        AccountKey.parseOpaque("acct_${index.toString(16).padStart(32, '0')}"),
    )

    private fun clear() {
        listOf(
            "ai_quota_reset_notifications",
            "ai_quota_usage_threshold_notifications",
            "ai_quota_widget_cache",
        ).forEach { context.getSharedPreferences(it, Context.MODE_PRIVATE).edit().clear().commit() }
    }
}
