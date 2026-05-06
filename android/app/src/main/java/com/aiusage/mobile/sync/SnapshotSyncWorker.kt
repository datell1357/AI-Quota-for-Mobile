package com.aiusage.mobile.sync

import android.content.Context
import androidx.work.CoroutineWorker
import androidx.work.WorkerParameters
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
            Result.success()
        } catch (_: Throwable) {
            Result.success()
        } finally {
            repository.scheduleWidgetRefresh(uid)
        }
    }
}
