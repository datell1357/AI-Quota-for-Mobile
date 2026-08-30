package com.aiquota.mobile.ui

import android.app.UiAutomation
import android.content.Context
import android.content.Intent
import android.graphics.Rect
import android.os.Bundle
import android.os.SystemClock
import android.os.ParcelFileDescriptor
import android.view.accessibility.AccessibilityEvent
import android.view.accessibility.AccessibilityNodeInfo
import androidx.compose.ui.semantics.Role
import androidx.compose.ui.semantics.SemanticsProperties
import androidx.compose.ui.test.SemanticsMatcher
import androidx.compose.ui.test.assert
import androidx.compose.ui.test.assertHasClickAction
import androidx.compose.ui.test.assertIsDisplayed
import androidx.compose.ui.test.hasAnyAncestor
import androidx.compose.ui.test.hasClickAction
import androidx.compose.ui.test.hasContentDescriptionExactly
import androidx.compose.ui.test.hasSetTextAction
import androidx.compose.ui.test.hasTextExactly
import androidx.compose.ui.test.isDialog
import androidx.compose.ui.test.junit4.createEmptyComposeRule
import androidx.compose.ui.test.onAllNodesWithContentDescription
import androidx.compose.ui.test.onNodeWithText
import androidx.compose.ui.test.performClick
import androidx.compose.ui.test.performScrollTo
import androidx.compose.ui.test.performTextClearance
import androidx.compose.ui.test.performTextInput
import androidx.test.core.app.ActivityScenario
import androidx.test.core.app.ApplicationProvider
import androidx.test.espresso.Espresso.closeSoftKeyboard
import androidx.test.ext.junit.runners.AndroidJUnit4
import androidx.test.platform.app.InstrumentationRegistry
import com.aiquota.mobile.R
import com.aiquota.mobile.debug.ProviderOnboardingComposeTestActivity
import java.util.concurrent.TimeoutException
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Assert.fail
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith

/**
 * Intentionally RED user-observable contracts for the provider-card catalog.
 *
 * The production dashboard is hosted in a remote debug process. These tests deliberately use the
 * default instrumentation runner and Android's accessibility surface rather than Compose test APIs
 * or ActivityScenario, so they pin only behavior a platform accessibility client can observe.
 */
@RunWith(AndroidJUnit4::class)
class ProviderCardCatalogUiTest {
    @get:Rule
    val composeRule = createEmptyComposeRule()

    private val uiAutomation: UiAutomation
        get() = InstrumentationRegistry.getInstrumentation().uiAutomation

    private var composeScenario: ActivityScenario<ProviderOnboardingComposeTestActivity>? = null

    private val targetContext
        get() = InstrumentationRegistry.getInstrumentation().targetContext
    private val dashboardTitle
        get() = targetContext.getString(R.string.dashboard_title)
    private val settings
        get() = targetContext.getString(R.string.nav_settings)

    @After
    fun closeComposeScenario() {
        composeScenario?.close()
        composeScenario = null
    }

    @Test
    fun firstRunOffersGetStartedAndLaterWithoutAutomaticLogin() {
        launchCatalog(DATASET_EMPTY)
        assertNoLoginSurface("First-run onboarding must not automatically launch login")

        val getStarted = requireNode(
            failureMessage = "Onboarding semantics missing: first run must expose an exact clickable 'Get started' action"
        ) { node -> node.isClickable && nodeOrDescendantHasExactLabel(node, GET_STARTED) }
        assertFalse("Get started must remain disabled until a provider is selected", getStarted.isEnabled)
        requireAction(
            label = LATER,
            failureMessage = "Onboarding semantics missing: first run must expose an exact clickable 'Later' action"
        )
    }

    @Test
    fun laterShowsFutureEmptyCatalogAndAddProvider() {
        launchCatalog(DATASET_EMPTY)
        val later = requireAction(
            label = LATER,
            failureMessage = "First-run Later action must dismiss into the empty catalog"
        )
        clickAndAwaitAccessibilityChange(later, "dismiss first-run onboarding")
        assertNoLoginSurface("Later/empty catalog must not automatically launch login")

        val legacyProviderCards = allNodes().filter { node ->
            node.text?.toString()?.startsWith(PROVIDER_PATH_PREFIX) == true
        }
        assertTrue(
            "Future empty catalog semantics missing: deterministic empty/Later state must expose zero provider cards, " +
                "but found ${legacyProviderCards.size}\n${dumpTree()}",
            legacyProviderCards.isEmpty()
        )
        requireAction(
            label = ADD_PROVIDER,
            failureMessage = "Future empty catalog semantics missing: Later/empty state must expose an exact clickable 'Add provider' action"
        )
    }

