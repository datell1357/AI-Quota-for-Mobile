package com.aiquota.mobile.ui.dashboard

import android.app.UiAutomation
import android.graphics.Rect
import android.os.ParcelFileDescriptor
import android.os.SystemClock
import android.view.accessibility.AccessibilityEvent
import android.view.accessibility.AccessibilityNodeInfo
import android.view.InputDevice
import android.view.MotionEvent
import android.view.ViewConfiguration
import androidx.test.ext.junit.runners.AndroidJUnit4
import androidx.test.platform.app.InstrumentationRegistry
import com.aiquota.mobile.accounts.AccountKey
import com.aiquota.mobile.accounts.ProviderAccountId
import com.aiquota.mobile.accounts.ProviderAccountIdStorageCodec
import com.aiquota.mobile.R
import com.aiquota.mobile.local.ProviderId
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test
import org.junit.runner.RunWith

@RunWith(AndroidJUnit4::class)
class ExactAccountDashboardUiTest {
    private val uiAutomation: UiAutomation
        get() = InstrumentationRegistry.getInstrumentation().uiAutomation

    private val targetContext
        get() = InstrumentationRegistry.getInstrumentation().targetContext

    @Test
    fun happyListGridReorderTapRouting() {
        launchDashboard(DATASET_EXACT_HAPPY, VIEW_MODE_LIST, resetFixture = true)
        requireCard(CLAUDE_ALIAS)
        requireCard(CODEX_ALIAS)
        requireCard(CODEX_TWO_ALIAS)
        clickCard(CODEX_TWO_ALIAS)
        requireExactText("Selected $CODEX_TWO_ALIAS")

        launchDashboard(DATASET_EXACT_HAPPY, VIEW_MODE_GRID)
        requireCard(CODEX_TWO_ALIAS)
        dragCardToEnd(CLAUDE_ALIAS)
        launchDashboard(DATASET_EXACT_HAPPY, VIEW_MODE_LIST)
        assertEquals(listOf(CODEX_ALIAS, CODEX_TWO_ALIAS, CLAUDE_ALIAS), renderedAliasesInOrder())
    }

    @Test
    fun exactReorderPersistsAcrossDebugProcessDeathAndRelaunch() {
        launchDashboard(DATASET_EXACT_HAPPY, VIEW_MODE_GRID, resetFixture = true)
        dragCardToEnd(CLAUDE_ALIAS)
        killDebugFixtureProcess()
        launchDashboard(DATASET_EXACT_HAPPY, VIEW_MODE_LIST)
        assertEquals(listOf(CODEX_ALIAS, CODEX_TWO_ALIAS, CLAUDE_ALIAS), renderedAliasesInOrder())
    }

    @Test
    fun zeroOneManyLongAliasAndPlaceholderCannotMutate() {
        launchDashboard(DATASET_EXACT_ZERO, VIEW_MODE_LIST, resetFixture = true)
        requireExactText(targetContext.getString(R.string.provider_catalog_empty_prompt))
        assertFalse("Zero-card dashboard must not render a Claude card", hasExactText(CLAUDE_ALIAS))

        launchDashboard(DATASET_EXACT_ONE, VIEW_MODE_LIST, resetFixture = true)
        assertNonEmptyBounds(requireCard(LONG_ALIAS), "long alias card")

        launchDashboard(DATASET_EXACT_EDGE, VIEW_MODE_LIST, resetFixture = true)
        requireCard(CLAUDE_ALIAS)
        requireCard(CODEX_ALIAS)
        assertFalse("Placeholder must not expose a mutation result", hasExactText("Placeholder mutation"))
    }

    @Test
    fun sessionLossShowsReconnectOnlyForExactCard() {
        launchDashboard(DATASET_EXACT_REAUTH, VIEW_MODE_LIST, resetFixture = true)
        val connectLabels = allNodes().filter { node ->
            nodeHasExactLabel(node, targetContext.getString(R.string.provider_connect))
        }
        assertEquals("Only the exact reauth card may expose Connect\n${dumpTree()}", 1, connectLabels.size)
        assertTrue(
            "The authenticated sibling must remain connected",
            nodeOrDescendantHasExactLabel(card(CODEX_ALIAS), targetContext.getString(R.string.provider_status_connected))
        )
        val reconnectButton = descendant(card(CODEX_TWO_ALIAS)) { node ->
            nodeHasExactLabel(node, targetContext.getString(R.string.provider_connect))
        }
        val reconnectBounds = Rect().also(reconnectButton::getBoundsInScreen)
        assertTrue(
            "Exact reconnect tap must be accepted",
            reconnectButton.performAction(AccessibilityNodeInfo.ACTION_CLICK) || run {
                runShell("input tap ${reconnectBounds.centerX()} ${reconnectBounds.centerY()}")
                true
            }
        )
        waitForContentChange("exact reconnect routing")
        requireExactText(
            "Selected Connect requested ${ProviderAccountIdStorageCodec.encode(CODEX_TWO_ACCOUNT_ID)} $CODEX_TWO_ALIAS"
        )
        assertFalse("Reconnect must not route to sibling A", hasExactText("Selected $CODEX_ALIAS"))
    }

