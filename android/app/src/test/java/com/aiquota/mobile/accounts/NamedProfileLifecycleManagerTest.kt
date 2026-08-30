package com.aiquota.mobile.accounts

import com.aiquota.mobile.local.ProviderId
import org.junit.Assert.*
import org.junit.Test

class NamedProfileLifecycleManagerTest {
    @Test
    fun `living lease stays pending and last acknowledged close erases once`() {
        val p = FakePlatform()
        val s = InMemoryNamedProfileLifecycleStore()
        val m = manager(s, p)
        val id = id(1)
        m.ensureBinding(id)
        val a = m.acquire(id)
        val b = m.acquire(id)
        assertEquals(ErasureRequestResult.ERASURE_PENDING, m.requestErasure(id))
        assertEquals(0, p.eraseCount)
        a.close()
        assertEquals(0, p.eraseCount)
        b.close()
        assertEquals(1, p.eraseCount)
        assertEquals(
            ProfileLifecycleState.DATA_ERASURE_COMPLETED_CONTAINER_RETAINED,
            m.binding(id)!!.state,
        )
        assertEquals(
            ContainerDisposition.CONTAINER_RETAINED_EMPTY_NEVER_REUSED,
            m.binding(id)!!.receipt!!.disposition,
        )
    }

    @Test
    fun `lease held by one manager blocks erasure requested by another manager`() {
        val store = InMemoryNamedProfileLifecycleStore()
        val leasePlatform = FakePlatform()
        val erasurePlatform = FakePlatform()
        val leaseOwner = manager(store, leasePlatform)
        val erasureOwner = manager(store, erasurePlatform)
        val id = id(1)
        leaseOwner.ensureBinding(id)
        val lease = leaseOwner.acquire(id)

        assertEquals(ErasureRequestResult.ERASURE_PENDING, erasureOwner.requestErasure(id))
        assertEquals(0, erasurePlatform.eraseCount)

        lease.close()

        assertEquals(1, leasePlatform.eraseCount)
        assertEquals(0, erasurePlatform.eraseCount)
        assertEquals(
            ProfileLifecycleState.DATA_ERASURE_COMPLETED_CONTAINER_RETAINED,
            store.read(id)?.state,
        )
    }

    @Test
    fun `three managers share leases before resumed erasure`() {
        val store = InMemoryNamedProfileLifecycleStore()
        val platform = FakePlatform()
        val leaseOwner = manager(store, platform)
        val deletionOwner = manager(store, platform)
        val resumeOwner = manager(store, platform)
        val accountId = id(1)

        leaseOwner.ensureBinding(accountId)
        val lease = leaseOwner.acquire(accountId)
        assertEquals(ErasureRequestResult.ERASURE_PENDING, deletionOwner.requestErasure(accountId))

        assertEquals(1, resumeOwner.resumePendingErasures { _, _ -> })
        assertEquals(0, platform.eraseCount)

        lease.close()

        assertEquals(1, platform.eraseCount)
        assertEquals(
            ProfileLifecycleState.DATA_ERASURE_COMPLETED_CONTAINER_RETAINED,
            store.read(accountId)?.state,
        )
    }

    @Test
    fun `pending crash resumes idempotently and terminal never leases or reuses`() {
        val p = FakePlatform()
        val s = InMemoryNamedProfileLifecycleStore()
        val m = manager(s, p)
        val id = id(1)
        val row = m.ensureBinding(id)
        s.markPending(id)
        assertEquals(1, m.resumePendingErasures { _, _ -> })
        assertEquals(
            ProfileLifecycleState.DATA_ERASURE_COMPLETED_CONTAINER_RETAINED,
            s.read(id)!!.state,
        )
        assertTrue(m.acquireTyped(id) is LeaseAcquireResult.ProfileUnavailable)
        assertEquals(row.profileName, s.read(id)!!.profileName)
    }

