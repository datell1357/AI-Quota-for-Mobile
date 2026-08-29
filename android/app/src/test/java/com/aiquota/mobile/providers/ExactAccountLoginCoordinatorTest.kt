package com.aiquota.mobile.providers

import com.aiquota.mobile.accounts.AccountGeneration
import com.aiquota.mobile.accounts.AccountKey
import com.aiquota.mobile.accounts.AccountLoginSessionBinding
import com.aiquota.mobile.accounts.ExactAccountLoginAuthority
import com.aiquota.mobile.accounts.ExactProfileCookieSource
import com.aiquota.mobile.accounts.NamedProfileLifecycleManager
import com.aiquota.mobile.accounts.NamedProfileLifecycleStore
import com.aiquota.mobile.accounts.NamedProfilePlatform
import com.aiquota.mobile.accounts.NamedProfileSessionResource
import com.aiquota.mobile.accounts.ProfileDataErasureResult
import com.aiquota.mobile.accounts.ProviderAccountId
import com.aiquota.mobile.accounts.SessionQuiesceResult
import com.aiquota.mobile.accounts.SessionRevision
import com.aiquota.mobile.accounts.WebProfileName
import com.aiquota.mobile.accounts.InMemoryNamedProfileLifecycleStore
import com.aiquota.mobile.accounts.NamedProfileCapability
import com.aiquota.mobile.accounts.WebViewProviderIdentity
import com.aiquota.mobile.local.ProviderId
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

class ExactAccountLoginCoordinatorTest {
    @Test
    fun explicitBConnectCreatesOnlyBAndPopupInheritsBProfile() {
        val fixture = Fixture()
        val a = id(ProviderId.CODEX, 1)
        val b = id(ProviderId.CODEX, 2)
        fixture.authority.seed(a)
        fixture.authority.seed(b)

        assertTrue(fixture.profileStore.readAll().isEmpty())
        assertTrue(fixture.platform.createdProfiles.isEmpty())

        val opened = fixture.coordinator.connectExplicit(b) as ExactAccountLoginStartResult.Opened
        val lease = requireNotNull(opened.lease)
        val popupProfile = ExactProfileWindowFactory.profileNameForPopup(lease)

        assertEquals(b, opened.binding.accountId)
        assertEquals(lease.profileName, popupProfile)
        assertEquals(listOf(lease.profileName), fixture.platform.createdProfiles)
        assertEquals(lease.profileName, fixture.profileStore.read(b)?.profileName)
        assertNull(fixture.profileStore.read(defaultId(ProviderId.CODEX)))
        assertNull(fixture.profileStore.read(a))
        assertEquals(0, fixture.authority.requestCount(a))
    }

    @Test
    fun recreationResumesSameExactBindingAndRejectsOlderGeneration() {
        val fixture = Fixture()
        val b = id(ProviderId.CODEX, 2)
        fixture.authority.seed(b)
        val opened = fixture.open(b)
        val firstProfile = requireNotNull(opened.lease).profileName

        val resumed = fixture.restartedCoordinator().resume(opened.binding)
            as ExactAccountLoginStartResult.Opened

        assertEquals(opened.binding, resumed.binding)
        assertEquals(firstProfile, requireNotNull(resumed.lease).profileName)
        assertTrue(fixture.platform.createdProfiles.size == 1)

        fixture.authority.bumpGenerationAndSession(b)
        val stale = fixture.restartedCoordinator().resume(opened.binding)
        assertTrue(stale is ExactAccountLoginStartResult.Rejected)
    }

    @Test
    fun codexMarkersStayExactAcrossResultRestartLogoutAndVersionChanges() {
        val fixture = Fixture()
        val a = id(ProviderId.CODEX, 1)
        val b = id(ProviderId.CODEX, 2)
        fixture.authority.seed(a)
        fixture.authority.seed(b)
        val aLogin = fixture.open(a)
        val bLogin = fixture.open(b)

        assertEquals(LoginCallbackResult.Accepted, fixture.coordinator.complete(aLogin.binding, marker("A")))
        assertEquals(LoginCallbackResult.Accepted, fixture.coordinator.complete(bLogin.binding, marker("B")))
        assertEquals(marker("A"), fixture.contexts.restore(aLogin.binding))
        assertEquals(marker("B"), fixture.contexts.restore(bLogin.binding))

        val restarted = fixture.restartedCoordinator()
        assertEquals(marker("B"), restarted.restoreCurrent(b))
        assertTrue(restarted.logout(b))
        assertTrue(fixture.contexts.restore(bLogin.binding).isEmpty())
        assertEquals(marker("A"), fixture.contexts.restore(aLogin.binding))
        assertEquals(0, fixture.authority.requestCount(a))

        val currentB = fixture.authority.bumpGenerationAndSession(b)
        assertTrue(restarted.restore(currentB).isEmpty())
        assertEquals(marker("A"), restarted.restoreCurrent(a))
    }

