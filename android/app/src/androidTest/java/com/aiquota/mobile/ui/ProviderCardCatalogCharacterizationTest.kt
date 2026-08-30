package com.aiquota.mobile.ui

import android.content.Context
import android.content.Intent
import androidx.compose.ui.semantics.Role
import androidx.compose.ui.semantics.SemanticsProperties
import androidx.compose.ui.test.SemanticsMatcher
import androidx.compose.ui.test.SemanticsNodeInteraction
import androidx.compose.ui.test.assert
import androidx.compose.ui.test.assertCountEquals
import androidx.compose.ui.test.assertHasClickAction
import androidx.compose.ui.test.assertHeightIsEqualTo
import androidx.compose.ui.test.assertIsDisplayed
import androidx.compose.ui.test.assertWidthIsEqualTo
import androidx.compose.ui.test.getUnclippedBoundsInRoot
import androidx.compose.ui.test.hasAnyDescendant
import androidx.compose.ui.test.hasClickAction
import androidx.compose.ui.test.hasScrollAction
import androidx.compose.ui.test.hasSetTextAction
import androidx.compose.ui.test.hasText
import androidx.compose.ui.test.hasTextExactly
import androidx.compose.ui.test.isDialog
import androidx.compose.ui.test.junit4.createEmptyComposeRule
import androidx.compose.ui.test.onAllNodesWithText
import androidx.compose.ui.test.onNodeWithContentDescription
import androidx.compose.ui.test.onNodeWithText
import androidx.compose.ui.test.performClick
import androidx.compose.ui.test.performScrollTo
import androidx.compose.ui.unit.DpRect
import androidx.compose.ui.unit.dp
import androidx.test.core.app.ActivityScenario
import androidx.test.core.app.ApplicationProvider
import androidx.test.ext.junit.runners.AndroidJUnit4
import com.aiquota.mobile.R
import com.aiquota.mobile.debug.ProviderCardCatalogCharacterizationActivity
import com.aiquota.mobile.debug.ProviderCardCatalogDebugActivity
import com.aiquota.mobile.local.DashboardViewMode
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import java.util.Locale
import kotlin.math.ceil
import kotlin.math.roundToInt

@RunWith(AndroidJUnit4::class)
class ProviderCardCatalogCharacterizationTest {
    @get:Rule
    val composeRule = createEmptyComposeRule()

    private var scenario: ActivityScenario<ProviderCardCatalogCharacterizationActivity>? = null
    private var screenWidthDp: Int = 0
    private var screenHeightDp: Int = 0
    private lateinit var labels: CurrentLabels

    @After
    fun closeActivity() {
        scenario?.close()
        scenario = null
    }

    @Test
    fun currentDashboardHeaderPinsActionsOrderSizeAndNoCatalogSemantics() {
        launchDashboard(
            dataset = ProviderCardCatalogDebugActivity.DATASET_POPULATED,
            viewMode = ProviderCardCatalogDebugActivity.VIEW_MODE_LIST
        )

        composeRule.onNodeWithText(labels.dashboardTitle).assertIsDisplayed()
        val settings = composeRule.onNodeWithContentDescription(labels.settings)
            .assertIsDisplayed()
            .assertHasClickAction()
            .assertWidthIsEqualTo(CURRENT_HEADER_ACTION_SIZE)
            .assertHeightIsEqualTo(CURRENT_HEADER_ACTION_SIZE)
        val addWidget = composeRule.onNodeWithText(labels.addWidget)
            .assertIsDisplayed()
            .assertHasClickAction()
        val list = composeRule.onNodeWithContentDescription(labels.switchToList)
            .assertIsDisplayed()
            .assertHasClickAction()
            .assertWidthIsEqualTo(CURRENT_HEADER_ACTION_SIZE)
            .assertHeightIsEqualTo(CURRENT_HEADER_ACTION_SIZE)
        val card = composeRule.onNodeWithContentDescription(labels.switchToCard)
            .assertIsDisplayed()
            .assertHasClickAction()
            .assertWidthIsEqualTo(CURRENT_HEADER_ACTION_SIZE)
            .assertHeightIsEqualTo(CURRENT_HEADER_ACTION_SIZE)

        val settingsBounds = settings.getUnclippedBoundsInRoot()
        val addWidgetBounds = addWidget.getUnclippedBoundsInRoot()
        val listBounds = list.getUnclippedBoundsInRoot()
        val cardBounds = card.getUnclippedBoundsInRoot()
        assertTrue("Settings must precede Add widget", settingsBounds.left < addWidgetBounds.left)
        assertTrue("Add widget must precede list mode", addWidgetBounds.left < listBounds.left)
        assertTrue("List mode must precede card mode", listBounds.left < cardBounds.left)

        settings.performClick()
        addWidget.performClick()
        composeRule.waitForIdle()
        composeRule.onNodeWithText(labels.dashboardTitle).assertIsDisplayed()

        assertFutureCatalogSemanticsAbsent()
    }

