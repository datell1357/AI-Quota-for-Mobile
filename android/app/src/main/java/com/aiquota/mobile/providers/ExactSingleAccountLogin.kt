package com.aiquota.mobile.providers

import android.content.Context
import android.content.Intent
import android.os.Bundle
import com.aiquota.mobile.accounts.AccountGeneration
import com.aiquota.mobile.accounts.AccountKey
import com.aiquota.mobile.accounts.AccountLoginSessionBinding
import com.aiquota.mobile.accounts.AccountUsageWrite
import com.aiquota.mobile.accounts.AccountUsageWriteResult
import com.aiquota.mobile.accounts.MainProcessAccountAuthority
import com.aiquota.mobile.accounts.ProviderAccountId
import com.aiquota.mobile.accounts.ProviderAccountIdStorageCodec
import com.aiquota.mobile.accounts.SessionRevision
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.local.ProviderUsageSnapshot

internal class ExactSingleAccountLogin private constructor(
    private val authority: MainProcessAccountAuthority,
    val binding: AccountLoginSessionBinding,
) : AutoCloseable {
    fun complete(snapshot: ProviderUsageSnapshot, persistCredential: () -> Boolean = { true }): Boolean {
        if (snapshot.providerId != binding.accountId.providerId) return false
        if (!authority.completeAuthentication(binding) {
            runCatching(persistCredential).getOrDefault(false)
        }) return false
        val current = authority.accountUsageRecord(binding.accountId) ?: return false
        return authority.writeAccountUsage(
            AccountUsageWrite(
                binding.accountId, current.version, binding.generation, binding.sessionRevision, snapshot,
            )
        ) is AccountUsageWriteResult.Committed
    }

    fun cancel(): Boolean = authority.markReauthentication(binding)

    fun isCurrent(): Boolean = authority.resumeAuthentication(binding)

    fun saveState(state: Bundle) {
        state.putLong(STATE_GENERATION, binding.generation.value)
        state.putLong(STATE_REVISION, binding.sessionRevision.value)
    }

    override fun close() = authority.close()

    companion object {
        private const val STATE_GENERATION = "singleAccountLogin.generation"
        private const val STATE_REVISION = "singleAccountLogin.revision"

        fun open(context: Context, intent: Intent, savedState: Bundle?): ExactSingleAccountLogin? {
            val account = ProviderAccountIdStorageCodec.decodeOrNull(
                intent.getStringExtra(WebLoginActivity.EXTRA_PROVIDER_ACCOUNT_ID)
            ) ?: return null
            val restored = savedState?.takeIf {
                it.containsKey(STATE_GENERATION) && it.containsKey(STATE_REVISION)
            }?.let {
                val generation = it.getLong(STATE_GENERATION)
                val revision = it.getLong(STATE_REVISION)
                if (generation < 0 || revision < 0) return null
                AccountLoginSessionBinding(account, AccountGeneration.of(generation), SessionRevision.of(revision))
            }
            val authority = MainProcessAccountAuthority.open(context)
            return start(authority, account, restored).also { if (it == null) authority.close() }
        }

        internal fun start(
            authority: MainProcessAccountAuthority,
            account: ProviderAccountId,
            restored: AccountLoginSessionBinding? = null,
        ): ExactSingleAccountLogin? {
            if (account.providerId !in setOf(ProviderId.GLM, ProviderId.ANTIGRAVITY) ||
                account.accountKey != AccountKey.reservedDefault()
            ) return null
            val binding = if (restored == null) {
                authority.beginAuthentication(account) ?: return null
            } else {
                if (restored.accountId != account || !authority.resumeAuthentication(restored)) return null
                restored
            }
            return ExactSingleAccountLogin(authority, binding)
        }
    }
}
