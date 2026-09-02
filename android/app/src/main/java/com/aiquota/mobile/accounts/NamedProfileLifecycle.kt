package com.aiquota.mobile.accounts

import java.security.SecureRandom

@JvmInline
value class WebProfileName private constructor(private val token: String) {
    override fun toString() = "WebProfileName([opaque])"

    internal fun storageValue() = token

    companion object {
        private val pattern = Regex("aiq_profile_[0-9a-f]{32}")
        private val random = SecureRandom()

        fun create(): WebProfileName {
            val b = ByteArray(16).also(random::nextBytes)
            return WebProfileName("aiq_profile_" + b.joinToString("") { "%02x".format(it) })
        }

        internal fun fromStorage(v: String): WebProfileName {
            require(pattern.matches(v))
            return WebProfileName(v)
        }
    }
}

enum class ProfileLifecycleState {
    ACTIVE,
    ERASURE_PENDING,
    DATA_ERASURE_COMPLETED_CONTAINER_RETAINED,
}

enum class ContainerDisposition {
    CONTAINER_RETAINED_EMPTY_NEVER_REUSED
}

data class ProfileErasureReceipt(
    val accountId: ProviderAccountId,
    val profileName: WebProfileName,
    val disposition: ContainerDisposition =
        ContainerDisposition.CONTAINER_RETAINED_EMPTY_NEVER_REUSED,
)

data class AccountProfileBinding(
    val accountId: ProviderAccountId,
    val profileName: WebProfileName,
    val state: ProfileLifecycleState,
    val receipt: ProfileErasureReceipt?,
) {
    init {
        require(
            (state == ProfileLifecycleState.DATA_ERASURE_COMPLETED_CONTAINER_RETAINED) ==
                (receipt != null)
        )
        receipt?.let { require(it.accountId == accountId && it.profileName == profileName) }
    }
}

class ProfileNameCollisionException : IllegalStateException()

class NamedProfileThreadViolation : IllegalStateException()

class NamedProfileReentrantMutation : IllegalStateException()

class NamedProfileEnrollmentRejected(val rejection: EnrollmentCoordinationResult.Rejected) :
    IllegalStateException()

interface NamedProfileLifecycleStore {
    val coordinationKey: Any get() = this

    fun read(accountId: ProviderAccountId): AccountProfileBinding?

    fun readAll(): List<AccountProfileBinding>

    fun create(accountId: ProviderAccountId, profileName: WebProfileName): AccountProfileBinding

    fun markPending(accountId: ProviderAccountId): AccountProfileBinding

    fun complete(accountId: ProviderAccountId): AccountProfileBinding
}

internal class InMemoryNamedProfileLifecycleStore : NamedProfileLifecycleStore {
    private val r = linkedMapOf<ProviderAccountId, AccountProfileBinding>()

    override fun read(id: ProviderAccountId) = r[id]

    override fun readAll() = r.values.toList()

    override fun create(id: ProviderAccountId, n: WebProfileName): AccountProfileBinding {
        r[id]?.let {
            return it
        }
        if (r.values.any { it.profileName == n }) throw ProfileNameCollisionException()
        return AccountProfileBinding(id, n, ProfileLifecycleState.ACTIVE, null).also { r[id] = it }
    }

    override fun markPending(id: ProviderAccountId): AccountProfileBinding {
        val x = requireNotNull(r[id])
        if (x.state != ProfileLifecycleState.ACTIVE) return x
        return x.copy(state = ProfileLifecycleState.ERASURE_PENDING).also { r[id] = it }
    }

    override fun complete(id: ProviderAccountId): AccountProfileBinding {
        val x = requireNotNull(r[id])
        if (x.state == ProfileLifecycleState.DATA_ERASURE_COMPLETED_CONTAINER_RETAINED) return x
        check(x.state == ProfileLifecycleState.ERASURE_PENDING)
        val receipt = ProfileErasureReceipt(id, x.profileName)
        return x.copy(
                state = ProfileLifecycleState.DATA_ERASURE_COMPLETED_CONTAINER_RETAINED,
                receipt = receipt,
            )
            .also { r[id] = it }
    }

