package com.aiquota.mobile.ui

import android.app.UiAutomation
import android.accessibilityservice.AccessibilityServiceInfo
import android.content.Context
import android.content.Intent
import android.graphics.Rect
import android.os.ParcelFileDescriptor
import android.os.SystemClock
import android.view.InputDevice
import android.view.MotionEvent
import android.view.accessibility.AccessibilityNodeInfo
import androidx.compose.ui.semantics.Role
import androidx.compose.ui.semantics.SemanticsProperties
import androidx.compose.ui.test.SemanticsMatcher
import androidx.compose.ui.test.assert
import androidx.compose.ui.test.assertCountEquals
import androidx.compose.ui.test.assertHasClickAction
import androidx.compose.ui.test.assertIsDisplayed
import androidx.compose.ui.test.assertIsEnabled
import androidx.compose.ui.test.assertIsNotEnabled
import androidx.compose.ui.test.hasAnyAncestor
import androidx.compose.ui.test.hasClickAction
import androidx.compose.ui.test.hasContentDescriptionExactly
import androidx.compose.ui.test.hasText
import androidx.compose.ui.test.hasSetTextAction
import androidx.compose.ui.test.hasTextExactly
import androidx.compose.ui.test.isDialog
import androidx.compose.ui.test.junit4.createEmptyComposeRule
import androidx.compose.ui.test.onAllNodesWithContentDescription
import androidx.compose.ui.test.onAllNodesWithText
import androidx.compose.ui.test.onNodeWithContentDescription
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
import org.junit.After
import org.junit.Assume.assumeTrue
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Assert.fail
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith

@RunWith(AndroidJUnit4::class)
class ProviderCardCatalogUiTest {
    @get:Rule
    val composeRule = createEmptyComposeRule()

    private var composeScenario: ActivityScenario<ProviderOnboardingComposeTestActivity>? = null
    private var platformLocaleChanged = false
    private val uiAutomation: UiAutomation
        get() = InstrumentationRegistry.getInstrumentation().uiAutomation
    private val targetContext: Context
        get() = ApplicationProvider.getApplicationContext()
    private val dashboardTitle: String
        get() = text(R.string.dashboard_title)

    @After
    fun closeComposeScenario() {
        runCatching { closeSoftKeyboard() }
        composeScenario?.close()
        composeScenario = null
        if (platformLocaleChanged) runCatching { setPlatformLocale(LOCALE_ENGLISH) }
        InstrumentationRegistry.getInstrumentation().waitForIdleSync()
    }

    @Test
    fun platformEnglishTreeSupportsExactRemovalConfirmation() {
        requireRemotePlatformRunner()
        setPlatformLocale(LOCALE_ENGLISH)
        launchPlatformCatalog(DATASET_POPULATED)

        val removeAction = awaitPlatformNode(
            "English dashboard must expose a clickable Remove provider action",
        ) { it.isClickable && it.hasExactLabelOrDescendant(REMOVE_PROVIDER) }
        performPlatformClick(removeAction, "open removal dialog") {
            it.hasExactLabel(ENGLISH_REMOVAL_TITLE)
        }

        val codexCheckbox = awaitPlatformNode(
            "Removal dialog must expose Codex as a platform checkbox",
        ) {
            it.className?.toString() == CHECKBOX_CLASS &&
                it.isCheckable &&
                it.isClickable &&
                it.contentDescription?.toString() == text(R.string.provider_removal_named_card, CODEX, CODEX)
        }
        assertMinimumTouchTarget(codexCheckbox, "Codex removal checkbox")
        performPlatformClick(codexCheckbox, "select exact Codex card") {
            it.text?.toString() == "1 selected"
        }

        val continueAction = awaitPlatformNode("Selected card must enable Continue") {
            it.isClickable && it.isEnabled && it.hasExactLabelOrDescendant(CONTINUE)
        }
        performPlatformClick(continueAction, "open irreversible confirmation") {
            it.hasExactLabel(ENGLISH_CONFIRMATION_TITLE)
        }
        awaitPlatformNode("Confirmation must expose the destructive Remove action") {
            it.isClickable && it.isEnabled && it.hasExactLabelOrDescendant(REMOVE)
        }
        assertFalse(
            "Removal confirmation must not expose Undo\n${dumpPlatformTree()}",
            platformNodes().any { it.hasExactLabel(UNDO) },
        )
    }

