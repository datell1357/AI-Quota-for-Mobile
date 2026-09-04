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
    /** 같은 provider에 카드가 둘 이상이라 알림에서 계정을 구분해야 하는지. */
    val disambiguateAccount: Boolean = false,
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
    /** 같은 provider에 카드가 둘 이상이라 알림에서 계정을 구분해야 하는지. */
    val disambiguateAccount: Boolean = false,
) {
    val accountId: ProviderAccountId get() = accountLineKey.accountId
    val providerId: ProviderId get() = accountId.providerId
    val lineKey: String get() = accountLineKey.lineKey
}

/**
 * 같은 provider에 카드가 둘 이상일 때만 알림에서 계정 별칭을 앞에 붙인다. 단일 계정 사용자는
 * 기존(provider 이름만 쓰는) 알림 문구를 그대로 본다.
 */
internal fun accountsNeedingAliasIn(
    cards: List<ProviderCardNotificationSnapshot>,
): Set<ProviderAccountId> {
    val countByProvider = cards.groupingBy { it.accountId.providerId }.eachCount()
    return cards.filter { countByProvider.getValue(it.accountId.providerId) > 1 }
        .map { it.accountId }
        .toSet()
}
