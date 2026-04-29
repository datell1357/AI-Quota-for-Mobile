package com.aiusage.mobile.sync

import android.content.Context
import androidx.work.CoroutineWorker
import androidx.work.WorkerParameters

class SnapshotSyncWorker(
    appContext: Context,
    workerParameters: WorkerParameters
) : CoroutineWorker(appContext, workerParameters) {
    override suspend fun doWork(): Result {
        val uid = inputData.getString("uid") ?: return Result.failure()
        return try {
            SnapshotRepository(applicationContext).refreshLatestSnapshot(uid)
            Result.success()
        } catch (_: Throwable) {
            Result.retry()
        }
    }
}