    @Test
    fun platformKoreanTreeKeepsOnboardingActionsReachable() {
        requireRemotePlatformRunner()
        setPlatformLocale(LOCALE_KOREAN)
        launchPlatformCatalog(DATASET_EMPTY)

        awaitPlatformNode("Korean provider picker title must be exposed") {
            it.text?.toString() == KOREAN_PICKER_TITLE
        }
        val start = awaitPlatformNode("Korean Get started action must be exposed") {
            it.isClickable && it.hasExactLabelOrDescendant(KOREAN_GET_STARTED)
        }
        assertFalse("Get started must remain disabled before selection", start.isEnabled)
        val later = awaitPlatformNode("Korean Later action must be clickable") {
            it.isClickable && it.isEnabled && it.hasExactLabelOrDescendant(KOREAN_LATER)
        }
        assertMinimumTouchTarget(later, "Korean Later action")

        val laterBounds = Rect().also(later::getBoundsInScreen)
        val initiallyVisibleRows = platformNodes().filter {
            val bounds = Rect().also(it::getBoundsInScreen)
            it.className?.toString() == RADIO_BUTTON_CLASS &&
                bounds.top >= 0 &&
                bounds.bottom > bounds.top &&
                bounds.top < laterBounds.top
        }
        assertTrue("At least one provider row must be initially visible", initiallyVisibleRows.isNotEmpty())
        initiallyVisibleRows.forEach { row ->
            val bounds = Rect().also(row::getBoundsInScreen)
            assertTrue(
                "Initial provider row must not overlap the fixed footer: row=$bounds footer=$laterBounds",
                bounds.bottom <= laterBounds.top,
            )
        }
        repeat(20) {
            platformNodes().firstOrNull { it.isScrollable }
                ?.performAction(AccessibilityNodeInfo.ACTION_SCROLL_FORWARD)
            InstrumentationRegistry.getInstrumentation().waitForIdleSync()
            Thread.sleep(250)
        }
        val copilotPredicate: (AccessibilityNodeInfo) -> Boolean = {
            val bounds = Rect().also(it::getBoundsInScreen)
            it.className?.toString() == RADIO_BUTTON_CLASS &&
                it.isClickable &&
                it.hasExactLabelOrDescendant(COPILOT) &&
                bounds.top >= 0 &&
                bounds.bottom <= laterBounds.top
        }
        val copilot = awaitPlatformNode(
            "The final Copilot row must remain reachable without overlapping the footer",
            copilotPredicate,
        )
        val copilotBounds = Rect().also(copilot::getBoundsInScreen)
        assertTrue(
            "Scrolled provider row must not overlap the fixed footer: row=$copilotBounds footer=$laterBounds",
            copilotBounds.bottom <= laterBounds.top,
        )
    }

    @Test
    fun firstRunOffersGetStartedAndLaterWithoutAutomaticLogin() {
        launchCatalog(DATASET_EMPTY)
        composeRule.onNodeWithText(text(R.string.provider_picker_title), substring = false).assertIsDisplayed()
        composeRule.onNodeWithText(text(R.string.provider_onboarding_start), substring = false)
            .assertHasClickAction()
            .assertIsNotEnabled()
        composeRule.onNodeWithText(text(R.string.provider_onboarding_later), substring = false)
            .assertHasClickAction()
            .assertIsDisplayed()
    }

    @Test
    fun laterShowsFutureEmptyCatalogAndAddProvider() {
        launchCatalog(DATASET_EMPTY)
        composeRule.onNodeWithText(text(R.string.provider_onboarding_later), substring = false).performClick()
        composeRule.waitForIdle()
        composeRule.onNodeWithText(text(R.string.provider_catalog_empty_prompt), substring = false)
            .assertIsDisplayed()
        composeRule.onAllNodes(
            hasText(PROVIDER_PATH_PREFIX, substring = true),
            useUnmergedTree = true,
        ).assertCountEquals(0)
        composeRule.onAllNodesWithContentDescription(text(R.string.provider_catalog_add_action))[0]
            .assertHasClickAction()
            .assertIsDisplayed()
    }

