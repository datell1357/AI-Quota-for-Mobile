package com.aiquota.mobile.widget

import android.app.Activity
import android.appwidget.AppWidgetManager
import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.ComponentActivity
import com.aiquota.mobile.BuildConfig
import com.aiquota.mobile.R
import com.aiquota.mobile.accounts.AccountUsageRepository
import com.aiquota.mobile.localization.withAppLanguageForDeviceLanguage
import com.aiquota.mobile.local.ProviderCardPreferencesRepository
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.local.ProviderPreferencesRepository
import com.aiquota.mobile.local.ThemePreferencesRepository

class ProviderWidgetConfigureActivity : ComponentActivity() {
    private var appWidgetId: Int = AppWidgetManager.INVALID_APPWIDGET_ID
    private var isFinishingWithSelection = false

    override fun attachBaseContext(newBase: Context) {
        super.attachBaseContext(newBase.withAppLanguageForDeviceLanguage())
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setResult(Activity.RESULT_CANCELED)

        appWidgetId = intent?.extras?.getInt(
            AppWidgetManager.EXTRA_APPWIDGET_ID,
            AppWidgetManager.INVALID_APPWIDGET_ID
        ) ?: AppWidgetManager.INVALID_APPWIDGET_ID

        if (appWidgetId == AppWidgetManager.INVALID_APPWIDGET_ID) {
            finish()
            return
        }

        if (!BuildConfig.MULTI_ACCOUNT_ENABLED) {
            configureLegacyProvider()
            return
        }
        val cards = ProviderWidgetCardCatalog.activeSelections(this)
        val requested = preselectionFromIntent()
        if (requested.isPresent) {
            val selected = AccountUsageRepository.open(applicationContext).use { repository ->
                ProviderWidgetCardCatalog.resolvePreselection(requested, cards, repository::compatibilityAccount)
            }
            if (selected != null) finishWithCard(selected) else showCardSelection(cards)
            return
        }
        if (cards.size == 1) {
            finishWithCard(cards.single())
        } else {
            showCardSelection(cards)
        }
    }

    private fun configureLegacyProvider() {
        preselectedProviderFromIntent()?.let {
            finishWithProvider(it)
            return
        }
        val providers = ProviderPreferencesRepository(this).providerOrder()
            .ifEmpty { ProviderId.defaultOrder() }
        if (providers.size == 1) finishWithProvider(providers.single())
        else showProviderSelection(providers)
    }

    private fun preselectionFromIntent(): ProviderWidgetPreselection {
        val options = intent?.extras?.getBundle(AppWidgetManager.EXTRA_APPWIDGET_OPTIONS)
        return ProviderWidgetPreselection(
            encodedAccountId = intent?.getStringExtra(PinnedWidgetRequester.EXTRA_PINNED_PROVIDER_ACCOUNT_ID)
                ?: options?.getString(PinnedWidgetRequester.EXTRA_PINNED_PROVIDER_ACCOUNT_ID),
            legacyProviderId = intent?.getStringExtra(PinnedWidgetRequester.EXTRA_PINNED_PROVIDER_ID)
                ?: options?.getString(PinnedWidgetRequester.EXTRA_PINNED_PROVIDER_ID),
        )
    }

    private fun preselectedProviderFromIntent(): ProviderId? {
        val requested = preselectionFromIntent().legacyProviderId
        return ProviderId.fromStorageId(requested)
    }

    private fun showCardSelection(cards: List<ProviderWidgetCardSelection>) {
        showProviderWidgetSelection(
            cards.map { card ->
                ProviderWidgetConfigureRow(
                    card.providerId,
                    "${card.alias} · ${card.providerId.displayName}",
                ) { finishWithCard(card) }
            },
            widgetConfigureStyle(ThemePreferencesRepository(this).currentTheme()),
        )
    }

    private fun showProviderSelection(providers: List<ProviderId>) {
        showProviderWidgetSelection(
            providers.map { providerId ->
                ProviderWidgetConfigureRow(providerId, providerId.displayName) {
                    finishWithProvider(providerId)
                }
            },
            widgetConfigureStyle(ThemePreferencesRepository(this).currentTheme()),
        )
    }

    private fun finishWithCard(card: ProviderWidgetCardSelection) {
        if (isFinishingWithSelection) return
        isFinishingWithSelection = true
        ProviderCardPreferencesRepository(this).saveProviderWidgetSelection(appWidgetId, card.accountId)
        val resultValue = Intent().putExtra(AppWidgetManager.EXTRA_APPWIDGET_ID, appWidgetId)
        ProviderWidgetImmediateRenderer.render(this, appWidgetId, card.accountId)
        setResult(Activity.RESULT_OK, resultValue)
        ProviderWidgetPostConfigureUpdater.schedule(applicationContext, appWidgetId, card.accountId)
        ProviderWidgetConfigureRefreshRequester.schedule(applicationContext, appWidgetId, card.accountId)
        returnHomeIfLaunchedFromPinCallback()
        finish()
    }

    private fun finishWithProvider(providerId: ProviderId) {
        if (isFinishingWithSelection) return
        isFinishingWithSelection = true

        ProviderPreferencesRepository(this).saveProviderWidgetSelection(appWidgetId, providerId)
        val resultValue = Intent().putExtra(AppWidgetManager.EXTRA_APPWIDGET_ID, appWidgetId)
        ProviderWidgetImmediateRenderer.render(this, appWidgetId, providerId)
        setResult(Activity.RESULT_OK, resultValue)
        ProviderWidgetPostConfigureUpdater.schedule(applicationContext, appWidgetId, providerId)
        ProviderWidgetConfigureRefreshRequester.schedule(applicationContext, appWidgetId, providerId)
        returnHomeIfLaunchedFromPinCallback()
        finish()
    }

    private fun returnHomeIfLaunchedFromPinCallback() {
        if (intent?.action == null) {
            startActivity(
                Intent(Intent.ACTION_MAIN).apply {
                    addCategory(Intent.CATEGORY_HOME)
                    flags = Intent.FLAG_ACTIVITY_NEW_TASK
                }
            )
        }
    }

}
