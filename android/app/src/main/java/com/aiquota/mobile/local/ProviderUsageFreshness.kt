package com.aiquota.mobile.local

import java.time.Instant

enum class ProviderUsageFreshness {
    NO_DATA,
    FRESH,
    COLLECTING,
    STALE,
    AUTH_REQUIRED,
    ERROR
}

const val USAGE_REFRESH_DELAY_SECONDS = 10 * 60L

/** Display-only state: never persist this as an authentication or scheduling decision. */
fun usageDisplayConnectionState(
    state: ProviderConnectionState,
    updatedAt: String,
    hasUsage: Boolean,
    now: Instant = Instant.now(),
): ProviderConnectionState {
    if (!hasUsage || state != ProviderConnectionState.CONNECTED) return state
    val collectedAt = runCatching { Instant.parse(updatedAt) }.getOrNull() ?: return state
    return if (!collectedAt.isAfter(now.minusSeconds(USAGE_REFRESH_DELAY_SECONDS))) {
        ProviderConnectionState.STALE
    } else state
}

fun ProviderUsageSnapshot.usageDisplayConnectionState(now: Instant = Instant.now()): ProviderConnectionState =
    usageDisplayConnectionState(connectionState, updatedAt, lines.isNotEmpty(), now)

fun ProviderUsageSnapshot.usageFreshness(now: Instant = Instant.now()): ProviderUsageFreshness {
    if (refreshState == ProviderRefreshState.REFRESHING || connectionState == ProviderConnectionState.COLLECTING) {
        return ProviderUsageFreshness.COLLECTING
    }
    if (lines.isEmpty()) {
        return when (connectionState) {
            ProviderConnectionState.INTERACTIVE_AUTH_REQUIRED -> ProviderUsageFreshness.AUTH_REQUIRED
            ProviderConnectionState.ERROR -> ProviderUsageFreshness.ERROR
            else -> ProviderUsageFreshness.NO_DATA
        }
    }
    return when (usageDisplayConnectionState(now)) {
        ProviderConnectionState.CONNECTED -> ProviderUsageFreshness.FRESH
        ProviderConnectionState.STALE -> ProviderUsageFreshness.STALE
        ProviderConnectionState.INTERACTIVE_AUTH_REQUIRED -> ProviderUsageFreshness.AUTH_REQUIRED
        ProviderConnectionState.ERROR,
        ProviderConnectionState.UNAVAILABLE -> ProviderUsageFreshness.ERROR
        else -> ProviderUsageFreshness.FRESH
    }
}

fun ProviderUsageSnapshot.hasLastKnownUsage(now: Instant = Instant.now()): Boolean {
    return lines.isNotEmpty() && usageFreshness(now) in setOf(
        ProviderUsageFreshness.STALE,
        ProviderUsageFreshness.AUTH_REQUIRED,
        ProviderUsageFreshness.ERROR
    )
}
