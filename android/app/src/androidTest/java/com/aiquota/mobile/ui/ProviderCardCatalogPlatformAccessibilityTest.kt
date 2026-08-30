package com.aiquota.mobile.ui

import android.content.Context
import android.content.Intent
import android.graphics.Rect
import android.os.Bundle
import android.view.accessibility.AccessibilityNodeInfo
import androidx.test.core.app.ActivityScenario
import androidx.test.core.app.ApplicationProvider
import androidx.test.ext.junit.runners.AndroidJUnit4
import androidx.test.platform.app.InstrumentationRegistry
import com.aiquota.mobile.R
import com.aiquota.mobile.debug.ProviderOnboardingComposeTestActivity
import java.util.concurrent.TimeoutException
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith

@RunWith(AndroidJUnit4::class)
class ProviderCardCatalogPlatformAccessibilityTest {
    private val instrumentation = InstrumentationRegistry.getInstrumentation()
    private val uiAutomation = instrumentation.uiAutomation
    private val targetContext: Context
        get() = ApplicationProvider.getApplicationContext()
    private var scenario: ActivityScenario<ProviderOnboardingComposeTestActivity>? = null
    private var originalDeviceLocale: String? = null

    @Before
    fun captureDeviceLocale() {
        originalDeviceLocale = runShell("cmd locale get-device-locale").trim()
    }

    @After
    fun closeScenarioAndRestoreLocale() {
        closeCurrentScenario()
        originalDeviceLocale?.takeIf(String::isNotBlank)?.let { runShell("cmd locale set-device-locale $it") }
    }

    @Test
    fun platformAccessibilityCoversEnglishAndKoreanCatalogStates() {
        exerciseLocale("en-US", "en")
        exerciseLocale("ko-KR", "ko")
    }

    private fun exerciseLocale(localeTag: String, language: String) {
        setDeviceLocale(localeTag)

        launchCatalog(DATASET_EMPTY)
        assertActivityLanguage(language)
        var nodes = settledTree("$localeTag first-run") { tree ->
            tree.any { node -> node.className == RADIO_BUTTON_CLASS }
        }
        assertContainsText(nodes, text(R.string.provider_picker_title))
        val getStarted = actionNode(nodes, text(R.string.provider_onboarding_start))
        assertAction(getStarted, text(R.string.provider_onboarding_start), enabled = false)
        val later = actionNode(nodes, text(R.string.provider_onboarding_later))
        assertAction(later, text(R.string.provider_onboarding_later), enabled = true)
        nodes = clickAndAwait(later, "Later") { tree ->
            tree.any { node -> node.text?.toString() == text(R.string.provider_catalog_empty_prompt) }
        }
        assertNoLoginSurface(nodes)
        assertAction(actionNode(nodes, text(R.string.provider_catalog_add_action)), text(R.string.provider_catalog_add_action))

        closeCurrentScenario()
        launchCatalog(DATASET_POPULATED)
        assertActivityLanguage(language)
        nodes = settledTree("$localeTag populated dashboard") { tree ->
            tree.any { node -> node.text?.toString() == text(R.string.dashboard_title) }
        }
        assertContainsText(nodes, text(R.string.dashboard_title))
        listOf(
            text(R.string.nav_settings),
            text(R.string.provider_catalog_add_action),
            text(R.string.provider_catalog_remove_action),
        ).forEach { label -> assertAction(actionNode(nodes, label), label) }
        assertFinalRowReachability(nodes)
        nodes = clickAndAwait(actionNode(nodes, text(R.string.provider_catalog_add_action)), "Add provider") { tree ->
            tree.any { node -> node.className == RADIO_BUTTON_CLASS }
        }
        val codex = providerNode(nodes, CODEX)
        assertChoice(codex, CODEX, RADIO_BUTTON_CLASS, checked = false)
        nodes = clickAndAwait(codex, "select Codex") { tree -> providerNode(tree, CODEX).isChecked }
        assertChoice(providerNode(nodes, CODEX), CODEX, RADIO_BUTTON_CLASS, checked = true)
        nodes = clickAndAwait(actionNode(nodes, text(R.string.provider_enrollment_next)), "Next") { tree ->
            tree.any { node -> node.className == EDIT_TEXT_CLASS && node.isEditable }
        }
        val namingField = nodes.first { node -> node.className == EDIT_TEXT_CLASS && node.isEditable }
        assertEditableField(namingField)
        assertContainsText(nodes, text(R.string.provider_naming_default, CODEX_SECOND_ALIAS))
        setTextAndAwait(namingField, CODEX_SECOND_ALIAS)
        nodes = clickAndAwait(actionNode(nodes, text(R.string.provider_enrollment_add)), "Add card") { tree ->
            tree.any { node -> node.contentDescription?.toString() == cardDescription(text(R.string.provider_status_disconnected), text(R.string.provider_connect)) }
        }
        assertContainsText(nodes, CODEX_SECOND_ALIAS)
        assertContainsText(nodes, text(R.string.provider_status_disconnected))
        assertAction(actionNode(nodes, text(R.string.provider_connect)), text(R.string.provider_connect))
        assertNoLoginSurface(nodes)

        closeCurrentScenario()
        launchCatalog(DATASET_POPULATED)
        nodes = settledTree("$localeTag removal") { tree ->
            tree.any { node -> node.text?.toString() == text(R.string.dashboard_title) }
        }
        nodes = clickAndAwait(actionNode(nodes, text(R.string.provider_catalog_remove_action)), "Remove provider") { tree ->
            tree.any { node -> node.text?.toString() == text(R.string.provider_removal_title) }
        }
        val removalRow = nodes.first { node ->
            node.className == CHECKBOX_CLASS &&
                node.contentDescription?.toString() == text(R.string.provider_removal_named_card, CODEX, CODEX)
        }
        assertChoice(removalRow, CODEX, CHECKBOX_CLASS, checked = false)
        nodes = clickAndAwait(removalRow, "select Codex for removal") { tree ->
            tree.first { node -> node.className == CHECKBOX_CLASS && node.contentDescription?.toString() == text(R.string.provider_removal_named_card, CODEX, CODEX) }.isChecked
        }
        assertTrue("selected count must remain visible", nodes.any { node -> node.text?.toString() == text(R.string.provider_removal_selected_count, 1) })
        nodes = clickAndAwait(actionNode(nodes, text(R.string.provider_removal_continue)), "Continue") { tree ->
            tree.any { node -> node.text?.toString() == text(R.string.provider_removal_confirmation_title) }
        }
        assertContainsText(nodes, text(R.string.provider_removal_confirmation_names, text(R.string.provider_removal_named_card, CODEX, CODEX)))
        assertContainsText(nodes, text(R.string.provider_removal_confirmation_consequence))
        assertFalse("removal must not expose Undo", nodes.any { node -> node.text?.toString() == "Undo" || node.contentDescription?.toString() == "Undo" })
        assertAction(actionNode(nodes, text(R.string.provider_removal_confirm)), text(R.string.provider_removal_confirm))
        assertNoLoginSurface(nodes)
    }

