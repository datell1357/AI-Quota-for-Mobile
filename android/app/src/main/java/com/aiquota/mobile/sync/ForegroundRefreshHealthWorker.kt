package com.aiquota.mobile.sync

import android.content.Context
import android.util.Log
import androidx.work.CoroutineWorker
import androidx.work.WorkerParameters
import com.aiquota.mobile.local.LocalUsageRepository
import com.aiquota.mobile.notification.UsageLimitNotificationController
import com.aiquota.mobile.providers.ProviderBackgroundRefreshStateRepository
import kotlinx.coroutines.CancellationException

class ForegroundRefreshHealthWorker(
    appContext: Context,
    workerParams: WorkerParameters
) : CoroutineWorker(appContext, workerParams) {
    override suspend fun doWork(): Result {
        return executeHealthCheck(
            runAttemptCount = runAttemptCount,
            check = ::checkLiveRefreshHealth,
            logFailure = { error ->
                Log.w(TAG, "Foreground refresh health restart failed: ${error.javaClass.simpleName}")
            }
        )
    }

    private fun checkLiveRefreshHealth() {
        val context = applicationContext
        val canPostNotifications = UsageLimitNotificationController.canPostNotifications(context)
        val snapshots = LocalUsageRepository(context).readSnapshots()
        val liveMonitoringEnabled = ForegroundRefreshController(context).liveMonitoringEnabled()
        val shouldRunForegroundLoop = ForegroundRefreshPolicy.shouldRunForegroundLoop(
            snapshots = snapshots,
            liveMonitoringEnabled = liveMonitoringEnabled,
            canPostNotifications = canPostNotifications
        )

        if (!shouldRunForegroundLoop) {
            UsageLimitNotificationController.cancelLiveRefreshIssue(context)
            return
        }

        if (ForegroundRefreshHealthWorkerPolicy.shouldRestart(
                shouldRunForegroundLoop = shouldRunForegroundLoop,
                heartbeatStale = ProviderBackgroundRefreshStateRepository(context).isHeartbeatStale()
            )) {
            ForegroundRefreshController(context).startPreciseRefresh()
            UsageLimitNotificationController.notifyLiveRefreshIssue(context)
        } else {
            UsageLimitNotificationController.cancelLiveRefreshIssue(context)
        }
    }

    private companion object {
        const val TAG = "RefreshHealthWorker"
    }
}

internal suspend fun executeHealthCheck(
    runAttemptCount: Int,
    check: suspend () -> Unit,
    logFailure: (Exception) -> Unit
): androidx.work.ListenableWorker.Result {
    return try {
        check()
        androidx.work.ListenableWorker.Result.success()
    } catch (error: Exception) {
        if (error is CancellationException) throw error
        logFailure(error)
        if (ForegroundRefreshHealthWorkerPolicy.shouldRetryStartFailure(runAttemptCount)) {
            androidx.work.ListenableWorker.Result.retry()
        } else {
            androidx.work.ListenableWorker.Result.failure()
        }
    }
}
