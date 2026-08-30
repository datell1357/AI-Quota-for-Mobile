package com.aiquota.mobile.notification

import android.Manifest
import android.app.NotificationManager
import android.content.Context
import android.os.Build
import android.os.SystemClock
import androidx.test.ext.junit.runners.AndroidJUnit4
import androidx.test.platform.app.InstrumentationRegistry
import com.aiquota.mobile.accounts.AccountGeneration
import com.aiquota.mobile.accounts.AccountKey
import com.aiquota.mobile.accounts.DisplayVersion
import com.aiquota.mobile.accounts.ProviderAccountId
import com.aiquota.mobile.accounts.SessionRevision
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.local.ProviderConnectionState
import com.aiquota.mobile.local.ProviderUsageLine
import com.aiquota.mobile.local.ProviderUsageSnapshot
import com.aiquota.mobile.providers.ProviderAccountLineKey
import com.aiquota.mobile.providers.ProviderCardNotificationSnapshot
import com.aiquota.mobile.providers.ProviderResetNotification
import com.aiquota.mobile.providers.ProviderUsageThresholdNotification
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNotEquals
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith

@RunWith(AndroidJUnit4::class)
class ProviderCardNotificationControllerInstrumentationTest {
    private lateinit var context: Context
    private lateinit var manager: NotificationManager
    private val a = account(1)
    private val b = account(2)

    @Before
    fun setUp() {
        val instrumentation = InstrumentationRegistry.getInstrumentation()
        context = instrumentation.targetContext
        manager = context.getSystemService(NotificationManager::class.java)
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) {
            instrumentation.uiAutomation.grantRuntimePermission(
                context.packageName,
                Manifest.permission.POST_NOTIFICATIONS,
            )
        }
        clear()
    }

    @After
    fun tearDown() = clear()

    @Test
    fun exactSiblingNotificationsRemainDistinct_whenPostedRenamedAndDeleted() {
        // Given
        val identityA = requireNotNull(
            ProviderUsageThresholdNotificationController.notifyLowUsage(context, threshold(a, "Codex")),
        )
        val identityB = requireNotNull(
            ProviderUsageThresholdNotificationController.notifyLowUsage(context, threshold(b, "Work")),
        )
        val before = awaitChildren { it.size == 2 }
            .associate { it.tag to it.notification.extras.getString("android.title") }

        // When
        val renamedCount = ProviderNotificationAliasUpdater.update(context, card(b, "Personal"))
        val renamed = ProviderNotificationIdentityRepository(context).identity(
            ProviderNotificationKind.THRESHOLD,
            ProviderAccountLineKey(b, "primary:window"),
        )
        val afterRename = awaitChildren { notifications ->
            notifications.any { notification ->
                notification.tag == identityB.tag &&
                    notification.notification.extras.getString("android.title").orEmpty().contains("Personal")
            }
        }.associate { it.tag to it.notification.extras.getString("android.title") }
        assertTrue(ProviderNotificationArtifacts.eraseExact(context, b))
        val afterDelete = awaitChildren { notifications -> notifications.none { it.tag == identityB.tag } }

        // Then
        assertNotEquals(identityA.notificationId, identityB.notificationId)
        assertEquals(1, renamedCount)
        assertEquals(identityB, renamed)
        assertEquals(before.getValue(identityA.tag), afterRename.getValue(identityA.tag))
        assertNotEquals(before.getValue(identityB.tag), afterRename.getValue(identityB.tag))
        assertTrue(afterRename.getValue(identityB.tag).orEmpty().contains("Personal"))
        assertTrue(afterRename.getValue(identityB.tag).orEmpty().contains("Codex"))
        assertTrue(afterDelete.any { it.tag == identityA.tag })
        assertTrue(afterDelete.none { it.tag == identityB.tag })
    }

    @Test
    fun resetNotificationsExposeDistinctExactActions_whenSiblingLinesMatch() {
        // Given / When
        val identityA = requireNotNull(ProviderResetNotificationController.notifyReset(context, reset(a, "Codex")))
        val identityB = requireNotNull(ProviderResetNotificationController.notifyReset(context, reset(b, "Work")))
        val children = children()

        // Then
        assertEquals(setOf(identityA.tag, identityB.tag), children.map { it.tag }.toSet())
        assertNotEquals(identityA.requestCode, identityB.requestCode)
        assertTrue(children.all { it.notification.actions.size == 1 })
        assertTrue(children.all { it.notification.contentIntent != null })
    }

    private fun children() = manager.activeNotifications.filterNot {
        it.tag == "provider_usage_threshold_alerts_summary" || it.tag == "provider_reset_alerts_summary"
    }

    private fun awaitChildren(
        condition: (List<android.service.notification.StatusBarNotification>) -> Boolean,
    ): List<android.service.notification.StatusBarNotification> {
        repeat(50) {
            val current = children()
            if (condition(current)) return current
            SystemClock.sleep(100)
        }
        return children()
    }

    private fun card(id: ProviderAccountId, alias: String) = ProviderCardNotificationSnapshot(
        id,
        alias,
        AccountGeneration.of(3),
        SessionRevision.of(4),
        DisplayVersion.of(9),
        ProviderUsageSnapshot(
            ProviderId.CODEX,
            connectionState = ProviderConnectionState.CONNECTED,
            lines = listOf(ProviderUsageLine("Primary", 0.5f, key = "primary:window")),
        ),
    )

    private fun threshold(id: ProviderAccountId, alias: String) = ProviderUsageThresholdNotification(
        ProviderAccountLineKey(id, "primary:window"), alias, "Primary", 0, 5,
        AccountGeneration.of(3), SessionRevision.of(4), DisplayVersion.of(9),
    )

    private fun reset(id: ProviderAccountId, alias: String) = ProviderResetNotification(
        ProviderAccountLineKey(id, "primary:window"), alias, "Primary", 0,
        AccountGeneration.of(3), SessionRevision.of(4), DisplayVersion.of(9),
    )

    private fun account(index: Int) = ProviderAccountId(
        ProviderId.CODEX,
        AccountKey.parseOpaque("acct_${index.toString(16).padStart(32, '0')}"),
    )

    private fun clear() {
        manager.cancelAll()
        var attempts = 0
        while (manager.activeNotifications.isNotEmpty() && attempts < 50) {
            SystemClock.sleep(100)
            attempts++
        }
        InstrumentationRegistry.getInstrumentation().uiAutomation
            .executeShellCommand("cmd statusbar collapse")
            .close()
        context.getSharedPreferences("ai_quota_provider_notification_identity", Context.MODE_PRIVATE)
            .edit().clear().commit()
    }
}