    @Test
    fun populatedListPinsProviderOrderStatesActionsAndSingleColumnGeometry() {
        launchDashboard(
            dataset = ProviderCardCatalogDebugActivity.DATASET_POPULATED,
            viewMode = ProviderCardCatalogDebugActivity.VIEW_MODE_LIST
        )

        val cards = PROVIDERS.associateWith(::providerCard)
        assertProviderStates(cards)
        composeRule.onAllNodes(connectButtonMatcher()).assertCountEquals(7)

        val bounds = PROVIDERS.map { cards.getValue(it).getUnclippedBoundsInRoot() }
        val metrics = currentLayoutMetrics(DashboardViewMode.LIST)
        val expectedGap = metrics.sectionSpacingDp.toFloat()
        val expectedHeight = expectedCardHeightDp(metrics)
        bounds.forEachIndexed { index, cardBounds ->
            assertDpNear("List card $index left", bounds.first().left.value, cardBounds.left.value)
            assertDpNear("List card $index width", bounds.first().widthDp(), cardBounds.widthDp())
            assertDpNear("List card $index height", expectedHeight, cardBounds.heightDp())
            if (index > 0) {
                assertDpNear(
                    "List card $index vertical gap",
                    expectedGap,
                    cardBounds.top.value - bounds[index - 1].bottom.value
                )
            }
        }
        bounds.zipWithNext().forEachIndexed { index, (first, second) ->
            assertTrue("Provider rank ${index + 1} must remain above rank ${index + 2}", first.top < second.top)
        }

        assertFutureCatalogSemanticsAbsent()
    }

    @Test
    fun emptyDatasetPinsReleasedProviderFallbackAndNoLegacyEmptyState() {
        launchDashboard(
            dataset = ProviderCardCatalogDebugActivity.DATASET_EMPTY,
            viewMode = ProviderCardCatalogDebugActivity.VIEW_MODE_LIST
        )

        composeRule.onNodeWithText(labels.dashboardTitle).assertIsDisplayed()
        composeRule.onNodeWithContentDescription(labels.settings).assertIsDisplayed().assertHasClickAction()
        composeRule.onNodeWithText(labels.addWidget).assertIsDisplayed().assertHasClickAction()
        composeRule.onNodeWithText(labels.emptyTitle).assertDoesNotExist()
        composeRule.onNodeWithText(labels.emptyBody).assertDoesNotExist()
        DEFAULT_PROVIDERS.forEach { provider ->
            composeRule.onNodeWithText(macPath(provider), useUnmergedTree = true).assertExists()
        }
        composeRule.onAllNodes(connectButtonMatcher()).assertCountEquals(DEFAULT_PROVIDERS.size)
        composeRule.onNodeWithText(macPath(COPILOT), useUnmergedTree = true)
            .performScrollTo()
            .assertIsDisplayed()

        assertFutureCatalogSemanticsAbsent()
    }

    @Test
    fun populatedCardModePinsRowMajorTwoColumnGeometryAndToggleAction() {
        launchDashboard(
            dataset = ProviderCardCatalogDebugActivity.DATASET_POPULATED,
            viewMode = ProviderCardCatalogDebugActivity.VIEW_MODE_GRID
        )

        val gridBounds = PROVIDERS.associateWith { providerCard(it).getUnclippedBoundsInRoot() }
        val metrics = currentLayoutMetrics(DashboardViewMode.CARD)
        val expectedGap = metrics.sectionSpacingDp.toFloat()
        val expectedHeight = expectedCardHeightDp(metrics)

        assertSameRow(gridBounds, CLAUDE, CODEX)
        assertSameRow(gridBounds, CURSOR, KIRO)
        assertSameRow(gridBounds, OPENCODE, GLM)
        assertSameColumn(gridBounds, CLAUDE, CURSOR, OPENCODE)
        assertSameColumn(gridBounds, CODEX, KIRO, GLM)
        assertTrue("Card mode first column must precede second", gridBounds.getValue(CLAUDE).left < gridBounds.getValue(CODEX).left)
        assertTrue("Card mode rows must retain provider rank", gridBounds.getValue(CLAUDE).top < gridBounds.getValue(CURSOR).top)
        assertTrue("Card mode rows must retain provider rank", gridBounds.getValue(CURSOR).top < gridBounds.getValue(OPENCODE).top)
        assertDpNear(
            "Card mode horizontal gap",
            expectedGap,
            gridBounds.getValue(CODEX).left.value - gridBounds.getValue(CLAUDE).right.value
        )
        assertDpNear(
            "Card mode vertical gap",
            expectedGap,
            gridBounds.getValue(CURSOR).top.value - gridBounds.getValue(CLAUDE).bottom.value
        )
        gridBounds.values.forEach { bounds ->
            assertDpNear("Card mode card width", gridBounds.getValue(CLAUDE).widthDp(), bounds.widthDp())
            assertDpNear("Card mode card height", expectedHeight, bounds.heightDp())
        }

        composeRule.onNodeWithContentDescription(labels.switchToList).performClick()
        composeRule.waitForIdle()
        val listBounds = PROVIDERS.map { providerCard(it).getUnclippedBoundsInRoot() }
        listBounds.forEach { bounds ->
            assertDpNear("Toggled list mode must use one column", listBounds.first().left.value, bounds.left.value)
        }
        assertTrue("List action must restore vertical rank order", listBounds.zipWithNext().all { (a, b) -> a.top < b.top })

        composeRule.onNodeWithContentDescription(labels.switchToCard).performClick()
        composeRule.waitForIdle()
        assertSameRow(
            PROVIDERS.associateWith { providerCard(it).getUnclippedBoundsInRoot() },
            CLAUDE,
            CODEX
        )
        assertFutureCatalogSemanticsAbsent()
    }

