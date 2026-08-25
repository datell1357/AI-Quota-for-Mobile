package com.aiquota.mobile.accounts

import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.local.ProviderUsageSnapshot

internal enum class LegacyMigrationPhase { COPYING, BLOCKED_CORRUPT_SOURCE, COMPLETE }

internal enum class LegacyMigrationStage {
    SOURCE_CAPTURE, SOURCE_PARSE, AUTHORITY_WRITE, SECRET_READ, SECRET_WRITE,
    SECRET_VERIFY, TARGET_VERIFY, PROJECTION_WRITE, MANIFEST_WRITE, MANIFEST_VALIDATE
}

internal enum class LegacyMigrationFaultPoint {
    M00_AFTER_GATE, M01_AFTER_SOURCE_CAPTURE, M02_AFTER_PARSE,
    M03_AFTER_REGISTRY_COPY, M04_AFTER_SNAPSHOT_COPY, M05_AFTER_MIRROR_COPY,
    M06_AFTER_PREF_COPY, M07_AFTER_OLD_DECRYPT, M08_AFTER_SECRET_ENVELOPE,
    M09_AFTER_SECRET_VERIFY, M10_AFTER_FULL_VERIFY, M11_AFTER_PROJECTION_WRITE,
    M12_AFTER_COMPLETE_COMMIT, M13_AFTER_GATE_RELEASE,
    P01_AFTER_DERIVE, P02_AFTER_V1_AGGREGATE, P03_AFTER_V1_MIRRORS, P04_AFTER_CACHE
}

internal enum class LegacyMigrationOperation {
    GATE_ACQUIRED, SOURCE_RECEIPT_COMMITTED, SOURCE_PARSED, REGISTRY_UPSERTED,
    SNAPSHOT_STATE_UPSERTED, MIRROR_DATA_COPIED, PREFERENCE_DATA_COPIED,
    OLD_CONTEXT_DECRYPTED, AFTER_NEW_ENCRYPT, AFTER_SECRET_VERIFY,
    TARGET_CHECKPOINT_COMMITTED, PROJECTION_DERIVED, AGGREGATE_COMMITTED,
    LEGACY_MIRROR_COMMITTED, COMPATIBILITY_CACHE_COMMITTED, PROJECTION_ACKED,
    COMPLETE_COMMITTED, GATE_RELEASED
}

internal data class LegacyMigrationFaultEvent(
    val point: LegacyMigrationFaultPoint,
    val operation: LegacyMigrationOperation,
    val providerId: ProviderId? = null,
    val index: Int = 0,
    val total: Int = 1
) {
    init {
        require(index in 0 until total)
    }
}

internal fun interface LegacyMigrationFaultInjector {
    fun after(event: LegacyMigrationFaultEvent)

    companion object { val NONE = LegacyMigrationFaultInjector { } }
}

internal class LegacyMigrationInterruptedException(val event: LegacyMigrationFaultEvent) :
    RuntimeException(event.point.name)

internal data class LegacyBlobReceipt(
    val formatVersion: Int,
    val byteLength: Int,
    val sha256: String
) {
    init {
        require(formatVersion > 0)
        require(byteLength >= 0)
        require(sha256.matches(SHA256_PATTERN))
    }
}

internal data class LegacyContextSourceReceipt(
    val providerId: ProviderId,
    val encryptedSource: LegacyBlobReceipt
) {
    init { require(providerId == ProviderId.CLAUDE || providerId == ProviderId.CODEX) }
}

internal data class LegacySourceReceipt(
    val aggregatePresent: Boolean,
    val aggregate: LegacyBlobReceipt,
    val contexts: List<LegacyContextSourceReceipt>
) {
    init { require(contexts.map { it.providerId }.distinct().size == contexts.size) }
}

internal data class LegacySourceCapture(
    val receipt: LegacySourceReceipt,
    val rawAggregate: String
) {
    override fun toString(): String = "LegacySourceCapture([redacted])"
}

internal data class LegacyProjectionReceipt(
    val desiredRevision: Long,
    val appliedRevision: Long,
    val aggregateSha256: String,
    val mirrorsSha256: String,
    val cacheSha256: String
) {
    init {
        require(desiredRevision >= 0 && appliedRevision >= 0 && appliedRevision <= desiredRevision)
        require(listOf(aggregateSha256, mirrorsSha256, cacheSha256).all(SHA256_PATTERN::matches))
    }
}

