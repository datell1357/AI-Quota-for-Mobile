package com.aiquota.mobile.accounts

import android.content.Context
import android.os.Looper
import android.webkit.CookieManager
import android.webkit.ServiceWorkerController
import android.webkit.WebStorage
import android.webkit.WebView
import androidx.webkit.ProfileStore
import androidx.webkit.WebViewCompat
import androidx.webkit.WebViewFeature
import com.aiquota.mobile.local.ProviderId
import org.json.JSONArray
import org.json.JSONObject

class AndroidNamedProfileLifecycleStore(context: Context) : NamedProfileLifecycleStore {
    private val preferences = context.applicationContext.getSharedPreferences(PREFERENCES, Context.MODE_PRIVATE)
    private val lock = Any()

    override fun read(accountId: ProviderAccountId): AccountProfileBinding? = synchronized(lock) {
        decodeAll().firstOrNull { it.accountId == accountId }
    }

    override fun readAll(): List<AccountProfileBinding> = synchronized(lock) { decodeAll() }

    override fun write(binding: AccountProfileBinding) = synchronized(lock) {
        val records = decodeAll().associateByTo(linkedMapOf()) { it.accountId }
        val current = records[binding.accountId]
        require(current == null || current.profileName == binding.profileName) { "Profile name is immutable" }
        require(records.values.none { it.accountId != binding.accountId && it.profileName == binding.profileName }) {
            "WebView profile name is already bound"
        }
        require(current?.state !in TERMINAL_STATES || current == binding) { "Deleted profile binding is immutable" }
        records[binding.accountId] = binding
        val array = JSONArray()
        records.values.sortedWith(compareBy({ it.accountId.providerId.ordinal }, { it.accountId.accountKey.storageValue() }))
            .forEach { array.put(encode(it)) }
        check(preferences.edit().putString(RECORDS, array.toString()).commit()) {
            "Failed to persist named profile lifecycle"
        }
    }

    private fun decodeAll(): List<AccountProfileBinding> {
        val raw = preferences.getString(RECORDS, null) ?: return emptyList()
        val array = JSONArray(raw)
        val result = ArrayList<AccountProfileBinding>(array.length())
        val accounts = mutableSetOf<ProviderAccountId>()
        val profiles = mutableSetOf<WebProfileName>()
        repeat(array.length()) { index ->
            val binding = decode(array.getJSONObject(index))
            require(accounts.add(binding.accountId)) { "Duplicate account profile binding" }
            require(profiles.add(binding.profileName)) { "Duplicate WebView profile name" }
            result += binding
        }
        return result
    }

    private fun encode(binding: AccountProfileBinding) = JSONObject()
        .put("provider", binding.accountId.providerId.storageId)
        .put("account", binding.accountId.accountKey.storageValue())
        .put("profile", binding.profileName.storageValue())
        .put("state", binding.state.name)
        .put("receipt", binding.receipt?.disposition?.name ?: JSONObject.NULL)

    private fun decode(value: JSONObject): AccountProfileBinding {
        require(value.length() == 5) { "Malformed profile lifecycle record" }
        val accountId = ProviderAccountId(
            requireNotNull(ProviderId.fromStorageId(value.getString("provider"))) { "Unknown provider" },
            AccountKey.fromStorage(value.getString("account")),
        )
        val profileName = WebProfileName.fromStorage(value.getString("profile"))
        val state = ProfileLifecycleState.valueOf(value.getString("state"))
        val disposition = if (value.isNull("receipt")) null
        else ProfileDeletionDisposition.valueOf(value.getString("receipt"))
        val receipt = disposition?.let { ProfileDeletionReceipt(accountId, profileName, it) }
        return AccountProfileBinding(accountId, profileName, state, receipt)
    }

    private companion object {
        const val PREFERENCES = "named_profile_lifecycle_v1"
        const val RECORDS = "records"
        val TERMINAL_STATES = setOf(ProfileLifecycleState.DELETION_ACCEPTED, ProfileLifecycleState.ALREADY_ABSENT)
    }
}

class AndroidXNamedProfilePlatform(private val context: Context) : NamedProfilePlatform {
    private var profileActivityStarted = false

    override fun isSupported(): Boolean = WebViewFeature.isFeatureSupported(WebViewFeature.MULTI_PROFILE)

    override fun requireUiThread() {
        check(Looper.myLooper() == Looper.getMainLooper()) { "Named profile lifecycle requires UI thread" }
    }

    override fun assertColdStartDeleteAllowed() {
        check(!profileActivityStarted) { "Cold-start deletion must precede every profile handle and WebView bind" }
    }

    override fun allProfileNames(): Set<String> {
        requireUiThread()
        check(isSupported()) { "Named WebView profiles are unsupported" }
        assertColdStartDeleteAllowed()
        return ProfileStore.getInstance().allProfileNames.toSet()
    }

    override fun deleteProfile(name: WebProfileName): Boolean {
        requireUiThread()
        check(isSupported()) { "Named WebView profiles are unsupported" }
        assertColdStartDeleteAllowed()
        return ProfileStore.getInstance().deleteProfile(name.storageValue())
    }

    override fun createBoundSession(name: WebProfileName): NamedProfileSessionResource {
        requireUiThread()
        check(isSupported()) { "Named WebView profiles are unsupported" }
        profileActivityStarted = true
        val webView = WebView(context)
        try {
            WebViewCompat.setProfile(webView, name.storageValue())
            val profile = ProfileStore.getInstance().getOrCreateProfile(name.storageValue())
            return AndroidNamedProfileSessionResource(
                webView,
                profile.cookieManager,
                profile.webStorage,
                profile.serviceWorkerController,
            )
        } catch (failure: RuntimeException) {
            webView.destroy()
            throw failure
        }
    }
}

private class AndroidNamedProfileSessionResource(
    override val webView: WebView,
    override val cookieManager: CookieManager,
    override val webStorage: WebStorage,
    override val serviceWorkerController: ServiceWorkerController,
) : NamedProfileSessionResource {
    override fun destroy() = webView.destroy()
}

fun NamedProfileLease.requireAndroidWebView(): WebView = webView as WebView
fun NamedProfileLease.requireAndroidCookieManager(): CookieManager = cookieManager as CookieManager
fun NamedProfileLease.requireAndroidWebStorage(): WebStorage = webStorage as WebStorage
fun NamedProfileLease.requireAndroidServiceWorkerController(): ServiceWorkerController =
    serviceWorkerController as ServiceWorkerController
