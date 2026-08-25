package com.aiquota.mobile.accounts

import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.local.ProviderUsageSnapshot
import java.util.concurrent.locks.ReentrantLock
import kotlin.concurrent.withLock

internal class LegacyAccountMigration(
    private val source: LegacyMigrationSource,
    private val journal: LegacyMigrationJournal,
    private val authority: MainProcessAccountAuthority,
    private val vault: AccountCredentialVault,
    private val projectionStore: LegacyProjectionStore,
    private val faultInjector: LegacyMigrationFaultInjector = LegacyMigrationFaultInjector.NONE
) {
    fun run(): LegacyMigrationResult {
        val result = processLock.withLock { runLocked() }
        if (result is LegacyMigrationResult.Completed) {
            emit(LegacyMigrationFaultPoint.M13_AFTER_GATE_RELEASE, LegacyMigrationOperation.GATE_RELEASED)
        }
        return result
    }

    private fun runLocked(): LegacyMigrationResult {
        emit(LegacyMigrationFaultPoint.M00_AFTER_GATE, LegacyMigrationOperation.GATE_ACQUIRED)
        val live = source.capture()
        val sourceReceipt = journal.readSourceReceipt() ?: run {
            if (!journal.commitSourceReceipt(live.receipt)) return blocked(LegacyMigrationStage.SOURCE_CAPTURE, LegacyMigrationFailure.SOURCE_CAPTURE_WRITE_FAILED)
            emit(LegacyMigrationFaultPoint.M01_AFTER_SOURCE_CAPTURE, LegacyMigrationOperation.SOURCE_RECEIPT_COMMITTED)
            live.receipt
        }
        val prior = journal.readManifest()
        if (prior != null) return resumeComplete(prior, sourceReceipt, live)
        if (journal.hasManifestBytes()) {
            journal.clearManifest()
            return blocked(LegacyMigrationStage.MANIFEST_VALIDATE, LegacyMigrationFailure.MANIFEST_INVALID)
        }

        var targets = journal.readVerifiedTargets()
        if (!journal.isTargetCheckpointComplete()) {
            if (live.receipt != sourceReceipt) return blockSourceChanged()
            val snapshots = LegacyMigrationCodec.strictSnapshots(live) ?: run {
                journal.commitBlocked(LegacyMigrationStage.SOURCE_PARSE, LegacyMigrationFailure.MALFORMED_NONBLANK_SOURCE)
                return blocked(LegacyMigrationStage.SOURCE_PARSE, LegacyMigrationFailure.MALFORMED_NONBLANK_SOURCE)
            }
            emit(LegacyMigrationFaultPoint.M02_AFTER_PARSE, LegacyMigrationOperation.SOURCE_PARSED)
            if (source.capture().receipt != sourceReceipt) return blockSourceChanged()
            val expected = targetSnapshots(snapshots, sourceReceipt.contexts.map { it.providerId }.toSet())
            val seeds = expected.map { (provider, snapshot) ->
                LegacyAuthorityImportSeed(
                    AuthorityAccountSeed(migratedAccount(ProviderAccountId(provider, AccountKey.reservedDefault())), snapshot),
                    source.mirrorSeedData(provider),
                    source.preferenceSeedData(provider)
                )
            }
            val guardedFaults = LegacyMigrationFaultInjector { event ->
                faultInjector.after(event)
                if (source.capture().receipt != sourceReceipt) throw SourceChangedDuringCopyException
            }
            val states = try {
                authority.importLegacyDefaults(seeds, guardedFaults)
            } catch (interrupted: LegacyMigrationInterruptedException) {
                throw interrupted
            } catch (_: SourceChangedDuringCopyException) {
                return blockSourceChanged()
            } catch (_: RuntimeException) {
                return blocked(LegacyMigrationStage.AUTHORITY_WRITE, LegacyMigrationFailure.AUTHORITY_WRITE_FAILED)
            }
            if (source.capture().receipt != sourceReceipt) return blockSourceChanged()
            val existingTargets = targets.associateBy { it.accountId }.toMutableMap()
            val contextReceipts = sourceReceipt.contexts.associateBy { it.providerId }
            val contextStates = states.filter { it.record.account.id.providerId in contextReceipts }
            contextStates.forEachIndexed { index, state ->
                if (source.capture().receipt != sourceReceipt) return blockSourceChanged()
                val contextReceipt = requireNotNull(contextReceipts[state.record.account.id.providerId])
                val context = source.readContext(contextReceipt)
                if (context !is LegacyContextCapture.Present) {
                    journal.commitBlocked(LegacyMigrationStage.SECRET_READ, LegacyMigrationFailure.MALFORMED_CONTEXT)
                    return blocked(LegacyMigrationStage.SECRET_READ, LegacyMigrationFailure.MALFORMED_CONTEXT)
                }
                emit(LegacyMigrationFaultPoint.M07_AFTER_OLD_DECRYPT, LegacyMigrationOperation.OLD_CONTEXT_DECRYPTED, state.record.account.id.providerId, index, contextStates.size)
                if (source.capture().receipt != sourceReceipt) return blockSourceChanged()
                val secret = stageSecret(state, context, index, contextStates.size)
                    ?: return blocked(LegacyMigrationStage.SECRET_VERIFY, LegacyMigrationFailure.VAULT_READBACK_FAILED)
                if (source.capture().receipt != sourceReceipt) return blockSourceChanged()
                if (!journal.commitVerifiedTarget(secret) || journal.readVerifiedTargets().none { it == secret }) {
                    return blocked(LegacyMigrationStage.SECRET_VERIFY, LegacyMigrationFailure.MANIFEST_WRITE_FAILED)
                }
                emit(LegacyMigrationFaultPoint.M09_AFTER_SECRET_VERIFY, LegacyMigrationOperation.AFTER_SECRET_VERIFY, state.record.account.id.providerId, index, contextStates.size)
                existingTargets[secret.accountId] = secret
            }
            states.filterNot { it.record.account.id.providerId in contextReceipts }.forEach { state ->
                existingTargets[state.record.account.id] = targetFrom(state, null, null, null)
            }
            targets = existingTargets.values.sortedBy { it.accountId.providerId.ordinal }
            if (!validateTargets(targets, allowAdvanced = false, requireCheckpointMatch = false)) {
                return blocked(LegacyMigrationStage.TARGET_VERIFY, LegacyMigrationFailure.TARGET_VALIDATION_FAILED)
            }
            if (source.capture().receipt != sourceReceipt) return blockSourceChanged()
            if (!journal.commitTargetCheckpoint(targets) || journal.readVerifiedTargets() != targets) {
                return blocked(LegacyMigrationStage.TARGET_VERIFY, LegacyMigrationFailure.MANIFEST_WRITE_FAILED)
            }
            emit(LegacyMigrationFaultPoint.M10_AFTER_FULL_VERIFY, LegacyMigrationOperation.TARGET_CHECKPOINT_COMMITTED)
        } else if (!sourceIsExpected(sourceReceipt) ||
            !validateTargets(targets, allowAdvanced = false, requireCheckpointMatch = true)
        ) {
            return blockSourceChanged()
        }

        if (!sourceIsExpected(sourceReceipt)) return blockSourceChanged()
        val projection = projector(sourceReceipt, faultInjector).repair()
            ?: return blocked(LegacyMigrationStage.PROJECTION_WRITE, LegacyMigrationFailure.PROJECTION_WRITE_FAILED)
        val manifest = LegacyMigrationCodec.completeManifest(sourceReceipt, targets, projection)
        if (!commitComplete(manifest)) return blocked(LegacyMigrationStage.MANIFEST_WRITE, LegacyMigrationFailure.MANIFEST_INVALID)
        return LegacyMigrationResult.Completed(manifest, resumed = false)
    }

    private fun resumeComplete(
        prior: LegacyMigrationManifest,
        sourceReceipt: LegacySourceReceipt,
        live: LegacySourceCapture
    ): LegacyMigrationResult {
        if (prior.sourceReceipt != sourceReceipt || live.receipt.contexts != prior.sourceReceipt.contexts) {
            journal.clearManifest()
            return blocked(LegacyMigrationStage.MANIFEST_VALIDATE, LegacyMigrationFailure.MANIFEST_INVALID)
        }
        authority.repairLegacyCopyPayloads(prior.targets.associate { target ->
            target.accountId to (
                source.mirrorSeedData(target.accountId.providerId) to
                    source.preferenceSeedData(target.accountId.providerId)
                )
        })
        if (!validateTargets(prior.targets, allowAdvanced = true, requireCheckpointMatch = true)) {
            journal.clearManifest()
            return blocked(LegacyMigrationStage.MANIFEST_VALIDATE, LegacyMigrationFailure.MANIFEST_INVALID)
        }
        val projector = projector(null, faultInjector)
        val projection = if (projector.isCurrent(prior.projection)) prior.projection else projector.repair()
            ?: return blocked(LegacyMigrationStage.PROJECTION_WRITE, LegacyMigrationFailure.PROJECTION_WRITE_FAILED)
        val repaired = LegacyMigrationCodec.completeManifest(prior.sourceReceipt, prior.targets, projection)
        if (repaired != prior && !commitComplete(repaired, enforceOriginalSource = false)) {
            return blocked(LegacyMigrationStage.MANIFEST_WRITE, LegacyMigrationFailure.MANIFEST_INVALID)
        }
        return LegacyMigrationResult.Completed(repaired, resumed = true)
    }

    private fun sourceIsExpected(receipt: LegacySourceReceipt): Boolean {
        val current = source.capture().receipt
        if (current == receipt) return true
        val intent = journal.readProjectionIntent() ?: return false
        return current.contexts == receipt.contexts &&
            intent.sourceAggregate == receipt.aggregate &&
            current.aggregate == intent.projectedAggregate
    }

    private fun projector(sourceReceipt: LegacySourceReceipt?, faults: LegacyMigrationFaultInjector) =
        LegacyMigrationProjection(projectionStore, authority, journal, sourceReceipt, faults)

    private fun stageSecret(
        state: LegacyAuthorityState,
        context: LegacyContextCapture.Present,
        index: Int,
        total: Int
    ): LegacyMigrationTarget? {
        val id = state.record.account.id
        val binding = CredentialVaultBinding(
            CredentialVaultSchema.CURRENT,
            CredentialVaultAccountId.parse(id),
            state.record.account.generation,
            state.record.account.sessionRevision,
            SecretRevision.of(1)
        )
        val existing = vault.lookup(binding.accountId)
        if (existing?.let { vault.decrypt(binding, it)?.contentEquals(context.bundle) } != true) {
            if (!vault.put(binding, context.bundle)) return null
            emit(LegacyMigrationFaultPoint.M08_AFTER_SECRET_ENVELOPE, LegacyMigrationOperation.AFTER_NEW_ENCRYPT, id.providerId, index, total)
        }
        val envelope = vault.lookup(binding.accountId) ?: return null
        if (vault.decrypt(binding, envelope)?.contentEquals(context.bundle) != true) return null
        return targetFrom(state, context.sourceReceipt, binding, LegacyMigrationCodec.sha256(envelope.encodedBytes()))
    }

    private fun targetFrom(
        state: LegacyAuthorityState,
        contextReceipt: LegacyContextSourceReceipt?,
        binding: CredentialVaultBinding?,
        envelopeHash: String?
    ): LegacyMigrationTarget {
        val account = state.record.account
        return LegacyMigrationTarget(
            account.id, LegacyMigrationCodec.snapshotSha256(state.record.snapshot), account.state, account.authState,
            account.deletionState, account.generation, account.sessionRevision, state.record.version,
            state.demandMask, state.attemptGeneration, state.attemptSessionRevision, state.activeNonce,
            state.lastNonce, state.publishedNonceCount, state.mirrorReceiptSha256,
            state.preferenceReceiptSha256, contextReceipt, binding, envelopeHash
        )
    }

    private fun validateTargets(
        targets: List<LegacyMigrationTarget>,
        allowAdvanced: Boolean,
        requireCheckpointMatch: Boolean
    ): Boolean = runCatching {
        if (requireCheckpointMatch && journal.readVerifiedTargets() != targets) return@runCatching false
        val contexts = journal.readSourceReceipt()?.contexts?.associateBy { it.providerId }.orEmpty()
        targets.all { target ->
            target.contextSourceReceipt == contexts[target.accountId.providerId] &&
                authority.legacyImportState(target.accountId)?.let {
                    LegacyMigrationTargetValidator(vault).validate(target, it, allowAdvanced)
                } == true
        }
    }.getOrDefault(false)

    private fun commitComplete(
        manifest: LegacyMigrationManifest,
        enforceOriginalSource: Boolean = true
    ): Boolean {
        if (journal.readSourceReceipt() != manifest.sourceReceipt) return false
        if (enforceOriginalSource && !sourceIsExpected(manifest.sourceReceipt)) return false
        if (!enforceOriginalSource && source.capture().receipt.contexts != manifest.sourceReceipt.contexts) return false
        if (!projector(null, LegacyMigrationFaultInjector.NONE).isCurrent(manifest.projection)) return false
        if (!journal.commitManifest(manifest)) return false
        val committed = journal.readManifest()
        if (committed != manifest ||
            enforceOriginalSource && !sourceIsExpected(manifest.sourceReceipt) ||
            !enforceOriginalSource && source.capture().receipt.contexts != manifest.sourceReceipt.contexts ||
            !validateTargets(manifest.targets, allowAdvanced = true, requireCheckpointMatch = true) ||
            !projector(null, LegacyMigrationFaultInjector.NONE).isCurrent(manifest.projection)
        ) {
            journal.clearManifest()
            return false
        }
        emit(LegacyMigrationFaultPoint.M12_AFTER_COMPLETE_COMMIT, LegacyMigrationOperation.COMPLETE_COMMITTED)
        return true
    }

    private fun targetSnapshots(snapshots: List<ProviderUsageSnapshot>, contexts: Set<ProviderId>) =
        TARGETS.mapNotNull { provider ->
            snapshots.singleOrNull { it.providerId == provider }?.let { provider to it }
                ?: if (provider in contexts) provider to ProviderUsageSnapshot.notConnected(provider) else null
        }.toMap()

    private fun migratedAccount(id: ProviderAccountId) = AccountRecord(
        id, AccountState.ACTIVE, AccountAuthState.REAUTH_REQUIRED, AccountDeletionState.NONE,
        AccountGeneration.of(1), SessionRevision.of(1)
    )

    private fun blockSourceChanged(): LegacyMigrationResult.Blocked {
        journal.commitBlocked(LegacyMigrationStage.SOURCE_CAPTURE, LegacyMigrationFailure.SOURCE_CHANGED_DURING_COPY)
        return blocked(LegacyMigrationStage.SOURCE_CAPTURE, LegacyMigrationFailure.SOURCE_CHANGED_DURING_COPY)
    }

    private fun blocked(stage: LegacyMigrationStage, reason: LegacyMigrationFailure) = LegacyMigrationResult.Blocked(stage, reason)

    private fun emit(point: LegacyMigrationFaultPoint, operation: LegacyMigrationOperation, provider: ProviderId? = null, index: Int = 0, total: Int = 1) =
        faultInjector.after(LegacyMigrationFaultEvent(point, operation, provider, index, total))

    private data object SourceChangedDuringCopyException : RuntimeException()

    private companion object {
        val TARGETS = listOf(ProviderId.CLAUDE, ProviderId.CODEX)
        val processLock = ReentrantLock()
    }
}
