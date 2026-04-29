package com.aiusage.mobile.sync

import android.content.Context
import androidx.work.OneTimeWorkRequestBuilder
import androidx.work.WorkManager
import com.aiusage.mobile.widget.WidgetSnapshotCache

class SnapshotRepository(private val context: Context) {
    fun refreshLatestSnapshot() {
        WorkManager.getInstance(context)
            .enqueue(OneTimeWorkRequestBuilder<SnapshotSyncWorker>().build())
    }

    fun saveForWidget(snapshotJson: String) {
        // Stores display-only snapshot cache for app and widget rendering.
        WidgetSnapshotCache(context).write(snapshotJson)
    }
}

