package com.aiusage.mobile.sync

import android.app.Service
import android.content.Intent
import android.content.pm.ServiceInfo
import android.os.Build
import android.os.IBinder
import com.aiusage.mobile.notification.UsageLimitNotificationController
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.Job
import kotlinx.coroutines.SupervisorJob
import kotlinx.coroutines.cancel
import kotlinx.coroutines.delay
import kotlinx.coroutines.isActive
import kotlinx.coroutines.launch

class ForegroundRefreshService : Service() {
    private val scope = CoroutineScope(SupervisorJob() + Dispatchers.IO)
    private var refreshJob: Job? = null

    override fun onBind(intent: Intent?): IBinder? = null

    override fun onStartCommand(intent: Intent?, flags: Int, startId: Int): Int {
        val notification = UsageLimitNotificationController.foregroundNotification(this)
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.Q) {
            startForeground(NOTIFICATION_ID, notification, ServiceInfo.FOREGROUND_SERVICE_TYPE_DATA_SYNC)
        } else {
            startForeground(NOTIFICATION_ID, notification)
        }
        startRefreshLoop()
        return START_STICKY
    }

    override fun onDestroy() {
        refreshJob?.cancel()
        scope.cancel()
        super.onDestroy()
    }

    private fun startRefreshLoop() {
        if (refreshJob?.isActive == true) return
        refreshJob = scope.launch {
            val repository = SnapshotRepository(applicationContext)
            while (isActive) {
                val uid = repository.storedUid()
                if (uid.isNullOrBlank()) {
                    stopSelf()
                    return@launch
                }
                runCatching {
                    repository.refreshLatestSnapshot(uid)
                }
                delay(60_000)
            }
        }
    }

    private companion object {
        const val NOTIFICATION_ID = 1001
    }
}
