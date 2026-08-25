package com.aiquota.mobile.accounts

import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.local.ProviderUsageSnapshot

data class AccountUsagePage(
    val records: List<VersionedDisplayRecord>,
    val offset: Int,
    val totalCount: Int,
    val nextOffset: Int?,
    val version: DisplayVersion
)

data class AccountUsageWrite(
    val accountId: ProviderAccountId,
    val expectedVersion: DisplayVersion,
    val expectedGeneration: AccountGeneration,
    val expectedSessionRevision: SessionRevision,
    val snapshot: ProviderUsageSnapshot
) {
    init {
        require(accountId.providerId == snapshot.providerId) { "Snapshot provider does not match account" }
    }
}

enum class AccountUsageWriteRejection {
    ACCOUNT_MISSING,
    ACCOUNT_INACTIVE,
    VERSION_MISMATCH,
    GENERATION_MISMATCH,
    SESSION_MISMATCH
}

sealed interface AccountUsageWriteResult {
    data class Committed(
        val record: VersionedDisplayRecord,
        val projection: AccountUsageProjectionResult
    ) : AccountUsageWriteResult

    data class Rejected(val reason: AccountUsageWriteRejection) : AccountUsageWriteResult
}

enum class PrimaryAssignmentRejection {
    UNSUPPORTED_PROVIDER,
    ACCOUNT_MISSING,
    ACCOUNT_INACTIVE,
    VERSION_MISMATCH
}

sealed interface PrimaryAssignmentResult {
    data class Assigned(
        val accountId: ProviderAccountId,
        val projection: AccountUsageProjectionResult
    ) : PrimaryAssignmentResult

    data class Rejected(val reason: PrimaryAssignmentRejection) : PrimaryAssignmentResult
}

data class PrimaryClearResult(
    val providerId: ProviderId,
    val changed: Boolean,
    val projection: AccountUsageProjectionResult
)

data class AccountUsageProjectionReceipt(
    val authorityVersion: DisplayVersion,
    val aggregateSha256: String,
    val conflictCount: Int
)

sealed interface AccountUsageProjectionResult {
    data object MigrationIncomplete : AccountUsageProjectionResult
    data class Applied(val receipt: AccountUsageProjectionReceipt) : AccountUsageProjectionResult
    data class Failed(val reason: AccountUsageProjectionFailure) : AccountUsageProjectionResult
}

enum class AccountUsageProjectionFailure {
    MALFORMED_LEGACY_DATA,
    INTENT_WRITE_FAILED,
    AGGREGATE_WRITE_FAILED,
    MIRROR_WRITE_FAILED,
    CACHE_WRITE_FAILED,
    READ_BACK_FAILED,
    AUTHORITY_ACK_FAILED
}

data class LegacyUsageConflictReceipt(
    val receiptSha256: String,
    val providerId: ProviderId,
    val observedTargetSha256: String,
    val expectedTargetSha256: String,
    val authorityVersion: DisplayVersion
)

data class LegacyUsageConflictPage(
    val receipts: List<LegacyUsageConflictReceipt>,
    val offset: Int,
    val totalCount: Int,
    val nextOffset: Int?
)

internal data class AccountUsageProjectionTargetState(
    val providerId: ProviderId,
    val targetSha256: String,
    val authorityVersion: DisplayVersion
)

internal data class AccountUsageProjectionIntent(
    val authorityVersion: DisplayVersion,
    val targetSha256: Map<ProviderId, String>
)

internal val ACCOUNT_USAGE_TARGET_PROVIDERS = setOf(ProviderId.CLAUDE, ProviderId.CODEX)
internal const val ACCOUNT_USAGE_ABSENT_SHA256 = "0000000000000000000000000000000000000000000000000000000000000000"
