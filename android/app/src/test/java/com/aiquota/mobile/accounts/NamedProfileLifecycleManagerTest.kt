package com.aiquota.mobile.accounts

import com.aiquota.mobile.local.ProviderId
import java.util.ArrayDeque
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNotEquals
import org.junit.Assert.assertThrows
import org.junit.Assert.assertTrue
import org.junit.Test

class NamedProfileLifecycleManagerTest {
    @Test
    fun `unsupported second enrollment is rejected before profile network or storage activity`() {
        val platform = StrictFakeNamedProfilePlatform(supported = false)
        val guard = NamedProfileEnrollmentGuard { platform.isSupported() }

        assertEquals(EnrollmentDecision.Allowed, guard.beforeEnrollment(existingAccounts = 0))
        assertEquals(
            EnrollmentDecision.Rejected(EnrollmentRejection.MULTI_PROFILE_UNSUPPORTED),
            guard.beforeEnrollment(existingAccounts = 1),
        )
        assertEquals(0, platform.activityCount)
    }

    @Test
    fun `zero one four and thousand catalog rows stay lazy and one selection creates one bound view`() {
        listOf(0, 1, 4, 1_000).forEach { size ->
            val store = InMemoryNamedProfileLifecycleStore()
            val platform = StrictFakeNamedProfilePlatform()
            val manager = NamedProfileLifecycleManager(store, platform, deterministicNameFactory())
            manager.coldStartDrain()
            val rows = (1..size).map { id(it) }
            rows.forEach(manager::ensureBinding)
            assertEquals(0, platform.profileCreateCount)
            assertEquals(0, platform.webViewCreateCount)
            if (rows.isNotEmpty()) {
                manager.acquire(rows[size / 2]).use { }
                assertEquals(1, platform.profileCreateCount)
                assertEquals(1, platform.webViewCreateCount)
                assertEquals(0, manager.liveLeaseCount(rows[size / 2]))
            }
        }
    }

    @Test
    fun `binding is first WebView operation and manager requires UI thread`() {
        val platform = StrictFakeNamedProfilePlatform()
        val manager = manager(platform = platform)
        val account = id(1)
        manager.ensureBinding(account)
        manager.coldStartDrain()

        platform.uiThread = false
        assertThrows(IllegalStateException::class.java) { manager.acquire(account) }
        platform.uiThread = true
        manager.acquire(account).use { }

        assertEquals(listOf("webview:create", "webview:bind", "profile:load", "webview:destroy"), platform.events)
    }

    @Test
    fun `profile names are opaque immutable account bindings and collisions are never reused`() {
        val first = profileName(1)
        val generated = ArrayDeque(listOf(first, first, profileName(2)))
        val manager = manager(nameFactory = { generated.removeFirst() })
        val a = manager.ensureBinding(id(1))
        val sameA = manager.ensureBinding(id(1))
        val b = manager.ensureBinding(id(2))

        assertEquals(a, sameA)
        assertEquals(first, a.profileName)
        assertNotEquals(a.profileName, b.profileName)
        assertFalse(a.profileName.storageValue().contains("claude", ignoreCase = true))
        assertFalse(a.profileName.storageValue().contains(id(1).accountKey.storageValue()))
    }

    @Test
    fun `erase with one or many leases stays pending and last close never deletes in process`() {
        val platform = StrictFakeNamedProfilePlatform()
        val manager = manager(platform = platform)
        val account = id(1)
        manager.ensureBinding(account)
        manager.coldStartDrain()
        val first = manager.acquire(account)
        val second = manager.acquire(account)

        assertEquals(ErasureRequestResult.ERASURE_PENDING_COLD_START, manager.requestErasure(account))
        assertThrows(IllegalStateException::class.java) { manager.acquire(account) }
        first.close()
        first.close()
        assertEquals(1, manager.liveLeaseCount(account))
        second.close()

        assertEquals(0, manager.liveLeaseCount(account))
        assertEquals(0, platform.deleteCount)
        assertEquals(ProfileLifecycleState.ERASURE_PENDING_COLD_START, manager.binding(account)!!.state)
    }

    @Test
    fun `cold start accepts deletion before any profile activity and persists honest receipt`() {
        val store = InMemoryNamedProfileLifecycleStore()
        val seedPlatform = StrictFakeNamedProfilePlatform()
        val seed = manager(store, seedPlatform)
        val account = id(1)
        val binding = seed.ensureBinding(account)
        seed.coldStartDrain()
        seed.acquire(account).close()
        seed.requestErasure(account)
        seedPlatform.names += binding.profileName.storageValue()

        val coldPlatform = StrictFakeNamedProfilePlatform(existingNames = seedPlatform.names)
        val cold = manager(store, coldPlatform)
        val results = cold.coldStartDrain()
        val receipt = (results.single() as ColdStartDeletionResult.Completed).receipt

        assertEquals(1, results.size)
        assertEquals(ProfileDeletionDisposition.DELETION_ACCEPTED, receipt.disposition)
        assertEquals(PhysicalCompletion.UNOBSERVABLE_PLATFORM_ASYNC, receipt.physicalCompletion)
        assertEquals(ProfileLifecycleState.DELETION_ACCEPTED, cold.binding(account)!!.state)
        assertEquals(listOf("store:names", "store:delete"), coldPlatform.events)
        assertThrows(IllegalStateException::class.java) { cold.acquire(account) }
    }

