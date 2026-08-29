package com.aiquota.mobile.widget

import android.appwidget.AppWidgetManager
import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.net.Uri
import com.aiquota.mobile.MainActivity
import com.aiquota.mobile.accounts.AccountUsageRepository
import com.aiquota.mobile.accounts.ProviderAccountId
import com.aiquota.mobile.accounts.ProviderAccountIdStorageCodec
import com.aiquota.mobile.local.ProviderCardPreferencesRepository
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.ui.AppRoute

sealed interface ProviderWidgetActionResolution {
    data object Unified : ProviderWidgetActionResolution
    data class LegacyProvider(val providerId: ProviderId) : ProviderWidgetActionResolution
    data class Exact(val accountId: ProviderAccountId) : ProviderWidgetActionResolution
    data object Rejected : ProviderWidgetActionResolution
}

data class ProviderWidgetActionRequest(
    val appWidgetId: Int,
    val rawProviderId: String?,
    val rawAccountId: String?,
    val multiAccountEnabled: Boolean,
)

data class ProviderWidgetActionAuthority(
    val isActive: (ProviderAccountId) -> Boolean,
    val compatibilityAccount: (ProviderId) -> ProviderAccountId?,
    val currentBinding: (Int) -> ProviderAccountId?,
)

object ProviderWidgetActionBoundary {
    fun resolve(
        request: ProviderWidgetActionRequest,
        authority: ProviderWidgetActionAuthority,
    ): ProviderWidgetActionResolution {
        if (request.rawProviderId == null && request.rawAccountId == null) {
            return ProviderWidgetActionResolution.Unified
        }
        val providerId = ProviderId.fromStorageId(request.rawProviderId)
            ?: return ProviderWidgetActionResolution.Rejected
        if (!request.multiAccountEnabled) {
            return if (request.rawAccountId == null) ProviderWidgetActionResolution.LegacyProvider(providerId)
            else ProviderWidgetActionResolution.Rejected
        }
        val accountId: ProviderAccountId = if (request.rawAccountId == null) {
            authority.compatibilityAccount(providerId) ?: return ProviderWidgetActionResolution.Rejected
        } else {
            ProviderAccountIdStorageCodec.decodeOrNull(request.rawAccountId)
                ?: return ProviderWidgetActionResolution.Rejected
        }
        if (request.appWidgetId == AppWidgetManager.INVALID_APPWIDGET_ID ||
            accountId.providerId != providerId ||
            authority.currentBinding(request.appWidgetId) != accountId ||
            !authority.isActive(accountId)
        ) {
            return ProviderWidgetActionResolution.Rejected
        }
        return ProviderWidgetActionResolution.Exact(accountId)
    }
}

internal fun resolveProviderWidgetAction(
    context: Context,
    request: ProviderWidgetActionRequest,
): ProviderWidgetActionResolution {
    if (!request.multiAccountEnabled) {
        return ProviderWidgetActionBoundary.resolve(
            request,
            ProviderWidgetActionAuthority(
                isActive = { false },
                compatibilityAccount = { null },
                currentBinding = { null },
            ),
        )
    }
    val appContext = context.applicationContext
    val bindings = ProviderCardPreferencesRepository(appContext)
    return AccountUsageRepository.open(appContext).use { repository ->
        ProviderWidgetActionBoundary.resolve(
            request,
            ProviderWidgetActionAuthority(
                isActive = { id -> repository.read(id)?.let(::isActiveProviderWidgetRecord) == true },
                compatibilityAccount = repository::compatibilityAccount,
                currentBinding = bindings::providerWidgetSelection,
            ),
        )
    }
}

class ProviderWidgetDetailReceiver : BroadcastReceiver() {
    override fun onReceive(context: Context, intent: Intent?) {
        if (intent?.action != ACTION_WIDGET_DETAIL) return
        val appWidgetId = intent.getIntExtra(
            WidgetRefreshActions.EXTRA_APP_WIDGET_ID,
            AppWidgetManager.INVALID_APPWIDGET_ID,
        )
        val rawAccountId = intent.getStringExtra(WidgetRefreshActions.EXTRA_PROVIDER_ACCOUNT_ID)
            ?: return
        val resolution = resolveProviderWidgetAction(
            context,
            ProviderWidgetActionRequest(
                appWidgetId,
                intent.getStringExtra(WidgetRefreshActions.EXTRA_PROVIDER_ID),
                rawAccountId,
                com.aiquota.mobile.BuildConfig.MULTI_ACCOUNT_ENABLED,
            ),
        )
        val accountId = (resolution as? ProviderWidgetActionResolution.Exact)?.accountId ?: return
        context.startActivity(providerWidgetDestinationIntent(context, appWidgetId, accountId))
    }
}

internal fun providerWidgetDetailIntent(
    context: Context,
    appWidgetId: Int,
    accountId: ProviderAccountId,
): Intent = Intent(context, ProviderWidgetDetailReceiver::class.java)
    .setAction(ACTION_WIDGET_DETAIL)
    .setData(widgetActionData("detail", appWidgetId, accountId))
    .putExtra(WidgetRefreshActions.EXTRA_APP_WIDGET_ID, appWidgetId)
    .putExtra(WidgetRefreshActions.EXTRA_PROVIDER_ID, accountId.providerId.storageId)
    .putExtra(WidgetRefreshActions.EXTRA_PROVIDER_ACCOUNT_ID, ProviderAccountIdStorageCodec.encode(accountId))
    .putExtra(AppRoute.EXTRA_ROUTE, AppRoute.ROUTE_PROVIDER)
    .putExtra(AppRoute.EXTRA_PROVIDER_ACCOUNT_ID, ProviderAccountIdStorageCodec.encode(accountId))

internal fun providerWidgetDestinationIntent(
    context: Context,
    appWidgetId: Int,
    accountId: ProviderAccountId,
): Intent = MainActivity.createHomeIntent(context).apply {
    data = widgetActionData("destination", appWidgetId, accountId)
    putExtra(AppRoute.EXTRA_ROUTE, AppRoute.ROUTE_PROVIDER)
    putExtra(AppRoute.EXTRA_PROVIDER_ACCOUNT_ID, ProviderAccountIdStorageCodec.encode(accountId))
    putExtra(AppRoute.EXTRA_PROVIDER_ID, accountId.providerId.storageId)
    putExtra(AppRoute.EXTRA_PROVIDER_ID_LEGACY, accountId.providerId.storageId)
}

internal fun widgetActionData(
    action: String,
    appWidgetId: Int,
    accountId: ProviderAccountId,
): Uri = Uri.Builder()
    .scheme("aiquota")
    .authority("widget")
    .appendPath(action)
    .appendPath(appWidgetId.toString())
    .appendPath(ProviderAccountIdStorageCodec.encode(accountId))
    .build()

private const val ACTION_WIDGET_DETAIL = "com.aiquota.mobile.widget.action.DETAIL"
