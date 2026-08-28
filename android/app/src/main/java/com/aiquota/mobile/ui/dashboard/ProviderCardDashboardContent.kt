package com.aiquota.mobile.ui.dashboard

import com.aiquota.mobile.accounts.ProviderAccountId
import com.aiquota.mobile.accounts.ProviderCardDisplayRecord
import com.aiquota.mobile.local.ProviderConnectionState
import com.aiquota.mobile.local.ProviderRefreshState
import com.aiquota.mobile.local.ProviderUsageSnapshot

internal data class ProviderCardDashboardContent(
    val accountId: ProviderAccountId,
    val card: ProviderCardDisplayRecord,
    val snapshot: ProviderUsageSnapshot,
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
        snapshot = card.displayRecord.snapshot.copy(
            displayName = card.alias,
            connectionState = if (error == null) {
                card.displayRecord.snapshot.connectionState
            } else {
                ProviderConnectionState.ERROR
            },
            refreshState = if (accountId in busyAccountIds) {
                ProviderRefreshState.REFRESHING
            } else {
                card.displayRecord.snapshot.refreshState
            },
            message = error ?: card.displayRecord.snapshot.message,
        ),
    )
}
