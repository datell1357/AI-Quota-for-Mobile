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
    fun `failure leaves pending`() {
        val p = FakePlatform().apply { eraseResult = ProfileDataErasureResult.Failed("x") }
        val s = InMemoryNamedProfileLifecycleStore()
        val m = manager(s, p)
        val id = id(1)
        m.ensureBinding(id)
        m.requestErasure(id)
        assertEquals(ProfileLifecycleState.ERASURE_PENDING, s.read(id)!!.state)
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
    private var deferred: (() -> Unit)? = null

    override fun probeCapability() =
        NamedProfileCapability.Supported(
            WebViewProviderIdentity("com.google.android.webview", "152.0.7977.54")
        )

    override fun requireUiThread() {
        if (!ui) throw NamedProfileThreadViolation()
    }

    override fun createBoundSession(name: WebProfileName): NamedProfileSessionResource {
        bindCount++
        return object : NamedProfileSessionResource {
            override val webView = Any()
            override val cookieManager = Any()
            override val webStorage = Any()
            override val serviceWorkerController = Any()

            override fun quiesce(callback: (SessionQuiesceResult) -> Unit) =
                callback(SessionQuiesceResult.CommittedCrossOriginPlatformAsync)

            override fun destroy() {}
        }
    }

    override fun eraseProfileData(
        name: WebProfileName,
        callback: (ProfileDataErasureResult) -> Unit,
    ) {
        eraseCount++
        if (deferErase) deferred = { callback(eraseResult) } else callback(eraseResult)
    }

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
