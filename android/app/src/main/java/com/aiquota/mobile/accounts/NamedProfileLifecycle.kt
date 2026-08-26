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

interface NamedProfileLifecycleStore {
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
    PROVIDER_UNVERIFIED,
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
        val id = WebViewProviderIdentity(packageName, versionName)
        if (packageName != "com.google.android.webview")
            return NamedProfileRuntimeDecision.Rejected(
                RuntimeSupportReason.PROVIDER_UNVERIFIED,
                id,
            )
        val parts =
            versionName.split('.').map {
                it.toIntOrNull()
                    ?: return NamedProfileRuntimeDecision.Rejected(
                        RuntimeSupportReason.VERSION_MALFORMED,
                        id,
                    )
            }
        if (parts.size != 4)
            return NamedProfileRuntimeDecision.Rejected(RuntimeSupportReason.VERSION_MALFORMED, id)
        val cmp = (0..3).firstNotNullOfOrNull { i -> (parts[i] - floor[i]).takeIf { it != 0 } } ?: 0
        return if (cmp >= 0) NamedProfileRuntimeDecision.Supported(id)
        else NamedProfileRuntimeDecision.Rejected(RuntimeSupportReason.VERSION_BELOW_SAFE_FLOOR, id)
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

interface NamedProfileSessionResource {
    val webView: Any
    val cookieManager: Any
    val webStorage: Any
    val serviceWorkerController: Any

    fun quiesce(callback: (SessionQuiesceResult) -> Unit)

    fun destroy()
}

sealed interface ProfileDataErasureResult {
    data object Completed : ProfileDataErasureResult

    data class Failed(val reason: String) : ProfileDataErasureResult
}

interface NamedProfilePlatform {
    fun probeCapability(): NamedProfileCapability

    fun requireUiThread()

    fun createBoundSession(name: WebProfileName): NamedProfileSessionResource

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
}

class NamedProfileLease
internal constructor(
    val accountId: ProviderAccountId,
    val profileName: WebProfileName,
    internal val resource: NamedProfileSessionResource,
    private val release: (NamedProfileLease) -> Unit,
) : AutoCloseable {
    private var closed = false
    val webView
        get() = resource.webView

    val cookieManager
        get() = resource.cookieManager

    val webStorage
        get() = resource.webStorage

    val serviceWorkerController
        get() = resource.serviceWorkerController

    internal fun validateAndClose(): Boolean {
        if (closed) return false
        closed = true
        return true
    }

    override fun close() = release(this)
}

class NamedProfileLifecycleManager(
    private val store: NamedProfileLifecycleStore,
    private val platform: NamedProfilePlatform,
    private val names: () -> WebProfileName = WebProfileName::create,
) {
    private val leases = linkedMapOf<ProviderAccountId, MutableSet<NamedProfileLease>>()
    private val erasing = mutableSetOf<ProviderAccountId>()
    private val pendingCallbacks =
        linkedMapOf<ProviderAccountId, MutableList<(ProfileDataErasureResult) -> Unit>>()
    private var mutating = false

    fun ensureBinding(id: ProviderAccountId): AccountProfileBinding = mutate {
        store.read(id)?.let {
            return@mutate it
        }
        if (store.readAll().isNotEmpty())
            check(platform.probeCapability() is NamedProfileCapability.Supported) {
                "Named profile runtime unsupported"
            }
        repeat(128) {
            try {
                return@mutate store.create(id, names())
            } catch (_: ProfileNameCollisionException) {}
        }
        error("profile name exhausted")
    }

    fun binding(id: ProviderAccountId) = read { store.read(id) }

    fun acquireTyped(id: ProviderAccountId): LeaseAcquireResult = mutate {
        val c = platform.probeCapability()
        if (c !is NamedProfileCapability.Supported) return@mutate LeaseAcquireResult.Rejected(c)
        val row =
            store.read(id)?.takeIf { it.state == ProfileLifecycleState.ACTIVE }
                ?: return@mutate LeaseAcquireResult.ProfileUnavailable
        val resource = platform.createBoundSession(row.profileName)
        lateinit var lease: NamedProfileLease
        lease = NamedProfileLease(id, row.profileName, resource, ::release)
        leases.getOrPut(id, ::linkedSetOf).add(lease)
        LeaseAcquireResult.Acquired(lease)
    }

    fun acquire(id: ProviderAccountId) =
        (acquireTyped(id) as? LeaseAcquireResult.Acquired)?.lease ?: error("profile unavailable")

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
        p.forEach { x -> startErase(x.accountId) { r -> onResult(x.accountId, r) } }
        p.size
    }

    fun liveLeaseCount(id: ProviderAccountId) = read { leases[id]?.size ?: 0 }

    private fun release(l: NamedProfileLease) = mutate {
        if (!l.validateAndClose()) return@mutate
        l.resource.quiesce { q ->
            platform.requireUiThread()
            if (q !is SessionQuiesceResult.CommittedCrossOriginPlatformAsync) return@quiesce
            l.resource.destroy()
            val active = leases[l.accountId]
            active?.remove(l)
            if (active?.isEmpty() == true) leases.remove(l.accountId)
            if (
                store.read(l.accountId)?.state == ProfileLifecycleState.ERASURE_PENDING &&
                    leases[l.accountId].isNullOrEmpty()
            )
                startErase(l.accountId)
        }
    }

    private fun startErase(id: ProviderAccountId, done: (ProfileDataErasureResult) -> Unit = {}) {
        if (!erasing.add(id)) return
        val c = platform.probeCapability()
        if (c !is NamedProfileCapability.Supported) {
            erasing.remove(id)
            done(ProfileDataErasureResult.Failed("UNSUPPORTED"))
            return
        }
        val row = requireNotNull(store.read(id))
        platform.eraseProfileData(row.profileName) { r ->
            platform.requireUiThread()
            erasing.remove(id)
            if (r == ProfileDataErasureResult.Completed) store.complete(id)
            val callbacks = pendingCallbacks.remove(id).orEmpty()
            callbacks.forEach { it(r) }
            done(r)
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
