package com.aiusage.mobile.sync

data class UsageSnapshot(
    val schemaVersion: Int,
    val fetchedAt: String,
    val uploadedAt: String?,
    val source: String,
    val providers: List<ProviderUsage>
)

data class ProviderUsage(
    val providerId: String,
    val displayName: String,
    val plan: String?,
    val status: ProviderStatus,
    val fetchedAt: String,
    val errorCode: String?,
    val errorMessage: String?,
    val lines: List<UsageLine>
)

data class UsageLine(
    val type: String,
    val label: String,
    val used: Double?,
    val limit: Double?,
    val remaining: Double?,
    val format: UsageFormat,
    val resetsAt: String?
)

data class UsageFormat(
    val kind: String
)

enum class ProviderStatus {
    ok,
    error,
    unknown
}

data class SnapshotProviderLine(
    val providerName: String,
    val summary: String
)

data class SnapshotDevice(
    val deviceId: String,
    val deviceName: String,
    val status: SnapshotStatus,
    val lastSeenAt: String?,
    val fetchedAt: String?,
    val summary: String
)

data class SnapshotRefreshResult(
    val deviceId: String?,
    val deviceName: String?,
    val status: SnapshotStatus,
    val ageSeconds: Long?,
    val fetchedAt: String?,
    val updatedAt: String?,
    val message: String,
    val providers: List<SnapshotProviderLine>,
    val rawSnapshotJson: String
)
