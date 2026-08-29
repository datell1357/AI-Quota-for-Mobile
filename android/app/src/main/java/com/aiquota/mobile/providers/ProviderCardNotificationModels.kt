package com.aiquota.mobile.providers

import com.aiquota.mobile.accounts.AccountGeneration
import com.aiquota.mobile.accounts.DisplayVersion
import com.aiquota.mobile.accounts.ProviderAccountId
import com.aiquota.mobile.accounts.SessionRevision
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.local.ProviderUsageSnapshot

data class ProviderCardNotificationSnapshot(
    val accountId: ProviderAccountId,
    val alias: String,
    val generation: AccountGeneration,
    val sessionRevision: SessionRevision,
    val version: DisplayVersion,
    val snapshot: ProviderUsageSnapshot,
) {
    init {
        require(alias.isNotBlank())
        require(snapshot.providerId == accountId.providerId)
    }
}

data class ProviderUsageThresholdNotification(
    val accountLineKey: ProviderAccountLineKey,
    val alias: String,
    val lineLabel: String,
    val lineIndex: Int,
    val thresholdPercent: Int,
    val generation: AccountGeneration,
    val sessionRevision: SessionRevision,
    val version: DisplayVersion,
) {
    val accountId: ProviderAccountId get() = accountLineKey.accountId
    val providerId: ProviderId get() = accountId.providerId
    val lineKey: String get() = accountLineKey.lineKey
}

data class ProviderResetNotification(
    val accountLineKey: ProviderAccountLineKey,
    val alias: String,
    val lineLabel: String,
    val lineIndex: Int,
    val generation: AccountGeneration,
    val sessionRevision: SessionRevision,
    val version: DisplayVersion,
) {
    val accountId: ProviderAccountId get() = accountLineKey.accountId
    val providerId: ProviderId get() = accountId.providerId
    val lineKey: String get() = accountLineKey.lineKey
}
