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
    private val faultInjector: LegacyMigrationFaultInjector = LegacyMigrationFaultInjector.NONE
) {
    fun run(): LegacyMigrationResult = processLock.withLock {
        emit(LegacyMigrationFaultPoint.M00_AFTER_GATE, LegacyMigrationOperation.GATE_ACQUIRED)
        val live = source.capture()
        val sourceReceipt = journal.readSourceReceipt() ?: run {
            if (!journal.commitSourceReceipt(live.receipt)) return@withLock blocked(LegacyMigrationStage.SOURCE_CAPTURE, LegacyMigrationFailure.SOURCE_CAPTURE_WRITE_FAILED)
            emit(LegacyMigrationFaultPoint.M01_AFTER_SOURCE_CAPTURE, LegacyMigrationOperation.SOURCE_RECEIPT_COMMITTED)
            live.receipt
        }
        val prior = journal.readManifest()
        if (prior != null) {
            if (prior.sourceReceipt != sourceReceipt) {
                journal.clearManifest()
                return@withLock blocked(LegacyMigrationStage.MANIFEST_VALIDATE, LegacyMigrationFailure.MANIFEST_INVALID)
            }
            if (live.receipt.contexts != prior.sourceReceipt.contexts) {
                journal.clearManifest()
                return@withLock blocked(LegacyMigrationStage.SOURCE_CAPTURE, LegacyMigrationFailure.SOURCE_CHANGED_DURING_COPY)
            }
            if (validateTargets(prior.targets, allowAdvanced = true)) {
                val projector = LegacyMigrationProjection(source, authority, faultInjector)
                val projection = if (projector.isCurrent(prior.projection)) prior.projection else projector.repair()
                    ?: return@withLock blocked(LegacyMigrationStage.PROJECTION_WRITE, LegacyMigrationFailure.PROJECTION_WRITE_FAILED)
                val repaired = LegacyMigrationCodec.completeManifest(prior.sourceReceipt, prior.targets, projection)
                if (repaired != prior && !commitComplete(repaired)) return@withLock blocked(LegacyMigrationStage.MANIFEST_WRITE, LegacyMigrationFailure.MANIFEST_INVALID)
                emit(LegacyMigrationFaultPoint.M13_AFTER_GATE_RELEASE, LegacyMigrationOperation.GATE_RELEASED)
                return@withLock LegacyMigrationResult.Completed(repaired, resumed = true)
            }
            journal.clearManifest()
        } else if (journal.hasManifestBytes() && !journal.clearManifest()) {
            return@withLock blocked(LegacyMigrationStage.MANIFEST_VALIDATE, LegacyMigrationFailure.MANIFEST_INVALID)
        }

        var targets = journal.readVerifiedTargets()
        if (!journal.isTargetCheckpointComplete()) {
            if (live.receipt != sourceReceipt) {
                return@withLock blockSourceChanged()
            }
            val snapshots = LegacyMigrationCodec.strictSnapshots(live) ?: run {
                journal.commitBlocked(LegacyMigrationStage.SOURCE_PARSE, LegacyMigrationFailure.MALFORMED_NONBLANK_SOURCE)
                return@withLock blocked(LegacyMigrationStage.SOURCE_PARSE, LegacyMigrationFailure.MALFORMED_NONBLANK_SOURCE)
            }
            emit(LegacyMigrationFaultPoint.M02_AFTER_PARSE, LegacyMigrationOperation.SOURCE_PARSED)
            val expected = targetSnapshots(snapshots, sourceReceipt.contexts.map { it.providerId }.toSet())
            val seeds = expected.map { (provider, snapshot) ->
                val id = ProviderAccountId(provider, AccountKey.reservedDefault())
                LegacyAuthorityImportSeed(
                    AuthorityAccountSeed(migratedAccount(id), snapshot),
                    source.mirrorSeedReceipt(provider),
                    source.preferenceSeedReceipt(provider)
                )
            }
            val states = try {
                authority.importLegacyDefaults(seeds, faultInjector)
            } catch (interrupted: LegacyMigrationInterruptedException) {
                throw interrupted
            } catch (_: RuntimeException) {
                return@withLock blocked(LegacyMigrationStage.AUTHORITY_WRITE, LegacyMigrationFailure.AUTHORITY_WRITE_FAILED)
            }
            val existingTargets = targets.associateBy { it.accountId }.toMutableMap()
            val contextReceipts = sourceReceipt.contexts.associateBy { it.providerId }
            val contextStates = states.filter { it.record.account.id.providerId in contextReceipts }
            contextStates.forEachIndexed { index, state ->
                if (source.capture().receipt != sourceReceipt) return@withLock blockSourceChanged()
                val contextReceipt = requireNotNull(contextReceipts[state.record.account.id.providerId])
                val context = source.readContext(contextReceipt)
                if (context !is LegacyContextCapture.Present) {
                    journal.commitBlocked(LegacyMigrationStage.SECRET_READ, LegacyMigrationFailure.MALFORMED_CONTEXT)
                    return@withLock blocked(LegacyMigrationStage.SECRET_READ, LegacyMigrationFailure.MALFORMED_CONTEXT)
                }
                emit(LegacyMigrationFaultPoint.M07_AFTER_OLD_DECRYPT, LegacyMigrationOperation.OLD_CONTEXT_DECRYPTED, state.record.account.id.providerId, index, contextStates.size)
                if (source.capture().receipt != sourceReceipt) return@withLock blockSourceChanged()
                val secret = stageSecret(state, context, index, contextStates.size)
                    ?: return@withLock blocked(LegacyMigrationStage.SECRET_VERIFY, LegacyMigrationFailure.VAULT_READBACK_FAILED)
                if (source.capture().receipt != sourceReceipt) return@withLock blockSourceChanged()
                if (!journal.commitVerifiedTarget(secret) || journal.readVerifiedTargets().none { it == secret }) {
                    return@withLock blocked(LegacyMigrationStage.SECRET_VERIFY, LegacyMigrationFailure.MANIFEST_WRITE_FAILED)
                }
                emit(LegacyMigrationFaultPoint.M09_AFTER_SECRET_VERIFY, LegacyMigrationOperation.AFTER_SECRET_VERIFY, state.record.account.id.providerId, index, contextStates.size)
                existingTargets[secret.accountId] = secret
            }
            states.filterNot { it.record.account.id.providerId in contextReceipts }.forEach { state ->
                existingTargets[state.record.account.id] = targetFrom(state, null, null, null)
            }
            targets = existingTargets.values.sortedBy { it.accountId.providerId.ordinal }
            if (!validateTargets(targets, allowAdvanced = false)) {
                return@withLock blocked(LegacyMigrationStage.TARGET_VERIFY, LegacyMigrationFailure.TARGET_VALIDATION_FAILED)
            }
            if (source.capture().receipt != sourceReceipt) return@withLock blockSourceChanged()
            if (!journal.commitTargetCheckpoint(targets) || journal.readVerifiedTargets() != targets) {
                return@withLock blocked(LegacyMigrationStage.TARGET_VERIFY, LegacyMigrationFailure.MANIFEST_WRITE_FAILED)
            }
            emit(LegacyMigrationFaultPoint.M10_AFTER_FULL_VERIFY, LegacyMigrationOperation.TARGET_CHECKPOINT_COMMITTED)
        } else {
            if (source.capture().receipt.contexts != sourceReceipt.contexts || !validateTargets(targets, allowAdvanced = false)) {
                return@withLock blocked(LegacyMigrationStage.TARGET_VERIFY, LegacyMigrationFailure.TARGET_VALIDATION_FAILED)
            }
        }

        val projection = LegacyMigrationProjection(source, authority, faultInjector).repair()
            ?: return@withLock blocked(LegacyMigrationStage.PROJECTION_WRITE, LegacyMigrationFailure.PROJECTION_WRITE_FAILED)
        val manifest = LegacyMigrationCodec.completeManifest(sourceReceipt, targets, projection)
        if (!commitComplete(manifest)) return@withLock blocked(LegacyMigrationStage.MANIFEST_WRITE, LegacyMigrationFailure.MANIFEST_INVALID)
        emit(LegacyMigrationFaultPoint.M13_AFTER_GATE_RELEASE, LegacyMigrationOperation.GATE_RELEASED)
        LegacyMigrationResult.Completed(manifest, resumed = false)
    }

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
        val existingValid = existing?.let { vault.decrypt(binding, it)?.contentEquals(context.bundle) } == true
        if (!existingValid) {
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
            accountId = account.id,
            sourceSnapshotSha256 = LegacyMigrationCodec.snapshotSha256(state.record.snapshot),
            accountState = account.state,
            authState = account.authState,
            deletionState = account.deletionState,
            generation = account.generation,
            sessionRevision = account.sessionRevision,
            authorityVersion = state.record.version,
            demandMask = state.demandMask,
            attemptGeneration = state.attemptGeneration,
            attemptSessionRevision = state.attemptSessionRevision,
            activeNonce = state.activeNonce,
            lastNonce = state.lastNonce,
            publishedNonceCount = state.publishedNonceCount,
            mirrorReceiptSha256 = state.mirrorReceiptSha256,
            preferenceReceiptSha256 = state.preferenceReceiptSha256,
            contextSourceReceipt = contextReceipt,
            vaultBinding = binding,
            vaultEnvelopeSha256 = envelopeHash
        )
    }

    private fun validateTargets(targets: List<LegacyMigrationTarget>, allowAdvanced: Boolean): Boolean = runCatching {
        val contexts = journal.readSourceReceipt()?.contexts?.associateBy { it.providerId }.orEmpty()
        targets.all { target ->
            if (target.contextSourceReceipt != contexts[target.accountId.providerId]) return@all false
            val state = authority.legacyImportState(target.accountId) ?: return@all false
            LegacyMigrationTargetValidator(vault).validate(target, state, allowAdvanced)
        }
    }.getOrDefault(false)

    private fun commitComplete(manifest: LegacyMigrationManifest): Boolean {
        if (journal.readSourceReceipt() != manifest.sourceReceipt) return false
        if (source.capture().receipt.contexts != manifest.sourceReceipt.contexts) return false
        if (!LegacyMigrationProjection(source, authority, LegacyMigrationFaultInjector.NONE).isCurrent(manifest.projection)) return false
        if (!journal.commitManifest(manifest)) return false
        val committed = journal.readManifest()
        if (committed != manifest ||
            source.capture().receipt.contexts != manifest.sourceReceipt.contexts ||
            !validateTargets(manifest.targets, allowAdvanced = true) ||
            !LegacyMigrationProjection(source, authority, LegacyMigrationFaultInjector.NONE).isCurrent(manifest.projection)
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

    private companion object {
        val TARGETS = listOf(ProviderId.CLAUDE, ProviderId.CODEX)
        val processLock = ReentrantLock()
    }
}
