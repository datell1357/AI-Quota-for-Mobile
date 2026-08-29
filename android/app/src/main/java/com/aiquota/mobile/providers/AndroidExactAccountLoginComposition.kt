package com.aiquota.mobile.providers

import android.content.Context
import com.aiquota.mobile.accounts.AccountLoginSessionBinding
import com.aiquota.mobile.accounts.AndroidNamedProfileLifecycleStore
import com.aiquota.mobile.accounts.AndroidXNamedProfilePlatform
import com.aiquota.mobile.accounts.MainProcessAccountAuthority
import com.aiquota.mobile.accounts.NamedProfileLifecycleManager
import com.aiquota.mobile.accounts.ProviderAccountId
import com.aiquota.mobile.local.ProviderId

/** Activity-scoped owner for exact authority, Profile lease, and encrypted native context. */
class AndroidExactAccountLoginComposition private constructor(
    private val authority: MainProcessAccountAuthority,
    private val profileStore: AndroidNamedProfileLifecycleStore,
    val coordinator: ExactAccountLoginCoordinator,
) : AutoCloseable {
    override fun close() {
        profileStore.close()
        authority.close()
    }

    companion object {
        fun open(context: Context): AndroidExactAccountLoginComposition {
            val appContext = context.applicationContext
            val authority = MainProcessAccountAuthority.open(appContext)
            val profileStore = AndroidNamedProfileLifecycleStore(appContext)
            return try {
                AndroidExactAccountLoginComposition(
                    authority,
                    profileStore,
                    ExactAccountLoginCoordinator(
                        authority,
                        NamedProfileLifecycleManager(
                            profileStore,
                            AndroidXNamedProfilePlatform(context),
                        ),
                        AndroidExactLoginContextStore(appContext),
                    ),
                )
            } catch (failure: Throwable) {
                profileStore.close()
                authority.close()
                throw failure
            }
        }
    }
}

private class AndroidExactLoginContextStore(context: Context) : ExactAccountLoginContextStore {
    private val codex = CodexNativeAuthContextStore(context)
    private val claude = ClaudeNativeRequestContextStore(context)

    override fun save(
        binding: AccountLoginSessionBinding,
        value: Map<String, Map<String, String>>,
    ): Boolean = when (binding.accountId.providerId) {
        ProviderId.CODEX -> codex.saveExact(binding, value)
        ProviderId.CLAUDE -> claude.saveExact(binding, value)
        else -> false
    }

    override fun restore(binding: AccountLoginSessionBinding): Map<String, Map<String, String>> =
        when (binding.accountId.providerId) {
            ProviderId.CODEX -> codex.restoreExact(binding)
            ProviderId.CLAUDE -> claude.restoreExact(binding)
            else -> emptyMap()
        }

    override fun clear(accountId: ProviderAccountId): Boolean = when (accountId.providerId) {
        ProviderId.CODEX -> codex.clearExact(accountId)
        ProviderId.CLAUDE -> claude.clearExact(accountId)
        else -> false
    }
}