    @Test
    fun addProviderNamesDisconnectedCardAndConnectDoesNotAutoLogin() {
        launchCatalog(DATASET_POPULATED)
        composeRule.onNodeWithText(text(R.string.dashboard_title), substring = false).assertIsDisplayed()
        composeRule.onAllNodesWithContentDescription(text(R.string.provider_catalog_add_action))[0]
            .assertHasClickAction()
            .performClick()
        composeRule.onNodeWithText(text(R.string.provider_picker_title), substring = false).assertIsDisplayed()
        composeRule.onNode(
            hasContentDescriptionExactly(CODEX) and role(Role.RadioButton),
        ).assertIsDisplayed().assertHasClickAction().performClick()
        composeRule.onNodeWithText(text(R.string.provider_enrollment_next), substring = false)
            .assertHasClickAction()
            .performClick()
        composeRule.onNodeWithText(
            text(R.string.provider_naming_default, CODEX_SECOND_ALIAS),
            substring = false,
        )
            .assertIsDisplayed()
        composeRule.onNode(hasSetTextAction()).assertIsDisplayed()
        composeRule.onNode(
            hasTextExactly(text(R.string.provider_enrollment_add)) and
                hasClickAction() and
                hasAnyAncestor(isDialog()),
        ).assertIsDisplayed().performClick()
        composeRule.waitForIdle()
        composeRule.onNodeWithText(CODEX_SECOND_ALIAS, substring = false).assertExists()
        composeRule.onNodeWithContentDescription("$CODEX_SECOND_ALIAS, $CODEX, $DISCONNECTED, $CONNECT")
            .assertExists()
        composeRule.onNodeWithText(text(R.string.dashboard_title), substring = false).assertIsDisplayed()
    }

    @Test
    fun removeProviderRequiresExactIrreversibleConfirmationWithoutUndo() {
        launchCatalog(DATASET_POPULATED)
        composeRule.onNodeWithText(text(R.string.dashboard_title), substring = false).assertIsDisplayed()
        composeRule.onAllNodesWithContentDescription(text(R.string.provider_catalog_remove_action))[0]
            .assertHasClickAction()
            .performClick()
        composeRule.onNodeWithText(text(R.string.provider_removal_title), substring = false).assertIsDisplayed()
        composeRule.onNode(
            hasContentDescriptionExactly(text(R.string.provider_removal_named_card, CODEX, CODEX)) and
                role(Role.Checkbox),
        ).assertIsDisplayed().assertHasClickAction().performClick()
        composeRule.onNode(
            hasTextExactly(text(R.string.provider_removal_continue)) and
                hasClickAction() and
                hasAnyAncestor(isDialog()),
        ).assertIsEnabled().performClick()
        composeRule.onAllNodes(hasText(CODEX, substring = true) and hasAnyAncestor(isDialog()))
            .assertCountEquals(2)
        composeRule.onNodeWithText(text(R.string.provider_removal_confirm), substring = false)
            .assertHasClickAction()
            .assertIsDisplayed()
        composeRule.onAllNodesWithText(UNDO, substring = false).assertCountEquals(0)
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
        val context = ApplicationProvider.getApplicationContext<Context>()
        val intent = Intent(context, ProviderOnboardingComposeTestActivity::class.java).apply {
            putExtra(ProviderOnboardingComposeTestActivity.EXTRA_DATASET, dataset)
        }
        composeScenario = ActivityScenario.launch(intent)
        composeRule.waitForIdle()
    }

    private fun launchPlatformCatalog(dataset: String) {
        uiAutomation.serviceInfo = uiAutomation.serviceInfo.apply {
            flags = flags or
                AccessibilityServiceInfo.FLAG_RETRIEVE_INTERACTIVE_WINDOWS or
                AccessibilityServiceInfo.FLAG_REPORT_VIEW_IDS
        }
        runShell(
            "am start -W -f 0x10008000 -n $ACTIVITY_COMPONENT " +
                "--es $EXTRA_DATASET $dataset --es $EXTRA_VIEW_MODE $VIEW_MODE_LIST",
        )
        uiAutomation.waitForIdle(PLATFORM_IDLE_TIMEOUT_MS, PLATFORM_TIMEOUT_MS)
        awaitPlatformNode("Debug catalog did not expose an accessibility root") {
            it.packageName?.toString() == APP_PACKAGE && if (dataset == DATASET_EMPTY) {
                it.hasExactLabel(KOREAN_PICKER_TITLE) || it.hasExactLabel(ENGLISH_PICKER_TITLE)
            } else {
                it.hasExactLabel(DASHBOARD)
            }
        }
    }