    @Test
    fun addProviderNamesDisconnectedCardAndConnectDoesNotAutoLogin() {
        launchCatalog(DATASET_POPULATED)

        val addProvider = requireAction(
            label = ADD_PROVIDER,
            failureMessage = "Add provider naming flow missing: populated dashboard must expose an exact clickable 'Add provider' action"
        )
        clickAndAwaitAccessibilityChange(addProvider, "open Add provider picker")

        val codexRow = requireNode(
            failureMessage = "Add provider naming flow missing: picker must expose Codex as one clickable RadioButton row"
        ) { node ->
            node.className?.toString() == RADIO_BUTTON_CLASS &&
                node.isClickable &&
                nodeOrDescendantHasExactLabel(node, CODEX)
        }
        clickAndAwaitAccessibilityChange(codexRow, "select Codex provider")

        val namingField = requireNode(
            failureMessage = "Naming semantics missing: selecting Codex must expose one editable naming field with the automatic 'Codex 2' suggestion"
        ) { node ->
            node.className?.toString() == EDIT_TEXT_CLASS && node.isEditable
        }
        assertNonEmptyBounds(namingField, "Naming field")
        requireExactText(
            targetContext.getString(R.string.provider_naming_default, CODEX_SECOND_ALIAS),
            "Naming semantics missing: Codex must expose the current automatic Codex 2 suggestion"
        )

        val confirmAdd = requireAction(
            label = ADD,
            failureMessage = "Naming semantics missing: naming dialog must expose an exact clickable 'Add' action"
        )
        clickAndAwaitAccessibilityChange(confirmAdd, "confirm disconnected provider card")

        requireExactText(
            CODEX_SECOND_ALIAS,
            "Add provider flow missing: confirmation must render the resolved disconnected card alias 'Codex 2'"
        )
        requireExactText(
            DISCONNECTED,
            "Add provider flow missing: a newly added card must expose exact Disconnected state semantics"
        )
        requireAction(
            label = CONNECT,
            failureMessage = "Add provider flow missing: a newly added disconnected card must expose explicit Connect"
        )
        assertNoLoginSurface("Adding a disconnected provider card must not automatically launch login")
    }

    @Test
    fun removeProviderRequiresExactIrreversibleConfirmationWithoutUndo() {
        launchCatalog(DATASET_POPULATED)

        val removeProvider = requireAction(
            label = REMOVE_PROVIDER,
            failureMessage = "Remove provider semantics missing: populated dashboard must expose an exact clickable 'Remove provider' action"
        )
        clickAndAwaitAccessibilityChange(removeProvider, "open exact-card removal selection")

        val codexRow = requireNode(
            failureMessage = "Remove provider semantics missing: selection must expose Codex as one clickable Checkbox row"
        ) { node ->
            node.className?.toString() == CHECKBOX_CLASS &&
                node.isClickable &&
                nodeOrDescendantHasExactLabel(node, CODEX)
        }
        clickAndAwaitAccessibilityChange(codexRow, "select exact Codex card")

        val continueAction = requireAction(
            label = CONTINUE,
            failureMessage = "Remove provider semantics missing: one exact selected card must enable Continue"
        )
        clickAndAwaitAccessibilityChange(continueAction, "open irreversible removal confirmation")

        requireExactText(
            CODEX,
            "Remove provider confirmation missing: irreversible warning must name the exact selected alias Codex"
        )
        requireAction(
            label = REMOVE,
            failureMessage = "Remove provider confirmation missing: warning must expose an exact destructive Remove action"
        )
        assertFalse(
            "Remove provider must be irreversible: Undo semantics are forbidden\n${dumpTree()}",
            allNodes().any { node -> nodeHasExactLabel(node, UNDO) }
        )
    }

