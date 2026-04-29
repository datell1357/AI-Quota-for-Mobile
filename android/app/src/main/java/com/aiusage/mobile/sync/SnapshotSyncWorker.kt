package com.aiusage.mobile.sync

import android.content.Context
import androidx.work.CoroutineWorker
import androidx.work.WorkerParameters
import com.aiusage.mobile.widget.WidgetSnapshotCache

class SnapshotSyncWorker(
    appContext: Context,
    workerParameters: WorkerParameters
) : CoroutineWorker(appContext, workerParameters) {
    override suspend fun doWork(): Result {
        val cachedSnapshot = WidgetSnapshotCache(applicationContext).read()
        if (cachedSnapshot.isBlank()) {
            return Result.retry()
        }
        WidgetSnapshotCache(applicationContext).write(cachedSnapshot)
        return Result.success()
    }
}
