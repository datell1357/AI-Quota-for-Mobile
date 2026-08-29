package com.aiquota.mobile.ui

import android.content.pm.ActivityInfo
import android.graphics.Bitmap
import android.graphics.Rect
import android.graphics.RectF
import android.util.Xml
import android.view.View
import android.view.WindowInsets
import android.accessibilityservice.AccessibilityServiceInfo
import android.view.accessibility.AccessibilityEvent
import android.view.accessibility.AccessibilityNodeInfo
import android.view.accessibility.AccessibilityWindowInfo
import androidx.compose.ui.semantics.SemanticsProperties
import androidx.compose.ui.test.SemanticsNodeInteraction
import androidx.compose.ui.test.SemanticsMatcher
import androidx.compose.ui.test.assert
import androidx.compose.ui.test.assertHasClickAction
import androidx.compose.ui.test.assertIsDisplayed
import androidx.compose.ui.test.hasAnyAncestor
import androidx.compose.ui.test.hasClickAction
import androidx.compose.ui.test.hasSetTextAction
import androidx.compose.ui.test.hasTextExactly
import androidx.compose.ui.test.isDialog
import androidx.compose.ui.test.junit4.createAndroidComposeRule
import androidx.compose.ui.test.onAllNodesWithContentDescription
import androidx.compose.ui.test.onNodeWithContentDescription
import androidx.compose.ui.test.onNodeWithText
import androidx.compose.ui.test.performClick
import androidx.compose.ui.test.performTextInput
import androidx.test.ext.junit.runners.AndroidJUnit4
import androidx.test.platform.app.InstrumentationRegistry
import com.aiquota.mobile.R
import com.aiquota.mobile.debug.ProviderOnboardingComposeTestActivity
import com.aiquota.mobile.local.ProviderId
import java.io.File
import java.io.FileOutputStream
import java.util.concurrent.CountDownLatch
import java.util.concurrent.TimeUnit
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.xmlpull.v1.XmlSerializer

@RunWith(AndroidJUnit4::class)
class ProviderNamingResponsiveUiTest {
    @get:Rule
    val composeRule = createAndroidComposeRule<ProviderOnboardingComposeTestActivity>()