    private fun assertFinalRowReachability(initialNodes: List<AccessibilityNodeInfo>) {
        val scroll = initialNodes.first { node -> node.className == SCROLL_VIEW_CLASS && node.isScrollable }
        val before = signature(activeRoot("scroll start"))
        assertTrue("provider list must expose forward scrolling", scroll.performAction(AccessibilityNodeInfo.ACTION_SCROLL_FORWARD))
        val nodes = awaitTransition(before, "scroll provider list") { tree ->
            tree.any { node -> node.contentDescription?.toString()?.startsWith("Cursor, Cursor,") == true }
        }
        val finalRow = nodes.first { node -> node.contentDescription?.toString()?.startsWith("Cursor, Cursor,") == true }
        val viewport = Rect()
        nodes.first { node -> node.className == SCROLL_VIEW_CLASS && node.isScrollable }.getBoundsInScreen(viewport)
        val rowBounds = Rect()
        finalRow.getBoundsInScreen(rowBounds)
        assertTrue("final provider row must be fully reachable above footer: row=$rowBounds viewport=$viewport", rowBounds.bottom <= viewport.bottom)
        assertTrue("final provider row must intersect the scroll viewport: row=$rowBounds viewport=$viewport", rowBounds.top < viewport.bottom && rowBounds.bottom > viewport.top)
    }

    private fun launchCatalog(dataset: String) {
        closeCurrentScenario()
        scenario = ActivityScenario.launch(Intent(targetContext, ProviderOnboardingComposeTestActivity::class.java).apply {
            putExtra(ProviderOnboardingComposeTestActivity.EXTRA_DATASET, dataset)
        })
        settledTree("launch $dataset") { tree ->
            tree.any { node -> node.className == RADIO_BUTTON_CLASS || node.text?.toString() == "Dashboard" || node.text?.toString() == "대시보드" }
        }
    }

