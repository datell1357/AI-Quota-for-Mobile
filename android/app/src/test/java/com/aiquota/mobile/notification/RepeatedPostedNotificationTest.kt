package com.aiquota.mobile.notification

import android.app.Notification
import android.app.NotificationChannel
import android.app.NotificationManager
import android.content.Context
import androidx.test.core.app.ApplicationProvider
import com.aiquota.mobile.accounts.*
import com.aiquota.mobile.local.*
import com.aiquota.mobile.providers.*
import org.junit.Assert.*
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28])
class RepeatedPostedNotificationTest {
    private lateinit var context: Context
    private lateinit var manager: NotificationManager
    private lateinit var repository: ProviderPostedNotificationRepository
    private val account = ProviderAccountId(ProviderId.CLAUDE, AccountKey.reservedDefault())
    private val key = ProviderAccountLineKey(account, "claude:session")
    private fun card(version: Long, alias: String = "Claude") = ProviderCardNotificationSnapshot(
        account, alias, AccountGeneration.of(1), SessionRevision.of(1), DisplayVersion.of(version),
        ProviderUsageSnapshot(ProviderId.CLAUDE, connectionState = ProviderConnectionState.CONNECTED))

    @Before fun setup() {
        context = ApplicationProvider.getApplicationContext()
        context.getSharedPreferences("ai_quota_provider_notification_identity", 0).edit().clear().commit()
        repository = ProviderPostedNotificationRepository(context)
        manager = context.getSystemService(NotificationManager::class.java)
        manager.cancelAll()
        manager.createNotificationChannel(NotificationChannel("test", "test", NotificationManager.IMPORTANCE_DEFAULT))
    }

    private fun seed(kind: ProviderNotificationKind): ProviderNotificationIdentity {
        val event = if (kind == ProviderNotificationKind.RESET) PostedProviderNotification.Reset(
            ProviderResetNotification(key, "Claude", "Session", 0, AccountGeneration.of(1), SessionRevision.of(1), DisplayVersion.of(1)))
        else PostedProviderNotification.Threshold(ProviderUsageThresholdNotification(key, "Claude", "Session", 0, 5,
            AccountGeneration.of(1), SessionRevision.of(1), DisplayVersion.of(1)))
        repository.save(event)
        val identity = ProviderNotificationIdentityRepository(context).identity(kind, key)
        manager.notify(identity.tag, identity.notificationId, Notification.Builder(context, "test").setContentTitle("test").setSmallIcon(android.R.drawable.ic_dialog_info).build())
        return identity
    }

    @Test fun dismissedResetAndThresholdAlertsDoNotReappearOnEveryQuotaUpdate() {
        ProviderNotificationKind.entries.forEach { kind ->
            val identity = seed(kind)
            manager.cancel(identity.tag, identity.notificationId)
        }
        var posts = 0
        repeat(5) { version ->
            assertEquals(0, ProviderNotificationAliasUpdater.update(context, card(version.toLong() + 2)) { posts++; true })
        }
        assertEquals(0, posts)
        assertTrue(manager.activeNotifications.isEmpty())
    }

    @Test fun visibleResetAndThresholdAreNotRepostedOnMinuteByMinuteSnapshotVersions() {
        seed(ProviderNotificationKind.RESET)
        seed(ProviderNotificationKind.THRESHOLD)
        repeat(60) { minute ->
            assertEquals(0, ProviderNotificationAliasUpdater.update(context, card(minute.toLong() + 2)) {
                fail("Quota refresh must not repost an existing alert"); false
            })
        }
        assertEquals(2, manager.activeNotifications.size)
        assertTrue(repository.readExact(account).all {
            when (it) {
                is PostedProviderNotification.Reset -> it.event.version == DisplayVersion.of(61)
                is PostedProviderNotification.Threshold -> it.event.version == DisplayVersion.of(61)
            }
        })
    }

    @Test fun renameUpdatesOnlyAnAlertStillInTheNotificationShade() {
        val reset = seed(ProviderNotificationKind.RESET)
        val threshold = seed(ProviderNotificationKind.THRESHOLD)
        manager.cancel(threshold.tag, threshold.notificationId)
        val posted = mutableListOf<PostedProviderNotification>()
        assertEquals(1, ProviderNotificationAliasUpdater.update(context, card(2, "Work")) {
            posted += it; repository.save(it)
        })
        assertEquals("Work", posted.single().alias)
        assertTrue(posted.single() is PostedProviderNotification.Reset)
        assertEquals(reset.tag, manager.activeNotifications.single().tag)
        assertEquals(0, ProviderNotificationAliasUpdater.update(context, card(2, "Work")) { fail("Unchanged alert should not update"); false })
    }
}
