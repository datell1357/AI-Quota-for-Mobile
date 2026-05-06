package com.aiusage.mobile.notification

import android.Manifest
import android.app.NotificationChannel
import android.app.NotificationManager
import android.app.PendingIntent
import android.content.Context
import android.content.Intent
import android.content.pm.PackageManager
import android.os.Build
import android.view.View
import android.widget.RemoteViews
import androidx.core.app.NotificationCompat
import androidx.core.app.NotificationManagerCompat
import androidx.core.content.ContextCompat
import com.aiusage.mobile.MainActivity
import com.aiusage.mobile.R
import com.aiusage.mobile.widget.WidgetSnapshotCache

object UsageLimitNotificationController {
    private const val CHANNEL_ID = "usage_limits"
    private const val NOTIFICATION_ID = 1001
    private const val PREFS = "ai_usage_notifications"
    private const val KEY_ENABLED = "status_bar_summary_enabled"

    fun isEnabled(context: Context): Boolean {
        return context.getSharedPreferences(PREFS, Context.MODE_PRIVATE)
            .getBoolean(KEY_ENABLED, false)
    }

    fun setEnabled(context: Context, enabled: Boolean) {
        context.getSharedPreferences(PREFS, Context.MODE_PRIVATE)
            .edit()
            .putBoolean(KEY_ENABLED, enabled)
            .apply()
        if (!enabled) cancel(context)
    }

    fun canPostNotifications(context: Context): Boolean {
        return Build.VERSION.SDK_INT < Build.VERSION_CODES.TIRAMISU ||
            ContextCompat.checkSelfPermission(context, Manifest.permission.POST_NOTIFICATIONS) == PackageManager.PERMISSION_GRANTED
    }

    fun updateFromCache(context: Context) {
        update(context, WidgetSnapshotCache(context).readState().snapshotJson)
    }

    fun update(context: Context, snapshotJson: String) {
        if (!isEnabled(context)) return
        if (!canPostNotifications(context)) return

        val content = buildUsageNotificationContent(snapshotJson)
        createChannel(context)
        val notification = NotificationCompat.Builder(context, CHANNEL_ID)
            .setSmallIcon(R.drawable.ic_stat_ai_usage)
            .setContentTitle(content.title)
            .setContentText(content.summary)
            .setStyle(NotificationCompat.DecoratedCustomViewStyle())
            .setCustomBigContentView(remoteViews(context, content))
            .setContentIntent(contentIntent(context))
            .setOngoing(true)
            .setOnlyAlertOnce(true)
            .setSilent(true)
            .setPriority(NotificationCompat.PRIORITY_LOW)
            .setShowWhen(false)
            .build()

        NotificationManagerCompat.from(context).notify(NOTIFICATION_ID, notification)
    }

    fun cancel(context: Context) {
        NotificationManagerCompat.from(context).cancel(NOTIFICATION_ID)
    }

    private fun createChannel(context: Context) {
        if (Build.VERSION.SDK_INT < Build.VERSION_CODES.O) return
        val channel = NotificationChannel(
            CHANNEL_ID,
            "Usage limits",
            NotificationManager.IMPORTANCE_LOW
        ).apply {
            description = "Pinned AI usage limit gauges"
            setSound(null, null)
            enableVibration(false)
        }
        context.getSystemService(NotificationManager::class.java).createNotificationChannel(channel)
    }

    private fun contentIntent(context: Context): PendingIntent {
        val intent = Intent(context, MainActivity::class.java)
        return PendingIntent.getActivity(
            context,
            0,
            intent,
            PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_IMMUTABLE
        )
    }

    private fun remoteViews(context: Context, content: UsageNotificationContent): RemoteViews {
        val views = RemoteViews(context.packageName, R.layout.notification_usage_gauges)
        views.setTextViewText(R.id.notification_title, content.summary)
        val rows = rowIds()
        content.gauges.forEachIndexed { index, gauge ->
            val row = rows[index]
            views.setViewVisibility(row.containerId, View.VISIBLE)
            views.setImageViewResource(row.iconId, providerIconRes(gauge.providerId))
            views.setProgressBar(row.progressId, 100, (gauge.remainingRatio * 100).toInt().coerceIn(0, 100), false)
        }
        for (index in content.gauges.size until rows.size) {
            views.setViewVisibility(rows[index].containerId, View.GONE)
        }
        return views
    }

    private fun providerIconRes(providerId: String): Int {
        return when (providerId.lowercase()) {
            "claude" -> R.drawable.ic_provider_claude
            "codex", "openai" -> R.drawable.ic_provider_openai
            "gemini" -> R.drawable.ic_provider_gemini
            "antigravity" -> R.drawable.ic_provider_antigravity
            else -> R.drawable.ic_provider_unknown
        }
    }

    private fun rowIds(): List<NotificationGaugeRow> {
        return listOf(
            NotificationGaugeRow(R.id.notification_row_0, R.id.notification_icon_0, R.id.notification_progress_0),
            NotificationGaugeRow(R.id.notification_row_1, R.id.notification_icon_1, R.id.notification_progress_1),
            NotificationGaugeRow(R.id.notification_row_2, R.id.notification_icon_2, R.id.notification_progress_2),
            NotificationGaugeRow(R.id.notification_row_3, R.id.notification_icon_3, R.id.notification_progress_3)
        )
    }
}

private data class NotificationGaugeRow(
    val containerId: Int,
    val iconId: Int,
    val progressId: Int
)
