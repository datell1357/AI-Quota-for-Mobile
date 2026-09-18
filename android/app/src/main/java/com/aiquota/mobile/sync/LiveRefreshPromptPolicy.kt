package com.aiquota.mobile.sync

import com.aiquota.mobile.local.ProviderUsageSnapshot
import com.aiquota.mobile.accounts.AccountAuthState
import com.aiquota.mobile.accounts.AccountLoginSessionBinding
import com.aiquota.mobile.accounts.ProviderCardDisplayRecord

// Battery exemption remains advice inside initial setup/settings, not a reason to
// reopen setup on every login after the user enabled Live Refresh and notifications.
@Suppress("UNUSED_PARAMETER") // Retain callers' battery-state argument for source compatibility.
object LiveRefreshPromptPolicy {
    fun shouldShowForAccounts(
        cards: List<ProviderCardDisplayRecord>,
        liveMonitoringEnabled: Boolean,
        canPostNotifications: Boolean,
        batteryOptimizationExempt: Boolean,
    ): Boolean = cards.any { it.authState == AccountAuthState.AUTHENTICATED } &&
        (!liveMonitoringEnabled || !canPostNotifications)

    fun shouldShowOnAppEntry(
        snapshots: List<ProviderUsageSnapshot>,
        liveMonitoringEnabled: Boolean,
        canPostNotifications: Boolean,
        batteryOptimizationExempt: Boolean
    ): Boolean {
        if (ForegroundRefreshPolicy.connectedProviders(snapshots).isEmpty()) return false
        return !liveMonitoringEnabled || !canPostNotifications
    }
}

/** Snapshot refreshes must not reopen a dismissed prompt, but a new login must. */
class LiveRefreshPromptLoginTracker {
    private val observedSessions = mutableSetOf<AccountLoginSessionBinding>()

    fun observe(cards: List<ProviderCardDisplayRecord>): Boolean {
        var loginCompleted = false
        cards.filter { it.authState == AccountAuthState.AUTHENTICATED }.forEach { card ->
            if (observedSessions.add(AccountLoginSessionBinding(card.accountId, card.generation, card.sessionRevision))) {
                loginCompleted = true
            }
        }
        return loginCompleted
    }
}
