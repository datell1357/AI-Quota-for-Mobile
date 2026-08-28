package com.aiquota.mobile.accounts

import com.aiquota.mobile.local.ProviderId

fun interface ExactCredentialEraser {
    fun erase(accountId: ProviderAccountId): Boolean
}

internal class AccountVaultCredentialEraser(
    private val vault: AccountCredentialVault,
) : ExactCredentialEraser {
    override fun erase(accountId: ProviderAccountId): Boolean =
        if (accountId.providerId in setOf(ProviderId.CLAUDE, ProviderId.CODEX)) {
            vault.delete(CredentialVaultAccountId.parse(accountId))
        } else {
            true
        }
}

fun interface ExactProfileErasureCallback {
    fun complete(result: ProfileDataErasureResult)
}

interface ExactProfileEraser {
    /** Returns false only when no callback can be delivered. */
    fun erase(accountId: ProviderAccountId, callback: ExactProfileErasureCallback): Boolean
}

class NamedProfileExactEraser(
    private val lifecycle: NamedProfileLifecycleManager,
) : ExactProfileEraser {
    override fun erase(
        accountId: ProviderAccountId,
        callback: ExactProfileErasureCallback,
    ): Boolean {
        val binding = lifecycle.binding(accountId)
        if (binding == null ||
            binding.state == ProfileLifecycleState.DATA_ERASURE_COMPLETED_CONTAINER_RETAINED
        ) {
            callback.complete(ProfileDataErasureResult.Completed)
            return true
        }
        lifecycle.requestErasure(accountId, callback::complete)
        return true
    }
}

interface ProviderSpecificAccountCleanup {
    fun supports(providerId: ProviderId): Boolean
    fun erase(accountId: ProviderAccountId): Boolean
}

fun interface ExactCardArtifactEraser {
    fun erase(accountId: ProviderAccountId): Boolean
}

fun interface ExactCardArtifactStore {
    fun eraseExact(accountId: ProviderAccountId): Boolean
}

class CompositeExactCardArtifactEraser(
    private val preferenceArtifacts: ExactCardArtifactStore,
    private val widgetArtifacts: ExactCardArtifactStore,
    private val notificationArtifacts: ExactCardArtifactStore,
) : ExactCardArtifactEraser {
    override fun erase(accountId: ProviderAccountId): Boolean {
        if (!preferenceArtifacts.eraseExact(accountId)) return false
        if (!widgetArtifacts.eraseExact(accountId)) return false
        return notificationArtifacts.eraseExact(accountId)
    }
}

fun interface CompatibilityProjectionClearer {
    fun clear(accountId: ProviderAccountId): Boolean
}

class AccountUsageCompatibilityProjectionClearer(
    private val repository: AccountUsageRepository,
    private val reconcileCardProjection: () -> Boolean = { true },
) : CompatibilityProjectionClearer {
    override fun clear(accountId: ProviderAccountId): Boolean =
        repository.reconcileLegacyProjection() !is AccountUsageProjectionResult.Failed &&
            reconcileCardProjection()
}