    internal fun seed(x: AccountProfileBinding) {
        require(r[x.accountId] == null)
        r[x.accountId] = x
    }
}

data class WebViewProviderIdentity(val packageName: String, val versionName: String)

enum class RuntimeSupportReason {
    FEATURE_MULTI_PROFILE_MISSING,
    FEATURE_DELETE_BROWSING_DATA_MISSING,
    PROVIDER_MISSING,
    VERSION_MALFORMED,
    VERSION_BELOW_SAFE_FLOOR,
    PROBE_FAILED,
    PROVIDER_CHANGED,
}

sealed interface NamedProfileRuntimeDecision {
    val reason: RuntimeSupportReason?

    data class Supported(val identity: WebViewProviderIdentity) : NamedProfileRuntimeDecision {
        override val reason = null
    }

    data class Rejected(
        override val reason: RuntimeSupportReason,
        val identity: WebViewProviderIdentity? = null,
    ) : NamedProfileRuntimeDecision
}

object NamedProfileRuntimePolicy {
    private val floor = listOf(152, 0, 7977, 54)

    fun evaluate(packageName: String?, versionName: String?): NamedProfileRuntimeDecision {
        if (packageName == null || versionName == null)
            return NamedProfileRuntimeDecision.Rejected(RuntimeSupportReason.PROVIDER_MISSING)
        // Every WebView provider is Chromium-based and shares the same version scheme, so the
        // floor applies regardless of package (Google, Chrome channels, AOSP, OEM builds).
        val id = WebViewProviderIdentity(packageName, versionName)
        val rawParts = versionName.split('.')
        if (
            rawParts.size != 4 ||
                rawParts.any { it.isEmpty() || it.length > 10 || !it.all(Char::isDigit) }
        ) {
            return NamedProfileRuntimeDecision.Rejected(RuntimeSupportReason.VERSION_MALFORMED, id)
        }
        val parts = rawParts.map {
            it.toIntOrNull()?.takeIf { component -> component >= 0 }
                ?: return NamedProfileRuntimeDecision.Rejected(
                    RuntimeSupportReason.VERSION_MALFORMED,
                    id,
                )
        }
        for (index in floor.indices) {
            val comparison = parts[index].compareTo(floor[index])
            if (comparison > 0) return NamedProfileRuntimeDecision.Supported(id)
            if (comparison < 0) {
                return NamedProfileRuntimeDecision.Rejected(
                    RuntimeSupportReason.VERSION_BELOW_SAFE_FLOOR,
                    id,
                )
            }
        }
        return NamedProfileRuntimeDecision.Supported(id)
    }
}

sealed interface NamedProfileCapability {
    data class Supported(val identity: WebViewProviderIdentity) : NamedProfileCapability

    data class Rejected(
        val reason: RuntimeSupportReason,
        val identity: WebViewProviderIdentity? = null,
    ) : NamedProfileCapability
}

enum class EnrollmentFailureReason {
    UNSUPPORTED,
    PROVIDER_CHANGED,
    PROBE_FAILED,
}

sealed interface EnrollmentCoordinationResult<out T> {
    data class Allowed<T>(val value: T, val identity: WebViewProviderIdentity?) :
        EnrollmentCoordinationResult<T>

    data class Rejected(
        val reason: EnrollmentFailureReason,
        val capability: NamedProfileCapability,
    ) : EnrollmentCoordinationResult<Nothing>
}

