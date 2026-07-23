package com.aiquota.mobile.notification

import android.annotation.SuppressLint
import android.app.NotificationChannel
import android.app.NotificationManager
import android.app.PendingIntent
import android.content.Context
import android.graphics.Bitmap
import android.graphics.Canvas
import android.os.Build
import androidx.core.app.NotificationCompat
import androidx.core.app.NotificationManagerCompat
import androidx.core.content.ContextCompat
import com.aiquota.mobile.MainActivity
import com.aiquota.mobile.R
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.local.displayUsageLabel
import com.aiquota.mobile.providers.ProviderUsageThresholdNotification
import com.aiquota.mobile.ui.provider.providerIconRes

/** Posts a "low usage" notification when a provider usage line drops to/below its threshold. */
object ProviderUsageThresholdNotificationController {
    private const val CHANNEL_ID = "provider_usage_thresholds"
    private const val NOTIFICATION_ID = 2101
    private const val SUMMARY_NOTIFICATION_ID = 2102
    private const val LARGE_ICON_LOGO_INSET_RATIO = 0.24f
    // One dedicated group, kept separate from reset alerts and the pinned usage notification.
    private const val GROUP_KEY = "provider_usage_threshold_alerts"
    private const val GROUP_SUMMARY_TAG = "provider_usage_threshold_alerts_summary"

    @SuppressLint("MissingPermission")
    fun notifyLowUsage(context: Context, event: ProviderUsageThresholdNotification) {
        if (!UsageLimitNotificationController.canPostNotifications(context)) return

        createChannel(context)
        val label = displayUsageLabel(event.providerId.storageId, event.lineLabel, event.lineIndex)
        val title = context.getString(
            R.string.provider_usage_threshold_notification_title,
            event.providerId.displayName,
            label,
            event.thresholdPercent
        )
        val tag = "${event.providerId.storageId}:${event.lineKey}"
        val builder = NotificationCompat.Builder(context, CHANNEL_ID)
            .setSmallIcon(providerIconRes(event.providerId))
            .setContentTitle(title)
            .setContentIntent(appIntent(context))
            .setAutoCancel(true)
            .setPriority(NotificationCompat.PRIORITY_HIGH)
            .setDefaults(NotificationCompat.DEFAULT_ALL)
            .setGroup(GROUP_KEY)
            .setGroupAlertBehavior(NotificationCompat.GROUP_ALERT_CHILDREN)
        providerLargeIcon(context, event.providerId)?.let(builder::setLargeIcon)

        runCatching {
            val manager = NotificationManagerCompat.from(context)
            manager.notify(tag, NOTIFICATION_ID, builder.build())
            manager.notify(GROUP_SUMMARY_TAG, SUMMARY_NOTIFICATION_ID, buildGroupSummary(context))
        }
    }

    private fun buildGroupSummary(context: Context) =
        NotificationCompat.Builder(context, CHANNEL_ID)
            .setSmallIcon(R.drawable.ic_stat_ai_quota)
            .setContentTitle(context.getString(R.string.provider_usage_threshold_notification_channel))
            .setContentIntent(appIntent(context))
            .setAutoCancel(true)
            .setGroup(GROUP_KEY)
            .setGroupSummary(true)
            .setGroupAlertBehavior(NotificationCompat.GROUP_ALERT_CHILDREN)
            .build()

    private fun createChannel(context: Context) {
        if (Build.VERSION.SDK_INT < Build.VERSION_CODES.O) return
        val manager = context.getSystemService(NotificationManager::class.java)
        val channel = NotificationChannel(
            CHANNEL_ID,
            context.getString(R.string.provider_usage_threshold_notification_channel),
            NotificationManager.IMPORTANCE_HIGH
        )
        manager.createNotificationChannel(channel)
    }

    private fun providerLargeIcon(context: Context, providerId: ProviderId): Bitmap? {
        val drawable = ContextCompat.getDrawable(context, providerIconRes(providerId)) ?: return null
        val size = context.resources
            .getDimensionPixelSize(android.R.dimen.notification_large_icon_width)
            .takeIf { it > 0 } ?: 128
        val bitmap = Bitmap.createBitmap(size, size, Bitmap.Config.ARGB_8888)
        val inset = (size * LARGE_ICON_LOGO_INSET_RATIO).toInt()
        drawable.setBounds(inset, inset, size - inset, size - inset)
        drawable.draw(Canvas(bitmap))
        return bitmap
    }

    private fun appIntent(context: Context): PendingIntent {
        return PendingIntent.getActivity(
            context,
            NOTIFICATION_ID,
            MainActivity.createHomeIntent(context),
            PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_IMMUTABLE
        )
    }
}