    @Test
    fun `callback before receipt crash converges on restart`() {
        val store = InMemoryNamedProfileLifecycleStore()
        val platform = FakePlatform()
        val id = id(1)
        var hookCalls = 0
        val first =
            NamedProfileLifecycleManager(store, platform, { profile(1) }) {
                hookCalls++
                throw IllegalStateException("callback-before-receipt")
            }
        first.ensureBinding(id)
        assertThrows(IllegalStateException::class.java) { first.requestErasure(id) }
        assertEquals(1, hookCalls)
        assertEquals(ProfileLifecycleState.ERASURE_PENDING, store.read(id)!!.state)
        val restarted = manager(store, FakePlatform())
        assertEquals(1, restarted.resumePendingErasures { _, _ -> })
        assertEquals(
            ProfileLifecycleState.DATA_ERASURE_COMPLETED_CONTAINER_RETAINED,
            store.read(id)!!.state,
        )
    }

    @Test
    fun `interrupted cleanup leaves pending and a new manager retries`() {
        val p = FakePlatform().apply { eraseResult = ProfileDataErasureResult.Failed("x") }
        val s = InMemoryNamedProfileLifecycleStore()
        val m = manager(s, p)
        val id = id(1)
        m.ensureBinding(id)
        var failure: ProfileDataErasureResult? = null
        m.requestErasure(id) { failure = it }
        assertEquals(ProfileDataErasureResult.Failed("x"), failure)
        assertEquals(ProfileLifecycleState.ERASURE_PENDING, s.read(id)!!.state)

        val restarted = manager(s, FakePlatform())
        assertEquals(1, restarted.resumePendingErasures { _, _ -> })
        assertEquals(
            ProfileLifecycleState.DATA_ERASURE_COMPLETED_CONTAINER_RETAINED,
            s.read(id)!!.state,
        )
    }

    @Test
    fun `wrong thread validates before close state mutation`() {
        val p = FakePlatform()
        val m = manager(platform = p)
        val id = id(1)
        m.ensureBinding(id)
        val l = m.acquire(id)
        p.ui = false
        assertThrows(NamedProfileThreadViolation::class.java) { l.close() }
        p.ui = true
        l.close()
        assertEquals(0, m.liveLeaseCount(id))
    }

    @Test
    fun `failed quiesce reopens lease and retry closes without leak`() {
        val p = FakePlatform().apply { quiesceResults.add(SessionQuiesceResult.Failed("renderer")) }
        val m = manager(platform = p)
        val id = id(1)
        m.ensureBinding(id)
        val lease = m.acquire(id)
        var first: LeaseCloseResult? = null
        lease.closeAcknowledged { first = it }
        assertEquals(LeaseCloseResult.RetryableFailure("renderer"), first)
        assertEquals(LeaseState.OPEN, lease.stateForTest())
        assertEquals(1, m.liveLeaseCount(id))
        var second: LeaseCloseResult? = null
        lease.closeAcknowledged { second = it }
        assertEquals(LeaseCloseResult.Closed, second)
        assertEquals(LeaseState.CLOSED, lease.stateForTest())
        assertEquals(0, m.liveLeaseCount(id))
        assertEquals(1, p.destroyCount)
    }

    @Test
    fun `failed destroy during normal close reopens lease and retry closes without leak`() {
        val p = FakePlatform().apply { destroyFailures.add(IllegalStateException("renderer")) }
        val m = manager(platform = p)
        val id = id(1)
        m.ensureBinding(id)
        val lease = m.acquire(id)
        var result: LeaseCloseResult? = null

        lease.closeAcknowledged { result = it }

        assertEquals(LeaseCloseResult.RetryableFailure("DESTROY_FAILED:IllegalStateException"), result)
        assertEquals(LeaseState.OPEN, lease.stateForTest())
        assertEquals(1, m.liveLeaseCount(id))

        lease.closeAcknowledged { result = it }

        assertEquals(LeaseCloseResult.Closed, result)
        assertEquals(LeaseState.CLOSED, lease.stateForTest())
        assertEquals(0, m.liveLeaseCount(id))
        assertEquals(2, p.destroyCount)
    }

