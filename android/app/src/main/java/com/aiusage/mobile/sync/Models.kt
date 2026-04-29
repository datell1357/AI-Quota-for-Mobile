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

