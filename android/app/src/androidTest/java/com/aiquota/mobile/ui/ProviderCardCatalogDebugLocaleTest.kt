package com.aiquota.mobile.ui

import android.app.UiAutomation
import android.content.Context
import android.content.res.Configuration
import android.os.ParcelFileDescriptor
import android.view.accessibility.AccessibilityEvent
import android.view.accessibility.AccessibilityNodeInfo
import androidx.test.ext.junit.runners.AndroidJUnit4
import androidx.test.platform.app.InstrumentationRegistry
import com.aiquota.mobile.R
import com.aiquota.mobile.debug.ProviderCardCatalogDebugActivity
import java.util.Locale
import java.util.concurrent.TimeoutException
import org.junit.After
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.FixMethodOrder
import org.junit.Test
import org.junit.runner.RunWith
import org.junit.runners.MethodSorters

@RunWith(AndroidJUnit4::class)
@FixMethodOrder(MethodSorters.NAME_ASCENDING)
class ProviderCardCatalogDebugLocaleTest {
    private val instrumentation = InstrumentationRegistry.getInstrumentation()
    private val uiAutomation: UiAutomation
        get() = instrumentation.uiAutomation
    private val targetContext: Context
        get() = instrumentation.targetContext

    @After
    fun cleanUpCatalogTaskAndProcess() {
        catalogTaskId()?.let { taskId -> runShell("am stack remove $taskId") }
        awaitCleanup("ProviderCardCatalogDebugActivity task") { catalogTaskId() == null }

        runShell("am kill $APP_PACKAGE")
        awaitCleanup("$DEBUG_PROCESS_NAME process") { runShell("pidof $DEBUG_PROCESS_NAME").isBlank() }
    }

    @Test
    fun remoteKoreanCatalogLocalizesOnboardingDialog() {
        assertKoreanOnboardingDialog()
    }

    @Test
    fun zzSynchronousCleanupAllowsAnotherRemoteLaunchInTheSameRunner() {
        assertKoreanOnboardingDialog()
    }

    private fun assertKoreanOnboardingDialog() {
        // Given
        val localizedLabels = listOf(
            R.string.provider_picker_title,
            R.string.provider_picker_body,
            R.string.provider_onboarding_later,
            R.string.provider_onboarding_start,
        ).map { resourceId ->
            localizedText("ko-KR", resourceId) to localizedText("en-US", resourceId)
        }

        // When
        launchKoreanOnboardingCatalog()
        val nodes = settledTree(localizedLabels)

        // Then
        localizedLabels.forEach { (koreanLabel, englishLabel) ->
            assertTrue(
                "missing Korean onboarding text '$koreanLabel'\n${describe(nodes)}",
                nodes.any { node -> node.text?.toString() == koreanLabel },
            )
            assertFalse(
                "English onboarding text leaked into ko-KR dialog: '$englishLabel'\n${describe(nodes)}",
                nodes.any { node -> node.text?.toString() == englishLabel },
            )
        }
    }

    private fun launchKoreanOnboardingCatalog() {
        val command = "am start -W -f 0x10008000 -n $ACTIVITY_COMPONENT " +
            "--es ${ProviderCardCatalogDebugActivity.EXTRA_DATASET} ${ProviderCardCatalogDebugActivity.DATASET_ONBOARDING} " +
            "--es ${ProviderCardCatalogDebugActivity.EXTRA_LOCALE} ko-KR"
        uiAutomation.executeAndWaitForEvent(
            { runShell(command) },
            { event ->
                event.packageName?.toString() == APP_PACKAGE &&
                    event.eventType in CONTENT_CHANGE_EVENT_TYPES
            },
            EVENT_TIMEOUT_MS,
        )
    }

    private fun settledTree(localizedLabels: List<Pair<String, String>>): List<AccessibilityNodeInfo> {
        repeat(MAX_POLLS) {
            waitForIdle()
            val root = uiAutomation.rootInActiveWindow ?: return@repeat
            if (root.packageName?.toString() != APP_PACKAGE) return@repeat
            root.refresh()
            val nodes = allNodes(root)
            val allLabelsVisible = localizedLabels.all { (koreanLabel, englishLabel) ->
                nodes.any { node -> node.text?.toString() == koreanLabel || node.text?.toString() == englishLabel }
            }
            if (allLabelsVisible) return nodes
        }
        throw AssertionError("provider picker dialog did not appear")
    }

    private fun localizedText(localeTag: String, resourceId: Int): String {
        val configuration = Configuration(targetContext.resources.configuration).apply {
            setLocale(Locale.forLanguageTag(localeTag))
        }
        return targetContext.createConfigurationContext(configuration).getString(resourceId)
    }

    private fun allNodes(root: AccessibilityNodeInfo): List<AccessibilityNodeInfo> = buildList {
        fun visit(node: AccessibilityNodeInfo) {
            add(node)
            for (index in 0 until node.childCount) node.getChild(index)?.let(::visit)
        }
        visit(root)
    }

    private fun describe(nodes: List<AccessibilityNodeInfo>): String = nodes
        .take(MAX_DUMP_NODES)
        .joinToString("\n") { node -> "${node.className} text=${node.text} desc=${node.contentDescription}" }

    private fun runShell(command: String): String {
        val descriptor = uiAutomation.executeShellCommand(command)
        return ParcelFileDescriptor.AutoCloseInputStream(descriptor).use { stream ->
            stream.bufferedReader().readText()
        }
    }

    private fun catalogTaskId(): String? = runShell("am stack list")
        .lineSequence()
        .firstOrNull { line -> line.contains(STACK_COMPONENT) }
        ?.substringAfter("taskId=")
        ?.substringBefore(':')
        ?.trim()
        ?.takeIf(String::isNotEmpty)

    private fun awaitCleanup(description: String, complete: () -> Boolean) {
        repeat(MAX_POLLS) {
            if (complete()) return
            waitForIdle()
        }
        throw AssertionError("cleanup did not remove $description")
    }

    private fun waitForIdle() {
        try {
            uiAutomation.waitForIdle(IDLE_TIMEOUT_MS, GLOBAL_IDLE_TIMEOUT_MS)
        } catch (_: TimeoutException) {
        }
    }

    private companion object {
        const val APP_PACKAGE = "com.aiquota.mobile"
        const val ACTIVITY_COMPONENT = "$APP_PACKAGE/.debug.ProviderCardCatalogDebugActivity"
        const val STACK_COMPONENT = "$APP_PACKAGE/$APP_PACKAGE.debug.ProviderCardCatalogDebugActivity"
        const val DEBUG_PROCESS_NAME = "$APP_PACKAGE:provider_card_catalog_debug"
        const val IDLE_TIMEOUT_MS = 100L
        const val GLOBAL_IDLE_TIMEOUT_MS = 500L
        const val EVENT_TIMEOUT_MS = 10_000L
        const val MAX_POLLS = 40
        const val MAX_DUMP_NODES = 120
        val CONTENT_CHANGE_EVENT_TYPES = setOf(
            AccessibilityEvent.TYPE_WINDOW_STATE_CHANGED,
            AccessibilityEvent.TYPE_WINDOW_CONTENT_CHANGED,
        )
    }
}
