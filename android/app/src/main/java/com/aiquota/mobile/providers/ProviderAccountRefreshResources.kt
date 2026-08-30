package com.aiquota.mobile.providers

import com.aiquota.mobile.accounts.AccountKey
import com.aiquota.mobile.accounts.AccountLoginSessionBinding
import com.aiquota.mobile.accounts.LeaseCloseResult
import com.aiquota.mobile.accounts.ProviderAccountId
import com.aiquota.mobile.accounts.ProviderAccountIdStorageCodec
import com.aiquota.mobile.local.ProviderId
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.CancellationException
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.Job
import kotlinx.coroutines.SupervisorJob
import kotlinx.coroutines.cancelAndJoin
import kotlinx.coroutines.launch
import kotlinx.coroutines.sync.Mutex
import kotlinx.coroutines.suspendCancellableCoroutine
import kotlin.coroutines.resume

data class ExactProviderCollectorResources<W : Any, L : Any>(
    val binding: AccountLoginSessionBinding,
    val retainedWebView: W,
    val profileLease: L,
    val nativeHeaders: Map<String, Map<String, String>>,
)

internal data class ExactProviderCollectorOperation<W : Any, L : Any>(
    val binding: AccountLoginSessionBinding,
    val webView: W,
    val profileLease: L,
    val nativeHeaders: Map<String, Map<String, String>>,
)

internal class ExactProviderCollectorOperationGate {
    private val mutex = Mutex()

    suspend fun <T> withOperation(block: suspend () -> T): T {
        mutex.lock()
        return try {
            block()
        } finally {
            mutex.unlock()
        }
    }
}

internal data class ExactManualRefreshRequest(
    val accountId: ProviderAccountId,
    val widgetId: Int,
)

internal class ExactManualRefreshQueue {
    private val requests = ArrayDeque<ExactManualRefreshRequest>()

    fun enqueue(accountId: ProviderAccountId, widgetId: Int) {
        requests.addLast(ExactManualRefreshRequest(accountId, widgetId))
    }

    fun poll(): ExactManualRefreshRequest? = requests.removeFirstOrNull()

    fun clear() = requests.clear()

    fun isNotEmpty(): Boolean = requests.isNotEmpty()
}

internal class ExactProviderCollectorUnavailable(reason: String) : IllegalStateException(reason)

internal fun exactHiddenCollectionNeedsNamedProfile(providerId: ProviderId): Boolean =
    providerId in NAMED_PROFILE_PROVIDERS

internal suspend fun closeAfterRefreshCycle(activeCycle: Job?, close: () -> Unit) {
    activeCycle?.cancelAndJoin()
    close()
}

internal suspend fun closeExactLeaseWithRetry(
    maxAttempts: Int = 3,
    close: ((LeaseCloseResult) -> Unit) -> Unit,
) {
    require(maxAttempts > 0)
    repeat(maxAttempts) { attempt ->
        val result = suspendCancellableCoroutine<LeaseCloseResult> { continuation ->
            close(continuation::resume)
        }
        when (result) {
            LeaseCloseResult.Closed,
            LeaseCloseResult.AlreadyClosed -> return
            LeaseCloseResult.AlreadyClosing ->
                throw ExactProviderCollectorUnavailable("PROFILE_ALREADY_CLOSING")
            is LeaseCloseResult.RetryableFailure -> if (attempt == maxAttempts - 1) {
                throw ExactProviderCollectorUnavailable("PROFILE_CLOSE_FAILED:${result.reason}")
            }
        }
    }
}

internal suspend fun runRefreshCycleResiliently(
    runCycle: suspend () -> Unit,
    isRunning: () -> Boolean,
    hasPendingManualRefresh: () -> Boolean,
    automaticDelayMillis: () -> Long,
    schedule: (Long) -> Unit,
    onFailure: (Throwable) -> Unit,
) {
    try {
        runCycle()
    } catch (cancelled: CancellationException) {
        throw cancelled
    } catch (error: Throwable) {
        onFailure(error)
    } finally {
        if (isRunning()) {
            val delayMillis = if (hasPendingManualRefresh()) 0L else automaticDelayMillis()
            schedule(delayMillis)
        }
    }
}

