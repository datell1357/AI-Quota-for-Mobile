package com.aiquota.mobile.providers

import android.content.Context
import com.aiquota.mobile.accounts.AccountDemand
import com.aiquota.mobile.accounts.AccountDemandSet
import com.aiquota.mobile.accounts.AccountLoginSessionBinding
import com.aiquota.mobile.accounts.AccountUsageRepository
import com.aiquota.mobile.accounts.AttemptCommitResult
import com.aiquota.mobile.accounts.AttemptLease
import com.aiquota.mobile.accounts.AttemptNonce
import com.aiquota.mobile.accounts.AndroidNamedProfileLifecycleStore
import com.aiquota.mobile.accounts.AndroidXNamedProfilePlatform
import com.aiquota.mobile.accounts.MainProcessAccountAuthority
import com.aiquota.mobile.accounts.LeaseAcquireResult
import com.aiquota.mobile.accounts.NamedProfileLease
import com.aiquota.mobile.accounts.NamedProfileLifecycleManager
import com.aiquota.mobile.accounts.ProfileLifecycleState
import com.aiquota.mobile.accounts.ProviderAccountId
import com.aiquota.mobile.accounts.ProviderAccountIdStorageCodec
import com.aiquota.mobile.accounts.ProviderCardCompatibilityProjection
import com.aiquota.mobile.accounts.requireAndroidWebView
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.local.ProviderUsageSnapshot
import android.webkit.WebView
import java.security.SecureRandom
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.NonCancellable
import kotlinx.coroutines.withContext

