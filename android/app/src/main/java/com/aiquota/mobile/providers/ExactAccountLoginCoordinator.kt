package com.aiquota.mobile.providers

import com.aiquota.mobile.accounts.AccountKey
import com.aiquota.mobile.accounts.AccountLoginSessionBinding
import com.aiquota.mobile.accounts.ExactAccountLoginAuthority
import com.aiquota.mobile.accounts.LeaseAcquireResult
import com.aiquota.mobile.accounts.NamedProfileLease
import com.aiquota.mobile.accounts.NamedProfileLifecycleManager
import com.aiquota.mobile.accounts.ProfileDataErasureResult
import com.aiquota.mobile.accounts.ProviderAccountId
import com.aiquota.mobile.accounts.ProviderAccountIdStorageCodec
import com.aiquota.mobile.accounts.WebProfileName
import com.aiquota.mobile.local.ProviderId

interface ExactAccountLoginContextStore {
    fun save(
        binding: AccountLoginSessionBinding,
        value: Map<String, Map<String, String>>,
    ): Boolean

    fun restore(binding: AccountLoginSessionBinding): Map<String, Map<String, String>>

    fun clear(accountId: ProviderAccountId): Boolean
}

enum class LoginStartRejection {
    MALFORMED_ACCOUNT_ID,
    PROVIDER_MISMATCH,
    MISSING_ACCOUNT,
    NON_RESERVED_SINGLE_ACCOUNT,
    PROFILE_UNAVAILABLE,
}

sealed interface LoginIntentResolution {
    data class Exact(val accountId: ProviderAccountId) : LoginIntentResolution
    data class Rejected(val reason: LoginStartRejection) : LoginIntentResolution
}

object AccountLoginIntentBoundary {
    fun resolve(
        rawProviderId: String?,
        rawAccountId: String?,
        multiAccountEnabled: Boolean,
    ): LoginIntentResolution {
        val provider = ProviderId.fromStorageId(rawProviderId)
            ?: return LoginIntentResolution.Rejected(LoginStartRejection.MALFORMED_ACCOUNT_ID)
        if (!multiAccountEnabled) {
            return LoginIntentResolution.Exact(ProviderAccountId(provider, AccountKey.reservedDefault()))
        }
        val account = ProviderAccountIdStorageCodec.decodeOrNull(rawAccountId)
            ?: return LoginIntentResolution.Rejected(LoginStartRejection.MALFORMED_ACCOUNT_ID)
        if (account.providerId != provider) {
            return LoginIntentResolution.Rejected(LoginStartRejection.PROVIDER_MISMATCH)
        }
        if (provider !in NAMED_PROFILE_PROVIDERS && account.accountKey != AccountKey.reservedDefault()) {
            return LoginIntentResolution.Rejected(LoginStartRejection.NON_RESERVED_SINGLE_ACCOUNT)
        }
        return LoginIntentResolution.Exact(account)
    }
}

sealed interface ExactAccountLoginStartResult {
    data class Opened(
        val binding: AccountLoginSessionBinding,
        val lease: NamedProfileLease?,
    ) : ExactAccountLoginStartResult

    data class ReauthenticationRequired(
        val binding: AccountLoginSessionBinding,
    ) : ExactAccountLoginStartResult {
        val accountId: ProviderAccountId get() = binding.accountId
    }

    data class Rejected(
        val reason: LoginStartRejection,
        val binding: AccountLoginSessionBinding? = null,
    ) : ExactAccountLoginStartResult
}

enum class LoginCallbackResult { Accepted, Stale, PersistenceFailed }