internal fun persistReauthenticationThenCancel(
    persist: () -> Unit,
    cancel: () -> ProviderRefreshAttempt?,
    abort: () -> Unit,
): ProviderRefreshAttempt? {
    try {
        persist()
    } catch (failure: Throwable) {
        runCatching(abort).exceptionOrNull()?.let(failure::addSuppressed)
        throw failure
    }
    return cancel()
}

class ExactProviderCollectorResourceStore<W : Any, L : Any> {
    private val resources = mutableMapOf<ProviderAccountId, ExactProviderCollectorResources<W, L>>()

    fun retain(value: ExactProviderCollectorResources<W, L>) {
        resources[value.binding.accountId] = value
    }

    fun read(binding: AccountLoginSessionBinding): ExactProviderCollectorResources<W, L>? =
        resources[binding.accountId]?.takeIf { it.binding == binding }

    fun clear(accountId: ProviderAccountId): ExactProviderCollectorResources<W, L>? =
        resources.remove(accountId)

    fun clear(binding: AccountLoginSessionBinding): ExactProviderCollectorResources<W, L>? {
        val current = resources[binding.accountId] ?: return null
        if (current.binding != binding) return null
        return resources.remove(binding.accountId)
    }

    fun size(): Int = resources.size
}

enum class ExactProviderCollectorCleanupEntrypoint {
    DELETION,
    PROFILE_LOSS,
    LOGOUT,
    DISCONNECT,
    SESSION_RESET,
    MANUAL_CANCEL,
    REAUTHENTICATION,
    ACTIVITY_REPLACEMENT,
    TIMEOUT;

    companion object {
        val externalEntries = entries.filterNot { it == TIMEOUT }
    }
}

internal class ExactProviderCollectorResourceRegistry<R : Any>(
    private val bindingOf: (R) -> AccountLoginSessionBinding,
    private val close: (R) -> Unit,
) {
    private val resources = mutableMapOf<ProviderAccountId, R>()
    private val retirementScope = CoroutineScope(SupervisorJob() + Dispatchers.Default)

    fun retain(value: R) {
        val binding = bindingOf(value)
        val previous = synchronized(this) { resources.put(binding.accountId, value) }
        if (previous != null) {
            val previousBinding = bindingOf(previous)
            retirementScope.launch {
                ProviderWebSessionMaintenanceGate.withMaintenanceLock(previousBinding) {
                    close(previous)
                }
            }
        }
    }

    fun read(binding: AccountLoginSessionBinding): R? = synchronized(this) {
        resources[binding.accountId]?.takeIf { bindingOf(it) == binding }
    }

    fun currentBinding(accountId: ProviderAccountId): AccountLoginSessionBinding? = synchronized(this) {
        resources[accountId]?.let(bindingOf)
    }

    fun update(binding: AccountLoginSessionBinding, transform: (R) -> R): Boolean = synchronized(this) {
        val current = resources[binding.accountId] ?: return false
        if (bindingOf(current) != binding) return false
        resources[binding.accountId] = transform(current)
        true
    }

    suspend fun clear(binding: AccountLoginSessionBinding): Boolean =
        ProviderWebSessionMaintenanceGate.withMaintenanceLock(binding) {
            clearInsideMaintenance(binding)
        }

    fun clearInsideMaintenance(binding: AccountLoginSessionBinding): Boolean {
        val removed = synchronized(this) {
            val current = resources[binding.accountId] ?: return false
            if (bindingOf(current) != binding) return false
            resources.remove(binding.accountId)
        }
        close(requireNotNull(removed))
        return true
    }

    fun size(): Int = synchronized(this) { resources.size }
}