    @Test
    fun `aborting after persistent quiesce failure releases lease`() {
        val p = FakePlatform().apply {
            repeat(4) { quiesceResults.add(SessionQuiesceResult.Failed("renderer")) }
        }
        val m = manager(platform = p)
        val id = id(1)
        m.ensureBinding(id)
        val lease = m.acquire(id)
        repeat(4) {
            lease.closeAcknowledged { result ->
                assertTrue(result is LeaseCloseResult.RetryableFailure)
            }
        }

        lease.abortAcknowledged { assertEquals(LeaseCloseResult.Closed, it) }

        assertEquals(LeaseState.CLOSED, lease.stateForTest())
        assertEquals(0, m.liveLeaseCount(id))
        assertEquals(1, p.destroyCount)
    }

    @Test
    fun `aborting a stalled closing lease releases it exactly once`() {
        val p = FakePlatform().apply { deferQuiesce = true }
        val m = manager(platform = p)
        val id = id(1)
        m.ensureBinding(id)
        val lease = m.acquire(id)
        var closeResult: LeaseCloseResult? = null
        lease.closeAcknowledged { closeResult = it }

        lease.abortAcknowledged { assertEquals(LeaseCloseResult.Closed, it) }

        assertEquals(LeaseState.CLOSED, lease.stateForTest())
        assertEquals(0, m.liveLeaseCount(id))
        assertEquals(1, p.destroyCount)
        assertEquals(1, p.cancelQuiesceCount)
        p.completeNextQuiesce()
        assertEquals(LeaseCloseResult.AlreadyClosed, closeResult)
        assertEquals(1, p.destroyCount)
    }

    @Test
    fun `failed abort supersedes stale quiesce callback without corrupting retry`() {
        val p = FakePlatform().apply {
            deferQuiesce = true
            destroyFailures.add(IllegalStateException("renderer"))
        }
        val m = manager(platform = p)
        val id = id(1)
        m.ensureBinding(id)
        val lease = m.acquire(id)
        var closeResult: LeaseCloseResult? = null

        lease.closeAcknowledged { closeResult = it }
        lease.abortAcknowledged {
            assertEquals(LeaseCloseResult.RetryableFailure("DESTROY_FAILED:IllegalStateException"), it)
        }
        assertEquals(LeaseState.OPEN, lease.stateForTest())
        assertEquals(1, p.cancelQuiesceCount)

        p.completeNextQuiesce()

        assertEquals(LeaseCloseResult.RetryableFailure("CLOSE_SUPERSEDED"), closeResult)
        assertEquals(LeaseState.OPEN, lease.stateForTest())
        p.deferQuiesce = false
        lease.closeAcknowledged { closeResult = it }
        assertEquals(LeaseCloseResult.Closed, closeResult)
        assertEquals(LeaseState.CLOSED, lease.stateForTest())
        assertEquals(0, m.liveLeaseCount(id))
    }

    @Test
    fun `abort retains lease after destroy failure and releases it on retry`() {
        val p = FakePlatform().apply { destroyFailures.add(IllegalStateException("renderer")) }
        val m = manager(platform = p)
        val id = id(1)
        m.ensureBinding(id)
        val lease = m.acquire(id)
        var result: LeaseCloseResult? = null

        lease.abortAcknowledged { result = it }

        assertEquals(LeaseCloseResult.RetryableFailure("DESTROY_FAILED:IllegalStateException"), result)
        assertEquals(LeaseState.OPEN, lease.stateForTest())
        assertEquals(1, m.liveLeaseCount(id))
        assertEquals(1, p.destroyCount)

        lease.abortAcknowledged { result = it }

        assertEquals(LeaseCloseResult.Closed, result)
        assertEquals(LeaseState.CLOSED, lease.stateForTest())
        assertEquals(0, m.liveLeaseCount(id))
        assertEquals(2, p.destroyCount)
    }

