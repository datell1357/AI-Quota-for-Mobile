package com.aiquota.mobile.notification

import android.app.Application
import android.app.NotificationChannel
import android.app.NotificationManager
import android.content.Context
import androidx.test.core.app.ApplicationProvider
import com.aiquota.mobile.accounts.*
import com.aiquota.mobile.local.*
import com.aiquota.mobile.providers.*
import org.junit.Assert.*
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.Shadows.shadowOf
import org.robolectric.annotation.Config
import java.time.Instant

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [32], application = Application::class)
class NotificationDeliveryRecoveryTest {
    private val context get() = ApplicationProvider.getApplicationContext<Context>()
    private val account = ProviderAccountId(ProviderId.CODEX, AccountKey.reservedDefault())
    private val key = ProviderAccountLineKey(account, "codex:session")
    private val now = Instant.parse("2026-09-15T00:00:00Z")

    @Test fun blockedChannelsCannotBeRecordedAsPosted() {
        val manager = context.getSystemService(NotificationManager::class.java)
        shadowOf(manager).setNotificationsEnabled(true)
        manager.createNotificationChannel(NotificationChannel(ProviderResetNotificationController.CHANNEL_ID,
            "Reset", NotificationManager.IMPORTANCE_NONE))
        manager.createNotificationChannel(NotificationChannel(ProviderUsageThresholdNotificationController.CHANNEL_ID,
            "Threshold", NotificationManager.IMPORTANCE_NONE))
        val card = card(4)
        assertNull(ProviderResetNotificationController.notifyReset(context,
            ProviderResetNotification(key, card.alias, "Session", 0, card.generation, card.sessionRevision, card.version)))
        assertNull(ProviderUsageThresholdNotificationController.notifyLowUsage(context,
            ProviderUsageThresholdNotification(key, card.alias, "Session", 0, 5, card.generation, card.sessionRevision, card.version)))
        assertTrue(ProviderPostedNotificationRepository(context).readExact(account).isEmpty())
        assertTrue(manager.activeNotifications.isEmpty())
    }

    @Test fun failedThresholdPostRemainsPendingAcrossReopenAndPostsOnceAfterRecovery() {
        enableAlerts()
        ProviderUsageThresholdNotificationStateRepository(context).writeExactArmed(mapOf(key to true))
        assertEquals(0, evaluate(card(4), postThreshold = { false }).thresholdCount)
        assertEquals(true, ProviderUsageThresholdNotificationStateRepository(context).readExactArmed()[key])
        var posts = 0
        assertEquals(1, evaluate(card(4), postThreshold = { posts++; true }).thresholdCount)
        repeat(4) { evaluate(card(4), postThreshold = { posts++; true }) }
        assertEquals(1, posts)
        assertEquals(false, ProviderUsageThresholdNotificationStateRepository(context).readExactArmed()[key])
    }

    @Test fun optionalMetadataFailureDoesNotTurnPostedAlertIntoFailure() {
        val manager = context.getSystemService(NotificationManager::class.java)
        shadowOf(manager).setNotificationsEnabled(true)
        // Simulate an unreadable optional metadata value without affecting notification identity.
        context.getSharedPreferences("ai_quota_provider_notification_identity", Context.MODE_PRIVATE)
            .edit().putInt("posted_v1", 7).commit()
        val card = card(4)
        val reset = ProviderResetNotificationController.notifyReset(context,
            ProviderResetNotification(key, card.alias, "Session", 0, card.generation, card.sessionRevision, card.version))
        val threshold = ProviderUsageThresholdNotificationController.notifyLowUsage(context,
            ProviderUsageThresholdNotification(key, card.alias, "Session", 0, 5, card.generation, card.sessionRevision, card.version))
        assertNotNull(reset)
        assertNotNull(threshold)
        assertTrue(manager.activeNotifications.any { it.tag == reset!!.tag && it.id == reset.notificationId })
        assertTrue(manager.activeNotifications.any { it.tag == threshold!!.tag && it.id == threshold.notificationId })
    }

