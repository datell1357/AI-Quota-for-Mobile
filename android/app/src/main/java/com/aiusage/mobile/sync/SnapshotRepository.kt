package com.aiusage.mobile.sync

import android.content.Context
import androidx.work.Data
import androidx.work.OneTimeWorkRequestBuilder
import androidx.work.WorkManager
import com.aiusage.mobile.widget.WidgetSnapshotCache
import com.google.firebase.Timestamp
import com.google.firebase.firestore.DocumentSnapshot
import com.google.firebase.firestore.FirebaseFirestore
import kotlinx.coroutines.tasks.await
import org.json.JSONObject
import java.time.Instant

class SnapshotRepository(private val context: Context) {
    private val cache = WidgetSnapshotCache(context)
    private val firestore = FirebaseFirestore.getInstance()

    fun enqueueRefresh(uid: String) {
        val input = Data.Builder().putString("uid", uid).build()
        WorkManager.getInstance(context)
            .enqueue(
                OneTimeWorkRequestBuilder<SnapshotSyncWorker>()
                    .setInputData(input)
                    .build()
            )
    }

    suspend fun refreshLatestSnapshot(uid: String): SnapshotRefreshResult {
        val devices = firestore.collection("users")
            .document(uid)
            .collection("devices")
            .get()
            .await()
            .documents

        if (devices.isEmpty()) {
            val result = SnapshotRefreshResult(
                deviceId = null,
                deviceName = null,
                status = SnapshotStatus.NotLinked,
                ageSeconds = null,
                fetchedAt = null,
                updatedAt = null,
                message = "No PC linked",
                providers = emptyList(),
                rawSnapshotJson = ""
            )
            saveForWidget(result.rawSnapshotJson, result.status.name, "", "")
            return result
        }

        val activeDevice = devices
            .sortedByDescending { timestampMillis(it.get("lastSeenAt")) }
            .firstOrNull { snapshot ->
                snapshot.getBoolean("syncEnabled") != false && snapshot.get("revokedAt") == null
            }

        if (activeDevice == null) {
            val revokedDevice = devices.first()
            val result = SnapshotRefreshResult(
                deviceId = revokedDevice.id,
                deviceName = revokedDevice.getString("name"),
                status = SnapshotStatus.Revoked,
                ageSeconds = null,
                fetchedAt = null,
                updatedAt = null,
                message = "Linked PC was revoked",
                providers = emptyList(),
                rawSnapshotJson = ""
            )
            saveForWidget(result.rawSnapshotJson, result.status.name, result.deviceName.orEmpty(), "")
            return result
        }

        val snapshotDocument = activeDevice.reference
            .collection("snapshots")
            .document("latest")
            .get()
            .await()

        if (!snapshotDocument.exists()) {
            val result = SnapshotRefreshResult(
                deviceId = activeDevice.id,
                deviceName = activeDevice.getString("name"),
                status = SnapshotStatus.NotLinked,
                ageSeconds = null,
                fetchedAt = null,
                updatedAt = null,
                message = "No uploaded snapshot yet",
                providers = emptyList(),
                rawSnapshotJson = ""
            )
            saveForWidget(result.rawSnapshotJson, result.status.name, result.deviceName.orEmpty(), "")
            return result
        }

        val snapshotMap = snapshotDocument.data ?: emptyMap()
        val snapshotJson = JSONObject(snapshotMap).toString()
        val providers = parseProviders(snapshotDocument)
        val fetchedAt = snapshotDocument.getString("fetchedAt")
        val updatedAt = snapshotDocument.getString("uploadedAt") ?: fetchedAt
        val ageSeconds = fetchedAt?.let(::ageSeconds)
        val hasProviderError = providers.any { it.summary.contains("error", ignoreCase = true) }
        val status = resolveSnapshotStatus(ageSeconds, hasProviderError)
        val result = SnapshotRefreshResult(
            deviceId = activeDevice.id,
            deviceName = activeDevice.getString("name"),
            status = status,
            ageSeconds = ageSeconds,
            fetchedAt = fetchedAt,
            updatedAt = updatedAt,
            message = statusMessage(status),
            providers = providers,
            rawSnapshotJson = snapshotJson
        )
        saveForWidget(snapshotJson, status.name, result.deviceName.orEmpty(), updatedAt.orEmpty())
        return result
    }

    fun saveForWidget(
        snapshotJson: String,
        status: String = "NotLinked",
        deviceName: String = "",
        updatedAt: String = ""
    ) {
        // Stores display-only snapshot cache for app and widget rendering.
        cache.write(snapshotJson, status, deviceName, updatedAt)
    }

    fun latestCachedSnapshot(): String {
        return cache.read()
    }

    private fun parseProviders(snapshot: DocumentSnapshot): List<SnapshotProviderLine> {
        val providers = (snapshot.get("providers") as? List<*>)
            ?.filterIsInstance<Map<String, Any?>>()
            ?: return emptyList()
        return providers.map { provider ->
            val providerName = provider["displayName"]?.toString()
                ?: provider["providerId"]?.toString()
                ?: "Provider"
            val status = provider["status"]?.toString().orEmpty()
            val lines = (provider["lines"] as? List<*>)?.filterIsInstance<Map<String, Any?>>()
            val primaryLine = lines?.firstOrNull()
            val summary = when {
                primaryLine == null -> status.ifBlank { "unknown" }
                primaryLine["used"] != null && primaryLine["limit"] != null ->
                    "${formatNumber(primaryLine["used"])} / ${formatNumber(primaryLine["limit"])}"
                primaryLine["remaining"] != null ->
                    "Remaining ${formatNumber(primaryLine["remaining"])}"
                else -> primaryLine["label"]?.toString() ?: status.ifBlank { "unknown" }
            }
            SnapshotProviderLine(
                providerName = providerName,
                summary = if (status == "error" && provider["errorCode"] != null) {
                    provider["errorCode"].toString()
                } else {
                    summary
                }
            )
        }
    }

    private fun formatNumber(value: Any?): String {
        val number = (value as? Number)?.toDouble() ?: return value?.toString() ?: "-"
        return if (number % 1.0 == 0.0) number.toLong().toString() else number.toString()
    }

    private fun timestampMillis(value: Any?): Long {
        return when (value) {
            is Timestamp -> value.toDate().time
            is String -> runCatching { Instant.parse(value).toEpochMilli() }.getOrDefault(0L)
            else -> 0L
        }
    }

    private fun ageSeconds(value: String): Long {
        return runCatching {
            val fetchedAt = Instant.parse(value)
            (Instant.now().epochSecond - fetchedAt.epochSecond).coerceAtLeast(0L)
        }.getOrDefault(0L)
    }

    private fun statusMessage(status: SnapshotStatus): String {
        return when (status) {
            SnapshotStatus.NotLinked -> "No PC linked"
            SnapshotStatus.Fresh -> "Snapshot is fresh"
            SnapshotStatus.Stale -> "Snapshot is getting old"
            SnapshotStatus.Offline -> "PC looks offline"
            SnapshotStatus.ProviderError -> "One or more providers need attention"
            SnapshotStatus.Revoked -> "Linked PC was revoked"
        }
    }
}
