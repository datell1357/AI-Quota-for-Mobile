package com.aiquota.mobile.ui

import com.aiquota.mobile.accounts.AccountKey
import com.aiquota.mobile.accounts.ProviderAccountId
import com.aiquota.mobile.accounts.ProviderAccountIdStorageCodec
import com.aiquota.mobile.local.ProviderId

sealed class AppRoute {
    data object Home : AppRoute()
    data class ProviderDetail(val accountId: ProviderAccountId) : AppRoute() {
        val providerId: ProviderId get() = accountId.providerId
    }
    data object Settings : AppRoute()

    fun toSavedState(): String = when (this) {
        Home -> ROUTE_HOME
        Settings -> ROUTE_SETTINGS
        is ProviderDetail -> "$ROUTE_PROVIDER:${ProviderAccountIdStorageCodec.encode(accountId)}"
    }

    fun resolveAgainst(
        activeAccountIds: Set<ProviderAccountId>,
        onAccepted: (ProviderAccountId) -> Unit = {},
    ): AppRoute = when (this) {
        is ProviderDetail -> if (accountId in activeAccountIds) {
            onAccepted(accountId)
            this
        } else {
            Home
        }
        else -> this
    }

    companion object {
        const val EXTRA_ROUTE = "com.aiquota.mobile.extra.ROUTE"
        const val EXTRA_PROVIDER_ACCOUNT_ID = "com.aiquota.mobile.extra.PROVIDER_ACCOUNT_ID"
        const val EXTRA_PROVIDER_ID = "com.aiquota.mobile.extra.PROVIDER_ID"
        const val EXTRA_PROVIDER_ID_LEGACY = "provider_id"
        const val ROUTE_HOME = "home"
        const val ROUTE_PROVIDER = "provider"
        const val ROUTE_SETTINGS = "settings"

        fun fromExtras(
            route: String?,
            providerAccountId: String? = null,
            providerIdStorageId: String? = null,
            legacyProviderIdStorageId: String? = null,
            legacyProviderResolver: (ProviderId) -> ProviderAccountId? = ::reservedDefaultAccount,
        ): AppRoute {
            val hasExactIdentity = providerAccountId != null
            val exactAccountId = providerAccountId?.let(::decodeRouteAccountId)
            if (hasExactIdentity && exactAccountId == null) return Home
            val legacyProvider = if (hasExactIdentity) null else {
                ProviderId.fromStorageId(providerIdStorageId ?: legacyProviderIdStorageId.orEmpty())
            }
            val detail = exactAccountId ?: legacyProvider?.let(legacyProviderResolver)
            return when (route) {
                ROUTE_PROVIDER -> detail?.let(::ProviderDetail) ?: Home
                ROUTE_SETTINGS -> Settings
                ROUTE_HOME -> Home
                else -> detail?.let(::ProviderDetail) ?: Home
            }
        }

        fun fromSavedState(value: String?): AppRoute = when {
            value == ROUTE_HOME -> Home
            value == ROUTE_SETTINGS -> Settings
            value?.startsWith("$ROUTE_PROVIDER:") == true -> {
                ProviderAccountIdStorageCodec.decodeOrNull(value.removePrefix("$ROUTE_PROVIDER:"))
                    ?.let(::ProviderDetail)
                    ?: Home
            }
            else -> Home
        }

        private fun decodeRouteAccountId(value: String): ProviderAccountId? {
            ProviderAccountIdStorageCodec.decodeOrNull(value)?.let { return it }
            val parts = value.split('/')
            if (parts.size != 2) return null
            val provider = ProviderId.fromStorageId(parts[0])
                ?.takeIf { it.storageId == parts[0] }
                ?: return null
            val key = when (parts[1]) {
                "default" -> AccountKey.reservedDefault()
                else -> runCatching { AccountKey.parseOpaque(parts[1]) }.getOrNull() ?: return null
            }
            return ProviderAccountId(provider, key)
        }

        private fun reservedDefaultAccount(providerId: ProviderId) =
            ProviderAccountId(providerId, AccountKey.reservedDefault())
    }
}