    private fun launchDashboard(dataset: String, viewMode: String) {
        val context = ApplicationProvider.getApplicationContext<Context>()
        val intent = Intent(context, ProviderCardCatalogCharacterizationActivity::class.java).apply {
            putExtra(ProviderCardCatalogDebugActivity.EXTRA_DATASET, dataset)
            putExtra(ProviderCardCatalogDebugActivity.EXTRA_VIEW_MODE, viewMode)
        }
        scenario = ActivityScenario.launch<ProviderCardCatalogCharacterizationActivity>(intent).also { launched ->
            launched.onActivity { activity ->
                screenWidthDp = activity.resources.configuration.screenWidthDp
                screenHeightDp = activity.resources.configuration.screenHeightDp
                val isKorean = activity.resources.configuration.locales[0].language == Locale.KOREAN.language
                labels = CurrentLabels(
                    dashboardTitle = activity.getString(R.string.dashboard_title),
                    settings = activity.getString(R.string.nav_settings),
                    addWidget = activity.getString(R.string.dashboard_add_widget),
                    switchToList = activity.getString(R.string.dashboard_view_mode_switch_to_list),
                    switchToCard = activity.getString(R.string.dashboard_view_mode_switch_to_card),
                    emptyTitle = activity.getString(R.string.dashboard_empty_title),
                    emptyBody = activity.getString(R.string.dashboard_empty_body),
                    connected = activity.getString(R.string.provider_status_connected),
                    disconnected = activity.getString(R.string.provider_status_disconnected),
                    attention = activity.getString(R.string.provider_status_auth_required),
                    collecting = activity.getString(R.string.provider_status_collecting),
                    unavailable = activity.getString(R.string.provider_unavailable),
                    connect = activity.getString(R.string.provider_connect),
                    session = if (isKorean) "5시간 세션" else SESSION,
                    weekly = if (isKorean) "주간 세션" else WEEKLY
                )
            }
        }
        composeRule.waitForIdle()
        composeRule.onNodeWithText(labels.dashboardTitle).assertExists()
    }

    private fun providerCard(provider: String): SemanticsNodeInteraction = composeRule.onNode(
        hasClickAction() and hasAnyDescendant(hasText(macPath(provider))),
        useUnmergedTree = true
    ).assertExists().assertHasClickAction()

    private fun assertProviderStates(cards: Map<String, SemanticsNodeInteraction>) {
        assertCardContains(cards, CLAUDE, labels.connected, labels.session, labels.weekly)
        assertCardContains(cards, CODEX, labels.connected, FIVE_HOUR, labels.weekly)
        assertCardContains(cards, CURSOR, labels.disconnected, SIGN_IN_REQUIRED, labels.connect)
        assertCardContains(cards, KIRO, labels.attention, labels.connect)
        assertCardContains(cards, OPENCODE, labels.collecting)
        assertCardContains(cards, GLM, labels.unavailable, SYNTHETIC_UNAVAILABLE, labels.connect)
    }

    private fun assertCardContains(
        cards: Map<String, SemanticsNodeInteraction>,
        provider: String,
        vararg visibleText: String
    ) {
        visibleText.forEach { text ->
            cards.getValue(provider).assert(hasAnyDescendant(hasText(text))) {
                "$provider card must render '$text'"
            }
        }
    }

