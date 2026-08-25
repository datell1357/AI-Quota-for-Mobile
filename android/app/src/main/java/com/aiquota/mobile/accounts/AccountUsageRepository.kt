package com.aiquota.mobile.accounts

import android.content.Context
import com.aiquota.mobile.local.ProviderId
import java.util.concurrent.locks.ReentrantLock
import kotlin.concurrent.withLock

class AccountUsageRepository private constructor(
    private val authority: MainProcessAccountAuthority,
    private val projectionStore: LegacyProjectionStore?,
    private val migrationComplete: () -> Boolean
) : AutoCloseable {
    fun page(offset: Int, limit: Int): AccountUsagePage = PROCESS_LOCK.withLock {
        val catalog = authority.catalog(offset, limit)
        val records = authority.displayRecords(offset, limit)
        AccountUsagePage(
            records = records,
            offset = offset,
            totalCount = catalog.totalCount,
            nextOffset = (offset + records.size).takeIf { it < catalog.totalCount },
            version = catalog.version
        )
    }

    fun read(accountId: ProviderAccountId): VersionedDisplayRecord? = PROCESS_LOCK.withLock {
        authority.accountUsageRecord(accountId)
    }

    fun write(write: AccountUsageWrite): AccountUsageWriteResult = PROCESS_LOCK.withLock {
        when (val result = authority.writeAccountUsage(write)) {
            is AccountUsageWriteResult.Rejected -> result
            is AccountUsageWriteResult.Committed -> result.copy(projection = reconcileLegacyProjectionLocked())
        }
    }

    fun assignPrimary(
        accountId: ProviderAccountId,
        expectedVersion: DisplayVersion
    ): PrimaryAssignmentResult = PROCESS_LOCK.withLock {
        when (val result = authority.assignAccountUsagePrimary(accountId, expectedVersion)) {
            is PrimaryAssignmentResult.Rejected -> result
            is PrimaryAssignmentResult.Assigned -> result.copy(projection = reconcileLegacyProjectionLocked())
        }
    }

    fun clearPrimary(providerId: ProviderId): PrimaryClearResult = PROCESS_LOCK.withLock {
        val changed = authority.clearAccountUsagePrimary(providerId)
        PrimaryClearResult(providerId, changed, reconcileLegacyProjectionLocked())
    }

    fun primary(providerId: ProviderId): ProviderAccountId? = PROCESS_LOCK.withLock {
        authority.accountUsagePrimary(providerId)
    }

    fun reconcileLegacyProjection(): AccountUsageProjectionResult = PROCESS_LOCK.withLock {
        reconcileLegacyProjectionLocked()
    }

    fun conflicts(offset: Int, limit: Int): LegacyUsageConflictPage = PROCESS_LOCK.withLock {
        authority.legacyUsageConflicts(offset, limit)
    }

    override fun close() = PROCESS_LOCK.withLock {
        authority.close()
    }

    private fun reconcileLegacyProjectionLocked(): AccountUsageProjectionResult {
        val store = projectionStore ?: return AccountUsageProjectionResult.MigrationIncomplete
        if (!migrationComplete()) return AccountUsageProjectionResult.MigrationIncomplete
        val captured = store.captureAggregate()
        val currentSnapshots = LegacySnapshotStrictParser.parse(captured.rawAggregate)
            ?: return AccountUsageProjectionResult.Failed(AccountUsageProjectionFailure.MALFORMED_LEGACY_DATA)
        val currentTargets = targetHashes(currentSnapshots.associateBy { it.providerId })
        val selected = ACCOUNT_USAGE_TARGET_PROVIDERS.mapNotNull { provider ->
            val id = authority.accountUsagePrimary(provider) ?: return@mapNotNull null
            authority.accountUsageRecord(id)?.snapshot?.let { provider to it }
        }.toMap()
        val desiredTargets = targetHashes(selected)
        val intent = runCatching {
            authority.prepareAccountUsageProjection(
                currentTargets = currentTargets,
                desiredTargets = desiredTargets
            )
        }.getOrElse {
            return AccountUsageProjectionResult.Failed(AccountUsageProjectionFailure.INTENT_WRITE_FAILED)
        }
        val raw = LegacyRawProjectionCodec.replaceManagedTargets(
            captured.rawAggregate,
            ACCOUNT_USAGE_TARGET_PROVIDERS,
            selected
        ) ?: return AccountUsageProjectionResult.Failed(AccountUsageProjectionFailure.MALFORMED_LEGACY_DATA)
        val projectedSnapshots = LegacySnapshotStrictParser.parse(raw)
            ?: return AccountUsageProjectionResult.Failed(AccountUsageProjectionFailure.MALFORMED_LEGACY_DATA)
        if (!store.writeAggregate(raw)) {
            return AccountUsageProjectionResult.Failed(AccountUsageProjectionFailure.AGGREGATE_WRITE_FAILED)
        }
        ACCOUNT_USAGE_TARGET_PROVIDERS.sortedBy(ProviderId::ordinal).forEach { provider ->
            if (!store.writeMirror(provider, selected[provider])) {
                return AccountUsageProjectionResult.Failed(AccountUsageProjectionFailure.MIRROR_WRITE_FAILED)
            }
        }
        if (!store.writeCompatibilityCache(projectedSnapshots)) {
            return AccountUsageProjectionResult.Failed(AccountUsageProjectionFailure.CACHE_WRITE_FAILED)
        }
        val projection = LegacyProjection(raw, projectedSnapshots, selected, intent.authorityVersion.value)
        val receipt = store.readProjectionReceipt(projection)
            ?: return AccountUsageProjectionResult.Failed(AccountUsageProjectionFailure.READ_BACK_FAILED)
        if (receipt.desiredRevision != intent.authorityVersion.value || receipt.appliedRevision != receipt.desiredRevision) {
            return AccountUsageProjectionResult.Failed(AccountUsageProjectionFailure.READ_BACK_FAILED)
        }
        runCatching { authority.finishAccountUsageProjection(intent, receipt) }.getOrElse {
            return AccountUsageProjectionResult.Failed(AccountUsageProjectionFailure.AUTHORITY_ACK_FAILED)
        }
        val conflicts = authority.legacyUsageConflicts(0, 1).totalCount
        return AccountUsageProjectionResult.Applied(
            AccountUsageProjectionReceipt(
                authorityVersion = intent.authorityVersion,
                aggregateSha256 = receipt.aggregateSha256,
                conflictCount = conflicts
            )
        )
    }

    private fun targetHashes(snapshots: Map<ProviderId, com.aiquota.mobile.local.ProviderUsageSnapshot>): Map<ProviderId, String> =
        ACCOUNT_USAGE_TARGET_PROVIDERS.associateWith { provider ->
            snapshots[provider]?.let(LegacyMigrationCodec::snapshotSha256) ?: ACCOUNT_USAGE_ABSENT_SHA256
        }

    companion object {
        private val PROCESS_LOCK = ReentrantLock()

        fun open(context: Context): AccountUsageRepository {
            val appContext = context.applicationContext
            val journal = AndroidLegacyMigrationJournal(appContext)
            return AccountUsageRepository(
                authority = MainProcessAccountAuthority.open(appContext),
                projectionStore = AndroidLegacyMigrationSource(appContext),
                migrationComplete = { journal.readManifest()?.phase == LegacyMigrationPhase.COMPLETE }
            )
        }

        internal fun openForTest(authority: MainProcessAccountAuthority): AccountUsageRepository =
            AccountUsageRepository(authority, null) { false }

        internal fun openForTest(
            authority: MainProcessAccountAuthority,
            projectionStore: LegacyProjectionStore,
            migrationComplete: () -> Boolean = { true }
        ): AccountUsageRepository = AccountUsageRepository(authority, projectionStore, migrationComplete)
    }
}
