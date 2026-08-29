package com.aiquota.mobile.widget

import android.appwidget.AppWidgetManager
import android.appwidget.AppWidgetProvider
import android.content.Context
import android.os.Bundle
import java.io.File
import javax.xml.parsers.DocumentBuilderFactory
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class ProviderUsageWidgetProviderTest {
    @Test
    fun providerWidgetUsesRemoteViewsAppWidgetProviderInsteadOfGlanceReceiver() {
        // Given
        val document = DocumentBuilderFactory.newInstance().newDocumentBuilder()
            .parse(File("src/main/AndroidManifest.xml"))

        // When
        val receiverNames = (0 until document.getElementsByTagName("receiver").length)
            .map { document.getElementsByTagName("receiver").item(it) }
            .map { it.attributes.getNamedItem("android:name").nodeValue }

        // Then
        assertTrue(AppWidgetProvider::class.java.isAssignableFrom(ProviderUsageWidgetProvider::class.java))
        assertTrue(receiverNames.contains(".widget.ProviderUsageWidgetProvider"))
        assertFalse(receiverNames.contains(".widget.ProviderUsageGlanceWidgetReceiver"))
    }

    @Test
    fun providerWidgetOverridesLauncherResizeCallback() {
        // Given / When
        val method = ProviderUsageWidgetProvider::class.java.getDeclaredMethod(
            "onAppWidgetOptionsChanged",
            Context::class.java,
            AppWidgetManager::class.java,
            Int::class.javaPrimitiveType,
            Bundle::class.java,
        )

        // Then
        assertEquals(ProviderUsageWidgetProvider::class.java, method.declaringClass)
    }

    @Test
    fun providerRemoteViewsRendererSupportsExpandedRows() {
        val layout = File("src/main/res/layout/ai_quota_widget_provider_immediate.xml").readText()
        val expanded = providerWidgetLayoutSpec(cellWidth = 2, cellHeight = 4)

        assertEquals(5, expanded.maxLineCount)
        assertTrue(layout.contains("@+id/provider_immediate_line_2"))
        assertTrue(layout.contains("@+id/provider_immediate_line_3"))
        assertTrue(layout.contains("@+id/provider_immediate_line_4"))
        assertTrue(layout.contains("@+id/provider_immediate_line_5"))
    }

    @Test
    fun providerRemoteViewsRowsKeepOnlyOneDpGapBeforeRemainingText() {
        val layout = File("src/main/res/layout/ai_quota_widget_provider_immediate.xml").readText()

        assertTrue(layout.split("""android:layout_marginStart="1dp"""").size - 1 >= 5)
        assertFalse(layout.contains("""android:layout_marginStart="3dp"""))
    }

    @Test
    fun providerRemoteViewsAppliesResponsiveGaugeHeightFromHostSize() {
        val layout = File("src/main/res/layout/ai_quota_widget_provider_immediate.xml").readText()
        val drawable = File("src/main/res/drawable/widget_provider_progress.xml").readText()
        val compact = providerWidgetLayoutSpec(cellWidth = 2, cellHeight = 1)
        val expanded = providerWidgetLayoutSpec(cellWidth = 2, cellHeight = 4)

        assertTrue(expanded.gaugeHeightDp > compact.gaugeHeightDp)
        assertTrue(layout.contains("""android:progressDrawable="@drawable/widget_provider_progress"""))
        assertTrue(drawable.contains("""android:id="@android:id/background"""))
        assertTrue(drawable.contains("""android:id="@android:id/progress"""))
    }

    @Test
    fun providerRemoteViewsRootCentersContentVertically() {
        val layout = File("src/main/res/layout/ai_quota_widget_provider_immediate.xml").readText()
        val rootBlock = layout.substringBefore("""android:paddingBottom="10dp">""")

        assertTrue(rootBlock.contains("""android:gravity="center_vertical"""))
    }

    @Test
    fun providerRemoteViewsFourthUsageRowUsesStandardTopGap() {
        val layout = File("src/main/res/layout/ai_quota_widget_provider_immediate.xml").readText()
        val fourthRowBlock = layout
            .substringAfter("""android:id="@+id/provider_immediate_line_4"""")
            .substringBefore("""android:id="@+id/provider_immediate_label_4"""")

        assertTrue(fourthRowBlock.contains("""android:layout_marginTop="3dp"""))
    }

    @Test
    fun providerRemoteViewsFifthUsageRowUsesStandardTopGap() {
        val layout = File("src/main/res/layout/ai_quota_widget_provider_immediate.xml").readText()
        val fifthRowBlock = layout
            .substringAfter("""android:id="@+id/provider_immediate_line_5"""")
            .substringBefore("""android:id="@+id/provider_immediate_label_5"""")

        assertTrue(fifthRowBlock.contains("""android:layout_marginTop="3dp"""))
    }

    @Test
    fun providerRemoteViewsLayoutUsesTenDpVerticalSafeZone() {
        val layout = File("src/main/res/layout/ai_quota_widget_provider_immediate.xml").readText()

        assertTrue(layout.contains("""android:paddingTop="10dp"""))
        assertTrue(layout.contains("""android:paddingBottom="10dp"""))
    }

    @Test
    fun providerWidgetProviderCanResizeToFourCellsTall() {
        val providerXml = File("src/main/res/xml/ai_quota_widget_provider.xml").readText()

        assertTrue(providerXml.contains("""android:maxResizeHeight="320dp"""))
    }

    @Test
    fun providerWidgetDefaultsToTwoByTwoButCanShrinkToTwoByOne() {
        val providerXml = File("src/main/res/xml/ai_quota_widget_provider.xml").readText()

        assertTrue(providerXml.contains("""android:targetCellWidth="2"""))
        assertTrue(providerXml.contains("""android:targetCellHeight="2"""))
        assertTrue(providerXml.contains("""android:minResizeWidth="110dp"""))
        assertTrue(providerXml.contains("""android:minResizeHeight="40dp"""))
    }

    @Test
    fun providerRemoteViewsRendererReservesResetCaptionSpaceInExpandedRows() {
        assertTrue(providerWidgetLayoutSpec(cellWidth = 2, cellHeight = 4).showResetCaption)
    }
}