    private fun assertFutureCatalogSemanticsAbsent() {
        composeRule.onNodeWithContentDescription(ADD_PROVIDER).assertDoesNotExist()
        composeRule.onNodeWithContentDescription(REMOVE_PROVIDER).assertDoesNotExist()
        composeRule.onAllNodes(hasSetTextAction(), useUnmergedTree = true).assertCountEquals(0)
        composeRule.onAllNodes(isDialog(), useUnmergedTree = true).assertCountEquals(0)
        composeRule.onAllNodes(roleMatcher(Role.RadioButton), useUnmergedTree = true).assertCountEquals(0)
        composeRule.onAllNodes(roleMatcher(Role.Checkbox), useUnmergedTree = true).assertCountEquals(0)
    }

    private fun connectButtonMatcher(): SemanticsMatcher =
        roleMatcher(Role.Button) and hasClickAction() and hasTextExactly(labels.connect)

    private fun roleMatcher(role: Role): SemanticsMatcher =
        SemanticsMatcher.expectValue(SemanticsProperties.Role, role)

    private fun currentLayoutMetrics(mode: DashboardViewMode): AppLayoutMetrics =
        appLayoutMetrics(screenWidthDp, screenHeightDp).forDashboardViewMode(mode)

    private fun expectedCardHeightDp(metrics: AppLayoutMetrics): Float {
        val scrollViewport = composeRule.onNode(hasScrollAction(), useUnmergedTree = true)
            .assertExists()
            .getUnclippedBoundsInRoot()
        val viewportHeightDp = scrollViewport.heightDp().roundToInt()
        val visibleRows = ceil(
            metrics.dashboardVisibleProviderCount / metrics.dashboardGridColumnCount.toFloat()
        ).roundToInt().coerceAtLeast(1)
        val availableHeight = viewportHeightDp -
            metrics.contentVerticalPaddingDp -
            metrics.dashboardTitleHeightDp -
            metrics.sectionSpacingDp * visibleRows
        return ceil(availableHeight / visibleRows.toFloat())
            .roundToInt()
            .coerceAtLeast(metrics.dashboardCardMinHeightDp)
            .toFloat()
    }

    private fun assertSameRow(bounds: Map<String, DpRect>, first: String, second: String) {
        assertDpNear("$first and $second row", bounds.getValue(first).top.value, bounds.getValue(second).top.value)
    }

    private fun assertSameColumn(bounds: Map<String, DpRect>, vararg providers: String) {
        providers.drop(1).forEach { provider ->
            assertDpNear(
                "${providers.first()} and $provider column",
                bounds.getValue(providers.first()).left.value,
                bounds.getValue(provider).left.value
            )
        }
    }

    private fun assertDpNear(message: String, expected: Float, actual: Float) {
        assertEquals(message, expected.toDouble(), actual.toDouble(), GEOMETRY_TOLERANCE_DP.toDouble())
    }

    private fun DpRect.widthDp(): Float = right.value - left.value

    private fun DpRect.heightDp(): Float = bottom.value - top.value

    private fun macPath(provider: String): String = "~/AI Quota/$provider"

    private data class CurrentLabels(
        val dashboardTitle: String,
        val settings: String,
        val addWidget: String,
        val switchToList: String,
        val switchToCard: String,
        val emptyTitle: String,
        val emptyBody: String,
        val connected: String,
        val disconnected: String,
        val attention: String,
        val collecting: String,
        val unavailable: String,
        val connect: String,
        val session: String,
        val weekly: String
    )

    private companion object {
        val CURRENT_HEADER_ACTION_SIZE = 48.dp
        const val GEOMETRY_TOLERANCE_DP = 0.75f

        const val ADD_PROVIDER = "Add provider"
        const val REMOVE_PROVIDER = "Remove provider"

        const val CLAUDE = "Claude"
        const val CODEX = "Codex"
        const val CURSOR = "Cursor"
        const val KIRO = "Kiro"
        const val OPENCODE = "OpenCode"
        const val GLM = "GLM"
        const val GROK = "Grok"
        const val ANTIGRAVITY = "Antigravity"
        const val GEMINI = "Gemini"
        const val COPILOT = "Copilot"
        val PROVIDERS = listOf(CLAUDE, CODEX, CURSOR, KIRO, OPENCODE, GLM)
        val DEFAULT_PROVIDERS = listOf(
            CLAUDE,
            CODEX,
            CURSOR,
            GROK,
            KIRO,
            OPENCODE,
            GLM,
            ANTIGRAVITY,
            GEMINI,
            COPILOT
        )

        const val SIGN_IN_REQUIRED = "Sign in required"
        const val SYNTHETIC_UNAVAILABLE = "Synthetic usage unavailable"
        const val SESSION = "Session"
        const val WEEKLY = "Weekly"
        const val FIVE_HOUR = "5 hour"
    }
}