internal class AndroidProviderAccountRefreshCoordinator(
    context: Context,
) : ExactServiceAttemptCoordinator, AutoCloseable {
    private val appContext = context.applicationContext
    private val authority = MainProcessAccountAuthority.open(appContext)
    private val profileStore = AndroidNamedProfileLifecycleStore(appContext)
    private val profiles = NamedProfileLifecycleManager(
        profileStore,
        AndroidXNamedProfilePlatform(context),
    )
    private val codexNativeContext = CodexNativeAuthContextStore(appContext)
    private val claudeNativeContext = ClaudeNativeRequestContextStore(appContext)
    private val exactOperationGate = ExactProviderCollectorOperationGate()
    private val scheduler = ProviderAccountRefreshScheduler(
        Authority(authority),
        Cursor(appContext),
        ProviderRefreshClock(System::currentTimeMillis),
        Nonces(),
    )

    fun trigger(
        automatic: Boolean,
        exactTarget: ProviderAccountId?,
    ): ProviderRefreshTriggerResult = scheduler.trigger(cards(automatic, exactTarget), exactTarget)

    fun publish(
        attempt: ProviderRefreshAttempt,
        snapshot: ProviderUsageSnapshot,
    ): ProviderRefreshCallbackResult {
        val result = scheduler.publish(attempt, snapshot)
        val commit = (result as? ProviderRefreshCallbackResult.Accepted)?.commit
        if (commit is AttemptCommitResult.Committed) {
            AccountUsageRepository.open(appContext).use(AccountUsageRepository::reconcileLegacyProjection)
            ProviderCardCompatibilityProjection(appContext, authority).reconcile()
        }
        return result
    }

    override fun fail(attempt: ProviderRefreshAttempt, requeue: Boolean): ProviderRefreshAttempt? =
        scheduler.fail(attempt, requeue)

    override fun timeout(attempt: ProviderRefreshAttempt): ProviderRefreshAttempt? = scheduler.timeout(attempt)

    suspend fun cancelExact(accountId: ProviderAccountId): ProviderRefreshAttempt? {
        return scheduler.cancelExact(accountId)
    }

    suspend fun requireReauthentication(accountId: ProviderAccountId): ProviderRefreshAttempt? {
        return persistReauthenticationThenCancel(
            persist = { authority.requireReauthentication(accountId) },
            cancel = { scheduler.cancelExact(accountId) },
            abort = scheduler::resetCycle,
        )
    }

    internal suspend fun <T> withExactCollectorOperation(
        attempt: ProviderRefreshAttempt,
        block: suspend (ExactProviderCollectorOperation<WebView, NamedProfileLease>) -> T,
    ): T {
        val binding = requireNotNull(attempt.job.binding)
        return exactOperationGate.withOperation {
            if (!withContext(Dispatchers.IO) { authority.currentBinding(binding.accountId) == binding }) {
                throw ExactProviderCollectorUnavailable("STALE_BINDING")
            }
            val nativeHeaders = withContext(Dispatchers.IO) { exactNativeHeaders(binding) }
            val lease = acquireExactLease(binding)
            try {
                block(
                    ExactProviderCollectorOperation(
                        binding = binding,
                        webView = lease.requireAndroidWebView(),
                        profileLease = lease,
                        nativeHeaders = nativeHeaders,
                    )
                )
            } finally {
                closeExactLease(lease)
            }
        }
    }

    fun reset() = scheduler.resetCycle()

    override fun close() {
        try {
            scheduler.resetCycle()
        } finally {
            try {
                profileStore.close()
            } finally {
                authority.close()
            }
        }
    }

    private fun cards(
        automatic: Boolean,
        exactTarget: ProviderAccountId?,
    ): List<ProviderRefreshCard> = authority.refreshDemandRecords().map { row ->
        val account = row.card.displayRecord.account
        val binding = AccountLoginSessionBinding(account.id, account.generation, account.sessionRevision)
        val exactAvailable = exactProfileAvailable(binding)
        val nativeHeaders = if (exactAvailable) exactNativeHeaders(binding) else emptyMap()
        val demand = when {
            automatic -> row.demand.plus(AccountDemand.SCHEDULED)
            account.id == exactTarget -> row.demand.plus(AccountDemand.MANUAL)
            else -> row.demand
        }
        val named = account.id.providerId in NAMED_PROFILE_PROVIDERS
        ProviderRefreshCard(
            account,
            row.card.displayRecord.snapshot,
            demand,
            row.card.activeRank,
            credentialBinding = if (!named || exactAvailable) binding else null,
            profileLeaseBinding = binding.takeIf { exactAvailable },
            nativeContextBinding = binding.takeIf { exactAvailable && nativeHeaders.isNotEmpty() },
        )
    }

    private fun exactProfileAvailable(binding: AccountLoginSessionBinding): Boolean =
        profileStore.read(binding.accountId)?.state == ProfileLifecycleState.ACTIVE

    private fun exactNativeHeaders(binding: AccountLoginSessionBinding): Map<String, Map<String, String>> =
        when (binding.accountId.providerId) {
            ProviderId.CODEX -> codexNativeContext.restoreExact(binding)
            ProviderId.CLAUDE -> claudeNativeContext.restoreExact(binding)
            else -> emptyMap()
        }

    private suspend fun acquireExactLease(binding: AccountLoginSessionBinding): NamedProfileLease =
        withContext(Dispatchers.Main.immediate) {
            when (val result = profiles.acquireTyped(binding.accountId)) {
                is LeaseAcquireResult.Acquired -> result.lease
                LeaseAcquireResult.ProfileUnavailable ->
                    throw ExactProviderCollectorUnavailable("PROFILE_UNAVAILABLE")
                LeaseAcquireResult.ReauthenticationRequired ->
                    throw ExactProviderCollectorUnavailable("REAUTHENTICATION_REQUIRED")
                is LeaseAcquireResult.Rejected ->
                    throw ExactProviderCollectorUnavailable("PROFILE_REJECTED:${result.capability}")
            }
        }

    private suspend fun closeExactLease(lease: NamedProfileLease) {
        withContext(NonCancellable + Dispatchers.Main.immediate) {
            closeExactLeaseWithRetry(close = lease::closeAcknowledged)
        }
    }

    private class Authority(
        private val authority: MainProcessAccountAuthority,
    ) : ProviderRefreshAttemptAuthority {
        override fun begin(card: ProviderRefreshCard, nonce: AttemptNonce): AttemptLease? =
            runCatching { authority.beginAttempt(card.accountId, card.demand, nonce) }.getOrNull()

        override fun publish(lease: AttemptLease, snapshot: ProviderUsageSnapshot) =
            authority.commitAttempt(lease, snapshot)

        override fun abandon(lease: AttemptLease, requeue: Boolean) =
            authority.abandonAttempt(lease, requeue)
    }

    private class Cursor(context: Context) : ProviderRefreshCursorStore {
        private val preferences = context.getSharedPreferences(PREFS, Context.MODE_PRIVATE)
        override fun read(): ProviderAccountId? =
            ProviderAccountIdStorageCodec.decodeOrNull(preferences.getString(KEY_CURSOR, null))

        override fun write(accountId: ProviderAccountId) {
            preferences.edit()
                .putString(KEY_CURSOR, ProviderAccountIdStorageCodec.encode(accountId))
                .commit()
        }
    }

    private class Nonces : ProviderRefreshNonceSource {
        private val random = SecureRandom()
        override fun next(): AttemptNonce {
            val bytes = ByteArray(16).also(random::nextBytes)
            val token = bytes.joinToString("") { "%02x".format(it) }
            return AttemptNonce.parseOpaque("attempt_$token")
        }
    }

    private companion object {
        const val PREFS = "ai_quota_exact_refresh_scheduler"
        const val KEY_CURSOR = "fair_cursor"
    }
}
