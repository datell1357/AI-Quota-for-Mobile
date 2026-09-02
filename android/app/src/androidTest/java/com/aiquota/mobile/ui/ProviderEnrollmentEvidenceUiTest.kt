package com.aiquota.mobile.ui

import android.graphics.Bitmap
import android.graphics.Rect
import android.util.Xml
import android.view.accessibility.AccessibilityNodeInfo
import androidx.compose.ui.semantics.Role
import androidx.compose.ui.semantics.SemanticsProperties
import androidx.compose.ui.test.SemanticsMatcher
import androidx.compose.ui.test.assert
import androidx.compose.ui.test.assertIsDisplayed
import androidx.compose.ui.test.assertIsNotEnabled
import androidx.compose.ui.test.hasAnyAncestor
import androidx.compose.ui.test.hasClickAction
import androidx.compose.ui.test.hasContentDescriptionExactly
import androidx.compose.ui.test.hasTextExactly
import androidx.compose.ui.test.isDialog
import androidx.compose.ui.test.junit4.createAndroidComposeRule
import androidx.compose.ui.test.onAllNodesWithContentDescription
import androidx.compose.ui.test.onAllNodesWithText
import androidx.compose.ui.test.onNodeWithContentDescription
import androidx.compose.ui.test.onNodeWithText
import androidx.compose.ui.test.performClick
import androidx.compose.ui.test.performScrollTo
import androidx.test.ext.junit.runners.AndroidJUnit4
import androidx.test.platform.app.InstrumentationRegistry
import com.aiquota.mobile.R
import com.aiquota.mobile.debug.ProviderOnboardingComposeTestActivity
import com.aiquota.mobile.local.ProviderId
import java.io.File
import java.io.FileOutputStream
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.xmlpull.v1.XmlSerializer

@RunWith(AndroidJUnit4::class)
class ProviderEnrollmentEvidenceUiTest {
    @get:Rule
    val composeRule = createAndroidComposeRule<ProviderOnboardingComposeTestActivity>()

    @Test
    fun addingCodexDefaultTwiceCapturesDistinctCardsAndExactAccountIds() {
        // Given
        completeFirstRun(ProviderId.CODEX)

        // When
        openPicker()
        providerRow(ProviderId.CODEX).performClick()
        composeRule.onNodeWithText(text(R.string.provider_enrollment_next)).performClick()
        namingAdd().performClick()
        composeRule.waitForIdle()

        // Then
        composeRule.onAllNodesWithText("Codex")[0].assertIsDisplayed()
        composeRule.onNodeWithText("Codex 2").performScrollTo().assertIsDisplayed()
        val receipt = composeRule.activity.catalogReceipt()
        val codexRows = receipt.lineSequence().filter { line -> line.startsWith("codex:acct_") }.toList()
        assertEquals("Exactly two Codex ProviderAccountIds must exist", 2, codexRows.size)
        assertTrue(codexRows[0].contains("|Codex|SIGNED_OUT"))
        assertTrue(codexRows[1].contains("|Codex 2|SIGNED_OUT"))
        captureCurrentSurface(SUCCESS_PREFIX, receipt)
    }

    @Test
    fun presentCursorCapturesOneDisabledSingleInstanceRadioRow() {
        // Given
        completeFirstRun(ProviderId.CURSOR)

        // When
        openPicker()

        // Then
        composeRule.onNodeWithContentDescription(
            text(R.string.provider_picker_disabled_description, ProviderId.CURSOR.displayName)
        )
            .assertIsNotEnabled()
            .assert(SemanticsMatcher.expectValue(SemanticsProperties.Role, Role.RadioButton))
        captureCurrentSurface(CURSOR_PREFIX, composeRule.activity.catalogReceipt())
    }

    private fun completeFirstRun(providerId: ProviderId) {
        // First run creates automatically named cards straight from the multi-select picker.
        providerRow(providerId).performClick()
        composeRule.onNodeWithText(text(R.string.provider_onboarding_start)).performClick()
        composeRule.waitForIdle()
    }

    private fun openPicker() {
        composeRule.onAllNodesWithContentDescription(text(R.string.provider_catalog_add_action))[0].performClick()
        composeRule.onNodeWithText(text(R.string.provider_picker_title)).assertIsDisplayed()
    }

    private fun providerRow(providerId: ProviderId) = composeRule.onNode(
        hasContentDescriptionExactly(providerId.displayName) and
            (
                SemanticsMatcher.expectValue(SemanticsProperties.Role, Role.RadioButton) or
                    SemanticsMatcher.expectValue(SemanticsProperties.Role, Role.Checkbox)
                )
    )

    private fun namingAdd() = composeRule.onNode(
        hasTextExactly(text(R.string.provider_enrollment_add)) and
            hasClickAction() and
            hasAnyAncestor(isDialog())
    )

    private fun captureCurrentSurface(prefix: String, receipt: String) {
        File(composeRule.activity.filesDir, "$prefix-receipt.txt").writeText(receipt)
        FileOutputStream(File(composeRule.activity.filesDir, "$prefix.png")).use { output ->
            checkNotNull(InstrumentationRegistry.getInstrumentation().uiAutomation.takeScreenshot())
                .compress(Bitmap.CompressFormat.PNG, 100, output)
        }
        captureAccessibilityXml(File(composeRule.activity.filesDir, "$prefix.xml"))
    }

    private fun captureAccessibilityXml(file: File) {
        val serializer = Xml.newSerializer()
        FileOutputStream(file).use { output ->
            serializer.setOutput(output, Charsets.UTF_8.name())
            serializer.startDocument(Charsets.UTF_8.name(), true)
            serializer.startTag(null, "hierarchy")
            writeAccessibilityNode(serializer, checkNotNull(
                InstrumentationRegistry.getInstrumentation().uiAutomation.rootInActiveWindow
            ))
            serializer.endTag(null, "hierarchy")
            serializer.endDocument()
        }
    }

    private fun writeAccessibilityNode(serializer: XmlSerializer, node: AccessibilityNodeInfo) {
        val bounds = Rect().also(node::getBoundsInScreen)
        serializer.startTag(null, "node")
        serializer.attribute(null, "text", node.text?.toString().orEmpty())
        serializer.attribute(null, "content-desc", node.contentDescription?.toString().orEmpty())
        serializer.attribute(null, "class", node.className?.toString().orEmpty())
        serializer.attribute(null, "clickable", node.isClickable.toString())
        serializer.attribute(null, "enabled", node.isEnabled.toString())
        serializer.attribute(null, "bounds", bounds.flattenToString())
        repeat(node.childCount) { index ->
            node.getChild(index)?.let { child -> writeAccessibilityNode(serializer, child) }
        }
        serializer.endTag(null, "node")
    }

    private fun text(resource: Int, vararg arguments: Any): String =
        composeRule.activity.getString(resource, *arguments)

    private companion object {
        const val CURSOR_PREFIX = "task19-cursor-disabled"
        const val SUCCESS_PREFIX = "task19-codex-success"
    }
}
