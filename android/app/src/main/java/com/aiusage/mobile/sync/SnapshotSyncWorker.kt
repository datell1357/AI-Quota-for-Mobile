package com.aiusage.mobile.sync

import android.content.Context
import androidx.work.CoroutineWorker
import androidx.work.WorkerParameters
import com.aiusage.mobile.widget.AIUsageGlanceWidget
import androidx.glance.appwidget.updateAll

class SnapshotSyncWorker(
    appContext: Context,
    workerParameters: WorkerParameters
) : CoroutineWorker(appContext, workerParameters) {
    override suspend fun doWork(): Result {
        val repository = SnapshotRepository(applicationContext)
        val uid = inputData.getString("uid") ?: repository.storedUid() ?: return Result.failure()
        return try {
            repository.rememberSignedInUser(uid)
            repository.refreshLatestSnapshot(uid)
            AIUsageGlanceWidget().updateAll(applicationContext)
            Result.success()
        } catch (_: Throwable) {
            Result.success()
        } finally {
            repository.scheduleWidgetRefresh(uid)
        }
    }
}