    private fun launchDashboard(dataset: String, viewMode: String, resetFixture: Boolean = false) {
        val resetArgument = if (resetFixture) " --ez $EXTRA_RESET_FIXTURE true" else ""
        val command = "am start -W -f 0x10008000 -n $ACTIVITY_COMPONENT " +
            "--es $EXTRA_DATASET $dataset --es $EXTRA_VIEW_MODE $viewMode$resetArgument"
        uiAutomation.executeAndWaitForEvent(
            { runShell(command) },
            { event -> event.packageName?.toString() == APP_PACKAGE && event.eventType in CONTENT_CHANGE_EVENT_TYPES },
            EVENT_TIMEOUT_MS
        )
        uiAutomation.waitForIdle(LAUNCH_IDLE_TIMEOUT_MS, EVENT_TIMEOUT_MS)
        requireExactText(targetContext.getString(R.string.dashboard_title))
    }

    private fun dragCardToEnd(alias: String) {
        val handle = descendant(card(alias)) { node ->
            node.contentDescription?.toString() == targetContext.getString(R.string.provider_reorder_handle)
        }
        val bounds = Rect().also(handle::getBoundsInScreen)
        val startX = bounds.centerX().toFloat()
        val startY = bounds.centerY().toFloat()
        val endY = startY + DRAG_DISTANCE_PX
        val downTime = SystemClock.uptimeMillis()
        injectMotionEvent(MotionEvent.ACTION_DOWN, startX, startY, downTime, downTime)
        SystemClock.sleep(ViewConfiguration.getLongPressTimeout().toLong() + LONG_PRESS_BUFFER_MS)
        repeat(DRAG_STEPS) { step ->
            val fraction = (step + 1) / DRAG_STEPS.toFloat()
            val eventTime = SystemClock.uptimeMillis()
            injectMotionEvent(MotionEvent.ACTION_MOVE, startX, startY + ((endY - startY) * fraction), downTime, eventTime)
            SystemClock.sleep(DRAG_STEP_DELAY_MS)
        }
        injectMotionEvent(MotionEvent.ACTION_UP, startX, endY, downTime, SystemClock.uptimeMillis())
        waitForContentChange("exact card reorder")
    }

    private fun killDebugFixtureProcess() {
        val pid = runShell("pidof $DEBUG_PROCESS_NAME")
            .trim()
            .split(Regex("\\s+"))
            .firstOrNull()
            ?.toIntOrNull()
        assertTrue("Expected an isolated debug fixture process before process-death check", pid != null)
        runShell("kill -9 $pid")
        SystemClock.sleep(PROCESS_DEATH_WAIT_MS)
    }

    private fun injectMotionEvent(action: Int, x: Float, y: Float, downTime: Long, eventTime: Long) {
        val event = MotionEvent.obtain(downTime, eventTime, action, x, y, 0)
        event.source = InputDevice.SOURCE_TOUCHSCREEN
        try {
            assertTrue("Touch injection must succeed", uiAutomation.injectInputEvent(event, true))
        } finally {
            event.recycle()
        }
    }

    private fun clickCard(alias: String) {
        val node = card(alias)
        val bounds = Rect().also(node::getBoundsInScreen)
        runShell("input tap ${bounds.centerX()} ${bounds.centerY()}")
        waitForContentChange("card tap routing")
    }

    private fun requireCard(alias: String): AccessibilityNodeInfo = card(alias).also { assertNonEmptyBounds(it, "card '$alias'") }

    private fun card(alias: String): AccessibilityNodeInfo = requireNode("card '$alias'") { node ->
        node.isClickable && nodeOrDescendantHasExactLabel(node, alias)
    }

    private fun renderedAliasesInOrder(): List<String> = listOf(CLAUDE_ALIAS, CODEX_ALIAS, CODEX_TWO_ALIAS).sortedBy { alias ->
        Rect().also { card(alias).getBoundsInScreen(it) }.top
    }

    private fun requireExactText(text: String): AccessibilityNodeInfo = requireNode("text '$text'") { node ->
        nodeHasExactLabel(node, text)
    }

    private fun hasExactText(text: String): Boolean = allNodes().any { node -> nodeHasExactLabel(node, text) }

    private fun requireNode(description: String, predicate: (AccessibilityNodeInfo) -> Boolean): AccessibilityNodeInfo {
        val result = allNodes().firstOrNull(predicate)
        assertTrue("Missing $description\n${dumpTree()}", result != null)
        return requireNotNull(result)
    }

