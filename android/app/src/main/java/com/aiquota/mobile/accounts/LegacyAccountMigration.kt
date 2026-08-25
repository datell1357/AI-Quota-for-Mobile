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
        faultInjector.after(LegacyMigrationFaultPoint.M00_AFTER_GATE)
        val capture = journal.readCapturedSource() ?: when (val captured = captureSource()) {
            is Step.Success -> captured.value
            is Step.Failure -> return@withLock captured.result
        }
        val snapshots = LegacyMigrationCodec.strictSnapshots(capture) ?: run {
            journal.commitBlocked(LegacyMigrationStage.SOURCE_PARSE, LegacyMigrationFailure.MALFORMED_NONBLANK_SOURCE)
            return@withLock blocked(LegacyMigrationStage.SOURCE_PARSE, LegacyMigrationFailure.MALFORMED_NONBLANK_SOURCE)
        }
        faultInjector.after(LegacyMigrationFaultPoint.M02_AFTER_PARSE)
        val expected = targetSnapshots(snapshots, capture.contextProviders)

        val prior = journal.readManifest()
        if (prior != null && validateComplete(prior, capture, expected)) {
            val projection = source.currentAggregate()
            if ((projection.first != capture.present || LegacyMigrationCodec.sha256(projection.second) != prior.projectionSha256) && !writeProjection(capture)) {
                return@withLock blocked(LegacyMigrationStage.PROJECTION_WRITE, LegacyMigrationFailure.PROJECTION_WRITE_FAILED)
            }
            return@withLock LegacyMigrationResult.Completed(prior, resumed = true)
        }
        if (journal.hasManifestBytes() && !journal.clearManifest()) {
            return@withLock blocked(LegacyMigrationStage.MANIFEST_VALIDATE, LegacyMigrationFailure.MANIFEST_INVALID)
        }

        val records = runCatching { authority.importLegacyDefaults(expected) }.getOrElse {
            return@withLock blocked(LegacyMigrationStage.AUTHORITY_WRITE, LegacyMigrationFailure.AUTHORITY_WRITE_FAILED)
        }
        faultInjector.after(LegacyMigrationFaultPoint.M03_AFTER_REGISTRY_COPY)
        faultInjector.after(LegacyMigrationFaultPoint.M04_AFTER_SNAPSHOT_COPY)
        faultInjector.after(LegacyMigrationFaultPoint.M05_AFTER_MIRROR_COPY)
        faultInjector.after(LegacyMigrationFaultPoint.M06_AFTER_PREF_COPY)

        val targets = mutableListOf<LegacyMigrationTarget>()
        for (record in records) {
            val context = if (record.account.id.providerId in capture.contextProviders) {
                source.readContext(record.account.id.providerId)
            } else {
                LegacyContextCapture.Absent
            }
            if (context is LegacyContextCapture.Malformed || context is LegacyContextCapture.Absent && record.account.id.providerId in capture.contextProviders) {
                journal.commitBlocked(LegacyMigrationStage.SECRET_READ, LegacyMigrationFailure.MALFORMED_CONTEXT)
                return@withLock blocked(LegacyMigrationStage.SECRET_READ, LegacyMigrationFailure.MALFORMED_CONTEXT)
            }
            val secretReceipt = if (context is LegacyContextCapture.Present) {
                faultInjector.after(LegacyMigrationFaultPoint.M07_AFTER_OLD_DECRYPT)
                when (val staged = stageSecret(record.account.id, context.bundle)) {
                    is Step.Success -> staged.value
                    is Step.Failure -> return@withLock staged.result
                }
            } else {
                null
            }
            targets += LegacyMigrationTarget(
                accountId = record.account.id,
                sourceSnapshotSha256 = LegacyMigrationCodec.snapshotSha256(record.snapshot),
                authorityVersion = record.version,
                vaultBinding = secretReceipt?.first,
                vaultEnvelopeSha256 = secretReceipt?.second
            )
        }

        if (!validateTargets(targets, expected, capture.contextProviders, verifySecretPlaintext = true)) {
            return@withLock blocked(LegacyMigrationStage.TARGET_VERIFY, LegacyMigrationFailure.TARGET_VALIDATION_FAILED)
        }
        faultInjector.after(LegacyMigrationFaultPoint.M10_AFTER_FULL_VERIFY)
        val current = source.currentAggregate()
        val currentContextProviders = TARGET_PROVIDERS.filter(source::hasContext).toSet()
        if (current.first != capture.present || LegacyMigrationCodec.sha256(current.second) != capture.sha256 || currentContextProviders != capture.contextProviders) {
            return@withLock blocked(LegacyMigrationStage.PROJECTION_WRITE, LegacyMigrationFailure.SOURCE_CHANGED_DURING_COPY)
        }
        if (!writeProjection(capture)) {
            return@withLock blocked(LegacyMigrationStage.PROJECTION_WRITE, LegacyMigrationFailure.PROJECTION_WRITE_FAILED)
        }
        faultInjector.after(LegacyMigrationFaultPoint.M11_AFTER_PROJECTION_WRITE)

        val manifest = LegacyMigrationCodec.completeManifest(capture, targets, capture.sha256)
        if (!journal.commitManifest(manifest)) {
            return@withLock blocked(LegacyMigrationStage.MANIFEST_WRITE, LegacyMigrationFailure.MANIFEST_WRITE_FAILED)
        }
        val committed = journal.readManifest()
        if (committed != manifest || !validateComplete(committed, capture, expected)) {
            journal.clearManifest()
            return@withLock blocked(LegacyMigrationStage.MANIFEST_VALIDATE, LegacyMigrationFailure.MANIFEST_INVALID)
        }
        faultInjector.after(LegacyMigrationFaultPoint.M12_AFTER_COMPLETE_COMMIT)
        faultInjector.after(LegacyMigrationFaultPoint.M13_AFTER_GATE_RELEASE)
        LegacyMigrationResult.Completed(manifest, resumed = false)
    }

    private fun writeProjection(capture: LegacySourceCapture): Boolean {
        faultInjector.after(LegacyMigrationFaultPoint.P01_AFTER_DERIVE)
        if (!source.writeAggregate(capture)) return false
        faultInjector.after(LegacyMigrationFaultPoint.P02_AFTER_V1_AGGREGATE)
        if (!source.verifyMirrorsUnchanged()) return false
        faultInjector.after(LegacyMigrationFaultPoint.P03_AFTER_V1_MIRRORS)
        if (!source.verifyDerivedCachesUnchanged()) return false
        faultInjector.after(LegacyMigrationFaultPoint.P04_AFTER_CACHE)
        return true
    }

    private fun captureSource(): Step<LegacySourceCapture> {
        val current = source.currentAggregate()
        val capture = LegacySourceCapture(
            current.first,
            current.second,
            LegacyMigrationCodec.sha256(current.second),
            TARGET_PROVIDERS.filter(source::hasContext).toSet()
        )
        if (!journal.commitCapturedSource(capture)) {
            return Step.Failure(blocked(LegacyMigrationStage.SOURCE_CAPTURE, LegacyMigrationFailure.SOURCE_CAPTURE_WRITE_FAILED))
        }
        faultInjector.after(LegacyMigrationFaultPoint.M01_AFTER_SOURCE_CAPTURE)
        return Step.Success(capture)
    }

    private fun targetSnapshots(
        snapshots: List<ProviderUsageSnapshot>,
        contextProviders: Set<ProviderId>
    ): Map<ProviderId, ProviderUsageSnapshot> = TARGET_PROVIDERS.mapNotNull { provider ->
        snapshots.singleOrNull { it.providerId == provider }?.let { provider to it }
            ?: if (provider in contextProviders) provider to ProviderUsageSnapshot.notConnected(provider) else null
    }.toMap()

    private fun stageSecret(
        accountId: ProviderAccountId,
        bundle: CredentialBundle
    ): Step<Pair<CredentialVaultBinding, String>> {
        val binding = CredentialVaultBinding(
            schema = CredentialVaultSchema.CURRENT,
            accountId = CredentialVaultAccountId.parse(accountId),
            generation = AccountGeneration.of(1),
            sessionRevision = SessionRevision.of(1),
            secretRevision = SecretRevision.of(1)
        )
        val existing = vault.lookup(binding.accountId)
        val existingValid = existing?.let { vault.decrypt(binding, it)?.contentEquals(bundle) } == true
        if (!existingValid && !vault.put(binding, bundle)) {
            return Step.Failure(blocked(LegacyMigrationStage.SECRET_WRITE, LegacyMigrationFailure.VAULT_WRITE_FAILED))
        }
        faultInjector.after(LegacyMigrationFaultPoint.M08_AFTER_SECRET_ENVELOPE)
        val envelope = vault.lookup(binding.accountId)
        val verified = envelope?.let { vault.decrypt(binding, it) }
        if (envelope == null || verified?.contentEquals(bundle) != true) {
            return Step.Failure(blocked(LegacyMigrationStage.SECRET_VERIFY, LegacyMigrationFailure.VAULT_READBACK_FAILED))
        }
        faultInjector.after(LegacyMigrationFaultPoint.M09_AFTER_SECRET_VERIFY)
        return Step.Success(binding to LegacyMigrationCodec.sha256(envelope.encodedBytes()))
    }

    private fun validateComplete(
        manifest: LegacyMigrationManifest,
        capture: LegacySourceCapture,
        expected: Map<ProviderId, ProviderUsageSnapshot>
    ): Boolean = manifest.phase == LegacyMigrationPhase.COMPLETE &&
        manifest.sourcePresent == capture.present &&
        manifest.sourceSha256 == capture.sha256 &&
        manifest.sourceContextProviders == capture.contextProviders &&
        manifest.projectionSha256 == capture.sha256 &&
        validateTargets(manifest.targets, expected, capture.contextProviders, verifySecretPlaintext = false)

    private fun validateTargets(
        targets: List<LegacyMigrationTarget>,
        expected: Map<ProviderId, ProviderUsageSnapshot>,
        contextProviders: Set<ProviderId>,
        verifySecretPlaintext: Boolean
    ): Boolean {
        if (targets.size != expected.size) return false
        return targets.all { target ->
            val snapshot = expected[target.accountId.providerId] ?: return@all false
            val record = authority.legacyImportRecord(target.accountId) ?: return@all false
            if (record.version != target.authorityVersion || record.account.authState != AccountAuthState.REAUTH_REQUIRED) return@all false
            if (LegacyMigrationCodec.snapshotSha256(record.snapshot) != target.sourceSnapshotSha256 || record.snapshot != snapshot) return@all false
            val binding = target.vaultBinding ?: return@all target.accountId.providerId !in contextProviders
            val envelope = vault.lookup(binding.accountId) ?: return@all false
            if (LegacyMigrationCodec.sha256(envelope.encodedBytes()) != target.vaultEnvelopeSha256) return@all false
            val decrypted = vault.decrypt(binding, envelope) ?: return@all false
            !verifySecretPlaintext || source.readContext(target.accountId.providerId).let {
                it is LegacyContextCapture.Present && decrypted.contentEquals(it.bundle)
            }
        }
    }

    private fun blocked(stage: LegacyMigrationStage, failure: LegacyMigrationFailure) =
        LegacyMigrationResult.Blocked(stage, failure)

    private sealed interface Step<out T> {
        data class Success<T>(val value: T) : Step<T>
        data class Failure(val result: LegacyMigrationResult.Blocked) : Step<Nothing>
    }

    private companion object {
        val TARGET_PROVIDERS = listOf(ProviderId.CLAUDE, ProviderId.CODEX)
        val processLock = ReentrantLock()
    }
}
