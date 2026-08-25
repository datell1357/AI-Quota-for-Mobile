package com.aiquota.mobile.accounts

import java.security.SecureRandom
import java.util.concurrent.atomic.AtomicBoolean

@JvmInline
value class WebProfileName private constructor(private val token: String) {
    override fun toString(): String = "WebProfileName([opaque])"

    internal fun storageValue(): String = token

    companion object {
        private val pattern = Regex("aiq_profile_[0-9a-f]{32}")
        private val random = SecureRandom()

        fun create(): WebProfileName {
            val bytes = ByteArray(16).also(random::nextBytes)
            return WebProfileName("aiq_profile_" + bytes.joinToString("") { "%02x".format(it) })
        }

        internal fun fromStorage(value: String): WebProfileName {
            require(pattern.matches(value)) { "Malformed opaque WebView profile name" }
            return WebProfileName(value)
        }
    }
}

enum class ProfileLifecycleState {
    ACTIVE,
    ERASURE_PENDING_COLD_START,
    DELETION_ACCEPTED,
    ALREADY_ABSENT,
}

enum class ProfileDeletionDisposition {
    DELETION_ACCEPTED,
    ALREADY_ABSENT,
}

enum class PhysicalCompletion {
    UNOBSERVABLE_PLATFORM_ASYNC,
}

data class ProfileDeletionReceipt(
    val accountId: ProviderAccountId,
    val profileName: WebProfileName,
    val disposition: ProfileDeletionDisposition,
    val physicalCompletion: PhysicalCompletion = PhysicalCompletion.UNOBSERVABLE_PLATFORM_ASYNC,
)

sealed interface ColdStartDeletionResult {
    val accountId: ProviderAccountId
    val profileName: WebProfileName

    data class Completed(val receipt: ProfileDeletionReceipt) : ColdStartDeletionResult {
        override val accountId: ProviderAccountId get() = receipt.accountId
        override val profileName: WebProfileName get() = receipt.profileName
    }

    data class RetryableFailure(
        override val accountId: ProviderAccountId,
        override val profileName: WebProfileName,
    ) : ColdStartDeletionResult
}

data class AccountProfileBinding(
    val accountId: ProviderAccountId,
    val profileName: WebProfileName,
    val state: ProfileLifecycleState,
    val receipt: ProfileDeletionReceipt?,
) {
    init {
        val terminal = state == ProfileLifecycleState.DELETION_ACCEPTED || state == ProfileLifecycleState.ALREADY_ABSENT
        require(terminal == (receipt != null)) { "Only terminal deletion states have receipts" }
        receipt?.let {
            require(it.accountId == accountId && it.profileName == profileName) { "Deletion receipt binding mismatch" }
            require(
                (state == ProfileLifecycleState.DELETION_ACCEPTED && it.disposition == ProfileDeletionDisposition.DELETION_ACCEPTED) ||
                    (state == ProfileLifecycleState.ALREADY_ABSENT && it.disposition == ProfileDeletionDisposition.ALREADY_ABSENT),
            ) { "Deletion receipt state mismatch" }
        }
    }
}

interface NamedProfileLifecycleStore {
    fun read(accountId: ProviderAccountId): AccountProfileBinding?
    fun readAll(): List<AccountProfileBinding>
    fun write(binding: AccountProfileBinding)
}

internal class InMemoryNamedProfileLifecycleStore : NamedProfileLifecycleStore {
    private val bindings = linkedMapOf<ProviderAccountId, AccountProfileBinding>()

    override fun read(accountId: ProviderAccountId): AccountProfileBinding? = bindings[accountId]

    override fun readAll(): List<AccountProfileBinding> = bindings.values.toList()

    override fun write(binding: AccountProfileBinding) {
        val current = bindings[binding.accountId]
        require(current == null || current.profileName == binding.profileName) { "Profile name is immutable" }
        require(bindings.values.none { it.accountId != binding.accountId && it.profileName == binding.profileName }) {
            "WebView profile name is already bound"
        }
        require(current?.state !in TERMINAL_STATES || current == binding) { "Deleted profile binding is immutable" }
        bindings[binding.accountId] = binding
    }

    private companion object {
        val TERMINAL_STATES = setOf(ProfileLifecycleState.DELETION_ACCEPTED, ProfileLifecycleState.ALREADY_ABSENT)
    }
}

interface NamedProfileSessionResource {
    val webView: Any
    val cookieManager: Any
    val webStorage: Any
    val serviceWorkerController: Any
    fun destroy()
}

interface NamedProfilePlatform {
    fun isSupported(): Boolean
    fun requireUiThread()
    fun assertColdStartDeleteAllowed()
    fun allProfileNames(): Set<String>
    fun deleteProfile(name: WebProfileName): Boolean
    fun createBoundSession(name: WebProfileName): NamedProfileSessionResource
}

enum class EnrollmentRejection {
    MULTI_PROFILE_UNSUPPORTED,
}

sealed interface EnrollmentDecision {
    data object Allowed : EnrollmentDecision
    data class Rejected(val reason: EnrollmentRejection) : EnrollmentDecision
}

class NamedProfileEnrollmentGuard(private val capabilityProbe: () -> Boolean) {
    fun beforeEnrollment(existingAccounts: Int): EnrollmentDecision {
        require(existingAccounts >= 0) { "Existing account count must be non-negative" }
        if (existingAccounts == 0) return EnrollmentDecision.Allowed
        return if (capabilityProbe()) EnrollmentDecision.Allowed
        else EnrollmentDecision.Rejected(EnrollmentRejection.MULTI_PROFILE_UNSUPPORTED)
    }
}