    @Test
    fun normalizedAliasCollisionAndMalformedAliasExposeFieldErrors() {
        val context = ApplicationProvider.getApplicationContext<Context>()
        val intent = Intent(context, ProviderOnboardingComposeTestActivity::class.java).apply {
            putExtra(ProviderOnboardingComposeTestActivity.EXTRA_DATASET, DATASET_POPULATED)
        }
        composeScenario = ActivityScenario.launch(intent)
        composeRule.waitForIdle()
        composeRule.onNodeWithText(dashboardTitle).assertIsDisplayed()

        composeRule.onAllNodesWithContentDescription(ADD_PROVIDER)[0]
            .assertHasClickAction()
            .performClick()
        composeRule.onNode(
            hasContentDescriptionExactly(CLAUDE) and
                SemanticsMatcher.expectValue(SemanticsProperties.Role, Role.RadioButton)
        )
            .assertIsDisplayed()
            .assertHasClickAction()
            .performClick()
        composeRule.onNodeWithText(NEXT)
            .assertHasClickAction()
            .performClick()

        closeSoftKeyboard()
        composeRule.waitForIdle()
        val namingField = composeRule.onNode(hasSetTextAction())
            .performScrollTo()
            .assertIsDisplayed()
        val confirmAdd = composeRule.onNode(
            hasTextExactly(ADD) and hasClickAction() and hasAnyAncestor(isDialog())
        ).assertIsDisplayed()

        namingField.performTextInput(COLLIDING_ALIAS)
        confirmAdd.performClick()
        composeRule.onNodeWithText(ALIAS_COLLISION_ERROR)
            .assertIsDisplayed()
            .assert(SemanticsMatcher.expectValue(SemanticsProperties.Error, ALIAS_COLLISION_ERROR))
        namingField.assert(SemanticsMatcher.expectValue(SemanticsProperties.Error, ALIAS_COLLISION_ERROR))

        namingField.performTextClearance()
        namingField.performTextInput(MALFORMED_ALIAS)
        confirmAdd.performClick()
        composeRule.onNodeWithText(MALFORMED_ALIAS_ERROR)
            .assertIsDisplayed()
            .assert(SemanticsMatcher.expectValue(SemanticsProperties.Error, MALFORMED_ALIAS_ERROR))
        namingField.assert(SemanticsMatcher.expectValue(SemanticsProperties.Error, MALFORMED_ALIAS_ERROR))
    }

    private fun launchCatalog(dataset: String) {
        val command = buildString {
            append("am start -W -f 0x10008000 ")
            append("-n $ACTIVITY_COMPONENT ")
            append("--es $EXTRA_DATASET $dataset ")
            append("--es $EXTRA_VIEW_MODE $VIEW_MODE_LIST")
        }
        val event = uiAutomation.executeAndWaitForEvent(
            { runShell(command) },
            { candidate ->
                candidate.packageName?.toString() == APP_PACKAGE &&
                    candidate.eventType in CONTENT_CHANGE_EVENT_TYPES
            },
            EVENT_TIMEOUT_MS
        )
        assertEquals("Remote debug Activity launch event package", APP_PACKAGE, event.packageName?.toString())
        uiAutomation.waitForIdle(LAUNCH_IDLE_TIMEOUT_MS, EVENT_TIMEOUT_MS)

        val root = activeRoot("Remote debug Activity launched without an accessibility root")
        assertEquals("Accessibility root must belong to the target app", APP_PACKAGE, root.packageName?.toString())
        assertNonEmptyBounds(root, "Accessibility root")
        val nodes = allNodes()
        if (dataset == DATASET_EMPTY) {
            assertTrue(
                "First-run debug Activity must expose the provider picker\n${dumpTree()}",
                nodes.any { node -> node.text?.toString() == targetContext.getString(R.string.provider_picker_title) }
            )
        } else {
            assertTrue(
                "Debug Activity must expose the current Dashboard identity\n${dumpTree()}",
                nodes.any { node -> node.text?.toString() == dashboardTitle }
            )
            assertTrue(
                "Debug Activity must expose current dashboard accessibility content\n${dumpTree()}",
                nodes.any { node -> node.contentDescription?.toString() == settings }
            )
        }
    }

    private fun clickAndAwaitAccessibilityChange(node: AccessibilityNodeInfo, actionName: String) {
        val beforeRoot = activeRoot("Expected a live accessibility root before $actionName")
        beforeRoot.refresh()
        val beforeSignature = accessibilitySignature(beforeRoot)
        assertTrue(
            "Accessibility action failed while attempting to $actionName",
            node.performAction(AccessibilityNodeInfo.ACTION_CLICK)
        )
        awaitFreshAccessibilityTransition(beforeSignature, actionName)
    }