    @Test
    fun `duplicate closing closed and shutdown with live leases are deterministic`() {
        val p = FakePlatform().apply { deferQuiesce = true }
        val m = manager(platform = p)
        val id = id(1)
        m.ensureBinding(id)
        val first = m.acquire(id)
        val second = m.acquire(id)
        var firstResult: LeaseCloseResult? = null
        first.closeAcknowledged { firstResult = it }
        first.closeAcknowledged { assertEquals(LeaseCloseResult.AlreadyClosing, it) }
        assertEquals(LeaseState.CLOSING, first.stateForTest())
        p.completeNextQuiesce()
        assertEquals(LeaseCloseResult.Closed, firstResult)
        first.closeAcknowledged { assertEquals(LeaseCloseResult.AlreadyClosed, it) }
        var shutdown: List<LeaseCloseResult>? = null
        m.shutdown { shutdown = it }
        assertNull(shutdown)
        p.completeNextQuiesce()
        assertEquals(listOf(LeaseCloseResult.Closed), shutdown)
        assertEquals(0, m.liveLeaseCount(id))
        assertEquals(2, p.destroyCount)
        assertEquals(LeaseState.CLOSED, second.stateForTest())
    }

    @Test
    fun `shutdown reports retryable quiesce failure without consuming lease`() {
        val p =
            FakePlatform().apply {
                quiesceResults.add(SessionQuiesceResult.Failed("renderer"))
            }
        val m = manager(platform = p)
        val id = id(1)
        m.ensureBinding(id)
        val lease = m.acquire(id)
        var results: List<LeaseCloseResult>? = null
        m.shutdown { results = it }
        assertEquals(listOf(LeaseCloseResult.RetryableFailure("renderer")), results)
        assertEquals(LeaseState.OPEN, lease.stateForTest())
        assertEquals(1, m.liveLeaseCount(id))
        lease.closeAcknowledged { assertEquals(LeaseCloseResult.Closed, it) }
        assertEquals(0, m.liveLeaseCount(id))
    }

    @Test
    fun `production ensure binding uses double probe before second mutation`() {
        val p = FakePlatform()
        val s = InMemoryNamedProfileLifecycleStore()
        val m = manager(s, p)
        m.ensureBinding(id(1))
        p.capabilities.add(
            NamedProfileCapability.Supported(
                WebViewProviderIdentity("com.google.android.webview", "152.0.7977.54")
            )
        )
        p.capabilities.add(
            NamedProfileCapability.Supported(
                WebViewProviderIdentity("com.google.android.webview", "153.0.8000.1")
            )
        )
        assertThrows(NamedProfileEnrollmentRejected::class.java) { m.ensureBinding(id(2)) }
        assertEquals(1, s.readAll().size)
        assertEquals(2, p.probeCount)
        assertEquals(0, p.bindCount)
    }

    @Test
    fun `every unsupported second binding race has zero mutation and activity`() {
        val rejected =
            listOf(
                NamedProfileCapability.Rejected(RuntimeSupportReason.VERSION_BELOW_SAFE_FLOOR),
                NamedProfileCapability.Rejected(RuntimeSupportReason.VERSION_MALFORMED),
                NamedProfileCapability.Rejected(RuntimeSupportReason.PROVIDER_MISSING),
                NamedProfileCapability.Rejected(RuntimeSupportReason.PROVIDER_UNVERIFIED),
                NamedProfileCapability.Rejected(RuntimeSupportReason.PROBE_FAILED),
            )
        rejected.forEach { capability ->
            val p = FakePlatform()
            val s = InMemoryNamedProfileLifecycleStore()
            val m = manager(s, p)
            m.ensureBinding(id(1))
            p.capabilities.add(capability)
            assertThrows(NamedProfileEnrollmentRejected::class.java) { m.ensureBinding(id(2)) }
            assertEquals(capability.toString(), 1, s.readAll().size)
            assertEquals(capability.toString(), 0, p.bindCount)
            assertEquals(capability.toString(), 0, p.eraseCount)
            assertEquals(capability.toString(), 1, p.probeCount)
        }
    }