internal class ExactProviderCollectorCleanupEntrypoints<R : Any>(
    private val registry: ExactProviderCollectorResourceRegistry<R>,
) {
    suspend fun clear(
        entrypoint: ExactProviderCollectorCleanupEntrypoint,
        binding: AccountLoginSessionBinding,
    ): Boolean = withCleanup(entrypoint, binding) { it }

    suspend fun <T> withCleanup(
        entrypoint: ExactProviderCollectorCleanupEntrypoint,
        binding: AccountLoginSessionBinding,
        afterClear: (Boolean) -> T,
    ): T {
        check(entrypoint != ExactProviderCollectorCleanupEntrypoint.TIMEOUT)
        return ProviderWebSessionMaintenanceGate.withMaintenanceLock(binding) {
            afterClear(registry.clearInsideMaintenance(binding))
        }
    }

    suspend fun <T> deletion(binding: AccountLoginSessionBinding, afterClear: (Boolean) -> T): T =
        withCleanup(ExactProviderCollectorCleanupEntrypoint.DELETION, binding, afterClear)

    suspend fun <T> profileLoss(binding: AccountLoginSessionBinding, afterClear: (Boolean) -> T): T =
        withCleanup(ExactProviderCollectorCleanupEntrypoint.PROFILE_LOSS, binding, afterClear)

    suspend fun <T> logout(binding: AccountLoginSessionBinding, afterClear: (Boolean) -> T): T =
        withCleanup(ExactProviderCollectorCleanupEntrypoint.LOGOUT, binding, afterClear)

    suspend fun <T> disconnect(binding: AccountLoginSessionBinding, afterClear: (Boolean) -> T): T =
        withCleanup(ExactProviderCollectorCleanupEntrypoint.DISCONNECT, binding, afterClear)

    suspend fun <T> sessionReset(binding: AccountLoginSessionBinding, afterClear: (Boolean) -> T): T =
        withCleanup(ExactProviderCollectorCleanupEntrypoint.SESSION_RESET, binding, afterClear)

    suspend fun <T> manualCancel(binding: AccountLoginSessionBinding, afterClear: (Boolean) -> T): T =
        withCleanup(ExactProviderCollectorCleanupEntrypoint.MANUAL_CANCEL, binding, afterClear)

    suspend fun <T> reauthentication(binding: AccountLoginSessionBinding, afterClear: (Boolean) -> T): T =
        withCleanup(ExactProviderCollectorCleanupEntrypoint.REAUTHENTICATION, binding, afterClear)

    suspend fun <T> activityReplacement(binding: AccountLoginSessionBinding, afterClear: (Boolean) -> T): T =
        withCleanup(ExactProviderCollectorCleanupEntrypoint.ACTIVITY_REPLACEMENT, binding, afterClear)

    fun timeoutInsideMaintenance(binding: AccountLoginSessionBinding): Boolean =
        registry.clearInsideMaintenance(binding)

    fun clearInsideMaintenance(
        entrypoint: ExactProviderCollectorCleanupEntrypoint,
        binding: AccountLoginSessionBinding,
    ): Boolean {
        check(entrypoint == ExactProviderCollectorCleanupEntrypoint.TIMEOUT)
        return timeoutInsideMaintenance(binding)
    }
}

enum class ProviderRefreshIntentRejection {
    MALFORMED_ACCOUNT_ID,
    PROVIDER_MISMATCH,
}

sealed interface ProviderRefreshIntentResolution {
    data class Exact(val accountId: ProviderAccountId) : ProviderRefreshIntentResolution
    data class Rejected(val reason: ProviderRefreshIntentRejection) : ProviderRefreshIntentResolution
}

object ProviderRefreshIntentBoundary {
    fun resolve(
        rawProviderId: String?,
        rawAccountId: String?,
        multiAccountEnabled: Boolean,
    ): ProviderRefreshIntentResolution {
        val provider = ProviderId.fromStorageId(rawProviderId)
            ?: return ProviderRefreshIntentResolution.Rejected(
                ProviderRefreshIntentRejection.MALFORMED_ACCOUNT_ID
            )
        if (!multiAccountEnabled) {
            return ProviderRefreshIntentResolution.Exact(
                ProviderAccountId(provider, AccountKey.reservedDefault())
            )
        }
        val accountId = ProviderAccountIdStorageCodec.decodeOrNull(rawAccountId)
            ?: return ProviderRefreshIntentResolution.Rejected(
                ProviderRefreshIntentRejection.MALFORMED_ACCOUNT_ID
            )
        if (accountId.providerId != provider) {
            return ProviderRefreshIntentResolution.Rejected(
                ProviderRefreshIntentRejection.PROVIDER_MISMATCH
            )
        }
        return ProviderRefreshIntentResolution.Exact(accountId)
    }
}