    @Test fun permissionDeniedThenGrantedUsesCurrentUsageAndDoesNotReplayRecoveredUsage() {
        enableAlerts()
        val manager = context.getSystemService(NotificationManager::class.java)
        ProviderUsageThresholdNotificationStateRepository(context).writeExactArmed(mapOf(key to true))
        shadowOf(manager).setNotificationsEnabled(false)
        assertEquals(0, ProviderCardNotificationRuntime.evaluateCards(context, listOf(card(4)), true, now).thresholdCount)
        assertEquals(true, ProviderUsageThresholdNotificationStateRepository(context).readExactArmed()[key])
        shadowOf(manager).setNotificationsEnabled(true)
        assertEquals(0, ProviderCardNotificationRuntime.evaluateCards(context, listOf(card(50)), true, now).thresholdCount)
        assertTrue(manager.activeNotifications.isEmpty())
        assertEquals(1, ProviderCardNotificationRuntime.evaluateCards(context, listOf(card(4)), true, now).thresholdCount)
        assertEquals(0, ProviderCardNotificationRuntime.evaluateCards(context, listOf(card(4)), true, now).thresholdCount)
    }

    @Test fun recentBlockedResetKeepsItsBoundaryAndExpiredResetsAreNotReplayed() {
        enableAlerts()
        val repository = ProviderResetNotificationStateRepository(context)
        val recent = now.minusSeconds(60).toEpochMilli()
        repository.writeExact(mapOf(key to recent), emptyMap())
        evaluate(card(80), postReset = { false })
        assertEquals(recent, ProviderResetNotificationStateRepository(context).readExactPending()[key])
        assertFalse(ProviderResetNotificationStateRepository(context).readExactNotified().containsKey(key))
        var posts = 0
        assertEquals(1, evaluate(card(80), postReset = { posts++; true }).resetCount)
        evaluate(card(80), postReset = { posts++; true })
        assertEquals(1, posts)
        repository.writeExact(mapOf(key to now.minusSeconds(601).toEpochMilli()), emptyMap())
        assertEquals(0, evaluate(card(80), postReset = { fail("Old resets must expire"); false }).resetCount)
        assertEquals(now.plusSeconds(3600).toEpochMilli(), repository.readExactPending()[key])
    }

    @Test fun staleQuotaDoesNotCreateNewLowUsageAlertsButFreshCollectionCan() {
        enableAlerts()
        ProviderUsageThresholdNotificationStateRepository(context).writeExactArmed(mapOf(key to true))
        assertEquals(0, evaluate(card(4, now.minusSeconds(601)), postThreshold = { fail("Cached low quota must not alert"); false }).thresholdCount)
        assertEquals(1, evaluate(card(4), postThreshold = { true }).thresholdCount)
    }

    @Test @Config(sdk = [33])
    fun runtimePermissionDenialPreservesTheAlertUntilPermissionIsGranted() {
        enableAlerts()
        val app = context as Application
        shadowOf(context.getSystemService(NotificationManager::class.java)).setNotificationsEnabled(true)
        shadowOf(app).denyPermissions(android.Manifest.permission.POST_NOTIFICATIONS)
        ProviderUsageThresholdNotificationStateRepository(context).writeExactArmed(mapOf(key to true))
        assertEquals(0, ProviderCardNotificationRuntime.evaluateCards(context, listOf(card(4)), true, now).thresholdCount)
        assertEquals(true, ProviderUsageThresholdNotificationStateRepository(context).readExactArmed()[key])
        shadowOf(app).grantPermissions(android.Manifest.permission.POST_NOTIFICATIONS)
        assertEquals(1, ProviderCardNotificationRuntime.evaluateCards(context, listOf(card(4)), true, now).thresholdCount)
        assertEquals(false, ProviderUsageThresholdNotificationStateRepository(context).readExactArmed()[key])
    }

