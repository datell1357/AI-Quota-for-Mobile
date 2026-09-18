package com.aiquota.mobile.notification

import android.app.NotificationManager
import android.content.Context
import androidx.test.core.app.ApplicationProvider
import org.junit.Assert.*
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.Shadows.shadowOf
import org.robolectric.annotation.Config

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28])
class NotificationAccessAuditTest {
    @Test @Config(sdk = [33])
    fun android13RequiresRuntimePermissionAndDoesNotRepeatADeniedRequest() {
        val context: android.app.Application = ApplicationProvider.getApplicationContext()
        val manager = context.getSystemService(NotificationManager::class.java)
        shadowOf(manager).setNotificationsEnabled(true)
        context.getSharedPreferences("ai_quota_notifications", 0).edit().clear().commit()
        shadowOf(context).denyPermissions(android.Manifest.permission.POST_NOTIFICATIONS)
        assertFalse(UsageLimitNotificationController.canPostNotifications(context))
        assertTrue(UsageLimitNotificationController.shouldRequestNotificationPermissionOnLaunch(context))
        UsageLimitNotificationController.markNotificationPermissionRequested(context)
        assertFalse(UsageLimitNotificationController.shouldRequestNotificationPermissionOnLaunch(context))
        shadowOf(context).grantPermissions(android.Manifest.permission.POST_NOTIFICATIONS)
        assertTrue(UsageLimitNotificationController.canPostNotifications(context))
        shadowOf(manager).setNotificationsEnabled(false)
        assertFalse(UsageLimitNotificationController.canPostNotifications(context))
    }

    @Test fun systemNotificationBlockIsRespectedBeforeAndroid13() {
        val context: Context = ApplicationProvider.getApplicationContext()
        val manager = context.getSystemService(NotificationManager::class.java)
        shadowOf(manager).setNotificationsEnabled(false)
        assertFalse(UsageLimitNotificationController.canPostNotifications(context))
        assertFalse(UsageLimitNotificationController.shouldRequestNotificationPermissionOnLaunch(context))
        shadowOf(manager).setNotificationsEnabled(true)
        assertTrue(UsageLimitNotificationController.canPostNotifications(context))
    }

    @Test fun disabledIndividualChannelNeedsSettingsEvenWhenAppNotificationsAreAllowed() {
        val context: Context = ApplicationProvider.getApplicationContext()
        val manager = context.getSystemService(NotificationManager::class.java)
        shadowOf(manager).setNotificationsEnabled(true)
        manager.createNotificationChannel(android.app.NotificationChannel("blocked-audit", "Blocked", NotificationManager.IMPORTANCE_NONE))
        assertTrue(UsageLimitNotificationController.canPostNotifications(context))
        assertFalse(UsageLimitNotificationController.isChannelEnabled(context, "blocked-audit"))
        assertTrue(UsageLimitNotificationController.isChannelEnabled(context, "not-yet-created"))
        manager.createNotificationChannel(android.app.NotificationChannel(UsageLimitNotificationController.CHANNEL_ID, "Status", NotificationManager.IMPORTANCE_NONE))
        assertFalse(UsageLimitNotificationController.canShowStatusNotification(context))
    }

    @Test fun bothProviderAlertTogglesRequestAccessWithoutOptingIntoLiveRefresh() {
        val source = java.io.File("src/main/java/com/aiquota/mobile/ui/AIQuotaAppShell.kt").readText()
        for (callback in listOf("onResetNotificationChange", "onUsageThresholdEnabledChange")) {
            assertTrue(source.substringAfter("$callback = { enabled ->").substringBefore("},")
                .contains("if (enabled) requestNotificationAccess(enableLiveRefresh = false,"))
        }
        val request = source.substringAfter("fun requestNotificationAccess(").substringBefore("fun requestLiveMonitoringFromPrompt")
        assertTrue(request.contains("shouldRequestNotificationPermissionOnLaunch"))
        assertTrue(request.contains("openNotificationSettings()"))
    }
}
