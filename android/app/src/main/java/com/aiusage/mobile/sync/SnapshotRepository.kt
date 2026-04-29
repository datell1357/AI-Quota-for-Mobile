package com.aiusage.mobile.sync

import android.content.Context
import androidx.work.OneTimeWorkRequestBuilder
import androidx.work.WorkManager
import com.aiusage.mobile.widget.WidgetSnapshotCache

class SnapshotRepository(private val context: Context) {
    private val cache = WidgetSnapshotCache(context)

    fun refreshLatestSnapshot() {
        WorkManager.getInstance(context)
            .enqueue(OneTimeWorkRequestBuilder<SnapshotSyncWorker>().build())
    }

    fun saveForWidget(snapshotJson: String) {
        // Stores display-only snapshot cache for app and widget rendering.
        cache.write(snapshotJson)
    }

    fun latestCachedSnapshot(): String {
        return cache.read()
    }
}