    private fun descendant(node: AccessibilityNodeInfo, predicate: (AccessibilityNodeInfo) -> Boolean): AccessibilityNodeInfo {
        node.children().forEach { child ->
            if (predicate(child)) return child
            runCatching { return descendant(child, predicate) }
        }
        error("Missing descendant for node ${node.className}")
    }

    private fun nodeOrDescendantHasExactLabel(node: AccessibilityNodeInfo, label: String): Boolean =
        nodeHasExactLabel(node, label) || node.children().any { child -> nodeOrDescendantHasExactLabel(child, label) }

    private fun nodeHasExactLabel(node: AccessibilityNodeInfo, label: String): Boolean =
        node.text?.toString() == label || node.contentDescription?.toString() == label

    private fun allNodes(): List<AccessibilityNodeInfo> {
        val result = mutableListOf<AccessibilityNodeInfo>()
        fun visit(node: AccessibilityNodeInfo) {
            result += node
            node.children().forEach(::visit)
        }
        visit(requireNotNull(uiAutomation.rootInActiveWindow) { "Expected a live accessibility root" })
        return result
    }

    private fun AccessibilityNodeInfo.children(): List<AccessibilityNodeInfo> = buildList {
        for (index in 0 until childCount) getChild(index)?.let(::add)
    }

    private fun assertNonEmptyBounds(node: AccessibilityNodeInfo, description: String) {
        val bounds = Rect().also(node::getBoundsInScreen)
        assertFalse("$description must expose non-empty bounds: $bounds", bounds.isEmpty)
    }

    private fun waitForContentChange(action: String) {
        uiAutomation.waitForIdle(LAUNCH_IDLE_TIMEOUT_MS, EVENT_TIMEOUT_MS)
    }

    private fun dumpTree(): String = allNodes().take(MAX_DUMP_NODES).joinToString("\n") { node ->
        val bounds = Rect().also(node::getBoundsInScreen)
        "text=${node.text} desc=${node.contentDescription} clickable=${node.isClickable} bounds=$bounds"
    }

    private fun runShell(command: String): String {
        val descriptor = uiAutomation.executeShellCommand(command)
        return ParcelFileDescriptor.AutoCloseInputStream(descriptor).use { it.bufferedReader().readText() }
    }

    private companion object {
        const val APP_PACKAGE = "com.aiquota.mobile"
        const val DEBUG_PROCESS_NAME = "$APP_PACKAGE:provider_card_catalog_debug"
        const val ACTIVITY_COMPONENT = "$APP_PACKAGE/.debug.ProviderCardCatalogDebugActivity"
        const val EXTRA_DATASET = "com.aiquota.mobile.debug.extra.DATASET"
        const val EXTRA_VIEW_MODE = "com.aiquota.mobile.debug.extra.VIEW_MODE"
        const val EXTRA_RESET_FIXTURE = "com.aiquota.mobile.debug.extra.RESET_EXACT_FIXTURE"
        const val DATASET_EXACT_HAPPY = "exact-happy"
        const val DATASET_EXACT_REFRESH = "exact-refresh"
        const val DATASET_EXACT_ZERO = "exact-zero"
        const val DATASET_EXACT_ONE = "exact-one"
        const val DATASET_EXACT_EDGE = "exact-edge"
        const val DATASET_EXACT_REAUTH = "exact-reauth"
        const val VIEW_MODE_LIST = "list"
        const val VIEW_MODE_GRID = "grid"
        const val CLAUDE_ALIAS = "Claude"
        const val CODEX_ALIAS = "Codex"
        const val CODEX_TWO_ALIAS = "Codex 2"
        val CODEX_TWO_ACCOUNT_ID = ProviderAccountId(
            ProviderId.CODEX,
            AccountKey.parseOpaque("acct_00000000000000000000000000000003")
        )
        const val LONG_ALIAS = "Codex Work Account With A Very Long Alias Name"
        const val DRAG_DISTANCE_PX = 700
        const val LONG_PRESS_BUFFER_MS = 150
        const val DRAG_STEPS = 20
        const val DRAG_STEP_DELAY_MS = 20L
        const val PROCESS_DEATH_WAIT_MS = 500L
        const val LAUNCH_IDLE_TIMEOUT_MS = 250L
        const val EVENT_TIMEOUT_MS = 10_000L
        const val MAX_DUMP_NODES = 200
        val CONTENT_CHANGE_EVENT_TYPES = setOf(
            AccessibilityEvent.TYPE_WINDOW_STATE_CHANGED,
            AccessibilityEvent.TYPE_WINDOW_CONTENT_CHANGED,
            AccessibilityEvent.TYPE_VIEW_TEXT_CHANGED,
        )
    }
}