    private fun clickAndAwait(
        node: AccessibilityNodeInfo,
        actionName: String,
        expected: (List<AccessibilityNodeInfo>) -> Boolean,
    ): List<AccessibilityNodeInfo> {
        val before = signature(activeRoot("$actionName start"))
        assertTrue("platform action failed: $actionName", node.performAction(AccessibilityNodeInfo.ACTION_CLICK))
        return awaitTransition(before, actionName, expected)
    }

    private fun setTextAndAwait(node: AccessibilityNodeInfo, value: String) {
        val before = signature(activeRoot("set text start"))
        val arguments = Bundle().apply { putCharSequence(AccessibilityNodeInfo.ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE, value) }
        assertTrue("platform set-text action failed", node.performAction(AccessibilityNodeInfo.ACTION_SET_TEXT, arguments))
        awaitTransition(before, "set card name") { tree -> tree.any { candidate -> candidate.className == EDIT_TEXT_CLASS && candidate.text?.toString() == value } }
    }

    private fun settledTree(description: String, expected: (List<AccessibilityNodeInfo>) -> Boolean): List<AccessibilityNodeInfo> {
        var previous: String? = null
        var stable = 0
        repeat(MAX_POLLS) {
            waitForIdle()
            val root = uiAutomation.rootInActiveWindow
            if (root == null || root.packageName?.toString() != APP_PACKAGE) return@repeat
            root.refresh()
            val nodes = allNodes(root)
            if (!expected(nodes)) { previous = null; stable = 0; return@repeat }
            val current = signature(nodes)
            if (current == previous) stable++ else { previous = current; stable = 0 }
            if (stable >= REQUIRED_STABLE_SNAPSHOTS) return nodes
        }
        throw AssertionError("platform tree did not settle for $description")
    }

    private fun awaitTransition(before: String, description: String, expected: (List<AccessibilityNodeInfo>) -> Boolean): List<AccessibilityNodeInfo> =
        settledTree(description) { nodes -> signature(nodes) != before && expected(nodes) }

    private fun activeRoot(description: String): AccessibilityNodeInfo {
        waitForIdle()
        val root = uiAutomation.rootInActiveWindow
        assertNotNull("missing accessibility root: $description", root)
        assertEquals(APP_PACKAGE, root!!.packageName?.toString())
        root.refresh()
        return root
    }

    private fun actionNode(nodes: List<AccessibilityNodeInfo>, label: String): AccessibilityNodeInfo {
        val root = activeRoot("find action $label")
        return findClickable(root, label) ?: throw AssertionError("missing platform action '$label'\n${describe(nodes)}")
    }

    private fun assertAction(node: AccessibilityNodeInfo, label: String, enabled: Boolean = true) {
        assertTrue("$label must be clickable", node.isClickable)
        assertTrue("$label must expose a platform button class", node.className?.toString() == BUTTON_CLASS || findDescendant(node) { it.className?.toString() == BUTTON_CLASS })
        assertEquals("$label enabled state", enabled, node.isEnabled)
        assertTouchTarget(node, label)
    }

    private fun assertChoice(node: AccessibilityNodeInfo, label: String, expectedClass: String, checked: Boolean) {
        assertEquals(expectedClass, node.className?.toString())
        assertTrue("$label must be clickable and focusable", node.isClickable && node.isFocusable)
        assertTrue("$label must be checkable", node.isCheckable)
        assertEquals("$label checked state", checked, node.isChecked)
        assertTouchTarget(node, label)
    }

    private fun assertEditableField(node: AccessibilityNodeInfo) {
        assertEquals(EDIT_TEXT_CLASS, node.className?.toString())
        assertTrue("card name must be editable and focusable", node.isEditable && node.isFocusable)
        assertTouchTarget(node, "card name")
    }

    private fun assertTouchTarget(node: AccessibilityNodeInfo, description: String) {
        val bounds = Rect()
        node.getBoundsInScreen(bounds)
        val minimum = (48f * targetContext.resources.displayMetrics.density).toInt()
        assertTrue("$description width must be at least 48dp: $bounds", bounds.width() >= minimum)
        assertTrue("$description height must be at least 48dp: $bounds", bounds.height() >= minimum)
    }

    private fun assertNoLoginSurface(nodes: List<AccessibilityNodeInfo>) {
        assertFalse("provider-card actions must not open login", nodes.any { node -> node.className?.toString() == WEB_VIEW_CLASS })
    }

