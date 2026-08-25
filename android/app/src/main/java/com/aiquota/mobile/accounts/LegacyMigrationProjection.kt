package com.aiquota.mobile.accounts

import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.providers.ProviderSnapshotCodec

internal class LegacyMigrationProjection(
    private val source: LegacyMigrationSource,
    private val authority: MainProcessAccountAuthority,
    private val faultInjector: LegacyMigrationFaultInjector
) {
    fun repair(): LegacyProjectionReceipt? {
        val authorityProjection = authority.legacyProjectionAuthority()
        val current = source.capture()
        val currentSnapshots = LegacySnapshotStrictParser.parse(current.rawAggregate) ?: return null
        val nonTargets = currentSnapshots.filterNot { it.providerId in TARGETS }.associateBy { it.providerId }
        val merged = ProviderId.defaultOrder().mapNotNull { provider ->
            authorityProjection.snapshots[provider] ?: nonTargets[provider]
        }
        val projection = LegacyProjection(
            rawAggregate = ProviderSnapshotCodec.encode(merged),
            snapshots = merged,
            targetSnapshots = authorityProjection.snapshots,
            desiredRevision = authorityProjection.revision
        )
        emit(LegacyMigrationFaultPoint.P01_AFTER_DERIVE, LegacyMigrationOperation.PROJECTION_DERIVED)
        if (!source.writeAggregate(projection.rawAggregate)) return null
        emit(LegacyMigrationFaultPoint.P02_AFTER_V1_AGGREGATE, LegacyMigrationOperation.AGGREGATE_COMMITTED)
        TARGETS.forEachIndexed { index, provider ->
            if (!source.writeMirror(provider, projection.targetSnapshots[provider])) return null
            emit(
                LegacyMigrationFaultPoint.P03_AFTER_V1_MIRRORS,
                LegacyMigrationOperation.LEGACY_MIRROR_COMMITTED,
                provider,
                index,
                TARGETS.size
            )
        }
        if (!source.writeCompatibilityCache(merged)) return null
        emit(LegacyMigrationFaultPoint.P04_AFTER_CACHE, LegacyMigrationOperation.COMPATIBILITY_CACHE_COMMITTED)
        val receipt = source.readProjectionReceipt(projection) ?: return null
        authority.acknowledgeLegacyProjection(receipt)
        if (authority.legacyProjectionState() != LegacyProjectionAuthorityState(
                receipt.desiredRevision,
                receipt.appliedRevision,
                receipt.aggregateSha256,
                receipt.mirrorsSha256,
                receipt.cacheSha256
            )
        ) return null
        emit(LegacyMigrationFaultPoint.M11_AFTER_PROJECTION_WRITE, LegacyMigrationOperation.PROJECTION_ACKED)
        return receipt
    }

    fun isCurrent(receipt: LegacyProjectionReceipt): Boolean {
        val authorityProjection = authority.legacyProjectionAuthority()
        if (authorityProjection.revision != receipt.appliedRevision) return false
        val current = source.capture()
        val snapshots = LegacySnapshotStrictParser.parse(current.rawAggregate) ?: return false
        val projection = LegacyProjection(
            rawAggregate = current.rawAggregate,
            snapshots = snapshots,
            targetSnapshots = authorityProjection.snapshots,
            desiredRevision = receipt.desiredRevision
        )
        return source.readProjectionReceipt(projection) == receipt &&
            authority.legacyProjectionState() == LegacyProjectionAuthorityState(
                receipt.desiredRevision,
                receipt.appliedRevision,
                receipt.aggregateSha256,
                receipt.mirrorsSha256,
                receipt.cacheSha256
            )
    }

    private fun emit(
        point: LegacyMigrationFaultPoint,
        operation: LegacyMigrationOperation,
        provider: ProviderId? = null,
        index: Int = 0,
        total: Int = 1
    ) = faultInjector.after(LegacyMigrationFaultEvent(point, operation, provider, index, total))

    private companion object { val TARGETS = listOf(ProviderId.CLAUDE, ProviderId.CODEX) }
}
