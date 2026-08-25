package com.aiquota.mobile.accounts

internal class LegacyMigrationTargetValidator(
    private val vault: AccountCredentialVault
) {
    fun validate(
        target: LegacyMigrationTarget,
        current: LegacyAuthorityState,
        allowAdvanced: Boolean
    ): Boolean {
        val account = current.record.account
        if (account.id != target.accountId) return false
        if (account.state != AccountState.ACTIVE || account.deletionState != AccountDeletionState.NONE) return false
        if (account.generation.value < target.generation.value) return false
        if (account.sessionRevision.value < target.sessionRevision.value) return false
        if (current.record.version.value < target.authorityVersion.value) return false
        if (account.modifiedVersion.value < target.authorityVersion.value) return false
        if (current.mirrorReceiptSha256 != target.mirrorReceiptSha256) return false
        if (current.preferenceReceiptSha256 != target.preferenceReceiptSha256) return false

        val exactMigrationState = account.authState == target.authState &&
            account.generation == target.generation &&
            account.sessionRevision == target.sessionRevision &&
            current.record.version == target.authorityVersion &&
            account.modifiedVersion == target.authorityVersion
        if (!exactMigrationState) {
            return allowAdvanced && account.authState != AccountAuthState.REAUTH_REQUIRED &&
                (account.generation.value > target.generation.value ||
                    account.sessionRevision.value > target.sessionRevision.value ||
                    current.record.version.value > target.authorityVersion.value ||
                    account.modifiedVersion.value > target.authorityVersion.value)
        }
        if (target.accountState != AccountState.ACTIVE || target.authState != AccountAuthState.REAUTH_REQUIRED) return false
        if (target.deletionState != AccountDeletionState.NONE) return false
        if (LegacyMigrationCodec.snapshotSha256(current.record.snapshot) != target.sourceSnapshotSha256) return false
        if (current.demandMask != target.demandMask || target.demandMask != AccountDemandSet.NONE.mask) return false
        if (current.attemptGeneration != target.attemptGeneration || current.attemptSessionRevision != target.attemptSessionRevision) return false
        if (target.attemptGeneration != target.generation || target.attemptSessionRevision != target.sessionRevision) return false
        if (current.activeNonce != target.activeNonce || current.lastNonce != target.lastNonce) return false
        if (current.publishedNonceCount != target.publishedNonceCount || target.publishedNonceCount != 0) return false
        if (target.activeNonce != null || target.lastNonce != null) return false
        return validateVault(target)
    }

    private fun validateVault(target: LegacyMigrationTarget): Boolean {
        val binding = target.vaultBinding ?: return target.contextSourceReceipt == null
        if (binding.generation != target.generation || binding.sessionRevision != target.sessionRevision) return false
        val envelope = vault.lookup(binding.accountId) ?: return false
        if (LegacyMigrationCodec.sha256(envelope.encodedBytes()) != target.vaultEnvelopeSha256) return false
        return vault.decrypt(binding, envelope) != null
    }
}
