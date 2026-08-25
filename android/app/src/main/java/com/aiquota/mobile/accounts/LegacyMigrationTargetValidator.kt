package com.aiquota.mobile.accounts

internal class LegacyMigrationTargetValidator(
    private val vault: AccountCredentialVault
) {
    fun validate(
        target: LegacyMigrationTarget,
        current: LegacyAuthorityState,
        allowAdvanced: Boolean
    ): Boolean {
        if (!validHistoricalContract(target)) return false
        val account = current.record.account
        if (account.id != target.accountId || current.record.snapshot.providerId != target.accountId.providerId) return false
        if (account.state != AccountState.ACTIVE || account.deletionState != AccountDeletionState.NONE) return false
        if (account.generation.value < target.generation.value || account.sessionRevision.value < target.sessionRevision.value) return false
        if (current.record.version.value < target.authorityVersion.value || account.modifiedVersion.value < target.authorityVersion.value) return false
        if (account.modifiedVersion.value < current.record.version.value) return false
        if (current.mirrorReceiptSha256 != target.mirrorReceiptSha256 || current.mirrorCopyData.isBlank()) return false
        if (current.preferenceReceiptSha256 != target.preferenceReceiptSha256 || current.preferenceCopyData.isBlank()) return false
        if (!validCurrentAttemptState(current)) return false

        val exact = account.authState == target.authState &&
            account.generation == target.generation &&
            account.sessionRevision == target.sessionRevision &&
            current.record.version == target.authorityVersion &&
            account.modifiedVersion == target.authorityVersion
        return if (exact) validateExact(target, current) else validateAdvanced(target, current, allowAdvanced)
    }

    private fun validHistoricalContract(target: LegacyMigrationTarget): Boolean =
        target.accountState == AccountState.ACTIVE &&
            target.authState == AccountAuthState.REAUTH_REQUIRED &&
            target.deletionState == AccountDeletionState.NONE &&
            target.generation == AccountGeneration.of(1) &&
            target.sessionRevision == SessionRevision.of(1) &&
            target.demandMask == AccountDemandSet.NONE.mask &&
            target.attemptGeneration == target.generation &&
            target.attemptSessionRevision == target.sessionRevision &&
            target.activeNonce == null && target.lastNonce == null && target.publishedNonceCount == 0 &&
            (target.vaultBinding == null ||
                target.vaultBinding.generation == target.generation &&
                target.vaultBinding.sessionRevision == target.sessionRevision)

    private fun validCurrentAttemptState(current: LegacyAuthorityState): Boolean {
        if (runCatching { AccountDemandSet.fromMask(current.demandMask) }.isFailure) return false
        val account = current.record.account
        if (current.attemptGeneration != account.generation || current.attemptSessionRevision != account.sessionRevision) return false
        if (current.activeNonce != null && current.demandMask == AccountDemandSet.NONE.mask) return false
        if ((current.publishedNonceCount == 0) != (current.lastNonce == null)) return false
        return current.publishedNonceCount >= 0
    }

    private fun validateExact(target: LegacyMigrationTarget, current: LegacyAuthorityState): Boolean {
        if (LegacyMigrationCodec.snapshotSha256(current.record.snapshot) != target.sourceSnapshotSha256) return false
        if (current.demandMask != target.demandMask || current.activeNonce != target.activeNonce ||
            current.lastNonce != target.lastNonce || current.publishedNonceCount != target.publishedNonceCount
        ) return false
        return validateHistoricalVault(target)
    }

    private fun validateAdvanced(
        target: LegacyMigrationTarget,
        current: LegacyAuthorityState,
        allowAdvanced: Boolean
    ): Boolean {
        val account = current.record.account
        if (!allowAdvanced || account.authState != AccountAuthState.AUTHENTICATED) return false
        if (account.generation.value == target.generation.value && account.sessionRevision.value == target.sessionRevision.value) return false
        val historicalBinding = target.vaultBinding ?: return target.contextSourceReceipt == null
        val currentBinding = historicalBinding.copy(
            generation = account.generation,
            sessionRevision = account.sessionRevision
        )
        val envelope = vault.lookup(currentBinding.accountId) ?: return false
        return vault.decrypt(currentBinding, envelope) != null
    }

    private fun validateHistoricalVault(target: LegacyMigrationTarget): Boolean {
        val binding = target.vaultBinding ?: return target.contextSourceReceipt == null
        val envelope = vault.lookup(binding.accountId) ?: return false
        if (LegacyMigrationCodec.sha256(envelope.encodedBytes()) != target.vaultEnvelopeSha256) return false
        return vault.decrypt(binding, envelope) != null
    }
}