    @Test fun oneAccountPostFailureDoesNotConsumeOrBlockAnotherAccountsAlert() {
        enableAlerts()
        val secondId = ProviderAccountId(ProviderId.CODEX, AccountKey.parseOpaque("acct_00000000000000000000000000000002"))
        val secondKey = ProviderAccountLineKey(secondId, key.lineKey)
        ProviderCardPreferencesRepository(context).apply {
            setUsageThresholdNotificationEnabled(secondId, true)
            setUsageThresholdPercent(secondId, 5)
        }
        ProviderUsageThresholdNotificationStateRepository(context).writeExactArmed(mapOf(key to true, secondKey to true))
        val second = card(4).copy(accountId = secondId, alias = "Codex 2")
        val result = ProviderCardNotificationRuntime.evaluateCards(context, listOf(card(4), second), true, now,
            postThreshold = { if (it.accountId == account) error("Post failed") else true })
        assertEquals(1, result.thresholdCount)
        val stored = ProviderUsageThresholdNotificationStateRepository(context).readExactArmed()
        assertEquals(true, stored[key])
        assertEquals(false, stored[secondKey])
    }

    @Test fun compactAndExpandedRemoteViewsShowDelayWithoutClippingShortUsageLabels() {
        val locale = java.util.Locale.getDefault()
        java.util.Locale.setDefault(java.util.Locale.KOREAN)
        try {
            val old = card(80, now.minusSeconds(601)).snapshot
            val fresh = card(60).snapshot.copy(providerId = ProviderId.CLAUDE)
            val content = buildUsageNotificationContent(ProviderSnapshotCodec.encode(listOf(old, fresh)), now)
            for ((methodName, delayedSlot, freshSlot) in listOf(
                Triple("remoteViews", "notification_remaining_0", "notification_remaining_6"),
                Triple("compactRemoteViews", "notification_compact_text_0", "notification_compact_text_1"))) {
                val method = UsageLimitNotificationController::class.java.getDeclaredMethod(methodName,
                    Context::class.java, UsageNotificationContent::class.java).apply { isAccessible = true }
                val views = method.invoke(UsageLimitNotificationController, context, content) as android.widget.RemoteViews
                val root = views.apply(context, android.widget.FrameLayout(context))
                val width = (360 * context.resources.displayMetrics.density).toInt()
                root.measure(android.view.View.MeasureSpec.makeMeasureSpec(width, android.view.View.MeasureSpec.EXACTLY),
                    android.view.View.MeasureSpec.makeMeasureSpec(0, android.view.View.MeasureSpec.UNSPECIFIED))
                root.layout(0, 0, root.measuredWidth, root.measuredHeight)
                fun text(name: String) = root.findViewById<android.widget.TextView>(context.resources.getIdentifier(name, "id", context.packageName))
                assertTrue(text(delayedSlot).text.toString().contains("지연"))
                assertFalse(text(freshSlot).text.toString().contains("지연"))
                assertEquals(0, text(delayedSlot).layout.getEllipsisCount(0))
            }
        } finally { java.util.Locale.setDefault(locale) }
    }

    private fun enableAlerts() {
        ProviderCardPreferencesRepository(context).apply {
            setResetNotificationEnabled(account, true)
            setUsageThresholdNotificationEnabled(account, true)
            setUsageThresholdPercent(account, 5)
        }
    }

    private fun evaluate(
        card: ProviderCardNotificationSnapshot,
        postReset: (ProviderResetNotification) -> Boolean = { true },
        postThreshold: (ProviderUsageThresholdNotification) -> Boolean = { true },
    ) = ProviderCardNotificationRuntime.evaluateCards(context, listOf(card), true, now, postReset, postThreshold)

    private fun card(remaining: Int, time: Instant = now, reset: Instant = now.plusSeconds(3600)) = ProviderCardNotificationSnapshot(
        account, "Codex", AccountGeneration.of(1), SessionRevision.of(1), DisplayVersion.of(1),
        ProviderUsageSnapshot(ProviderId.CODEX, connectionState = ProviderConnectionState.CONNECTED,
            updatedAt = time.toString(), lines = listOf(ProviderUsageLine("Session", remaining / 100f,
                "$remaining% left", key = key.lineKey, resetsAt = reset.toString()))))
}