enum class ErasureRequestResult {
    ERASURE_PENDING_COLD_START,
    ALREADY_TERMINAL,
}

class NamedProfileLease internal constructor(
    val accountId: ProviderAccountId,
    val profileName: WebProfileName,
    internal val resource: NamedProfileSessionResource,
    private val release: (NamedProfileLease) -> Unit,
) : AutoCloseable {
    private val closed = AtomicBoolean(false)

    val webView: Any get() = resource.webView
    val cookieManager: Any get() = resource.cookieManager
    val webStorage: Any get() = resource.webStorage
    val serviceWorkerController: Any get() = resource.serviceWorkerController

    override fun close() {
        if (closed.compareAndSet(false, true)) release(this)
    }
}

class NamedProfileLifecycleManager(
    private val store: NamedProfileLifecycleStore,
    private val platform: NamedProfilePlatform,
    private val nameFactory: () -> WebProfileName = WebProfileName::create,
) {
    private val leases = linkedMapOf<ProviderAccountId, MutableSet<NamedProfileLease>>()
    private var coldStartDrained = false

    fun ensureBinding(accountId: ProviderAccountId): AccountProfileBinding {
        store.read(accountId)?.let { return it }
        val usedNames = store.readAll().mapTo(mutableSetOf()) { it.profileName }
        val name = generateSequence(nameFactory).take(128).firstOrNull { it !in usedNames }
            ?: error("Unable to allocate unique WebView profile name")
        return AccountProfileBinding(accountId, name, ProfileLifecycleState.ACTIVE, null).also(store::write)
    }

    fun binding(accountId: ProviderAccountId): AccountProfileBinding? = store.read(accountId)

    fun coldStartDrain(): List<ColdStartDeletionResult> {
        platform.requireUiThread()
        platform.assertColdStartDeleteAllowed()
        check(!coldStartDrained) { "Cold-start drain may run only once per manager" }
        coldStartDrained = true
        val pending = store.readAll().filter { it.state == ProfileLifecycleState.ERASURE_PENDING_COLD_START }
        if (pending.isEmpty()) return emptyList()
        if (!platform.isSupported()) {
            return pending.map { retryableResult(it) }
        }
        val existing = platform.allProfileNames()
        return pending.map { binding ->
            if (binding.profileName.storageValue() !in existing) {
                ColdStartDeletionResult.Completed(
                    persistReceipt(binding, ProfileDeletionDisposition.ALREADY_ABSENT),
                )
            } else {
                val deleted = try {
                    platform.deleteProfile(binding.profileName)
                } catch (_: IllegalStateException) {
                    false
                }
                if (deleted) {
                    ColdStartDeletionResult.Completed(
                        persistReceipt(binding, ProfileDeletionDisposition.DELETION_ACCEPTED),
                    )
                } else retryableResult(binding)
            }
        }
    }

    fun acquire(accountId: ProviderAccountId): NamedProfileLease {
        platform.requireUiThread()
        check(coldStartDrained) { "Cold-start drain must run before profile activity" }
        check(platform.isSupported()) { "Named WebView profiles are unsupported" }
        val binding = requireNotNull(store.read(accountId)) { "Account has no profile binding" }
        check(binding.state == ProfileLifecycleState.ACTIVE) { "Profile cannot be leased after erasure request" }
        val resource = platform.createBoundSession(binding.profileName)
        lateinit var lease: NamedProfileLease
        lease = NamedProfileLease(accountId, binding.profileName, resource) { released -> release(released) }
        leases.getOrPut(accountId, ::linkedSetOf).add(lease)
        return lease
    }

    fun requestErasure(accountId: ProviderAccountId): ErasureRequestResult {
        val binding = requireNotNull(store.read(accountId)) { "Account has no profile binding" }
        if (binding.state != ProfileLifecycleState.ACTIVE) return ErasureRequestResult.ALREADY_TERMINAL
        store.write(binding.copy(state = ProfileLifecycleState.ERASURE_PENDING_COLD_START))
        return ErasureRequestResult.ERASURE_PENDING_COLD_START
    }

    fun liveLeaseCount(accountId: ProviderAccountId): Int = leases[accountId]?.size ?: 0

    private fun release(lease: NamedProfileLease) {
        platform.requireUiThread()
        lease.resource.destroy()
        leases[lease.accountId]?.let { active ->
            active.remove(lease)
            if (active.isEmpty()) leases.remove(lease.accountId)
        }
    }

    private fun persistReceipt(
        binding: AccountProfileBinding,
        disposition: ProfileDeletionDisposition,
    ): ProfileDeletionReceipt {
        val receipt = ProfileDeletionReceipt(binding.accountId, binding.profileName, disposition)
        val state = when (disposition) {
            ProfileDeletionDisposition.DELETION_ACCEPTED -> ProfileLifecycleState.DELETION_ACCEPTED
            ProfileDeletionDisposition.ALREADY_ABSENT -> ProfileLifecycleState.ALREADY_ABSENT
        }
        store.write(binding.copy(state = state, receipt = receipt))
        return receipt
    }

    private fun retryableResult(binding: AccountProfileBinding) =
        ColdStartDeletionResult.RetryableFailure(binding.accountId, binding.profileName)
}
