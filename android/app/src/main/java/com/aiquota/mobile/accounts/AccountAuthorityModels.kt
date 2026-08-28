package com.aiquota.mobile.accounts

import com.aiquota.mobile.local.ProviderUsageSnapshot

enum class AccountState {
    ENROLLING,
    ACTIVE,
    SUSPENDED,
    DELETED
}

enum class AccountAuthState {
    SIGNED_OUT,
    AUTHENTICATING,
    AUTHENTICATED,
    REAUTH_REQUIRED,
    IDENTITY_MISMATCH
}

enum class AccountDeletionState {
    NONE,
    TOMBSTONED,
    ERASURE_PENDING,
    ERASED
}

data class AccountRecord(
    val id: ProviderAccountId,
    val state: AccountState,
    val authState: AccountAuthState,
    val deletionState: AccountDeletionState,
    val generation: AccountGeneration,
    val sessionRevision: SessionRevision,
    val alias: String? = null,
    val organization: String? = null,
    val remoteIdentity: String? = null,
    val modifiedVersion: DisplayVersion = DisplayVersion.ZERO
) {
    init {
        require(alias?.isNotBlank() != false) { "Alias must be null or nonblank" }
        require(organization?.isNotBlank() != false) { "Organization must be null or nonblank" }
        require(remoteIdentity?.isNotBlank() != false) { "Remote identity must be null or nonblank" }
        if (deletionState == AccountDeletionState.NONE) {
            require(state != AccountState.DELETED) { "Deleted account requires deletion state" }
        } else {
            require(state == AccountState.DELETED) { "Deletion state requires deleted account" }
            require(authState == AccountAuthState.SIGNED_OUT) { "Deleted account must be signed out" }
        }
    }

    fun transitionTo(
        nextState: AccountState,
        nextAuthState: AccountAuthState,
        nextDeletionState: AccountDeletionState,
        nextGeneration: AccountGeneration = generation,
        nextSessionRevision: SessionRevision = sessionRevision
    ): AccountRecord {
        require(isAccountStateTransitionAllowed(state, nextState)) { "Invalid account state transition" }
        require(isAuthStateTransitionAllowed(authState, nextAuthState)) { "Invalid auth state transition" }
        require(isDeletionTransitionAllowed(deletionState, nextDeletionState)) { "Invalid deletion transition" }
        require(nextGeneration.value >= generation.value) { "Generation cannot decrease" }
        require(nextSessionRevision.value >= sessionRevision.value) { "Session revision cannot decrease" }
        return copy(
            state = nextState,
            authState = nextAuthState,
            deletionState = nextDeletionState,
            generation = nextGeneration,
            sessionRevision = nextSessionRevision
        )
    }
}

enum class AccountDemand(val bit: Int) {
    MANUAL(1),
    SCHEDULED(1 shl 1),
    WIDGET(1 shl 2),
    RESET(1 shl 3)
}

@JvmInline
value class AccountDemandSet private constructor(val mask: Int) {
    fun contains(demand: AccountDemand): Boolean = mask and demand.bit != 0

    fun plus(demand: AccountDemand): AccountDemandSet = fromMask(mask or demand.bit)

    companion object {
        val NONE = AccountDemandSet(0)
        private val validMask = AccountDemand.entries.fold(0) { mask, demand -> mask or demand.bit }

        fun of(vararg demands: AccountDemand): AccountDemandSet =
            fromMask(demands.fold(0) { mask, demand -> mask or demand.bit })

        fun fromMask(mask: Int): AccountDemandSet {
            require(mask >= 0 && mask and validMask.inv() == 0) { "Malformed account demand mask" }
            return AccountDemandSet(mask)
        }
    }
}

data class AttemptLease(
    val accountId: ProviderAccountId,
    val generation: AccountGeneration,
    val sessionRevision: SessionRevision,
    val nonce: AttemptNonce
)

data class VersionedDisplayRecord(
    val account: AccountRecord,
    val snapshot: ProviderUsageSnapshot,
    val version: DisplayVersion
) {
    init {
        require(account.id.providerId == snapshot.providerId) { "Snapshot provider does not match account" }
    }
}