class NamedProfileEnrollmentCoordinator(
    private val requireUi: () -> Unit,
    private val probe: () -> NamedProfileCapability,
) {
    fun <T> enroll(existing: Int, mutation: () -> T): EnrollmentCoordinationResult<T> {
        requireUi()
        require(existing >= 0)
        if (existing == 0) return EnrollmentCoordinationResult.Allowed(mutation(), null)
        val a = safe()
        if (a !is NamedProfileCapability.Supported) return reject(a)
        val b = safe()
        if (b !is NamedProfileCapability.Supported) return reject(b)
        if (a.identity != b.identity)
            return EnrollmentCoordinationResult.Rejected(
                EnrollmentFailureReason.PROVIDER_CHANGED,
                NamedProfileCapability.Rejected(RuntimeSupportReason.PROVIDER_CHANGED, b.identity),
            )
        return EnrollmentCoordinationResult.Allowed(mutation(), b.identity)
    }

    private fun safe() =
        try {
            probe()
        } catch (_: Throwable) {
            NamedProfileCapability.Rejected(RuntimeSupportReason.PROBE_FAILED)
        }

    private fun reject(v: NamedProfileCapability) =
        EnrollmentCoordinationResult.Rejected(
            if ((v as NamedProfileCapability.Rejected).reason == RuntimeSupportReason.PROBE_FAILED)
                EnrollmentFailureReason.PROBE_FAILED
            else EnrollmentFailureReason.UNSUPPORTED,
            v,
        )
}

sealed interface SessionQuiesceResult {
    data object CommittedCrossOriginPlatformAsync : SessionQuiesceResult

    data class Failed(val reason: String) : SessionQuiesceResult
}

fun interface ExactProfileCookieSource {
    fun cookieHeader(url: String, origin: String): String?
}

interface NamedProfileSessionResource {
    val webView: Any
    val cookieManager: Any
    val cookieSource: ExactProfileCookieSource
    val webStorage: Any
    val serviceWorkerController: Any

    fun markPersistenceReady() = Unit

    fun quiesce(callback: (SessionQuiesceResult) -> Unit)

    fun cancelQuiesce() = Unit

    fun destroy()
}

sealed interface ProfileDataErasureResult {
    data object Completed : ProfileDataErasureResult

    data class Failed(val reason: String) : ProfileDataErasureResult
}

interface NamedProfilePlatform {
    fun probeCapability(): NamedProfileCapability

    fun requireUiThread()

    /** Returns null rather than creating when an authority-bound Profile is physically missing. */
    fun createBoundSession(
        name: WebProfileName,
        createIfMissing: Boolean = true,
    ): NamedProfileSessionResource?

    fun eraseProfileData(name: WebProfileName, callback: (ProfileDataErasureResult) -> Unit)
}

enum class ErasureRequestResult {
    ERASURE_PENDING,
    ALREADY_TERMINAL,
}

sealed interface LeaseAcquireResult {
    data class Acquired(val lease: NamedProfileLease) : LeaseAcquireResult

    data class Rejected(val capability: NamedProfileCapability) : LeaseAcquireResult

    data object ProfileUnavailable : LeaseAcquireResult

    data object ReauthenticationRequired : LeaseAcquireResult
}

enum class LeaseState {
    OPEN,
    CLOSING,
    CLOSED,
}

sealed interface LeaseCloseResult {
    data object Closed : LeaseCloseResult

    data class RetryableFailure(val reason: String) : LeaseCloseResult

    data object AlreadyClosing : LeaseCloseResult

    data object AlreadyClosed : LeaseCloseResult
}

