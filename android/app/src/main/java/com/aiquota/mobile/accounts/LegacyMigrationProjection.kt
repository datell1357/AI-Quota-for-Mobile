package com.aiquota.mobile.accounts

import com.aiquota.mobile.local.ProviderId

internal class LegacyMigrationProjection(
    private val store: LegacyProjectionStore,
    private val authority: MainProcessAccountAuthority,
    private val journal: LegacyMigrationJournal,
    private val migrationSource: LegacySourceReceipt?,
    private val faultInjector: LegacyMigrationFaultInjector
) {
    fun repair(): LegacyProjectionReceipt? {
        val authorityProjection = authority.legacyProjectionAuthority()
        val current = store.captureAggregate()
        if (!acceptedMigrationAggregate(current.receipt.aggregate, authorityProjection.revision)) return null
        val raw = LegacyRawProjectionCodec.replaceManagedTargets(
            current.rawAggregate,
            TARGETS.toSet(),
            authorityProjection.snapshots
        ) ?: return null
        val snapshots = LegacySnapshotStrictParser.parse(raw) ?: return null
        val projection = LegacyProjection(raw, snapshots, authorityProjection.snapshots, authorityProjection.revision)
        emit(LegacyMigrationFaultPoint.P01_AFTER_DERIVE, LegacyMigrationOperation.PROJECTION_DERIVED)
        if (migrationSource != null) {
            val intent = LegacyProjectionIntent(
                migrationSource.aggregate,
                LegacyMigrationCodec.blobReceipt(raw),
                authorityProjection.revision
            )
            if (!journal.commitProjectionIntent(intent) || journal.readProjectionIntent() != intent) return null
        }
        if (!store.writeAggregate(raw)) return null
        emit(LegacyMigrationFaultPoint.P02_AFTER_V1_AGGREGATE, LegacyMigrationOperation.AGGREGATE_COMMITTED)
        TARGETS.forEachIndexed { index, provider ->
            if (!store.writeMirror(provider, projection.targetSnapshots[provider])) return null
            emit(
                LegacyMigrationFaultPoint.P03_AFTER_V1_MIRRORS,
                LegacyMigrationOperation.LEGACY_MIRROR_COMMITTED,
                provider,
                index,
                TARGETS.size
            )
        }
        if (!store.writeCompatibilityCache(snapshots)) return null
        emit(LegacyMigrationFaultPoint.P04_AFTER_CACHE, LegacyMigrationOperation.COMPATIBILITY_CACHE_COMMITTED)
        val receipt = store.readProjectionReceipt(projection) ?: return null
        authority.acknowledgeLegacyProjection(receipt)
        if (authority.legacyProjectionState() != receipt.toAuthorityState()) return null
        emit(LegacyMigrationFaultPoint.M11_AFTER_PROJECTION_WRITE, LegacyMigrationOperation.PROJECTION_ACKED)
        return receipt
    }

    fun isCurrent(receipt: LegacyProjectionReceipt): Boolean {
        val authorityProjection = authority.legacyProjectionAuthority()
        if (authorityProjection.revision != receipt.appliedRevision) return false
        val current = store.captureAggregate()
        val snapshots = LegacySnapshotStrictParser.parse(current.rawAggregate) ?: return false
        val projection = LegacyProjection(
            current.rawAggregate,
            snapshots,
            authorityProjection.snapshots,
            receipt.desiredRevision
        )
        return store.readProjectionReceipt(projection) == receipt &&
            authority.legacyProjectionState() == receipt.toAuthorityState()
    }

    private fun acceptedMigrationAggregate(current: LegacyBlobReceipt, revision: Long): Boolean {
        val source = migrationSource ?: return true
        if (current == source.aggregate) return true
        val intent = journal.readProjectionIntent() ?: return false
        return intent.sourceAggregate == source.aggregate &&
            intent.projectedAggregate == current &&
            intent.desiredRevision == revision
    }

    private fun LegacyProjectionReceipt.toAuthorityState() = LegacyProjectionAuthorityState(
        desiredRevision, appliedRevision, aggregateSha256, mirrorsSha256, cacheSha256
    )

    private fun emit(
        point: LegacyMigrationFaultPoint,
        operation: LegacyMigrationOperation,
        provider: ProviderId? = null,
        index: Int = 0,
        total: Int = 1
    ) = faultInjector.after(LegacyMigrationFaultEvent(point, operation, provider, index, total))

    private companion object { val TARGETS = listOf(ProviderId.CLAUDE, ProviderId.CODEX) }
}