    private fun requireRemotePlatformRunner() {
        assumeTrue(
            "Platform-tree tests require ProviderCardCatalogInstrumentationRunner",
            InstrumentationRegistry.getInstrumentation() is ProviderCardCatalogInstrumentationRunner,
        )
    }

    private fun setPlatformLocale(languageTag: String) {
        platformLocaleChanged = true
        runShell("cmd locale set-app-locales $APP_PACKAGE --user 0 --locales $languageTag")
        SystemClock.sleep(LOCALE_SETTLE_MS)
    }

    private fun performPlatformClick(
        node: AccessibilityNodeInfo,
        actionName: String,
        settledPredicate: (AccessibilityNodeInfo) -> Boolean,
    ) {
        assertTrue(
            "Platform node must expose ACTION_CLICK while attempting to $actionName",
            node.actionList.any { action -> action.id == AccessibilityNodeInfo.ACTION_CLICK },
        )
        val bounds = Rect().also(node::getBoundsInScreen)
        val eventTime = SystemClock.uptimeMillis()
        val down = MotionEvent.obtain(
            eventTime,
            eventTime,
            MotionEvent.ACTION_DOWN,
            bounds.exactCenterX(),
            bounds.exactCenterY(),
            0,
        ).apply { source = InputDevice.SOURCE_TOUCHSCREEN }
        val up = MotionEvent.obtain(
            eventTime,
            eventTime + 50L,
            MotionEvent.ACTION_UP,
            bounds.exactCenterX(),
            bounds.exactCenterY(),
            0,
        ).apply { source = InputDevice.SOURCE_TOUCHSCREEN }
        try {
            assertTrue("Touch down injection failed while attempting to $actionName", uiAutomation.injectInputEvent(down, true))
            assertTrue("Touch up injection failed while attempting to $actionName", uiAutomation.injectInputEvent(up, true))
        } finally {
            down.recycle()
            up.recycle()
        }
        awaitPlatformNode("Accessibility tree did not settle after $actionName", settledPredicate)
    }

    private fun awaitPlatformNode(
        failureMessage: String,
        predicate: (AccessibilityNodeInfo) -> Boolean,
    ): AccessibilityNodeInfo {
        val deadline = SystemClock.uptimeMillis() + PLATFORM_TIMEOUT_MS
        while (SystemClock.uptimeMillis() < deadline) {
            runCatching {
                uiAutomation.waitForIdle(PLATFORM_POLL_IDLE_TIMEOUT_MS, PLATFORM_POLL_TIMEOUT_MS)
            }
            platformRoots().forEach { it.refresh() }
            platformNodes().firstOrNull(predicate)?.let { return it }
            SystemClock.sleep(PLATFORM_POLL_INTERVAL_MS)
        }
        fail("$failureMessage\n${dumpPlatformTree()}")
        throw AssertionError(failureMessage)
    }

    private fun platformNodes(): List<AccessibilityNodeInfo> {
        val result = mutableListOf<AccessibilityNodeInfo>()
        fun visit(node: AccessibilityNodeInfo) {
            result += node
            for (index in 0 until node.childCount) {
                node.getChild(index)?.let(::visit)
            }
        }
        platformRoots().forEach(::visit)
        return result
    }

    private fun platformRoots(): List<AccessibilityNodeInfo> = buildList {
        uiAutomation.windows.mapNotNullTo(this) { window -> window.root }
        uiAutomation.rootInActiveWindow?.let { activeRoot ->
            if (none { root -> root.windowId == activeRoot.windowId }) add(activeRoot)
        }
    }

    private fun AccessibilityNodeInfo.hasExactLabel(label: String): Boolean =
        text?.toString() == label || contentDescription?.toString() == label