class NamedProfileLease
internal constructor(
    val accountId: ProviderAccountId,
    val profileName: WebProfileName,
    internal val resource: NamedProfileSessionResource,
    private val release: (NamedProfileLease, (LeaseCloseResult) -> Unit) -> Unit,
    private val abort: (NamedProfileLease, (LeaseCloseResult) -> Unit) -> Unit,
) : AutoCloseable {
    private var state = LeaseState.OPEN
    private var closeAttempt = 0L
    val webView
        get() = resource.webView

    val cookieManager
        get() = resource.cookieManager

    val cookieSource
        get() = resource.cookieSource

    val webStorage
        get() = resource.webStorage

    val serviceWorkerController
        get() = resource.serviceWorkerController

    fun markPersistenceReady() = resource.markPersistenceReady()

    internal data class CloseStart(val attempt: Long?, val result: LeaseCloseResult?)

    internal fun beginClose(): CloseStart =
        when (state) {
            LeaseState.OPEN -> {
                state = LeaseState.CLOSING
                CloseStart(++closeAttempt, null)
            }
            LeaseState.CLOSING -> CloseStart(null, LeaseCloseResult.AlreadyClosing)
            LeaseState.CLOSED -> CloseStart(null, LeaseCloseResult.AlreadyClosed)
        }

    internal fun beginAbort(): CloseStart =
        when (state) {
            LeaseState.OPEN, LeaseState.CLOSING -> {
                state = LeaseState.CLOSING
                CloseStart(++closeAttempt, null)
            }
            LeaseState.CLOSED -> CloseStart(null, LeaseCloseResult.AlreadyClosed)
        }

    internal fun ownsCloseAttempt(attempt: Long): Boolean =
        state == LeaseState.CLOSING && closeAttempt == attempt

    internal fun reopen(attempt: Long): Boolean {
        if (!ownsCloseAttempt(attempt)) return false
        state = LeaseState.OPEN
        return true
    }

    internal fun markClosed(attempt: Long): Boolean {
        if (!ownsCloseAttempt(attempt)) return false
        state = LeaseState.CLOSED
        return true
    }

    internal fun stateForTest(): LeaseState = state

    fun closeAcknowledged(callback: (LeaseCloseResult) -> Unit) = release(this, callback)

    fun abortAcknowledged(callback: (LeaseCloseResult) -> Unit) = abort(this, callback)

    override fun close() = closeAcknowledged {}
}

