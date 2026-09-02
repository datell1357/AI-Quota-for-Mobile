package com.aiquota.mobile.ui.provider

import java.io.File
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class ProviderDetailAccessibilityContractTest {
    private val source = File("src/main/java/com/aiquota/mobile/ui/provider/ProviderDetailScreen.kt").readText()

    @Test
    fun renameErrorsAreErrorSemanticsInAPoliteLiveRegion() {
        assertTrue(source.contains("LiveRegionMode.Polite"))
        assertTrue(source.contains("error(errorText)"))
        assertTrue(source.contains("renameError?.let"))
    }

    @Test
    fun providerDetailDoesNotOfferCardRemoval() {
        // Removal lives only on the dashboard header; the provider tab must not delete accounts.
        assertFalse(source.contains("provider_catalog_remove_action"))
        assertFalse(source.contains("onDelete"))
    }

    @Test
    fun detailInteractiveControlsExposeLocalized48dpTargets() {
        val bell = source.substringAfter("private fun ProviderResetAlertBell").substringBefore("private fun ProviderPersonalSettingsDialog")
        val threshold = source.substringAfter("private fun ProviderUsageThresholdToggle").substringBefore("// NOTE:")
        val gradient = source.substringAfter("private fun ProviderGaugeGradientButton").substringBefore("private fun ProviderGaugeGradientPickerDialog")
        val swatch = source.substringAfter("private fun ProviderGaugeColorSwatch").substringBefore("private fun normalizedPickerPosition")

        assertTrue(bell.contains("size(48.dp)"))
        assertTrue(bell.contains("contentDescription"))
        assertTrue(threshold.contains("minHeight = 48.dp"))
        assertTrue(threshold.contains("contentDescription"))
        assertTrue(gradient.contains("width(48.dp)"))
        assertTrue(gradient.contains("contentDescription"))
        assertTrue(swatch.contains("size(48.dp)"))
        assertTrue(swatch.contains("contentDescription"))
    }

    @Test
    fun colorSwatchesExposeSelectionAndGradientSupportsDPadSteps() {
        val swatch = source.substringAfter("private fun ProviderGaugeColorSwatch").substringBefore("private fun normalizedPickerPosition")
        val picker = source.substringAfter("private fun ProviderGaugeGradientPickerDialog").substringBefore("private fun ProviderGaugeColorPalette")

        assertTrue(swatch.contains("selectable"))
        assertTrue(swatch.contains("selected = selected"))
        assertTrue(picker.contains("focusable"))
        assertTrue(picker.contains("onKeyEvent"))
        assertTrue(picker.contains("Key.DirectionLeft"))
        assertTrue(picker.contains("Key.DirectionRight"))
        assertTrue(picker.contains("Key.DirectionUp"))
        assertTrue(picker.contains("Key.DirectionDown"))
    }

    @Test
    fun paletteAndAliasReflowWithoutDroppingFullAliasSemantics() {
        val alias = source.substringAfter("text = cardAlias").substringBefore("Spacer(modifier = Modifier.height(4.dp))")

        assertTrue(source.contains("FlowRow"))
        assertTrue(alias.contains("contentDescription = cardAlias"))
        assertTrue(alias.contains("maxLines = 1"))
        assertTrue(alias.contains("TextOverflow.Ellipsis"))
    }

    @Test
    fun detailDialogsReturnFocusToTheirInvokingControls() {
        val summary = source.substringAfter("private fun ProviderSummaryBlock")
            .substringBefore("internal fun providerDetailConnectionAction")

        assertTrue(summary.contains("personalSettingsFocusRequester"))
        assertTrue(summary.contains("renameTriggerFocusRequester"))
        assertTrue(summary.contains("requestFocus()"))
    }
}
