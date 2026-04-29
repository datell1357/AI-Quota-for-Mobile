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

    suspend fun listDevices(uid: String): List<SnapshotDevice> {
        val deviceDocuments = firestore.collection("users")
            .document(uid)
            .collection("devices")
            .get()
            .await()
            .documents

        return deviceDocuments.map { deviceDocument ->
            val snapshotDocument = deviceDocument.reference
                .collection("snapshots")
                .document("latest")
                .get()
                .await()
            val parsedSnapshot = parseSnapshot(deviceDocument, snapshotDocument)
            SnapshotDevice(
                deviceId = deviceDocument.id,
                deviceName = parsedSnapshot.deviceName ?: "Unnamed device",
                status = parsedSnapshot.status,
                lastSeenAt = deviceDocument.getString("lastSeenAt"),
                fetchedAt = parsedSnapshot.fetchedAt,
                summary = parsedSnapshot.message
            )
        }.sortedByDescending { timestampMillis(it.lastSeenAt) }
    }

    suspend fun refreshLatestSnapshot(uid: String, preferredDeviceId: String? = null): SnapshotRefreshResult {
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

        val selectedDevice = selectDevice(devices, preferredDeviceId)
        val snapshotDocument = selectedDevice.reference
            .collection("snapshots")
            .document("latest")
            .get()
            .await()

        val result = parseSnapshot(selectedDevice, snapshotDocument)
        saveForWidget(
            snapshotJson = result.rawSnapshotJson,
            status = result.status.name,
            deviceName = result.deviceName.orEmpty(),
            updatedAt = result.updatedAt.orEmpty()
        )
        return result
    }

    suspend fun updateDeviceName(uid: String, deviceId: String, deviceName: String) {
        val normalized = deviceName.trim()
        require(normalized.isNotEmpty()) { "Device name is required" }
        firestore.collection("users")
            .document(uid)
            .collection("devices")
            .document(deviceId)
            .update("name", normalized)
            .await()
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

    private fun selectDevice(
        devices: List<DocumentSnapshot>,
        preferredDeviceId: String?
    ): DocumentSnapshot {
        val preferred = preferredDeviceId?.let { id -> devices.firstOrNull { it.id == id } }
        if (preferred != null) return preferred
        return devices.sortedByDescending { timestampMillis(it.get("lastSeenAt")) }
            .firstOrNull { document ->
                document.getBoolean("syncEnabled") != false && document.get("revokedAt") == null
            }
            ?: devices.first()
    }

    private fun parseSnapshot(
        deviceDocument: DocumentSnapshot,
        snapshotDocument: DocumentSnapshot
    ): SnapshotRefreshResult {
        val deviceId = deviceDocument.id
        val deviceName = deviceDocument.getString("name")
        val revoked = deviceDocument.get("revokedAt") != null || deviceDocument.getBoolean("syncEnabled") == false

        if (revoked) {
            return SnapshotRefreshResult(
                deviceId = deviceId,
                deviceName = deviceName,
                status = SnapshotStatus.Revoked,
                ageSeconds = null,
                fetchedAt = null,
                updatedAt = null,
                message = "Linked PC was revoked",
                providers = emptyList(),
                rawSnapshotJson = ""
            )
        }

        if (!snapshotDocument.exists()) {
            return SnapshotRefreshResult(
                deviceId = deviceId,
                deviceName = deviceName,
                status = SnapshotStatus.NotLinked,
                ageSeconds = null,
                fetchedAt = null,
                updatedAt = null,
                message = "No uploaded snapshot yet",
                providers = emptyList(),
                rawSnapshotJson = ""
            )
        }

        val snapshotMap = snapshotDocument.data ?: emptyMap()
        val snapshotJson = JSONObject(snapshotMap).toString()
        val providers = parseProviders(snapshotDocument)
        val fetchedAt = snapshotDocument.getString("fetchedAt")
        val updatedAt = snapshotDocument.getString("uploadedAt") ?: fetchedAt
        val ageSeconds = fetchedAt?.let(::ageSeconds)
        val hasProviderError = providers.any { it.summary.contains("error", ignoreCase = true) }
        val status = resolveSnapshotStatus(ageSeconds, hasProviderError)
        return SnapshotRefreshResult(
            deviceId = deviceId,
            deviceName = deviceName,
            status = status,
            ageSeconds = ageSeconds,
            fetchedAt = fetchedAt,
            updatedAt = updatedAt,
            message = statusMessage(status),
            providers = providers,
            rawSnapshotJson = snapshotJson
        )
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
