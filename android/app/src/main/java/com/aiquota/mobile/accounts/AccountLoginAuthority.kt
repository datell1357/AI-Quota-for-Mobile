package com.aiquota.mobile.accounts

/** Immutable capture token for every login result and native-context write. */
data class AccountLoginSessionBinding(
    val accountId: ProviderAccountId,
    val generation: AccountGeneration,
    val sessionRevision: SessionRevision,
)

interface ExactAccountLoginAuthority {
    fun beginAuthentication(id: ProviderAccountId): AccountLoginSessionBinding?

    /** Recreation may resume only the currently authenticating exact generation/revision. */
    fun resumeAuthentication(binding: AccountLoginSessionBinding): Boolean

    /** The persistence callback runs only after the exact generation/revision is validated. */
    fun completeAuthentication(
        binding: AccountLoginSessionBinding,
        persist: () -> Boolean,
    ): Boolean

    fun markReauthentication(binding: AccountLoginSessionBinding): Boolean

    fun logoutExact(id: ProviderAccountId, clear: () -> Boolean): Boolean

    fun currentBinding(id: ProviderAccountId): AccountLoginSessionBinding?
}
