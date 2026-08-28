package com.aiquota.mobile.accounts

import android.content.Context
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.local.ProviderPreferencesRepository
import com.aiquota.mobile.providers.ProviderResetNotificationStateRepository
import com.aiquota.mobile.providers.ProviderSessionResetter
import com.aiquota.mobile.providers.ProviderUsageThresholdNotificationStateRepository
import com.aiquota.mobile.widget.WidgetSnapshotCache

internal class ConservativeSingleAccountProviderCleanup(
    context: Context,
) : ProviderSpecificAccountCleanup {
    private val resetter = ProviderSessionResetter(context.applicationContext)

    override fun supports(providerId: ProviderId): Boolean =
        (ProviderCardCatalogPolicy.classify(providerId) as? ProviderCardProviderPolicy.Released)
            ?.multiplicity == ProviderCardMultiplicity.SINGLE_RESERVED_DEFAULT

    override fun erase(accountId: ProviderAccountId): Boolean = runCatching {
        require(accountId.accountKey == AccountKey.reservedDefault())
        resetter.disconnect(accountId.providerId)
        true
    }.getOrDefault(false)
}

internal class ConservativePreferenceArtifactStore(
    context: Context,
) : ExactCardArtifactStore {
    private val repository = ProviderPreferencesRepository(context.applicationContext)

    override fun eraseExact(accountId: ProviderAccountId): Boolean =
        if (accountId.isSingleReservedDefault()) {
            repository.clearSingleAccountProviderArtifacts(accountId.providerId)
        } else {
            true
        }
}

internal class ConservativeWidgetArtifactStore(
    context: Context,
) : ExactCardArtifactStore {
    private val cache = WidgetSnapshotCache(context.applicationContext)

    override fun eraseExact(accountId: ProviderAccountId): Boolean =
        if (accountId.isSingleReservedDefault()) {
            cache.removeSingleAccountProvider(accountId.providerId)
        } else {
            true
        }
}

internal class ConservativeNotificationArtifactStore(
    context: Context,
) : ExactCardArtifactStore {
    private val reset = ProviderResetNotificationStateRepository(context.applicationContext)
    private val threshold = ProviderUsageThresholdNotificationStateRepository(context.applicationContext)

    override fun eraseExact(accountId: ProviderAccountId): Boolean =
        if (accountId.isSingleReservedDefault()) {
            reset.clearProvider(accountId.providerId) && threshold.clearProvider(accountId.providerId)
        } else {
            true
        }
}

private fun ProviderAccountId.isSingleReservedDefault(): Boolean =
    accountKey == AccountKey.reservedDefault() &&
        (ProviderCardCatalogPolicy.classify(providerId) as? ProviderCardProviderPolicy.Released)
            ?.multiplicity == ProviderCardMultiplicity.SINGLE_RESERVED_DEFAULT