    @Test
    fun `store transaction ends before WebView erasure IPC`() {
        var transactionOpen = false
        val delegate = InMemoryNamedProfileLifecycleStore()
        val store =
            object : NamedProfileLifecycleStore by delegate {
                override fun markPending(accountId: ProviderAccountId): AccountProfileBinding {
                    transactionOpen = true
                    return delegate.markPending(accountId).also { transactionOpen = false }
                }
            }
        val p = FakePlatform().apply { beforeErase = { assertFalse(transactionOpen) } }
        val m = manager(store, p)
        m.ensureBinding(id(1))
        m.requestErasure(id(1))
        assertEquals(1, p.eraseCount)
    }

    @Test
    fun `thousand bindings lazy and one selection binds one`() {
        val p = FakePlatform()
        val m = manager(platform = p)
        repeat(1000) { m.ensureBinding(id(it + 1)) }
        assertEquals(0, p.bindCount)
        m.acquire(id(500)).close()
        assertEquals(1, p.bindCount)
    }

    @Test
    fun `concurrent duplicate erasure starts exactly once`() {
        val p = FakePlatform().apply { deferErase = true }
        val m = manager(platform = p)
        val id = id(1)
        m.ensureBinding(id)
        m.requestErasure(id)
        m.requestErasure(id)
        assertEquals(1, p.eraseCount)
        p.completeDeferred()
        assertEquals(
            ProfileLifecycleState.DATA_ERASURE_COMPLETED_CONTAINER_RETAINED,
            m.binding(id)!!.state,
        )
    }

    @Test
    fun `session cleanup and requested erasure share one in-flight deletion`() {
        val p = FakePlatform().apply { deferErase = true }
        val m = manager(platform = p)
        val id = id(1)
        val results = mutableListOf<ProfileDataErasureResult>()
        m.ensureBinding(id)

        assertTrue(m.clearSessionData(id, results::add))
        assertEquals(ErasureRequestResult.ERASURE_PENDING, m.requestErasure(id, results::add))
        assertEquals(1, p.eraseCount)

        p.completeDeferred()

        assertEquals(listOf(ProfileDataErasureResult.Completed, ProfileDataErasureResult.Completed), results)
        assertEquals(1, p.eraseCount)
        assertEquals(
            ProfileLifecycleState.DATA_ERASURE_COMPLETED_CONTAINER_RETAINED,
            m.binding(id)!!.state,
        )
    }

    @Test
    fun `missing exact profile requires only requested account reauthentication`() {
        val platform = FakePlatform()
        val store = InMemoryNamedProfileLifecycleStore()
        val manager = manager(store, platform)
        val sibling = id(1)
        val missing = id(2)
        val siblingBinding = manager.ensureBinding(sibling)
        val authStates =
            mutableMapOf(
                sibling to AccountAuthState.AUTHENTICATED,
                missing to AccountAuthState.AUTHENTICATED,
            )
        val transitions = mutableListOf<ProviderAccountId>()

        val acquireExact = manager.javaClass.methods.single { it.name == "acquireExact" }
        val result =
            acquireExact.invoke(
                manager,
                missing,
                { accountId: ProviderAccountId ->
                    transitions += accountId
                    authStates[accountId] = AccountAuthState.REAUTH_REQUIRED
                },
            )

        assertEquals("ReauthenticationRequired", result.javaClass.simpleName)
        assertEquals(listOf(missing), transitions)
        assertEquals(AccountAuthState.AUTHENTICATED, authStates.getValue(sibling))
        assertEquals(AccountAuthState.REAUTH_REQUIRED, authStates.getValue(missing))
        assertEquals(siblingBinding, manager.binding(sibling))
        assertNull(manager.binding(missing))
        assertEquals(0, platform.bindCount)
        assertEquals(0, platform.destroyCount)
        assertEquals(0, platform.eraseCount)
    }