internal data class LegacyMigrationTarget(
    val accountId: ProviderAccountId,
    val sourceSnapshotSha256: String,
    val accountState: AccountState,
    val authState: AccountAuthState,
    val deletionState: AccountDeletionState,
    val generation: AccountGeneration,
    val sessionRevision: SessionRevision,
    val authorityVersion: DisplayVersion,
    val demandMask: Int,
    val attemptGeneration: AccountGeneration,
    val attemptSessionRevision: SessionRevision,
    val activeNonce: String?,
    val lastNonce: String?,
    val publishedNonceCount: Int,
    val mirrorReceiptSha256: String,
    val preferenceReceiptSha256: String,
    val contextSourceReceipt: LegacyContextSourceReceipt?,
    val vaultBinding: CredentialVaultBinding?,
    val vaultEnvelopeSha256: String?
) {
    init {
        require(accountId.accountKey == AccountKey.reservedDefault())
        require(sourceSnapshotSha256.matches(SHA256_PATTERN))
        require(mirrorReceiptSha256.matches(SHA256_PATTERN))
        require(preferenceReceiptSha256.matches(SHA256_PATTERN))
        require(publishedNonceCount >= 0)
        require((vaultBinding == null) == (vaultEnvelopeSha256 == null))
        require((contextSourceReceipt == null) == (vaultBinding == null))
        require(vaultEnvelopeSha256 == null || vaultEnvelopeSha256.matches(SHA256_PATTERN))
        require(vaultBinding == null || vaultBinding.accountId == CredentialVaultAccountId.parse(accountId))
    }
}

internal data class LegacyMigrationManifest(
    val schemaVersion: Int,
    val epoch: Long,
    val phase: LegacyMigrationPhase,
    val sourceReceipt: LegacySourceReceipt,
    val targets: List<LegacyMigrationTarget>,
    val projection: LegacyProjectionReceipt,
    val checksum: String
) {
    init {
        require(schemaVersion == SCHEMA_VERSION && epoch == EPOCH && phase == LegacyMigrationPhase.COMPLETE)
        require(checksum.matches(SHA256_PATTERN))
        require(targets.map { it.accountId.providerId }.distinct().size == targets.size)
    }

    companion object {
        const val SCHEMA_VERSION = 2
        const val EPOCH = 1L
    }
}

internal sealed interface LegacyContextCapture {
    data object Absent : LegacyContextCapture
    data object Malformed : LegacyContextCapture
    class Present(val bundle: CredentialBundle, val sourceReceipt: LegacyContextSourceReceipt) : LegacyContextCapture {
        override fun toString(): String = "Present([redacted])"
    }
}

internal sealed interface LegacyMigrationResult {
    data class Completed(val manifest: LegacyMigrationManifest, val resumed: Boolean) : LegacyMigrationResult
    data class Blocked(val stage: LegacyMigrationStage, val reason: LegacyMigrationFailure) : LegacyMigrationResult
}

internal enum class LegacyMigrationFailure {
    MALFORMED_NONBLANK_SOURCE, MALFORMED_CONTEXT, SOURCE_CAPTURE_WRITE_FAILED,
    SOURCE_CHANGED_DURING_COPY, AUTHORITY_WRITE_FAILED, VAULT_WRITE_FAILED,
    VAULT_READBACK_FAILED, TARGET_VALIDATION_FAILED, PROJECTION_WRITE_FAILED,
    MANIFEST_WRITE_FAILED, MANIFEST_INVALID
}

internal data class LegacyProjection(
    val rawAggregate: String,
    val snapshots: List<ProviderUsageSnapshot>,
    val targetSnapshots: Map<ProviderId, ProviderUsageSnapshot>,
    val desiredRevision: Long
)

internal data class LegacyProjectionIntent(
    val sourceAggregate: LegacyBlobReceipt,
    val projectedAggregate: LegacyBlobReceipt,
    val desiredRevision: Long
) {
    init { require(desiredRevision >= 0) }
}

internal interface LegacyMigrationSource {
    fun capture(): LegacySourceCapture
    fun readContext(receipt: LegacyContextSourceReceipt): LegacyContextCapture
    fun mirrorSeedData(providerId: ProviderId): String
    fun preferenceSeedData(providerId: ProviderId): String
}

internal interface LegacyProjectionStore {
    fun captureAggregate(): LegacySourceCapture
    fun writeAggregate(raw: String): Boolean
    fun writeMirror(providerId: ProviderId, snapshot: ProviderUsageSnapshot?): Boolean
    fun writeCompatibilityCache(snapshots: List<ProviderUsageSnapshot>): Boolean
    fun readProjectionReceipt(projection: LegacyProjection): LegacyProjectionReceipt?
}

internal interface LegacyMigrationJournal {
    fun readSourceReceipt(): LegacySourceReceipt?
    fun commitSourceReceipt(source: LegacySourceReceipt): Boolean
    fun readVerifiedTargets(): List<LegacyMigrationTarget>
    fun isTargetCheckpointComplete(): Boolean
    fun commitVerifiedTarget(target: LegacyMigrationTarget): Boolean
    fun commitTargetCheckpoint(targets: List<LegacyMigrationTarget>): Boolean
    fun readProjectionIntent(): LegacyProjectionIntent?
    fun commitProjectionIntent(intent: LegacyProjectionIntent): Boolean
    fun readManifest(): LegacyMigrationManifest?
    fun hasManifestBytes(): Boolean
    fun commitManifest(manifest: LegacyMigrationManifest): Boolean
    fun clearManifest(): Boolean
    fun commitBlocked(stage: LegacyMigrationStage, failure: LegacyMigrationFailure): Boolean
}

internal val SHA256_PATTERN = Regex("[0-9a-f]{64}")
