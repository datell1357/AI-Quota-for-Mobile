package com.aiquota.mobile.ui

import androidx.compose.ui.graphics.Color
import org.junit.Assert.assertTrue
import org.junit.Test
import kotlin.math.pow

class ProviderCatalogContrastTest {
    @Test
    fun windowsSoftBoundaryMeetsMinimumContrast() {
        assertTrue(
            "Windows soft boundaries must have at least 3:1 contrast",
            contrastRatio(WindowsAIQuotaThemeColors.borderSoft, WindowsAIQuotaThemeColors.appBackground) >= 3.0
        )
    }

    @Test
    fun macOsSoftBoundaryMeetsMinimumContrast() {
        assertTrue(
            "macOS soft boundaries must have at least 3:1 contrast",
            contrastRatio(MacOSAIQuotaThemeColors.borderSoft, MacOSAIQuotaThemeColors.appBackground) >= 3.0
        )
    }

    @Test
    fun macOsSelectedNavigationTextMeetsMinimumContrast() {
        assertTrue(
            "macOS selected navigation text must have at least 4.5:1 contrast",
            contrastRatio(Color.White, MacOSAIQuotaThemeColors.selectedNav) >= 4.5
        )
    }

    private fun contrastRatio(foreground: Color, background: Color): Double {
        val foregroundLuminance = relativeLuminance(foreground)
        val backgroundLuminance = relativeLuminance(background)
        val lighter = maxOf(foregroundLuminance, backgroundLuminance)
        val darker = minOf(foregroundLuminance, backgroundLuminance)
        return (lighter + 0.05) / (darker + 0.05)
    }

    private fun relativeLuminance(color: Color): Double {
        fun linearize(channel: Float): Double {
            val value = channel.toDouble()
            return if (value <= 0.03928) value / 12.92 else ((value + 0.055) / 1.055).pow(2.4)
        }

        return 0.2126 * linearize(color.red) +
            0.7152 * linearize(color.green) +
            0.0722 * linearize(color.blue)
    }
}