    private fun awaitFreshAccessibilityTransition(beforeSignature: String, actionName: String) {
        val deadline = SystemClock.uptimeMillis() + EVENT_TIMEOUT_MS
        var previousSignature: String? = null
        while (SystemClock.uptimeMillis() < deadline) {
            try {
                uiAutomation.waitForIdle(POST_ACTION_POLL_IDLE_TIMEOUT_MS, POST_ACTION_POLL_GLOBAL_TIMEOUT_MS)
            } catch (_: TimeoutException) {
            }
            val root = uiAutomation.rootInActiveWindow ?: continue
            assertEquals(
                "Accessibility root must belong to the target app after $actionName",
                APP_PACKAGE,
                root.packageName?.toString()
            )
            assertNonEmptyBounds(root, "Accessibility root after $actionName")
            root.refresh()
            val currentSignature = accessibilitySignature(root)
            if (currentSignature != beforeSignature && currentSignature == previousSignature) return
            previousSignature = currentSignature
        }
        fail("Accessibility tree did not settle after $actionName\nLive accessibility tree:\n${dumpTree()}")
    }

    private fun setTextAndAwaitAccessibilityChange(node: AccessibilityNodeInfo, value: String) {
        val arguments = Bundle().apply {
            putCharSequence(AccessibilityNodeInfo.ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE, value)
        }
        val beforeRoot = activeRoot("Expected a live accessibility root before setting ${printable(value)}")
        beforeRoot.refresh()
        val beforeSignature = accessibilitySignature(beforeRoot)
        assertTrue(
            "Accessibility set-text action failed for ${printable(value)}",
            node.performAction(AccessibilityNodeInfo.ACTION_SET_TEXT, arguments)
        )
        awaitFreshAccessibilityTransition(beforeSignature, "set alias to ${printable(value)}")
    }

    private fun requireAction(label: String, failureMessage: String): AccessibilityNodeInfo {
        val node = requireNode(failureMessage) { candidate ->
            candidate.isClickable && nodeOrDescendantHasExactLabel(candidate, label)
        }
        assertTrue("$failureMessage: action must be enabled\n${describe(node)}", node.isEnabled)
        assertTrue(
            "$failureMessage: action class must be exposed\n${describe(node)}",
            !node.className.isNullOrBlank()
        )
        assertNonEmptyBounds(node, label)
        return node
    }

    private fun requireExactText(text: String, failureMessage: String): AccessibilityNodeInfo =
        requireNode(failureMessage) { node -> node.text?.toString() == text }

    private fun requireNode(
        failureMessage: String,
        predicate: (AccessibilityNodeInfo) -> Boolean
    ): AccessibilityNodeInfo {
        val match = allNodes().firstOrNull(predicate)
        if (match == null) {
            fail("$failureMessage\nLive accessibility tree:\n${dumpTree()}")
        }
        return requireNotNull(match)
    }

    private fun assertNoLoginSurface(message: String) {
        assertFalse(
            "$message: android.webkit.WebView became visible\n${dumpTree()}",
            allNodes().any { node -> node.className?.toString() == WEB_VIEW_CLASS }
        )
    }

    private fun activeRoot(failureMessage: String): AccessibilityNodeInfo =
        uiAutomation.rootInActiveWindow ?: run {
            fail(failureMessage)
            throw AssertionError(failureMessage)
        }

    private fun allNodes(): List<AccessibilityNodeInfo> {
        val result = mutableListOf<AccessibilityNodeInfo>()
        fun visit(node: AccessibilityNodeInfo) {
            result += node
            for (index in 0 until node.childCount) {
                node.getChild(index)?.let(::visit)
            }
        }
        visit(activeRoot("Expected a live accessibility root"))
        return result
    }

    private fun accessibilitySignature(root: AccessibilityNodeInfo): String = buildString {
        fun appendNode(node: AccessibilityNodeInfo) {
            append(node.className).append('|')
            append(node.text).append('|')
            append(node.contentDescription).append('|')
            append(node.isClickable).append('|')
            append(node.isEnabled).append('|')
            append(node.isEditable).append('|')
            append(node.isSelected).append('|')
            append(node.stateDescription).append('|')
            append(node.childCount).append('\n')
            for (index in 0 until node.childCount) {
                node.getChild(index)?.let(::appendNode)
            }
        }
        appendNode(root)
    }