    @Test
    fun `cold start records already absent idempotently without recreating name`() {
        val store = pendingStore(id(1))
        val manager = manager(store, StrictFakeNamedProfilePlatform())

        val first = (manager.coldStartDrain().single() as ColdStartDeletionResult.Completed).receipt
        val second = manager(store, StrictFakeNamedProfilePlatform()).coldStartDrain()

        assertEquals(ProfileDeletionDisposition.ALREADY_ABSENT, first.disposition)
        assertTrue(second.isEmpty())
        assertEquals(ProfileLifecycleState.ALREADY_ABSENT, manager.binding(id(1))!!.state)
    }

    @Test
    fun `false delete and preloaded adapter are retryable with no false receipt`() {
        val account = id(1)
        val store = pendingStore(account)
        val falsePlatform = StrictFakeNamedProfilePlatform(existingNames = mutableSetOf(store.read(account)!!.profileName.storageValue()))
        falsePlatform.deleteResults += false
        val manager = manager(store, falsePlatform)

        val result = manager.coldStartDrain().single()
        assertTrue(result is ColdStartDeletionResult.RetryableFailure)
        assertEquals(ProfileLifecycleState.ERASURE_PENDING_COLD_START, manager.binding(account)!!.state)
        assertEquals(null, manager.binding(account)!!.receipt)

        val throwingPlatform = StrictFakeNamedProfilePlatform(existingNames = falsePlatform.names)
        throwingPlatform.deleteFailure = IllegalStateException("profile loaded")
        assertTrue(manager(store, throwingPlatform).coldStartDrain().single() is ColdStartDeletionResult.RetryableFailure)
        assertEquals(null, store.read(account)!!.receipt)

        val preloaded = StrictFakeNamedProfilePlatform(existingNames = falsePlatform.names)
        preloaded.forceProfileActivity()
        assertThrows(IllegalStateException::class.java) { manager(store, preloaded).coldStartDrain() }
        assertEquals(ProfileLifecycleState.ERASURE_PENDING_COLD_START, store.read(account)!!.state)
    }

    @Test
    fun `reverse A B erasure changes no sibling`() {
        val store = InMemoryNamedProfileLifecycleStore()
        val manager = manager(store)
        val a = id(1)
        val b = id(2)
        val beforeB = manager.ensureBinding(b)
        manager.ensureBinding(a)

        manager.requestErasure(a)

        assertEquals(beforeB, manager.binding(b))
        assertEquals(ProfileLifecycleState.ACTIVE, manager.binding(b)!!.state)
    }

    private fun manager(
        store: NamedProfileLifecycleStore = InMemoryNamedProfileLifecycleStore(),
        platform: StrictFakeNamedProfilePlatform = StrictFakeNamedProfilePlatform(),
        nameFactory: () -> WebProfileName = deterministicNameFactory(),
    ) = NamedProfileLifecycleManager(store, platform, nameFactory)

    private fun pendingStore(account: ProviderAccountId): InMemoryNamedProfileLifecycleStore =
        InMemoryNamedProfileLifecycleStore().also { store ->
            store.write(
                AccountProfileBinding(
                    account,
                    profileName(99),
                    ProfileLifecycleState.ERASURE_PENDING_COLD_START,
                    null,
                ),
            )
        }

    private fun deterministicNameFactory(): () -> WebProfileName {
        var next = 1
        return { profileName(next++) }
    }

    private fun profileName(index: Int) =
        WebProfileName.fromStorage("aiq_profile_${index.toString(16).padStart(32, '0')}")

    private fun id(index: Int) = ProviderAccountId(
        ProviderId.CLAUDE,
        AccountKey.parseOpaque("acct_${index.toString(16).padStart(32, '0')}"),
    )
}

private class StrictFakeNamedProfilePlatform(
    private val supported: Boolean = true,
    existingNames: MutableSet<String> = mutableSetOf(),
) : NamedProfilePlatform {
    val events = mutableListOf<String>()
    val names = existingNames.toMutableSet()
    val deleteResults = ArrayDeque<Boolean>()
    var uiThread = true
    var activityCount = 0
    var profileCreateCount = 0
    var webViewCreateCount = 0
    var deleteCount = 0
    var deleteFailure: IllegalStateException? = null
    private var profileActivity = false

    override fun isSupported(): Boolean = supported

    override fun requireUiThread() {
        check(uiThread) { "Named profile lifecycle requires UI thread" }
    }

    override fun assertColdStartDeleteAllowed() {
        check(!profileActivity) { "Cold-start drain must precede profile activity" }
    }

    override fun allProfileNames(): Set<String> {
        activityCount++
        events += "store:names"
        return names.toSet()
    }

    override fun deleteProfile(name: WebProfileName): Boolean {
        activityCount++
        deleteCount++
        events += "store:delete"
        deleteFailure?.let { throw it }
        val result = if (deleteResults.isEmpty()) names.remove(name.storageValue()) else deleteResults.removeFirst()
        if (result) names.remove(name.storageValue())
        return result
    }

    override fun createBoundSession(name: WebProfileName): NamedProfileSessionResource {
        check(supported)
        profileActivity = true
        activityCount++
        webViewCreateCount++
        events += "webview:create"
        events += "webview:bind"
        profileCreateCount++
        names += name.storageValue()
        events += "profile:load"
        return object : NamedProfileSessionResource {
            override val webView: Any = Any()
            override val cookieManager: Any = Any()
            override val webStorage: Any = Any()
            override val serviceWorkerController: Any = Any()
            override fun destroy() {
                events += "webview:destroy"
            }
        }
    }

    fun forceProfileActivity() {
        profileActivity = true
    }
}
