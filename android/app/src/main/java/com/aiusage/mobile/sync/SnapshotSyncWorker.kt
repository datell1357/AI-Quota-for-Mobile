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
        WidgetSnapshotCache(applicationContext).write("{}")
        return Result.success()
    }
}