    @Test
    fun missingBProfileMarksOnlyBReauthAndNeverOpensAOrDefault() {
        val fixture = Fixture()
        val default = defaultId(ProviderId.CODEX)
        val a = id(ProviderId.CODEX, 1)
        val b = id(ProviderId.CODEX, 2)
        listOf(default, a, b).forEach(fixture.authority::seed)
        listOf(default, a, b).forEach { accountId ->
            val opened = fixture.open(accountId)
            fixture.coordinator.complete(opened.binding, marker(accountId.toString()))
            requireNotNull(opened.lease).close()
        }
        fixture.platform.deletePhysical(requireNotNull(fixture.profileStore.read(b)).profileName)
        val profilesBefore = fixture.platform.openedProfiles.toList()

        val result = fixture.coordinator.connectExplicit(b)

        assertTrue(result is ExactAccountLoginStartResult.ReauthenticationRequired)
        assertEquals(b, (result as ExactAccountLoginStartResult.ReauthenticationRequired).accountId)
        assertEquals("AUTHENTICATED", fixture.authority.state(a))
        assertEquals("AUTHENTICATED", fixture.authority.state(default))
        assertEquals("REAUTH_REQUIRED", fixture.authority.state(b))
        assertEquals(profilesBefore, fixture.platform.openedProfiles)
        assertEquals(0, fixture.authority.requestCount(a))
        assertEquals(0, fixture.authority.requestCount(default))
    }

    @Test
    fun staleBCallbackCannotOverwriteCurrentBOrA() {
        val fixture = Fixture()
        val a = id(ProviderId.CODEX, 1)
        val b = id(ProviderId.CODEX, 2)
        fixture.authority.seed(a)
        fixture.authority.seed(b)
        val aLogin = fixture.open(a)
        val oldB = fixture.open(b)
        fixture.coordinator.complete(aLogin.binding, marker("A"))
        val currentB = fixture.open(b)
        fixture.coordinator.complete(currentB.binding, marker("B-current"))
        val writesBefore = fixture.contexts.writeCount

        assertEquals(LoginCallbackResult.Stale, fixture.coordinator.complete(oldB.binding, marker("B-stale")))
        assertEquals(writesBefore, fixture.contexts.writeCount)
        assertEquals(marker("B-current"), fixture.contexts.restore(currentB.binding))
        assertEquals(marker("A"), fixture.contexts.restore(aLogin.binding))
    }

    @Test
    fun claudeMirrorsCodexWhileOtherProvidersRequireReservedDefault() {
        val fixture = Fixture()
        val claude = id(ProviderId.CLAUDE, 3)
        val cursorNamed = id(ProviderId.CURSOR, 4)
        val cursorDefault = defaultId(ProviderId.CURSOR)
        listOf(claude, cursorNamed, cursorDefault).forEach(fixture.authority::seed)

        assertTrue(fixture.coordinator.connectExplicit(claude) is ExactAccountLoginStartResult.Opened)
        assertEquals(
            ExactAccountLoginStartResult.Rejected(LoginStartRejection.NON_RESERVED_SINGLE_ACCOUNT),
            fixture.coordinator.connectExplicit(cursorNamed),
        )
        val reserved = fixture.coordinator.connectExplicit(cursorDefault) as ExactAccountLoginStartResult.Opened
        assertNull(reserved.lease)
        assertNull(fixture.profileStore.read(cursorDefault))
    }

    @Test
    fun intentBoundaryRejectsMalformedAndFeatureDisabledUsesOnlyReservedDefault() {
        val sibling = id(ProviderId.CODEX, 9)
        val encoded = com.aiquota.mobile.accounts.ProviderAccountIdStorageCodec.encode(sibling)

        assertEquals(
            LoginIntentResolution.Exact(sibling),
            AccountLoginIntentBoundary.resolve(ProviderId.CODEX.storageId, encoded, multiAccountEnabled = true),
        )
        assertEquals(
            LoginIntentResolution.Rejected(LoginStartRejection.MALFORMED_ACCOUNT_ID),
            AccountLoginIntentBoundary.resolve(ProviderId.CODEX.storageId, "codex/not-an-id", true),
        )
        assertEquals(
            LoginIntentResolution.Exact(defaultId(ProviderId.CODEX)),
            AccountLoginIntentBoundary.resolve(ProviderId.CODEX.storageId, encoded, multiAccountEnabled = false),
        )
    }

    private fun Fixture.open(id: ProviderAccountId) =
        coordinator.connectExplicit(id) as ExactAccountLoginStartResult.Opened

    private fun marker(value: String) = mapOf("synthetic://marker" to mapOf("Authorization" to value))
}

private class Fixture {
    val authority = FakeLoginAuthority()
    val profileStore: NamedProfileLifecycleStore = InMemoryNamedProfileLifecycleStore()
    val platform = ExactProfilePlatform()
    val contexts = InMemoryExactLoginContextStore()
    private fun coordinator() = ExactAccountLoginCoordinator(
        authority,
        NamedProfileLifecycleManager(profileStore, platform),
        contexts,
    )
    val coordinator = coordinator()
    fun restartedCoordinator() = coordinator()
}