    private fun assertActivityLanguage(language: String) {
        scenario!!.onActivity { activity -> assertEquals(language, activity.resources.configuration.locales[0].language) }
    }

    private fun providerNode(nodes: List<AccessibilityNodeInfo>, provider: String): AccessibilityNodeInfo =
        nodes.first { node -> node.className?.toString() == RADIO_BUTTON_CLASS && node.contentDescription?.toString() == provider }

    private fun cardDescription(status: String, connect: String): String = "$CODEX_SECOND_ALIAS, $CODEX, $status, $connect"

    private fun findClickable(node: AccessibilityNodeInfo?, label: String): AccessibilityNodeInfo? {
        if (node == null) return null
        if (node.isClickable && (node.text?.toString() == label || node.contentDescription?.toString() == label || findDescendant(node) { it.text?.toString() == label || it.contentDescription?.toString() == label })) return node
        for (index in 0 until node.childCount) findClickable(node.getChild(index), label)?.let { return it }
        return null
    }

    private fun findDescendant(node: AccessibilityNodeInfo, predicate: (AccessibilityNodeInfo) -> Boolean): Boolean {
        for (index in 0 until node.childCount) {
            val child = node.getChild(index) ?: continue
            if (predicate(child) || findDescendant(child, predicate)) return true
        }
        return false
    }

    private fun allNodes(root: AccessibilityNodeInfo): List<AccessibilityNodeInfo> {
        val result = mutableListOf<AccessibilityNodeInfo>()
        fun visit(node: AccessibilityNodeInfo) {
            result += node
            for (index in 0 until node.childCount) node.getChild(index)?.let(::visit)
        }
        visit(root)
        return result
    }

    private fun signature(nodes: List<AccessibilityNodeInfo>): String = nodes.joinToString("\n") { node ->
        val bounds = Rect().also(node::getBoundsInScreen)
        listOf(node.className, node.text, node.contentDescription, node.isClickable, node.isEnabled, node.isChecked, node.isEditable, node.isScrollable, bounds).joinToString("|")
    }

    private fun signature(root: AccessibilityNodeInfo): String = signature(allNodes(root))

    private fun describe(nodes: List<AccessibilityNodeInfo>): String = nodes.take(MAX_DUMP_NODES).joinToString("\n") { node -> "${node.className} text=${node.text} desc=${node.contentDescription}" }

    private fun assertContainsText(nodes: List<AccessibilityNodeInfo>, expected: String) {
        assertTrue("missing platform text '$expected'\n${describe(nodes)}", nodes.any { node -> node.text?.toString() == expected })
    }

    private fun text(resourceId: Int, vararg formatArgs: Any): String = scenario!!.let { current ->
        var value = ""
        current.onActivity { activity -> value = activity.getString(resourceId, *formatArgs) }
        value
    }

    private fun setDeviceLocale(localeTag: String) {
        runShell("cmd locale set-device-locale $localeTag")
    }

    private fun runShell(command: String): String {
        val descriptor = uiAutomation.executeShellCommand(command)
        return android.os.ParcelFileDescriptor.AutoCloseInputStream(descriptor).use { it.bufferedReader().readText() }
    }

    private fun waitForIdle() {
        try { uiAutomation.waitForIdle(IDLE_TIMEOUT_MS, GLOBAL_IDLE_TIMEOUT_MS) } catch (_: TimeoutException) { }
    }

    private fun closeCurrentScenario() {
        scenario?.close()
        scenario = null
        waitForIdle()
    }

    private companion object {
        const val APP_PACKAGE = "com.aiquota.mobile"
        const val DATASET_EMPTY = "empty"
        const val DATASET_POPULATED = "populated"
        const val CODEX = "Codex"
        const val CODEX_SECOND_ALIAS = "Codex 2"
        const val RADIO_BUTTON_CLASS = "android.widget.RadioButton"
        const val CHECKBOX_CLASS = "android.widget.CheckBox"
        const val EDIT_TEXT_CLASS = "android.widget.EditText"
        const val BUTTON_CLASS = "android.widget.Button"
        const val SCROLL_VIEW_CLASS = "android.widget.ScrollView"
        const val WEB_VIEW_CLASS = "android.webkit.WebView"
        const val IDLE_TIMEOUT_MS = 100L
        const val GLOBAL_IDLE_TIMEOUT_MS = 500L
        const val MAX_POLLS = 40
        const val REQUIRED_STABLE_SNAPSHOTS = 1
        const val MAX_DUMP_NODES = 120
    }
}