    @Test
    fun landscapeNamingKeepsFieldHelperAndTappableActionsAboveTheOpenIme() {
        // Given
        dismissFirstRun()
        val packageName = composeRule.activity.packageName
        InstrumentationRegistry.getInstrumentation().uiAutomation.executeAndWaitForEvent(
            { composeRule.activity.requestedOrientation = ActivityInfo.SCREEN_ORIENTATION_LANDSCAPE },
            { event ->
                event.packageName?.toString() == packageName &&
                    event.eventType == AccessibilityEvent.TYPE_WINDOW_CONTENT_CHANGED
            },
            EVENT_TIMEOUT_MS,
        )
        composeRule.waitForIdle()
        openPicker()
        composeRule.onNodeWithContentDescription(ProviderId.CODEX.displayName).performClick()

        // When
        composeRule.onNodeWithText(text(R.string.provider_enrollment_next)).performClick()
        composeRule.waitForIdle()
        val field = composeRule.onNode(hasSetTextAction(), useUnmergedTree = true).assertIsDisplayed()
        val dialogRoot = field.fetchSemanticsNode().root as View
        val imeInsetsApplied = CountDownLatch(1)
        val uiAutomation = InstrumentationRegistry.getInstrumentation().uiAutomation
        uiAutomation.serviceInfo = uiAutomation.serviceInfo.apply {
            flags = flags or AccessibilityServiceInfo.FLAG_RETRIEVE_INTERACTIVE_WINDOWS
        }
        composeRule.runOnIdle {
            dialogRoot.setOnApplyWindowInsetsListener { _, insets ->
                if (insets.isVisible(WindowInsets.Type.ime())) imeInsetsApplied.countDown()
                insets
            }
            dialogRoot.requestApplyInsets()
        }
        field.performClick()
        assertTrue(
            "The real landscape IME inset must be applied after field focus",
            imeInsetsApplied.await(EVENT_TIMEOUT_MS, TimeUnit.MILLISECONDS),
        )
        composeRule.waitForIdle()
        FileOutputStream(File(composeRule.activity.filesDir, LANDSCAPE_SCREENSHOT)).use { output ->
            checkNotNull(InstrumentationRegistry.getInstrumentation().uiAutomation.takeScreenshot())
                .compress(Bitmap.CompressFormat.PNG, 100, output)
        }

        // Then
        val label = composeRule.onNodeWithText(
            text(R.string.provider_naming_label),
            useUnmergedTree = true,
        ).assertIsDisplayed()
        val helper = composeRule.onNodeWithText(
            text(R.string.provider_naming_default, ProviderId.CODEX.displayName),
            useUnmergedTree = true,
        ).assertIsDisplayed()
        val cancel = namingAction(R.string.provider_enrollment_cancel)
            .assertIsDisplayed()
            .assertHasClickAction()
        val add = namingAction(R.string.provider_enrollment_add)
            .assertIsDisplayed()
            .assertHasClickAction()
        val imeBounds = Rect().also { bounds ->
            val imeWindow = uiAutomation.windows.single { window ->
                window.type == AccessibilityWindowInfo.TYPE_INPUT_METHOD
            }
            imeWindow.getBoundsInScreen(bounds)
        }
        val fieldBounds = field.boundsOnScreen()
        val labelBounds = label.boundsOnScreen()
        val helperBounds = helper.boundsOnScreen()
        val cancelBounds = cancel.boundsOnScreen()
        val addBounds = add.boundsOnScreen()
        listOf(
            "Naming field" to fieldBounds,
            "Naming label" to labelBounds,
            "Naming helper" to helperBounds,
            "Cancel" to cancelBounds,
            "Add" to addBounds,
        ).forEach { (label, bounds) ->
            assertTrue(
                "$label must have on-screen visible bounds: $bounds",
                bounds.width() > 0f && bounds.height() > 0f && bounds.top >= 0f,
            )
            assertTrue("$label must remain above the open IME $imeBounds: $bounds", bounds.bottom <= imeBounds.top)
        }
        assertFalse("Naming label must not overlap Cancel", RectF.intersects(labelBounds, cancelBounds))
        assertFalse("Naming label must not overlap Add", RectF.intersects(labelBounds, addBounds))
        assertFalse("Naming field must not overlap Cancel", RectF.intersects(fieldBounds, cancelBounds))
        assertFalse("Naming field must not overlap Add", RectF.intersects(fieldBounds, addBounds))
        assertFalse("Naming helper must not overlap Cancel", RectF.intersects(helperBounds, cancelBounds))
        assertFalse("Naming helper must not overlap Add", RectF.intersects(helperBounds, addBounds))
        assertFalse("Cancel and Add must not overlap", RectF.intersects(cancelBounds, addBounds))
        File(composeRule.activity.filesDir, LANDSCAPE_BOUNDS_RECEIPT).writeText(
            "ime=$imeBounds\nfield=$fieldBounds\nlabel=$labelBounds\nhelper=$helperBounds\ncancel=$cancelBounds\nadd=$addBounds\n"
        )
        captureAccessibilityXml(File(composeRule.activity.filesDir, LANDSCAPE_UI_XML))
    }

