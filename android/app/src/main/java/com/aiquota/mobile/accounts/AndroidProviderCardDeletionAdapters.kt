package com.aiquota.mobile.accounts

import android.content.Context
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.local.ProviderCardPreferencesRepository
import com.aiquota.mobile.notification.ProviderNotificationArtifacts
import com.aiquota.mobile.providers.ProviderResetNotificationStateRepository
import com.aiquota.mobile.providers.ProviderSessionResetter
import com.aiquota.mobile.providers.ProviderUsageThresholdNotificationStateRepository
import com.aiquota.mobile.widget.ProviderUsageWidgetProvider
import com.aiquota.mobile.widget.WidgetRefreshFeedback
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
    private val appContext = context.applicationContext
    private val repository = ProviderCardPreferencesRepository(appContext)

    override fun eraseExact(accountId: ProviderAccountId): Boolean {
        val appWidgetIds = repository.providerWidgetIds(accountId)
        if (!repository.clearExactCardArtifacts(accountId)) return false
        appWidgetIds.forEach { appWidgetId ->
            WidgetRefreshFeedback.clearWidgetRefresh(appContext, appWidgetId)
            if (ProviderUsageWidgetProvider.isActiveWidget(appContext, appWidgetId)) {
                ProviderUsageWidgetProvider.updateWidget(appContext, appWidgetId)
            }
        }
        return true
    }
}

internal class ConservativeWidgetArtifactStore(
    context: Context,
) : ExactCardArtifactStore {
    private val cache = WidgetSnapshotCache(context.applicationContext)

    override fun eraseExact(accountId: ProviderAccountId): Boolean =
        cache.removeExactCard(accountId)
}

internal class ConservativeNotificationArtifactStore(
    context: Context,
) : ExactCardArtifactStore {
    private val appContext = context.applicationContext
    private val reset = ProviderResetNotificationStateRepository(appContext)
    private val threshold = ProviderUsageThresholdNotificationStateRepository(appContext)

    override fun eraseExact(accountId: ProviderAccountId): Boolean =
        ProviderNotificationArtifacts.eraseExact(appContext, accountId) &&
            reset.clearExact(accountId) &&
            threshold.clearExact(accountId)
}