private class FakeLoginAuthority : ExactAccountLoginAuthority {
    private data class Row(var generation: Long, var session: Long, var state: String, var requests: Int = 0)
    private val rows = linkedMapOf<ProviderAccountId, Row>()

    fun seed(id: ProviderAccountId) { rows[id] = Row(0, 0, "AUTHENTICATED") }
    override fun beginAuthentication(id: ProviderAccountId): AccountLoginSessionBinding? {
        val row = rows[id] ?: return null
        row.generation++
        row.session++
        row.state = "AUTHENTICATING"
        return binding(id, row)
    }
    override fun resumeAuthentication(binding: AccountLoginSessionBinding): Boolean =
        current(binding)?.state == "AUTHENTICATING"

    override fun completeAuthentication(binding: AccountLoginSessionBinding, persist: () -> Boolean): Boolean {
        val row = current(binding) ?: return false
        if (!persist()) return false
        row.state = "AUTHENTICATED"
        return true
    }
    override fun markReauthentication(binding: AccountLoginSessionBinding): Boolean {
        val row = current(binding) ?: return false
        row.state = "REAUTH_REQUIRED"
        return true
    }
    override fun logoutExact(id: ProviderAccountId, clear: () -> Boolean): Boolean {
        val row = rows[id] ?: return false
        if (!clear()) return false
        row.generation++
        row.session++
        row.state = "REAUTH_REQUIRED"
        return true
    }
    override fun currentBinding(id: ProviderAccountId): AccountLoginSessionBinding? =
        rows[id]?.let { binding(id, it) }
    fun bumpGenerationAndSession(id: ProviderAccountId): AccountLoginSessionBinding {
        val row = rows.getValue(id)
        row.generation++
        row.session++
        return binding(id, row)
    }
    fun requestCount(id: ProviderAccountId) = rows[id]?.requests ?: 0
    fun state(id: ProviderAccountId) = rows.getValue(id).state
    private fun current(binding: AccountLoginSessionBinding): Row? = rows[binding.accountId]?.takeIf {
        it.generation == binding.generation.value && it.session == binding.sessionRevision.value
    }
    private fun binding(id: ProviderAccountId, row: Row) = AccountLoginSessionBinding(
        id, AccountGeneration.of(row.generation), SessionRevision.of(row.session)
    )
}

private class InMemoryExactLoginContextStore : ExactAccountLoginContextStore {
    private val values = mutableMapOf<AccountLoginSessionBinding, Map<String, Map<String, String>>>()
    var writeCount = 0
    override fun save(binding: AccountLoginSessionBinding, value: Map<String, Map<String, String>>): Boolean {
        writeCount++
        values.keys.removeAll { it.accountId == binding.accountId }
        values[binding] = value
        return true
    }
    override fun restore(binding: AccountLoginSessionBinding) = values[binding].orEmpty()
    override fun clear(accountId: ProviderAccountId): Boolean = values.keys.removeAll { it.accountId == accountId }.let { true }
}

private data class FixtureWindow(val profileName: WebProfileName)

private class ExactProfilePlatform : NamedProfilePlatform {
    val createdProfiles = mutableListOf<WebProfileName>()
    val openedProfiles = mutableListOf<WebProfileName>()
    private val physical = mutableSetOf<WebProfileName>()
    override fun probeCapability() = NamedProfileCapability.Supported(
        WebViewProviderIdentity("com.google.android.webview", "152.0.7977.54")
    )
    override fun requireUiThread() = Unit
    override fun createBoundSession(name: WebProfileName, createIfMissing: Boolean): NamedProfileSessionResource? {
        if (name !in physical) {
            if (!createIfMissing) return null
            physical += name
            createdProfiles += name
        }
        openedProfiles += name
        return object : NamedProfileSessionResource {
            override val webView = FixtureWindow(name)
            override val cookieManager = Any()
            override val cookieSource = ExactProfileCookieSource { _, _ -> null }
            override val webStorage = Any()
            override val serviceWorkerController = Any()
            override fun quiesce(callback: (SessionQuiesceResult) -> Unit) =
                callback(SessionQuiesceResult.CommittedCrossOriginPlatformAsync)
            override fun destroy() = Unit
        }
    }
    override fun eraseProfileData(name: WebProfileName, callback: (ProfileDataErasureResult) -> Unit) =
        callback(ProfileDataErasureResult.Completed)
    fun deletePhysical(name: WebProfileName) { physical -= name }
}

private fun id(provider: ProviderId, value: Int) = ProviderAccountId(
    provider,
    AccountKey.parseOpaque("acct_${value.toString(16).padStart(32, '0')}")
)
private fun defaultId(provider: ProviderId) = ProviderAccountId(provider, AccountKey.reservedDefault())