    @Test
    fun actualControlCodePointShowsFieldErrorAndLeavesByteIdenticalCatalogReceipts() {
        // Given
        dismissFirstRun()
        openNaming(ProviderId.CODEX)
        val before = composeRule.activity.catalogReceipt()
        File(composeRule.activity.filesDir, CONTROL_BEFORE_RECEIPT).writeText(before)

        // When
        composeRule.onNode(hasSetTextAction()).performTextInput("\u0007work")
        namingAction(R.string.provider_enrollment_add).performClick()

        // Then
        val message = text(R.string.provider_enrollment_error_control_character)
        composeRule.onNodeWithText(message)
            .assertIsDisplayed()
            .assert(SemanticsMatcher.expectValue(SemanticsProperties.Error, message))
        composeRule.onNode(hasSetTextAction())
            .assert(SemanticsMatcher.expectValue(SemanticsProperties.Error, message))
        val after = composeRule.activity.catalogReceipt()
        File(composeRule.activity.filesDir, CONTROL_AFTER_RECEIPT).writeText(after)
        assertEquals("Rejected control characters must write no catalog state", before, after)
        FileOutputStream(File(composeRule.activity.filesDir, CONTROL_SCREENSHOT)).use { output ->
            checkNotNull(InstrumentationRegistry.getInstrumentation().uiAutomation.takeScreenshot())
                .compress(Bitmap.CompressFormat.PNG, 100, output)
        }
        captureAccessibilityXml(File(composeRule.activity.filesDir, CONTROL_UI_XML))
    }

    private fun dismissFirstRun() {
        composeRule.onNodeWithText(text(R.string.provider_onboarding_later)).performClick()
        composeRule.onNodeWithText(text(R.string.provider_catalog_empty_prompt)).assertIsDisplayed()
    }

    private fun openPicker() {
        composeRule.onAllNodesWithContentDescription(text(R.string.provider_catalog_add_action))[0].performClick()
        composeRule.onNodeWithText(text(R.string.provider_picker_title)).assertIsDisplayed()
    }

    private fun openNaming(providerId: ProviderId) {
        openPicker()
        composeRule.onNodeWithContentDescription(providerId.displayName).performClick()
        composeRule.onNodeWithText(text(R.string.provider_enrollment_next)).performClick()
        composeRule.onNode(hasSetTextAction()).assertIsDisplayed()
    }

    private fun namingAction(resource: Int) = composeRule.onNode(
        hasTextExactly(text(resource)) and hasClickAction() and hasAnyAncestor(isDialog())
    )

    private fun SemanticsNodeInteraction.boundsOnScreen(): RectF {
        val node = fetchSemanticsNode()
        val position = node.positionOnScreen
        return RectF(
            position.x,
            position.y,
            position.x + node.boundsInRoot.width,
            position.y + node.boundsInRoot.height,
        )
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
        serializer.attribute(null, "text", node.text?.toString().orEmpty().xmlSafe())
        serializer.attribute(null, "content-desc", node.contentDescription?.toString().orEmpty().xmlSafe())
        serializer.attribute(null, "class", node.className?.toString().orEmpty())
        serializer.attribute(null, "error", node.error?.toString().orEmpty().xmlSafe())
        serializer.attribute(null, "clickable", node.isClickable.toString())
        serializer.attribute(null, "enabled", node.isEnabled.toString())
        serializer.attribute(null, "bounds", bounds.flattenToString())
        repeat(node.childCount) { index ->
            node.getChild(index)?.let { child -> writeAccessibilityNode(serializer, child) }
        }
        serializer.endTag(null, "node")
    }

    private fun String.xmlSafe(): String = buildString {
        this@xmlSafe.codePoints().forEach { codePoint ->
            if (codePoint < 0x20 && codePoint !in setOf(0x09, 0x0A, 0x0D)) {
                append("\\u").append(codePoint.toString(16).padStart(4, '0'))
            } else {
                appendCodePoint(codePoint)
            }
        }
    }

    private fun text(resource: Int, vararg arguments: Any): String =
        composeRule.activity.getString(resource, *arguments)

    private companion object {
        const val CONTROL_AFTER_RECEIPT = "task19-control-after.txt"
        const val CONTROL_BEFORE_RECEIPT = "task19-control-before.txt"
        const val CONTROL_SCREENSHOT = "task19-control-error.png"
        const val CONTROL_UI_XML = "task19-control-error.xml"
        const val EVENT_TIMEOUT_MS = 10_000L
        const val LANDSCAPE_BOUNDS_RECEIPT = "task19-landscape-ime-bounds.txt"
        const val LANDSCAPE_SCREENSHOT = "task19-landscape-ime.png"
        const val LANDSCAPE_UI_XML = "task19-landscape-ime.xml"
    }
}
