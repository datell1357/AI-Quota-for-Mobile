package com.aiquota.mobile.ui.dashboard

import com.aiquota.mobile.accounts.ProviderAccountId
import com.aiquota.mobile.accounts.ProviderCardDisplayRecord
import com.aiquota.mobile.accounts.displaySnapshot
import com.aiquota.mobile.accounts.AccountAuthState
import com.aiquota.mobile.local.ProviderConnectionState
import com.aiquota.mobile.local.ProviderRefreshState
import com.aiquota.mobile.local.ProviderUsageSnapshot
import com.aiquota.mobile.local.shouldShowDashboardConnectAction

internal data class ProviderCardDashboardContent(
    val accountId: ProviderAccountId,
    val card: ProviderCardDisplayRecord,
    val snapshot: ProviderUsageSnapshot,
    val showConnectAction: Boolean = card.authState == AccountAuthState.REAUTH_REQUIRED ||
        snapshot.shouldShowDashboardConnectAction(),
)

/** Exact immutable mapping consumed by the UnifiedDashboardScreen exact-card overload. */
internal fun providerCardDashboardContent(
    cards: List<ProviderCardDisplayRecord>,
    busyAccountIds: Set<ProviderAccountId>,
    errors: Map<ProviderAccountId, String>,
): List<ProviderCardDashboardContent> = cards.map { card ->
    val accountId = card.accountId
    val error = errors[accountId]
    ProviderCardDashboardContent(
        accountId = accountId,
        card = card,
        snapshot = card.displaySnapshot().let { displayed ->
            displayed.copy(
                displayName = card.alias,
                connectionState = if (error == null) {
                    displayed.connectionState
                } else {
                    ProviderConnectionState.ERROR
                },
                refreshState = if (accountId in busyAccountIds) {
                    ProviderRefreshState.REFRESHING
                } else {
                    displayed.refreshState
                },
                message = error ?: displayed.message,
            )
        },
    )
}