    private fun nodeOrDescendantHasExactLabel(node: AccessibilityNodeInfo, label: String): Boolean {
        if (nodeHasExactLabel(node, label)) return true
        for (index in 0 until node.childCount) {
            val child = node.getChild(index) ?: continue
            if (nodeOrDescendantHasExactLabel(child, label)) return true
        }
        return false
    }

    private fun nodeHasExactLabel(node: AccessibilityNodeInfo, label: String): Boolean =
        node.text?.toString() == label || node.contentDescription?.toString() == label

    private fun assertNonEmptyBounds(node: AccessibilityNodeInfo, description: String) {
        val bounds = Rect()
        node.getBoundsInScreen(bounds)
        assertTrue("$description must expose non-empty accessibility bounds: $bounds", !bounds.isEmpty)
    }

    private fun dumpTree(): String = buildString {
        allNodes().take(MAX_DUMP_NODES).forEachIndexed { index, node ->
            append(index).append(':').append(describe(node)).append('\n')
        }
    }

    private fun describe(node: AccessibilityNodeInfo): String {
        val bounds = Rect()
        node.getBoundsInScreen(bounds)
        return "text=${printable(node.text?.toString())} " +
            "contentDescription=${printable(node.contentDescription?.toString())} " +
            "class=${node.className} clickable=${node.isClickable} editable=${node.isEditable} " +
            "enabled=${node.isEnabled} stateDescription=${printable(node.stateDescription?.toString())} bounds=$bounds"
    }

    private fun printable(value: String?): String = when (value) {
        null -> "<null>"
        else -> value.replace("\u0007", "\\u0007")
    }

    private fun runShell(command: String): String {
        val descriptor = uiAutomation.executeShellCommand(command)
        return ParcelFileDescriptor.AutoCloseInputStream(descriptor).use { stream ->
            stream.bufferedReader().readText()
        }
    }

    private companion object {
        const val APP_PACKAGE = "com.aiquota.mobile"
        const val ACTIVITY_COMPONENT = "$APP_PACKAGE/.debug.ProviderOnboardingComposeTestActivity"
        const val EXTRA_DATASET = "com.aiquota.mobile.debug.extra.DATASET"
        const val EXTRA_VIEW_MODE = "com.aiquota.mobile.debug.extra.VIEW_MODE"
        const val DATASET_EMPTY = "empty"
        const val DATASET_POPULATED = "populated"
        const val VIEW_MODE_LIST = "list"

        const val GET_STARTED = "Get started"
        const val LATER = "Later"
        const val ADD_PROVIDER = "Add provider"
        const val REMOVE_PROVIDER = "Remove provider"
        const val ADD = "Add"
        const val NEXT = "Next"
        const val CONTINUE = "Continue"
        const val REMOVE = "Remove"
        const val CONNECT = "Connect"
        const val UNDO = "Undo"
        const val CLAUDE = "Claude"
        const val CODEX = "Codex"
        const val CODEX_SECOND_ALIAS = "Codex 2"
        const val DISCONNECTED = "Disconnected"
        const val PROVIDER_PATH_PREFIX = "~/AI Quota/"

        const val COLLIDING_ALIAS = " work "
        const val MALFORMED_ALIAS = "\u0007work"
        const val ALIAS_COLLISION_ERROR = "That card name is already in use."
        const val MALFORMED_ALIAS_ERROR = "Card names cannot contain control characters."

        const val RADIO_BUTTON_CLASS = "android.widget.RadioButton"
        const val CHECKBOX_CLASS = "android.widget.CheckBox"
        const val EDIT_TEXT_CLASS = "android.widget.EditText"
        const val WEB_VIEW_CLASS = "android.webkit.WebView"

        const val LAUNCH_IDLE_TIMEOUT_MS = 250L
        const val POST_ACTION_POLL_IDLE_TIMEOUT_MS = 100L
        const val POST_ACTION_POLL_GLOBAL_TIMEOUT_MS = 500L
        const val EVENT_TIMEOUT_MS = 10_000L
        const val MAX_DUMP_NODES = 200
        val CONTENT_CHANGE_EVENT_TYPES = setOf(
            AccessibilityEvent.TYPE_WINDOW_STATE_CHANGED,
            AccessibilityEvent.TYPE_WINDOW_CONTENT_CHANGED
        )
    }
}