data class AccountCatalogPage(
    val records: List<AccountRecord>,
    val offset: Int,
    val totalCount: Int,
    val version: DisplayVersion
)

data class AuthorityAccountSeed(
    val account: AccountRecord,
    val snapshot: ProviderUsageSnapshot,
    val demand: AccountDemandSet = AccountDemandSet.NONE
) {
    init {
        require(account.id.providerId == snapshot.providerId) { "Snapshot provider does not match account" }
        require(account.deletionState == AccountDeletionState.NONE) { "Cannot register a deleted account" }
    }
}

sealed interface AttemptCommitResult {
    data class Committed(val record: VersionedDisplayRecord) : AttemptCommitResult
    data class Rejected(val reason: StaleAttemptReason) : AttemptCommitResult
}

enum class StaleAttemptReason {
    ACCOUNT_MISSING,
    ACCOUNT_INACTIVE,
    GENERATION_MISMATCH,
    SESSION_MISMATCH,
    ATTEMPT_MISMATCH,
    NONCE_ALREADY_PUBLISHED
}

enum class AccountAuthorityFaultPoint {
    CATALOG,
    SNAPSHOT,
    DEMAND,
    ATTEMPT,
    NONCE,
    VERSION
}

internal enum class AccountAuthorityMigrationFaultPoint {
    LEGACY_ROWS_VALIDATED,
    CATALOG_TABLE_CREATED,
    ALIASES_NORMALIZED,
    CATALOG_ROWS_WRITTEN,
    CATALOG_INDEXES_CREATED,
    CATALOG_VALIDATED
}

internal fun interface AccountAuthorityMigrationFaultInjector {
    fun after(point: AccountAuthorityMigrationFaultPoint)

    companion object {
        val NONE = AccountAuthorityMigrationFaultInjector { }
    }
}

fun interface AccountAuthorityFaultInjector {
    fun after(point: AccountAuthorityFaultPoint)

    companion object {
        val NONE = AccountAuthorityFaultInjector { }
    }
}

private fun isAccountStateTransitionAllowed(current: AccountState, next: AccountState): Boolean =
    current == next || when (current) {
        AccountState.ENROLLING -> next == AccountState.ACTIVE || next == AccountState.SUSPENDED || next == AccountState.DELETED
        AccountState.ACTIVE -> next == AccountState.SUSPENDED || next == AccountState.DELETED
        AccountState.SUSPENDED -> next == AccountState.ACTIVE || next == AccountState.DELETED
        AccountState.DELETED -> false
    }

private fun isAuthStateTransitionAllowed(current: AccountAuthState, next: AccountAuthState): Boolean =
    current == next || when (current) {
        AccountAuthState.SIGNED_OUT -> next == AccountAuthState.AUTHENTICATING || next == AccountAuthState.REAUTH_REQUIRED
        AccountAuthState.AUTHENTICATING -> next != AccountAuthState.AUTHENTICATING
        AccountAuthState.AUTHENTICATED -> next == AccountAuthState.REAUTH_REQUIRED || next == AccountAuthState.SIGNED_OUT || next == AccountAuthState.IDENTITY_MISMATCH
        AccountAuthState.REAUTH_REQUIRED -> next == AccountAuthState.AUTHENTICATING || next == AccountAuthState.SIGNED_OUT
        AccountAuthState.IDENTITY_MISMATCH -> next == AccountAuthState.AUTHENTICATING || next == AccountAuthState.SIGNED_OUT
    }

private fun isDeletionTransitionAllowed(current: AccountDeletionState, next: AccountDeletionState): Boolean =
    current == next || when (current) {
        AccountDeletionState.NONE -> next == AccountDeletionState.TOMBSTONED
        AccountDeletionState.TOMBSTONED -> next == AccountDeletionState.ERASURE_PENDING
        AccountDeletionState.ERASURE_PENDING -> next == AccountDeletionState.ERASED
        AccountDeletionState.ERASED -> false
    }
