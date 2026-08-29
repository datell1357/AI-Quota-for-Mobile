package com.aiquota.mobile.widget

import android.appwidget.AppWidgetManager
import android.content.Context
import android.view.Gravity
import androidx.test.core.app.ApplicationProvider
import com.aiquota.mobile.accounts.AccountKey
import com.aiquota.mobile.accounts.ProviderAccountId
import com.aiquota.mobile.accounts.ProviderAccountIdStorageCodec
import com.aiquota.mobile.local.AppTheme
import com.aiquota.mobile.local.ProviderCardPreferencesRepository
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.providers.ProviderBackgroundRefreshService
import com.aiquota.mobile.ui.provider.providerIconRes
import java.io.File
import javax.xml.parsers.DocumentBuilderFactory
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNotEquals
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner

@RunWith(RobolectricTestRunner::class)
class ProviderWidgetConfigureActivityTest {
    private lateinit var context: Context
    private val accountId = ProviderAccountId(
        ProviderId.CODEX,
        AccountKey.parseOpaque("acct_00000000000000000000000000000002"),
    )

    @Before
    fun setUp() {
        context = ApplicationProvider.getApplicationContext()
        preferences().edit().clear().commit()
    }

    @After
    fun tearDown() {
        preferences().edit().clear().commit()
    }

    @Test
    fun providerWidgetMetadataRequiresConfigurationAndSupportsReconfiguration() {
        // Given
        val root = DocumentBuilderFactory.newInstance().newDocumentBuilder()
            .parse(File("src/main/res/xml/ai_quota_widget_provider.xml"))
            .documentElement

        // When
        val configure = root.getAttribute("android:configure")
        val features = root.getAttribute("android:widgetFeatures")

        // Then
        assertEquals("com.aiquota.mobile.widget.ProviderWidgetConfigureActivity", configure)
        assertEquals("reconfigurable", features)
    }

    @Test
    fun exactSelectionPersistsCanonicallyAcrossRepositoryRecreation() {
        // Given
        val repository = ProviderCardPreferencesRepository(context)

        // When
        assertTrue(repository.saveProviderWidgetSelection(73, accountId))
        val restarted = ProviderCardPreferencesRepository(context)

        // Then
        assertEquals(accountId, restarted.providerWidgetSelection(73))
        assertEquals(
            ProviderAccountIdStorageCodec.encode(accountId),
            preferences().getString("${ProviderCardPreferencesRepository.WIDGET_SELECTION_PREFIX}73", null),
        )
    }

    @Test
    fun missingSelectionNeverFallsBackToAProvider() {
        // Given
        val repository = ProviderCardPreferencesRepository(context)

        // When
        val selected = repository.providerWidgetSelection(74)

        // Then
        assertNull(selected)
    }

    @Test
    fun exactConfigureRefreshIntentTargetsOnlySelectedCardAndWidget() {
        // Given
        val widgetId = 75

        // When
        val intent = ProviderBackgroundRefreshService.createRefreshIntent(context, accountId, widgetId)

        // Then
        assertEquals(ProviderBackgroundRefreshService.ACTION_REFRESH, intent.action)
        assertEquals(widgetId, intent.getIntExtra(WidgetRefreshActions.EXTRA_APP_WIDGET_ID, -1))
        assertEquals(
            ProviderAccountIdStorageCodec.encode(accountId),
            intent.getStringExtra(ProviderBackgroundRefreshService.EXTRA_PROVIDER_ACCOUNT_ID),
        )
    }

    @Test
    fun rebindingOneWidgetReplacesOnlyThatExactSelection() {
        // Given
        val a = accountId.copy(accountKey = AccountKey.parseOpaque("acct_00000000000000000000000000000001"))
        val repository = ProviderCardPreferencesRepository(context)
        repository.saveProviderWidgetSelection(73, accountId)
        repository.saveProviderWidgetSelection(74, accountId)

        // When
        repository.saveProviderWidgetSelection(73, a)

        // Then
        assertEquals(a, repository.providerWidgetSelection(73))
        assertEquals(accountId, repository.providerWidgetSelection(74))
    }

    @Test
    fun clearingOneWidgetSelectionPreservesAnotherWidget() {
        // Given
        val repository = ProviderCardPreferencesRepository(context)
        repository.saveProviderWidgetSelection(73, accountId)
        repository.saveProviderWidgetSelection(74, accountId)

        // When
        repository.clearProviderWidgetSelection(73)

        // Then
        assertNull(repository.providerWidgetSelection(73))
        assertEquals(accountId, repository.providerWidgetSelection(74))
    }

    @Test
    fun malformedPersistedSelectionIsUnavailable() {
        // Given
        preferences().edit()
            .putString("${ProviderCardPreferencesRepository.WIDGET_SELECTION_PREFIX}73", "pa1:broken")
            .commit()

        // When
        val selected = ProviderCardPreferencesRepository(context).providerWidgetSelection(73)

        // Then
        assertNull(selected)
    }

    @Test
    fun exactRefreshAndDetailActionsUseDifferentMachineIdentities() {
        // Given
        val refresh = WidgetRefreshActions.widgetRefreshIntent(context, 73, accountId)
        val detail = providerWidgetDetailIntent(context, 73, accountId)

        // When / Then
        assertNotEquals(refresh.component, detail.component)
        assertNotEquals(refresh.data, detail.data)
    }

    @Test
    fun providerPayloadUsesSelectedProviderIdentity() {
        // Given
        val payload = providerWidgetPayload("", ProviderId.CODEX.storageId)

        // When / Then
        assertEquals(ProviderId.CODEX.storageId, payload.providerId)
        assertEquals(ProviderId.CODEX.displayName, payload.displayName)
    }

    @Test
    fun postConfigureRetryScheduleIsDeterministic() {
        // Given / When
        val delays = providerWidgetPostConfigureRetryDelaysMs()

        // Then
        assertTrue(delays.contentEquals(longArrayOf(0L, 250L, 750L, 1_500L, 3_000L, 4_500L)))
        assertEquals(0L, delays.first())
    }

    @Test
    fun configurationStyleAndIconsRemainProviderSpecific() {
        // Given
        val mac = context.widgetConfigureStyle(AppTheme.MACOS)
        val windows = context.widgetConfigureStyle(AppTheme.WINDOWS)

        // When / Then
        assertNotEquals(mac.rowCornerRadiusDp, windows.rowCornerRadiusDp)
        ProviderId.defaultOrder().forEach { providerId -> assertTrue(providerIconRes(providerId) != 0) }
    }

    @Test
    fun providerSelectionContentUsesCenteredLayoutContract() {
        // Given / When / Then
        assertEquals(Gravity.CENTER_VERTICAL, providerWidgetSelectionGravity())
    }

    private fun preferences() = context.getSharedPreferences(
        ProviderCardPreferencesRepository.PREFERENCES_NAME,
        Context.MODE_PRIVATE,
    )
}
