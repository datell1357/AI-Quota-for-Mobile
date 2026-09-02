package com.aiquota.mobile.providers

import android.content.Context
import android.util.Log
import android.webkit.CookieManager
import androidx.webkit.ProfileStore
import com.aiquota.mobile.accounts.AccountAuthState
import com.aiquota.mobile.accounts.AccountKey
import com.aiquota.mobile.accounts.AndroidNamedProfileLifecycleStore
import com.aiquota.mobile.accounts.AndroidXNamedProfilePlatform
import com.aiquota.mobile.accounts.MainProcessAccountAuthority
import com.aiquota.mobile.accounts.NamedProfileCapability
import com.aiquota.mobile.accounts.NamedProfileLifecycleManager
import com.aiquota.mobile.accounts.ProviderAccountId
import com.aiquota.mobile.local.ProviderId

/**
 * Copies a legacy (default WebView profile) cookie header into an exact profile, one host-only
 * cookie per pair. Attributes are not recoverable from `CookieManager.getCookie`, so every cookie
 * is written as a Secure session cookie on `/`; WebView persists session cookies on flush.
 */
internal object LegacySessionCookieCarryOver {
    fun parseCookieHeader(header: String?): List<Pair<String, String>> =
        header.orEmpty()
            .split(';')
            .map(String::trim)
            .filter { it.isNotEmpty() }
            .mapNotNull { pair ->
                val separator = pair.indexOf('=')
                if (separator <= 0) null else pair.substring(0, separator) to pair.substring(separator + 1)
            }

    /** Returns the number of cookies written. */
    fun copy(
        hosts: Collection<String>,
        read: (url: String) -> String?,
        write: (url: String, cookie: String) -> Unit,
    ): Int {
        var written = 0
        hosts.forEach { host ->
            val url = "https://$host"
            parseCookieHeader(read(url)).forEach { (name, value) ->
                write(url, "$name=$value; Path=/; Secure")
                written++
            }
        }
        return written
    }
}

/**
 * One-time step after the provider-card migration: a legacy Claude/Codex login that lived in the
 * default WebView profile is carried into the account's exact named profile so existing users do
 * not have to sign in again. It mirrors a real login (begin → persist context → complete); any
 * failure leaves the account in REAUTH_REQUIRED exactly as before.
 */
internal class LegacySessionCarryOver(context: Context) {
    private val appContext = context.applicationContext

    fun run(): Map<ProviderId, Boolean> {
        val platform = AndroidXNamedProfilePlatform(appContext)
        if (platform.probeCapability() !is NamedProfileCapability.Supported) return emptyMap()
        val legacyCookies = CookieManager.getInstance()
        return MainProcessAccountAuthority.open(appContext).use { authority ->
            AndroidNamedProfileLifecycleStore(appContext).use { store ->
                val lifecycle = NamedProfileLifecycleManager(store, platform)
                NAMED_PROFILE_PROVIDERS.associateWith { provider ->
                    runCatching {
                        carry(provider, authority, store, lifecycle, legacyCookies)
                    }.getOrElse { failure ->
                        Log.w(TAG, "provider=${provider.storageId} legacySessionCarryOver=failed", failure)
                        false
                    }
                }
            }
        }
    }

    private fun carry(
        provider: ProviderId,
        authority: MainProcessAccountAuthority,
        store: AndroidNamedProfileLifecycleStore,
        lifecycle: NamedProfileLifecycleManager,
        legacyCookies: CookieManager,
    ): Boolean {
        val id = ProviderAccountId(provider, AccountKey.reservedDefault())
        val account = authority.accountUsageRecord(id)?.account ?: return false
        if (account.authState != AccountAuthState.REAUTH_REQUIRED || store.read(id) != null) return false
        val legacyContext = when (provider) {
            ProviderId.CODEX -> CodexNativeAuthContextStore(appContext).restore()
            ProviderId.CLAUDE -> ClaudeNativeRequestContextStore(appContext).restore()
            else -> emptyMap()
        }
        if (legacyContext.isEmpty()) return false
        val hosts = ProviderDefinitionRegistry.definitionFor(provider).collectorAllowedHosts
        if (hosts.none { !legacyCookies.getCookie("https://$it").isNullOrBlank() }) return false

        val profileName = lifecycle.ensureBinding(id).profileName
        val profile = ProfileStore.getInstance().getOrCreateProfile(profileName.storageValue())
        val binding = authority.beginAuthentication(id) ?: return false
        val copied = LegacySessionCookieCarryOver.copy(hosts, legacyCookies::getCookie, profile.cookieManager::setCookie)
        profile.cookieManager.flush()
        val completed = copied > 0 && authority.completeAuthentication(binding) {
            when (provider) {
                ProviderId.CODEX -> CodexNativeAuthContextStore(appContext).saveExact(binding, legacyContext)
                ProviderId.CLAUDE -> ClaudeNativeRequestContextStore(appContext).saveExact(binding, legacyContext)
                else -> false
            }
        }
        if (!completed) authority.markReauthentication(binding)
        Log.i(TAG, "provider=${provider.storageId} legacySessionCarryOver=$completed cookies=$copied")
        return completed
    }

    private companion object {
        const val TAG = "AIQuotaMigration"
    }
}
