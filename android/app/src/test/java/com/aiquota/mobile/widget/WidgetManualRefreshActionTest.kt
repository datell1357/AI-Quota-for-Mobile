package com.aiquota.mobile.widget

import android.content.Context
import androidx.test.core.app.ApplicationProvider
import com.aiquota.mobile.accounts.AccountKey
import com.aiquota.mobile.accounts.ProviderAccountId
import com.aiquota.mobile.accounts.ProviderAccountIdStorageCodec
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.providers.ProviderBackgroundRefreshService
import com.aiquota.mobile.providers.ProviderRefreshPlan
import java.io.File
import javax.xml.parsers.DocumentBuilderFactory
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner

@RunWith(RobolectricTestRunner::class)
class WidgetManualRefreshActionTest {
    @Test
    fun storeCompatibleRefreshActionMapsOnlyToInternalRefresh() {
        // Given / When / Then
        assertEquals("u.sage.widget.action.REFRESH", WidgetRefreshActions.ACTION_WIDGET_REFRESH)
        assertEquals(
            ProviderBackgroundRefreshService.ACTION_REFRESH,
            WidgetRefreshActions.internalActionForWidgetAction(WidgetRefreshActions.ACTION_WIDGET_REFRESH),
        )
        assertNull(WidgetRefreshActions.internalActionForWidgetAction("android.appwidget.action.APPWIDGET_UPDATE"))
    }

    @Test
    fun manifestRegistersPrivateWidgetAndInternalRefreshReceivers() {
        // Given
        val document = DocumentBuilderFactory.newInstance().newDocumentBuilder()
            .parse(File("src/main/AndroidManifest.xml"))

        // When
        val widget = receiver(document, ".widget.WidgetManualRefreshReceiver")
        val internal = receiver(document, ".providers.ProviderRefreshReceiver")

        // Then
        assertEquals("false", widget.attributes.getNamedItem("android:exported").nodeValue)
        assertEquals("false", internal.attributes.getNamedItem("android:exported").nodeValue)
        assertTrue(receiverActions(widget).contains(WidgetRefreshActions.ACTION_WIDGET_REFRESH))
        assertTrue(receiverActions(internal).contains(ProviderBackgroundRefreshService.ACTION_REFRESH))
    }

    @Test
    fun circularWidgetLayoutExposesMachineRefreshControl() {
        // Given
        val document = DocumentBuilderFactory.newInstance().newDocumentBuilder()
            .parse(File("src/main/res/layout/ai_quota_widget_circular.xml"))

        // When
        val refreshNodes = (0 until document.getElementsByTagName("ImageButton").length)
            .map { document.getElementsByTagName("ImageButton").item(it) }
            .filter { it.attributes.getNamedItem("android:id")?.nodeValue == "@+id/circular_refresh_button" }

        // Then
        assertEquals(1, refreshNodes.size)
        assertEquals("@string/widget_refresh", refreshNodes.single().attributes.getNamedItem("android:contentDescription").nodeValue)
    }

    @Test
    fun exactRefreshIntentAndInternalForwardingPreserveWidgetAndCanonicalCard() {
        // Given
        val context = ApplicationProvider.getApplicationContext<Context>()
        val accountId = account(2)
        val external = WidgetRefreshActions.widgetRefreshIntent(context, 42, accountId)

        // When
        val internal = WidgetRefreshActions.internalRefreshIntent(context, external)

        // Then
        assertEquals(42, internal.getIntExtra(WidgetRefreshActions.EXTRA_APP_WIDGET_ID, -1))
        assertEquals(ProviderId.CODEX.storageId, internal.getStringExtra(WidgetRefreshActions.EXTRA_PROVIDER_ID))
        assertEquals(
            ProviderAccountIdStorageCodec.encode(accountId),
            internal.getStringExtra(WidgetRefreshActions.EXTRA_PROVIDER_ACCOUNT_ID),
        )
    }

    @Test
    fun unifiedRefreshForwardingCarriesNoProviderOrAccountTarget() {
        // Given
        val context = ApplicationProvider.getApplicationContext<Context>()
        val external = WidgetRefreshActions.widgetRefreshIntent(context, 43)

        // When
        val internal = WidgetRefreshActions.internalRefreshIntent(context, external)

        // Then
        assertNull(internal.getStringExtra(WidgetRefreshActions.EXTRA_PROVIDER_ID))
        assertNull(internal.getStringExtra(WidgetRefreshActions.EXTRA_PROVIDER_ACCOUNT_ID))
        assertEquals(43, internal.getIntExtra(WidgetRefreshActions.EXTRA_APP_WIDGET_ID, -1))
    }

    @Test
    fun siblingManualPlansRemainDistinct() {
        // Given
        val a = account(1)
        val b = account(2)

        // When
        val jobs = listOf(ProviderRefreshPlan.manualJobFor(a), ProviderRefreshPlan.manualJobFor(b))

        // Then
        assertEquals(listOf(a, b), jobs.map { it.accountId })
        assertTrue(jobs.map { it.accountId }.distinct().size == 2)
    }

    @Test
    fun disabledExactBoundaryPreservesLegacyProviderAction() {
        // Given
        val request = ProviderWidgetActionRequest(
            44,
            ProviderId.CODEX.storageId,
            null,
            multiAccountEnabled = false,
        )
        val authority = ProviderWidgetActionAuthority({ false }, { null }, { null })

        // When
        val resolution = ProviderWidgetActionBoundary.resolve(request, authority)

        // Then
        assertEquals(ProviderWidgetActionResolution.LegacyProvider(ProviderId.CODEX), resolution)
    }

    @Test
    fun exactManualPlanTargetsOnlyRequestedCard() {
        // Given
        val accountId = account(2)

        // When
        val job = ProviderRefreshPlan.manualJobFor(accountId)

        // Then
        assertEquals(accountId, job.accountId)
        assertEquals(ProviderRefreshPlan.NORMAL_REFRESH_QOS, job.qos)
        assertNotNull(job.startUrl)
    }

    private fun receiver(document: org.w3c.dom.Document, name: String): org.w3c.dom.Node =
        (0 until document.getElementsByTagName("receiver").length)
            .map { document.getElementsByTagName("receiver").item(it) }
            .single { it.attributes.getNamedItem("android:name").nodeValue == name }

    private fun receiverActions(receiver: org.w3c.dom.Node): List<String> =
        (0 until receiver.childNodes.length)
            .map { receiver.childNodes.item(it) }
            .filter { it.nodeName == "intent-filter" }
            .flatMap { filter -> (0 until filter.childNodes.length).map { filter.childNodes.item(it) } }
            .filter { it.nodeName == "action" }
            .map { it.attributes.getNamedItem("android:name").nodeValue }

    private fun account(index: Int) = ProviderAccountId(
        ProviderId.CODEX,
        AccountKey.parseOpaque("acct_${index.toString(16).padStart(32, '0')}"),
    )
}