    private fun AccessibilityNodeInfo.hasExactLabelOrDescendant(label: String): Boolean {
        if (hasExactLabel(label)) return true
        for (index in 0 until childCount) {
            val child = getChild(index) ?: continue
            if (child.hasExactLabelOrDescendant(label)) return true
        }
        return false
    }

    private fun assertMinimumTouchTarget(node: AccessibilityNodeInfo, description: String) {
        val bounds = Rect().also(node::getBoundsInScreen)
        val minimumPx = (MINIMUM_TOUCH_TARGET_DP * targetContext.resources.displayMetrics.density).toInt()
        assertTrue(
            "$description must expose at least ${MINIMUM_TOUCH_TARGET_DP.toInt()}dp bounds: $bounds",
            bounds.width() >= minimumPx && bounds.height() >= minimumPx,
        )
    }

    private fun dumpPlatformTree(): String = platformNodes()
        .take(MAX_PLATFORM_DUMP_NODES)
        .joinToString("\n") { node ->
            val bounds = Rect().also(node::getBoundsInScreen)
            "text=${node.text} contentDescription=${node.contentDescription} " +
                "class=${node.className} clickable=${node.isClickable} enabled=${node.isEnabled} " +
                "checkable=${node.isCheckable} checked=${node.isChecked} bounds=$bounds"
        }

    private fun runShell(command: String): String {
        val descriptor = uiAutomation.executeShellCommand(command)
        return ParcelFileDescriptor.AutoCloseInputStream(descriptor).use { stream ->
            stream.bufferedReader().readText()
        }
    }

    private fun text(resourceId: Int, vararg formatArgs: Any): String =
        targetContext.getString(resourceId, *formatArgs)

    private fun role(role: Role): SemanticsMatcher =
        SemanticsMatcher.expectValue(SemanticsProperties.Role, role)

    private companion object {
        const val APP_PACKAGE = "com.aiquota.mobile"
        const val ACTIVITY_COMPONENT = "$APP_PACKAGE/.debug.ProviderOnboardingComposeTestActivity"
        const val EXTRA_DATASET = "com.aiquota.mobile.debug.extra.DATASET"
        const val EXTRA_VIEW_MODE = "com.aiquota.mobile.debug.extra.VIEW_MODE"
        const val DATASET_EMPTY = "empty"
        const val DATASET_POPULATED = "populated"
        const val VIEW_MODE_LIST = "list"

        const val LOCALE_ENGLISH = "en-US"
        const val LOCALE_KOREAN = "ko-KR"

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
        const val COPILOT = "Copilot"
        const val DISCONNECTED = "Disconnected"
        const val PROVIDER_PATH_PREFIX = "~/AI Quota/"

        const val DASHBOARD = "Dashboard"
        const val ENGLISH_PICKER_TITLE = "Choose a provider"
        const val ENGLISH_REMOVAL_TITLE = "Remove provider cards"
        const val ENGLISH_CONFIRMATION_TITLE = "Remove selected cards?"
        const val KOREAN_PICKER_TITLE = "제공자 선택"
        const val KOREAN_GET_STARTED = "시작하기"
        const val KOREAN_LATER = "나중에"

        const val COLLIDING_ALIAS = " work "
        const val MALFORMED_ALIAS = "\u0007work"
        const val ALIAS_COLLISION_ERROR = "That card name is already in use."
        const val MALFORMED_ALIAS_ERROR = "Card names cannot contain control characters."

        const val RADIO_BUTTON_CLASS = "android.widget.RadioButton"
        const val CHECKBOX_CLASS = "android.widget.CheckBox"
        const val MINIMUM_TOUCH_TARGET_DP = 48f
        const val LOCALE_SETTLE_MS = 1_500L
        const val PLATFORM_IDLE_TIMEOUT_MS = 250L
        const val PLATFORM_POLL_IDLE_TIMEOUT_MS = 100L
        const val PLATFORM_POLL_TIMEOUT_MS = 500L
        const val PLATFORM_POLL_INTERVAL_MS = 100L
        const val PLATFORM_TIMEOUT_MS = 10_000L
        const val MAX_PLATFORM_DUMP_NODES = 200

    }
}