class ExactAccountLoginCoordinator(
    private val authority: ExactAccountLoginAuthority,
    private val profiles: NamedProfileLifecycleManager,
    private val contexts: ExactAccountLoginContextStore,
) {
    fun connectExplicit(accountId: ProviderAccountId): ExactAccountLoginStartResult {
        if (accountId.providerId !in NAMED_PROFILE_PROVIDERS &&
            accountId.accountKey != AccountKey.reservedDefault()
        ) {
            return ExactAccountLoginStartResult.Rejected(
                LoginStartRejection.NON_RESERVED_SINGLE_ACCOUNT
            )
        }
        val binding = authority.beginAuthentication(accountId)
            ?: return ExactAccountLoginStartResult.Rejected(LoginStartRejection.MISSING_ACCOUNT)
        if (accountId.providerId !in NAMED_PROFILE_PROVIDERS) {
            return ExactAccountLoginStartResult.Opened(binding, null)
        }
        return when (val result = profiles.acquireForExplicitConnect(accountId)) {
            is LeaseAcquireResult.Acquired -> ExactAccountLoginStartResult.Opened(binding, result.lease)
            LeaseAcquireResult.ProfileUnavailable,
            LeaseAcquireResult.ReauthenticationRequired -> {
                authority.markReauthentication(binding)
                ExactAccountLoginStartResult.ReauthenticationRequired(binding)
            }
            is LeaseAcquireResult.Rejected -> {
                authority.markReauthentication(binding)
                ExactAccountLoginStartResult.Rejected(
                    LoginStartRejection.PROFILE_UNAVAILABLE,
                    binding,
                )
            }
        }
    }

    fun resume(binding: AccountLoginSessionBinding): ExactAccountLoginStartResult {
        if (!authority.resumeAuthentication(binding)) {
            return ExactAccountLoginStartResult.Rejected(LoginStartRejection.MISSING_ACCOUNT, binding)
        }
        if (binding.accountId.providerId !in NAMED_PROFILE_PROVIDERS) {
            return ExactAccountLoginStartResult.Opened(binding, null)
        }
        return when (val result = profiles.acquireTyped(binding.accountId)) {
            is LeaseAcquireResult.Acquired -> ExactAccountLoginStartResult.Opened(binding, result.lease)
            LeaseAcquireResult.ProfileUnavailable,
            LeaseAcquireResult.ReauthenticationRequired -> {
                authority.markReauthentication(binding)
                ExactAccountLoginStartResult.ReauthenticationRequired(binding)
            }
            is LeaseAcquireResult.Rejected -> {
                authority.markReauthentication(binding)
                ExactAccountLoginStartResult.Rejected(
                    LoginStartRejection.PROFILE_UNAVAILABLE,
                    binding,
                )
            }
        }
    }

    fun complete(
        binding: AccountLoginSessionBinding,
        value: Map<String, Map<String, String>>,
    ): LoginCallbackResult {
        var persistenceAttempted = false
        var persistenceSucceeded = false
        val accepted = authority.completeAuthentication(binding) {
            persistenceAttempted = true
            contexts.save(binding, value).also { persistenceSucceeded = it }
        }
        return when {
            accepted -> LoginCallbackResult.Accepted
            !persistenceAttempted -> LoginCallbackResult.Stale
            !persistenceSucceeded -> LoginCallbackResult.PersistenceFailed
            else -> LoginCallbackResult.Stale
        }
    }

    fun fail(binding: AccountLoginSessionBinding): LoginCallbackResult =
        if (authority.markReauthentication(binding)) LoginCallbackResult.Accepted
        else LoginCallbackResult.Stale

    fun restore(binding: AccountLoginSessionBinding): Map<String, Map<String, String>> =
        contexts.restore(binding)

    fun restoreCurrent(accountId: ProviderAccountId): Map<String, Map<String, String>> =
        authority.currentBinding(accountId)?.let(contexts::restore).orEmpty()

    fun logout(
        accountId: ProviderAccountId,
        onComplete: (Boolean) -> Unit = {},
    ): Boolean {
        if (accountId.providerId !in NAMED_PROFILE_PROVIDERS) {
            return authority.logoutExact(accountId) { contexts.clear(accountId) }
                .also(onComplete)
        }
        return profiles.clearSessionData(accountId) { result ->
            val cleared = if (result == ProfileDataErasureResult.Completed) {
                authority.logoutExact(accountId) { contexts.clear(accountId) }
            } else {
                authority.currentBinding(accountId)?.let(authority::markReauthentication) == true
            }
            onComplete(cleared)
        }
    }
}

object ExactProfileWindowFactory {
    fun profileNameForPopup(lease: NamedProfileLease): WebProfileName = lease.profileName
}

internal val NAMED_PROFILE_PROVIDERS = setOf(ProviderId.CLAUDE, ProviderId.CODEX)
