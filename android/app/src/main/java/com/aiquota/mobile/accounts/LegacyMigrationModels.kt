package com.aiquota.mobile.accounts

import com.aiquota.mobile.local.ProviderId

internal enum class LegacyMigrationPhase {
    COPYING,
    BLOCKED_CORRUPT_SOURCE,
    COMPLETE
}

internal enum class LegacyMigrationStage {
    SOURCE_CAPTURE,
    SOURCE_PARSE,
    AUTHORITY_WRITE,
    SECRET_READ,
    SECRET_WRITE,
    SECRET_VERIFY,
    TARGET_VERIFY,
    PROJECTION_WRITE,
    MANIFEST_WRITE,
    MANIFEST_VALIDATE
}

internal enum class LegacyMigrationFaultPoint {
    M00_AFTER_GATE,
    M01_AFTER_SOURCE_CAPTURE,
    M02_AFTER_PARSE,
    M03_AFTER_REGISTRY_COPY,
    M04_AFTER_SNAPSHOT_COPY,
    M05_AFTER_MIRROR_COPY,
    M06_AFTER_PREF_COPY,
    M07_AFTER_OLD_DECRYPT,
    M08_AFTER_SECRET_ENVELOPE,
    M09_AFTER_SECRET_VERIFY,
    M10_AFTER_FULL_VERIFY,
    M11_AFTER_PROJECTION_WRITE,
    M12_AFTER_COMPLETE_COMMIT,
    M13_AFTER_GATE_RELEASE,
    P01_AFTER_DERIVE,
    P02_AFTER_V1_AGGREGATE,
    P03_AFTER_V1_MIRRORS,
    P04_AFTER_CACHE
}

internal fun interface LegacyMigrationFaultInjector {
    fun after(point: LegacyMigrationFaultPoint)

    companion object {
        val NONE = LegacyMigrationFaultInjector { }
    }
}

internal data class LegacySourceCapture(
    val present: Boolean,
    val rawAggregate: String,
    val sha256: String,
    val contextProviders: Set<ProviderId> = emptySet()
) {
    init {
        require(contextProviders.all { it == ProviderId.CLAUDE || it == ProviderId.CODEX })
    }
}

internal data class LegacyMigrationTarget(
    val accountId: ProviderAccountId,
    val sourceSnapshotSha256: String,
    val authorityVersion: DisplayVersion,
    val vaultBinding: CredentialVaultBinding?,
    val vaultEnvelopeSha256: String?
) {
    init {
        require(sourceSnapshotSha256.matches(LegacyMigrationManifest.SHA256_PATTERN))
        require((vaultBinding == null) == (vaultEnvelopeSha256 == null))
        require(vaultEnvelopeSha256 == null || vaultEnvelopeSha256.matches(LegacyMigrationManifest.SHA256_PATTERN))
        require(vaultBinding == null || vaultBinding.accountId == CredentialVaultAccountId.parse(accountId))
    }
}

internal data class LegacyMigrationManifest(
    val schemaVersion: Int,
    val epoch: Long,
    val phase: LegacyMigrationPhase,
    val sourcePresent: Boolean,
    val sourceSha256: String,
    val sourceContextProviders: Set<ProviderId>,
    val targets: List<LegacyMigrationTarget>,
    val projectionSha256: String,
    val checksum: String
) {
    init {
        require(schemaVersion == SCHEMA_VERSION)
        require(epoch == EPOCH)
        require(sourceSha256.matches(SHA256_PATTERN))
        require(sourceContextProviders.all { it == ProviderId.CLAUDE || it == ProviderId.CODEX })
        require(projectionSha256.matches(SHA256_PATTERN))
        require(checksum.matches(SHA256_PATTERN))
        require(targets.map { it.accountId.providerId }.distinct().size == targets.size)
        require(targets.all { it.accountId.accountKey == AccountKey.reservedDefault() })
    }

    companion object {
        const val SCHEMA_VERSION = 1
        const val EPOCH = 1L
        internal val SHA256_PATTERN = Regex("[0-9a-f]{64}")
    }
}

internal sealed interface LegacyContextCapture {
    data object Absent : LegacyContextCapture
    data object Malformed : LegacyContextCapture
    class Present(val bundle: CredentialBundle) : LegacyContextCapture {
        override fun toString(): String = "Present([redacted])"
    }
}

internal sealed interface LegacyMigrationResult {
    data class Completed(val manifest: LegacyMigrationManifest, val resumed: Boolean) : LegacyMigrationResult
    data class Blocked(val stage: LegacyMigrationStage, val reason: LegacyMigrationFailure) : LegacyMigrationResult
}

internal enum class LegacyMigrationFailure {
    MALFORMED_NONBLANK_SOURCE,
    MALFORMED_CONTEXT,
    SOURCE_CAPTURE_WRITE_FAILED,
    SOURCE_CHANGED_DURING_COPY,
    AUTHORITY_WRITE_FAILED,
    VAULT_WRITE_FAILED,
    VAULT_READBACK_FAILED,
    TARGET_VALIDATION_FAILED,
    PROJECTION_WRITE_FAILED,
    MANIFEST_WRITE_FAILED,
    MANIFEST_INVALID
}

internal interface LegacyMigrationSource {
    fun currentAggregate(): Pair<Boolean, String>
    fun hasContext(providerId: ProviderId): Boolean
    fun readContext(providerId: ProviderId): LegacyContextCapture
    fun writeAggregate(capture: LegacySourceCapture): Boolean
    fun verifyMirrorsUnchanged(): Boolean
    fun verifyDerivedCachesUnchanged(): Boolean
}

internal interface LegacyMigrationJournal {
    fun readCapturedSource(): LegacySourceCapture?
    fun commitCapturedSource(source: LegacySourceCapture): Boolean
    fun readManifest(): LegacyMigrationManifest?
    fun hasManifestBytes(): Boolean
    fun commitManifest(manifest: LegacyMigrationManifest): Boolean
    fun clearManifest(): Boolean
    fun commitBlocked(stage: LegacyMigrationStage, failure: LegacyMigrationFailure): Boolean
}
