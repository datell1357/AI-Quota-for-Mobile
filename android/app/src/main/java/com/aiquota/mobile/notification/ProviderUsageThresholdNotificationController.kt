package com.aiquota.mobile.notification

import android.app.NotificationChannel
import android.app.NotificationManager
import android.content.Context
import android.graphics.Bitmap
import android.graphics.Canvas
import android.os.Build
import androidx.core.app.NotificationCompat
import androidx.core.app.NotificationManagerCompat
import androidx.core.content.ContextCompat
import com.aiquota.mobile.R
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.local.displayUsageLabel
import com.aiquota.mobile.providers.ProviderUsageThresholdNotification
import com.aiquota.mobile.ui.provider.providerIconRes

/** Posts an exact-card low-usage notification. */
object ProviderUsageThresholdNotificationController {
    private const val CHANNEL_ID = "provider_usage_thresholds"
    private const val SUMMARY_NOTIFICATION_ID = 2102
    private const val LARGE_ICON_LOGO_INSET_RATIO = 0.24f
    private const val GROUP_KEY = "provider_usage_threshold_alerts"
    private const val GROUP_SUMMARY_TAG = "provider_usage_threshold_alerts_summary"

    fun notifyLowUsage(
        context: Context,
        event: ProviderUsageThresholdNotification,
    ): ProviderNotificationIdentity? = notifyLowUsage(context, event, false)

    internal fun notifyLowUsage(
        context: Context,
        event: ProviderUsageThresholdNotification,
        onlyAlertOnce: Boolean,
    ): ProviderNotificationIdentity? {
        if (!UsageLimitNotificationController.canPostNotifications(context)) return null
        createChannel(context)
        val identity = ProviderNotificationIdentityRepository(context).identity(
            ProviderNotificationKind.THRESHOLD,
            event.accountLineKey,
        )
        val label = displayUsageLabel(event.providerId.storageId, event.lineLabel, event.lineIndex)
        val title = context.getString(
            R.string.provider_usage_threshold_notification_title,
            cardProviderLabel(event.alias, event.providerId),
            label,
            event.thresholdPercent,
        )
        val builder = NotificationCompat.Builder(context, CHANNEL_ID)
            .setSmallIcon(providerIconRes(event.providerId))
            .setContentTitle(title)
            .setContentIntent(ProviderNotificationDetailIntent.pendingIntent(context, identity))
            .setAutoCancel(true)
            .setOnlyAlertOnce(onlyAlertOnce)
            .setPriority(NotificationCompat.PRIORITY_HIGH)
            .setDefaults(NotificationCompat.DEFAULT_ALL)
            .setGroup(GROUP_KEY)
            .setGroupAlertBehavior(NotificationCompat.GROUP_ALERT_CHILDREN)
        providerLargeIcon(context, event.providerId)?.let(builder::setLargeIcon)
        val posted = runCatching {
            val manager = NotificationManagerCompat.from(context)
            manager.notify(identity.tag, identity.notificationId, builder.build())
            manager.notify(GROUP_SUMMARY_TAG, SUMMARY_NOTIFICATION_ID, buildGroupSummary(context))
        }.isSuccess
        if (!posted || !ProviderPostedNotificationRepository(context).save(
                PostedProviderNotification.Threshold(event),
            )
        ) return null
        return identity
    }

    private fun buildGroupSummary(context: Context) = NotificationCompat.Builder(context, CHANNEL_ID)
        .setSmallIcon(R.drawable.ic_stat_ai_quota)
        .setContentTitle(context.getString(R.string.provider_usage_threshold_notification_channel))
        .setContentIntent(android.app.PendingIntent.getActivity(
            context,
            SUMMARY_NOTIFICATION_ID,
            com.aiquota.mobile.MainActivity.createHomeIntent(context),
            android.app.PendingIntent.FLAG_UPDATE_CURRENT or android.app.PendingIntent.FLAG_IMMUTABLE,
        ))
        .setAutoCancel(true)
        .setGroup(GROUP_KEY)
        .setGroupSummary(true)
        .setGroupAlertBehavior(NotificationCompat.GROUP_ALERT_CHILDREN)
        .build()

    private fun createChannel(context: Context) {
        if (Build.VERSION.SDK_INT < Build.VERSION_CODES.O) return
        context.getSystemService(NotificationManager::class.java).createNotificationChannel(
            NotificationChannel(
                CHANNEL_ID,
                context.getString(R.string.provider_usage_threshold_notification_channel),
                NotificationManager.IMPORTANCE_HIGH,
            )
        )
    }

    private fun providerLargeIcon(context: Context, providerId: ProviderId): Bitmap? {
        val drawable = ContextCompat.getDrawable(context, providerIconRes(providerId)) ?: return null
        val size = context.resources.getDimensionPixelSize(android.R.dimen.notification_large_icon_width)
            .takeIf { it > 0 } ?: 128
        val bitmap = Bitmap.createBitmap(size, size, Bitmap.Config.ARGB_8888)
        val inset = (size * LARGE_ICON_LOGO_INSET_RATIO).toInt()
        drawable.setBounds(inset, inset, size - inset, size - inset)
        drawable.draw(Canvas(bitmap))
        return bitmap
    }
}

internal fun cardProviderLabel(alias: String, providerId: ProviderId): String =
    if (alias == providerId.displayName) alias else "$alias · ${providerId.displayName}"