class NamedProfileLifecycleManager(
    private val store: NamedProfileLifecycleStore,
    private val platform: NamedProfilePlatform,
    private val names: () -> WebProfileName = WebProfileName::create,
    private val afterEraseCallbackBeforeReceipt: (ProviderAccountId) -> Unit = {},
) {
    private val processState = ProcessNamedProfileLifecycleStates.forKey(store.coordinationKey)
    private val leases get() = processState.leases
    private val erasing get() = processState.erasing
    private val pendingCallbacks get() = processState.pendingCallbacks
    private var mutating = false

    fun ensureBinding(id: ProviderAccountId): AccountProfileBinding = mutate {
        store.read(id)?.let {
            return@mutate it
        }
        val result =
            NamedProfileEnrollmentCoordinator(platform::requireUiThread, platform::probeCapability)
                .enroll(store.readAll().size) {
                    repeat(128) {
                        try {
                            return@enroll store.create(id, names())
                        } catch (_: ProfileNameCollisionException) {}
                    }
                    error("profile name exhausted")
                }
        when (result) {
            is EnrollmentCoordinationResult.Allowed -> result.value
            is EnrollmentCoordinationResult.Rejected -> throw NamedProfileEnrollmentRejected(result)
        }
    }

    fun binding(id: ProviderAccountId) = read { store.read(id) }

    fun acquireTyped(id: ProviderAccountId): LeaseAcquireResult = acquire(id, createIfMissing = false)

    /** Explicit first Connect creates; reconnect opens only the exact existing physical Profile. */
    fun acquireForExplicitConnect(id: ProviderAccountId): LeaseAcquireResult {
        val existed = binding(id) != null
        if (!existed) ensureBinding(id)
        return acquire(id, createIfMissing = !existed)
    }

    private fun acquire(id: ProviderAccountId, createIfMissing: Boolean): LeaseAcquireResult = mutate {
        val c = platform.probeCapability()
        if (c !is NamedProfileCapability.Supported) return@mutate LeaseAcquireResult.Rejected(c)
        val row =
            store.read(id)?.takeIf { it.state == ProfileLifecycleState.ACTIVE }
                ?: return@mutate LeaseAcquireResult.ProfileUnavailable
        val resource = platform.createBoundSession(row.profileName, createIfMissing)
            ?: return@mutate LeaseAcquireResult.ProfileUnavailable
        lateinit var lease: NamedProfileLease
        lease = NamedProfileLease(id, row.profileName, resource, ::release, ::abortRelease)
        leases.getOrPut(id, ::linkedSetOf).add(lease)
        LeaseAcquireResult.Acquired(lease)
    }

    fun acquireExact(
        id: ProviderAccountId,
        requireReauthentication: (ProviderAccountId) -> Unit,
    ): LeaseAcquireResult {
        val result = acquireTyped(id)
        if (result != LeaseAcquireResult.ProfileUnavailable) return result
        requireReauthentication(id)
        return LeaseAcquireResult.ReauthenticationRequired
    }

    fun acquire(id: ProviderAccountId) =
        (acquire(id, createIfMissing = true) as? LeaseAcquireResult.Acquired)?.lease
            ?: error("profile unavailable")

    fun clearSessionData(
        id: ProviderAccountId,
        onResult: (ProfileDataErasureResult) -> Unit,
    ): Boolean = mutate {
        val row = store.read(id)
        if (row == null) {
            onResult(ProfileDataErasureResult.Completed)
            return@mutate true
        }
        if (row.state != ProfileLifecycleState.ACTIVE || !leases[id].isNullOrEmpty()) {
            return@mutate false
        }
        if (!erasing.add(id)) return@mutate false
        platform.eraseProfileData(row.profileName) { result ->
            platform.requireUiThread()
            erasing.remove(id)
            if (store.read(id)?.state == ProfileLifecycleState.ERASURE_PENDING) {
                if (result == ProfileDataErasureResult.Completed) {
                    afterEraseCallbackBeforeReceipt(id)
                    store.complete(id)
                    pendingCallbacks.remove(id).orEmpty().forEach { it(result) }
                } else {
                    startErase(id)
                }
            }
            onResult(result)
        }
        true
    }

    fun requestErasure(
        id: ProviderAccountId,
        onResult: (ProfileDataErasureResult) -> Unit = {},
    ): ErasureRequestResult = mutate {
        val x = requireNotNull(store.read(id))
        if (x.state == ProfileLifecycleState.DATA_ERASURE_COMPLETED_CONTAINER_RETAINED)
            return@mutate ErasureRequestResult.ALREADY_TERMINAL
        pendingCallbacks.getOrPut(id, ::mutableListOf).add(onResult)
        store.markPending(id)
        if (leases[id].isNullOrEmpty()) startErase(id)
        ErasureRequestResult.ERASURE_PENDING
    }

    fun resumePendingErasures(
        onResult: (ProviderAccountId, ProfileDataErasureResult) -> Unit
    ): Int = mutate {
        val p = store.readAll().filter { it.state == ProfileLifecycleState.ERASURE_PENDING }
        p.forEach { x ->
            pendingCallbacks.getOrPut(x.accountId, ::mutableListOf).add { r ->
                onResult(x.accountId, r)
            }
            if (leases[x.accountId].isNullOrEmpty()) startErase(x.accountId)
        }
        p.size
    }

    fun liveLeaseCount(id: ProviderAccountId) = read { leases[id]?.size ?: 0 }

    private fun release(l: NamedProfileLease, callback: (LeaseCloseResult) -> Unit) = mutate {
        val start = l.beginClose()
        start.result?.let {
            callback(it)
            return@mutate
        }
        val attempt = requireNotNull(start.attempt)
        l.resource.quiesce { result ->
            platform.requireUiThread()
            if (!l.ownsCloseAttempt(attempt)) {
                callback(
                    if (l.stateForTest() == LeaseState.CLOSED) LeaseCloseResult.AlreadyClosed
                    else LeaseCloseResult.RetryableFailure("CLOSE_SUPERSEDED")
                )
                return@quiesce
            }
            if (result is SessionQuiesceResult.Failed) {
                l.reopen(attempt)
                callback(LeaseCloseResult.RetryableFailure(result.reason))
                return@quiesce
            }
            val destroyFailure = runCatching { l.resource.destroy() }.exceptionOrNull()
            if (destroyFailure != null) {
                l.reopen(attempt)
                callback(LeaseCloseResult.RetryableFailure("DESTROY_FAILED:${destroyFailure.javaClass.simpleName}"))
                return@quiesce
            }
            val active = leases[l.accountId]
            active?.remove(l)
            if (active?.isEmpty() == true) leases.remove(l.accountId)
            l.markClosed(attempt)
            if (
                store.read(l.accountId)?.state == ProfileLifecycleState.ERASURE_PENDING &&
                    leases[l.accountId].isNullOrEmpty()
            ) {
                startErase(l.accountId)
            }
            callback(LeaseCloseResult.Closed)
        }
    }

    private fun abortRelease(l: NamedProfileLease, callback: (LeaseCloseResult) -> Unit) = mutate {
        val start = l.beginAbort()
        start.result?.let {
            callback(it)
            return@mutate
        }
        val attempt = requireNotNull(start.attempt)
        val cancelFailure = runCatching { l.resource.cancelQuiesce() }.exceptionOrNull()
        if (cancelFailure != null) {
            l.reopen(attempt)
            callback(LeaseCloseResult.RetryableFailure("QUIESCE_CANCEL_FAILED:${cancelFailure.javaClass.simpleName}"))
            return@mutate
        }
        val destroyFailure = runCatching { l.resource.destroy() }.exceptionOrNull()
        if (destroyFailure != null) {
            l.reopen(attempt)
            callback(LeaseCloseResult.RetryableFailure("DESTROY_FAILED:${destroyFailure.javaClass.simpleName}"))
            return@mutate
        }
        val active = leases[l.accountId]
        active?.remove(l)
        if (active?.isEmpty() == true) leases.remove(l.accountId)
        l.markClosed(attempt)
        if (
            store.read(l.accountId)?.state == ProfileLifecycleState.ERASURE_PENDING &&
                leases[l.accountId].isNullOrEmpty()
        ) {
            startErase(l.accountId)
        }
        callback(LeaseCloseResult.Closed)
    }

    fun shutdown(callback: (List<LeaseCloseResult>) -> Unit) {
        platform.requireUiThread()
        check(!mutating)
        val open = leases.values.flatten().toList()
        if (open.isEmpty()) {
            callback(emptyList())
            return
        }
        val results = MutableList<LeaseCloseResult?>(open.size) { null }
        open.forEachIndexed { index, lease ->
            lease.closeAcknowledged { result ->
                results[index] = result
                if (results.all { it != null }) callback(results.filterNotNull())
            }
        }
    }

    private fun startErase(id: ProviderAccountId) {
        if (!leases[id].isNullOrEmpty() || !erasing.add(id)) return
        val c = platform.probeCapability()
        if (c !is NamedProfileCapability.Supported) {
            erasing.remove(id)
            val callbacks = pendingCallbacks.remove(id).orEmpty()
            callbacks.forEach { it(ProfileDataErasureResult.Failed("UNSUPPORTED")) }
            return
        }
        val row = requireNotNull(store.read(id))
        platform.eraseProfileData(row.profileName) { r ->
            platform.requireUiThread()
            erasing.remove(id)
            if (r == ProfileDataErasureResult.Completed) {
                afterEraseCallbackBeforeReceipt(id)
                store.complete(id)
            }
            val callbacks = pendingCallbacks.remove(id).orEmpty()
            callbacks.forEach { it(r) }
        }
    }

    private inline fun <T> mutate(b: () -> T): T {
        platform.requireUiThread()
        if (mutating) throw NamedProfileReentrantMutation()
        mutating = true
        return try {
            b()
        } finally {
            mutating = false
        }
    }

    private inline fun <T> read(b: () -> T): T {
        platform.requireUiThread()
        check(!mutating)
        return b()
    }
}

private class ProcessNamedProfileLifecycleState {
    val leases = linkedMapOf<ProviderAccountId, MutableSet<NamedProfileLease>>()
    val erasing = mutableSetOf<ProviderAccountId>()
    val pendingCallbacks =
        linkedMapOf<ProviderAccountId, MutableList<(ProfileDataErasureResult) -> Unit>>()
}

private object ProcessNamedProfileLifecycleStates {
    private val states = mutableMapOf<Any, ProcessNamedProfileLifecycleState>()

    fun forKey(key: Any): ProcessNamedProfileLifecycleState =
        states.getOrPut(key, ::ProcessNamedProfileLifecycleState)
}
