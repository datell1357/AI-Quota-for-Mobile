package com.aiquota.mobile.widget

import android.content.Context
import com.aiquota.mobile.accounts.AccountDeletionState
import com.aiquota.mobile.accounts.AccountState
import com.aiquota.mobile.accounts.AccountUsageRepository
import com.aiquota.mobile.accounts.ProviderAccountId
import com.aiquota.mobile.accounts.ProviderAccountIdStorageCodec
import com.aiquota.mobile.accounts.ProviderCardCatalogLoadResult
import com.aiquota.mobile.accounts.ProviderCardCatalogLoader
import com.aiquota.mobile.accounts.ProviderCardDisplayRecord
import com.aiquota.mobile.accounts.VersionedDisplayRecord
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.providers.ProviderSnapshotCodec

data class ProviderWidgetCardSelection(
    val accountId: ProviderAccountId,
    val alias: String,
) {
    val providerId: ProviderId get() = accountId.providerId
}

internal data class ProviderWidgetPreselection(
    val encodedAccountId: String?,
    val legacyProviderId: String?,
) {
    val isPresent: Boolean get() = encodedAccountId != null || legacyProviderId != null
}

data class ProviderWidgetPresentation(
    val accountId: ProviderAccountId,
    val alias: String,
    val payload: ProviderWidgetPayload,
) {
    val providerId: ProviderId get() = accountId.providerId
}

internal data class ProviderWidgetRenderInput(
    val providerId: ProviderId,
    val displayName: String,
    val snapshotJson: String,
    val accountId: ProviderAccountId?,
)

object ProviderWidgetCardCatalog {
    fun activeSelections(context: Context): List<ProviderWidgetCardSelection> =
        AccountUsageRepository.open(context.applicationContext).use { repository ->
            selectionsFrom(ProviderCardCatalogLoader(repository).load())
        }

    fun activeRecord(context: Context, accountId: ProviderAccountId): VersionedDisplayRecord? =
        AccountUsageRepository.open(context.applicationContext).use { repository ->
            repository.read(accountId)?.takeIf(::isActiveProviderWidgetRecord)
        }

    internal fun selectionsFrom(result: ProviderCardCatalogLoadResult): List<ProviderWidgetCardSelection> =
        when (result) {
            is ProviderCardCatalogLoadResult.Loaded -> result.snapshot.cards.map(::selection)
            is ProviderCardCatalogLoadResult.Rejected -> emptyList()
        }

    internal fun resolvePreselection(
        requested: ProviderWidgetPreselection,
        cards: List<ProviderWidgetCardSelection>,
        compatibilityAccount: (ProviderId) -> ProviderAccountId?,
    ): ProviderWidgetCardSelection? {
        val accountId = if (requested.encodedAccountId != null) {
            ProviderAccountIdStorageCodec.decodeOrNull(requested.encodedAccountId)
        } else {
            ProviderId.fromStorageId(requested.legacyProviderId)?.let(compatibilityAccount)
        }
        return accountId?.let { selected -> cards.singleOrNull { it.accountId == selected } }
    }

    private fun selection(record: ProviderCardDisplayRecord) = ProviderWidgetCardSelection(
        accountId = record.accountId,
        alias = record.alias,
    )
}

internal fun isActiveProviderWidgetRecord(record: VersionedDisplayRecord): Boolean =
    record.account.state == AccountState.ACTIVE &&
        record.account.deletionState == AccountDeletionState.NONE &&
        !record.account.alias.isNullOrBlank()

internal fun providerWidgetSnapshotJson(
    context: Context,
    accountId: ProviderAccountId,
    record: VersionedDisplayRecord,
): String = WidgetSnapshotCache(context).readExactCardState(accountId)?.snapshotJson
    ?.takeIf(String::isNotBlank)
    ?: ProviderSnapshotCodec.encode(listOf(record.snapshot))

internal fun providerWidgetPresentation(
    record: VersionedDisplayRecord,
    cachedSnapshotJson: String?,
): ProviderWidgetPresentation {
    require(isActiveProviderWidgetRecord(record))
    val accountId = record.account.id
    val snapshotJson = cachedSnapshotJson
        ?.takeIf(String::isNotBlank)
        ?: ProviderSnapshotCodec.encode(listOf(record.snapshot))
    return ProviderWidgetPresentation(
        accountId = accountId,
        alias = requireNotNull(record.account.alias),
        payload = providerWidgetPayload(snapshotJson, accountId.providerId.storageId),
    )
}