    private fun manager(
        store: NamedProfileLifecycleStore = InMemoryNamedProfileLifecycleStore(),
        platform: FakePlatform = FakePlatform(),
    ): NamedProfileLifecycleManager {
        var n = 1
        return NamedProfileLifecycleManager(store, platform) { profile(n++) }
    }
}

private class FakePlatform : NamedProfilePlatform {
    var ui = true
    var bindCount = 0
    var eraseCount = 0
    var eraseResult: ProfileDataErasureResult = ProfileDataErasureResult.Completed
    var deferErase = false
    var destroyCount = 0
    var cancelQuiesceCount = 0
    val destroyFailures = ArrayDeque<RuntimeException>()
    var probeCount = 0
    val capabilities = ArrayDeque<NamedProfileCapability>()
    val quiesceResults = ArrayDeque<SessionQuiesceResult>()
    var deferQuiesce = false
    var beforeErase: () -> Unit = {}
    private val deferredQuiesces = ArrayDeque<() -> Unit>()
    private var deferred: (() -> Unit)? = null

    override fun probeCapability(): NamedProfileCapability {
        probeCount++
        return if (capabilities.isEmpty())
            NamedProfileCapability.Supported(
                WebViewProviderIdentity("com.google.android.webview", "152.0.7977.54")
            )
        else capabilities.removeFirst()
    }

    override fun requireUiThread() {
        if (!ui) throw NamedProfileThreadViolation()
    }

    override fun createBoundSession(
        name: WebProfileName,
        createIfMissing: Boolean,
    ): NamedProfileSessionResource {
        bindCount++
        return object : NamedProfileSessionResource {
            var pendingQuiesce: (() -> Unit)? = null
            override val webView = Any()
            override val cookieManager = Any()
            override val cookieSource = ExactProfileCookieSource { _, _ -> null }
            override val webStorage = Any()
            override val serviceWorkerController = Any()

            override fun quiesce(callback: (SessionQuiesceResult) -> Unit) {
                val complete = {
                    callback(
                        if (quiesceResults.isEmpty())
                            SessionQuiesceResult.CommittedCrossOriginPlatformAsync
                        else quiesceResults.removeFirst()
                    )
                }
                pendingQuiesce = complete
                if (deferQuiesce) {
                    deferredQuiesces.add {
                        pendingQuiesce?.let {
                            pendingQuiesce = null
                            it()
                        }
                    }
                } else {
                    pendingQuiesce = null
                    complete()
                }
            }

            override fun cancelQuiesce() {
                pendingQuiesce?.let {
                    cancelQuiesceCount++
                    pendingQuiesce = null
                    deferredQuiesces.addFirst(it)
                }
            }

            override fun destroy() {
                destroyCount++
                if (destroyFailures.isNotEmpty()) throw destroyFailures.removeFirst()
            }
        }
    }

    override fun eraseProfileData(
        name: WebProfileName,
        callback: (ProfileDataErasureResult) -> Unit,
    ) {
        beforeErase()
        eraseCount++
        if (deferErase) deferred = { callback(eraseResult) } else callback(eraseResult)
    }

    fun completeNextQuiesce() = deferredQuiesces.removeFirst().invoke()

    fun completeDeferred() {
        deferred?.invoke()
        deferred = null
    }
}

private fun id(i: Int) =
    ProviderAccountId(
        ProviderId.CLAUDE,
        AccountKey.parseOpaque("acct_${i.toString(16).padStart(32,'0')}"),
    )

private fun profile(i: Int) =
    WebProfileName.fromStorage("aiq_profile_${i.toString(16).padStart(32,'0')}")
