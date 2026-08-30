package com.aiquota.mobile.ui

import android.os.ParcelFileDescriptor
import androidx.compose.ui.semantics.Role
import androidx.compose.ui.semantics.LiveRegionMode
import androidx.compose.ui.semantics.SemanticsProperties
import androidx.compose.ui.test.SemanticsMatcher
import androidx.compose.ui.test.assertIsDisplayed
import androidx.compose.ui.test.assertIsNotEnabled
import androidx.compose.ui.test.assertIsEnabled
import androidx.compose.ui.test.assertIsOff
import androidx.compose.ui.test.assertIsOn
import androidx.compose.ui.test.hasAnyAncestor
import androidx.compose.ui.test.hasClickAction
import androidx.compose.ui.test.hasContentDescriptionExactly
import androidx.compose.ui.test.hasTextExactly
import androidx.compose.ui.test.isDialog
import androidx.compose.ui.test.junit4.createAndroidComposeRule
import androidx.compose.ui.test.onNodeWithContentDescription
import androidx.compose.ui.test.onAllNodesWithContentDescription
import androidx.compose.ui.test.onAllNodesWithText
import androidx.compose.ui.test.onNodeWithText
import androidx.compose.ui.test.performClick
import androidx.compose.ui.test.performScrollTo
import androidx.test.ext.junit.runners.AndroidJUnit4
import androidx.test.platform.app.InstrumentationRegistry
import com.aiquota.mobile.R
import com.aiquota.mobile.accounts.AccountKey
import com.aiquota.mobile.accounts.ProviderAccountId
import com.aiquota.mobile.debug.ProviderOnboardingComposeTestActivity
import com.aiquota.mobile.debug.ProviderDeletionDebugMode
import com.aiquota.mobile.local.ProviderId
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith

@RunWith(AndroidJUnit4::class)
class ProviderRemovalUiTest {
    @get:Rule
    val composeRule = createAndroidComposeRule<ProviderOnboardingComposeTestActivity>()

    @Test
    fun zeroSelectionKeepsContinueDisabledAndAnnouncesZero() {
        dismissFirstRun()
        addProvider(ProviderId.CODEX)
        openRemoval()

        composeRule.onNodeWithText(text(R.string.provider_removal_selected_count, 0)).assertIsDisplayed()
        removalRow("Codex").assertIsOff()
        continueButton().assertIsNotEnabled()
        assertTrue(composeRule.activity.removedAccountIds.isEmpty())
    }

    @Test
    fun checkboxActionCommitsSingleSelection() {
        dismissFirstRun()
        addProvider(ProviderId.CODEX)
        openRemoval()

        removalRow("Codex").assertIsOff().performClick().assertIsOn()
        composeRule.onNodeWithText(text(R.string.provider_removal_selected_count, 1)).assertIsDisplayed()
        continueButton().assertIsEnabled()
    }

    @Test
    fun removalRowAnnouncesFullIdentityAndResultIsPolite() {
        dismissFirstRun()
        addProvider(ProviderId.CODEX)
        openRemoval()

        val row = removalRow("Codex")
        val rowNode = row.fetchSemanticsNode()
        assertEquals(
            text(R.string.provider_removal_named_card, "Codex", "Codex"),
            rowNode.config[SemanticsProperties.ContentDescription].singleOrNull(),
        )
        assertTrue(rowNode.boundsInRoot.width >= 48f)
        assertTrue(rowNode.boundsInRoot.height >= 48f)
        row.assertIsOff().performClick().assertIsOn()

        continueButton().performClick()
        confirmRemove().performClick()
        composeRule.waitForIdle()

        val result = resultItem("Codex", "Codex", R.string.provider_removal_status_completed)
        assertEquals(
            LiveRegionMode.Polite,
            result.fetchSemanticsNode().config[SemanticsProperties.LiveRegion],
        )
    }

    @Test
    fun multiSelectionNamesEveryAliasAndDeletesOnlySelectedIds() {
        dismissFirstRun()
        addProvider(ProviderId.CLAUDE)
        addProvider(ProviderId.CODEX)
        addProvider(ProviderId.CODEX)
        val before = composeRule.activity.catalogReceipt()
        val codex2Key = accountKeyForAlias(before, "Codex 2")

        openRemoval()
        removalRow("Codex").assertIsOff().performClick().assertIsOn()
        removalRow("Codex 2").assertIsOff().performClick().assertIsOn()
        composeRule.onNodeWithText(text(R.string.provider_removal_selected_count, 2)).assertIsDisplayed()
        continueButton().assertIsEnabled().performClick()
        composeRule.onNodeWithText(
            text(R.string.provider_removal_confirmation_names, "Codex (Codex), Codex 2 (Codex)")
        ).assertIsDisplayed()
        confirmRemove().performClick()
        composeRule.waitForIdle()
        composeRule.onNodeWithText(text(R.string.provider_removal_results_title)).assertIsDisplayed()
        resultItem("Codex", "Codex", R.string.provider_removal_status_completed).assertIsDisplayed()
        resultItem("Codex 2", "Codex", R.string.provider_removal_status_completed).assertIsDisplayed()
        composeRule.onNodeWithText(text(R.string.provider_removal_close)).performClick()
        composeRule.waitForIdle()

        assertEquals(
            setOf(
                ProviderAccountId(ProviderId.CODEX, AccountKey.parseOpaque(accountKeyForAlias(before, "Codex"))),
                ProviderAccountId(ProviderId.CODEX, AccountKey.parseOpaque(codex2Key)),
            ),
            composeRule.activity.removedAccountIds,
        )
        val after = composeRule.activity.catalogReceipt()
        assertTrue(after.contains("|Claude|"))
        assertFalse(after.contains("|Codex|"))
        assertFalse(after.contains("|Codex 2|"))
    }

    @Test
    fun cancelFromSelectionOrConfirmationPerformsNoWrites() {
        dismissFirstRun()
        addProvider(ProviderId.CLAUDE)
        addProvider(ProviderId.CODEX)

        openRemoval()
        removalRow("Claude").performClick()
        composeRule.onNodeWithText(text(R.string.provider_removal_cancel)).performClick()
        assertTrue(composeRule.activity.removedAccountIds.isEmpty())

        openRemoval()
        composeRule.onNodeWithText(text(R.string.provider_removal_selected_count, 0)).assertIsDisplayed()
        removalRow("Codex").performClick()
        continueButton().performClick()
        composeRule.onNodeWithText(text(R.string.provider_removal_cancel)).performClick()
        assertTrue(composeRule.activity.removedAccountIds.isEmpty())
        composeRule.onNodeWithText("Claude").assertIsDisplayed()
        composeRule.onNodeWithText("Codex").assertIsDisplayed()
    }

    @Test
    fun outsideDismissalPerformsNoWrites() {
        dismissFirstRun()
        addProvider(ProviderId.CODEX)
        openRemoval()

        val x = composeRule.activity.resources.displayMetrics.widthPixels / 2
        ParcelFileDescriptor.AutoCloseInputStream(
            InstrumentationRegistry.getInstrumentation().uiAutomation
                .executeShellCommand("input tap $x 400")
        ).use { input -> input.readBytes() }
        composeRule.waitForIdle()
        composeRule.onNodeWithText(text(R.string.provider_removal_title)).assertDoesNotExist()
        assertTrue(composeRule.activity.removedAccountIds.isEmpty())
    }

    @Test
    fun backDismissalPerformsNoWrites() {
        dismissFirstRun()
        addProvider(ProviderId.CODEX)
        openRemoval()
        removalRow("Codex").performClick()

        ParcelFileDescriptor.AutoCloseInputStream(
            InstrumentationRegistry.getInstrumentation().uiAutomation
                .executeShellCommand("input keyevent 4")
        ).use { input -> input.readBytes() }
        composeRule.waitForIdle()

        composeRule.onNodeWithText(text(R.string.provider_removal_title)).assertDoesNotExist()
        assertTrue(composeRule.activity.removedAccountIds.isEmpty())
    }

    @Test
    fun staleSelectionIsDroppedBeforeDeletionApiInvocation() {
        dismissFirstRun()
        addProvider(ProviderId.CLAUDE)
        val id = ProviderAccountId(
            ProviderId.CLAUDE,
            AccountKey.parseOpaque(accountKeyForAlias(composeRule.activity.catalogReceipt(), "Claude")),
        )

        openRemoval()
        removalRow("Claude").performClick()
        composeRule.runOnIdle { composeRule.activity.dropCardFromDisplay(id) }
        composeRule.waitForIdle()
        continueButton().assertIsNotEnabled()
        assertTrue(composeRule.activity.removedAccountIds.isEmpty())
    }

    @Test
    fun failureLeavesSelectedCardVisibleAndReportsFailClosedState() {
        dismissFirstRun()
        addProvider(ProviderId.CODEX)
        openRemoval()
        removalRow("Codex").performClick()
        continueButton().performClick()
        composeRule.runOnIdle { composeRule.activity.setDeletionFailure(true) }
        confirmRemove().performClick()
        composeRule.waitForIdle()

        composeRule.onNodeWithText(text(R.string.provider_removal_results_title)).assertIsDisplayed()
        resultItem("Codex", "Codex", R.string.provider_removal_status_failed).assertIsDisplayed()
        composeRule.onNodeWithText("Codex").assertIsDisplayed()
        assertTrue(composeRule.activity.removedAccountIds.isEmpty())
    }

    @Test
    fun inProgressRemainsPendingAndRejectedIsDistinct() {
        dismissFirstRun()
        addProvider(ProviderId.CLAUDE)
        addProvider(ProviderId.CODEX)
        val receipt = composeRule.activity.catalogReceipt()
        val claudeId = accountIdForAlias(receipt, "Claude")
        val codexId = accountIdForAlias(receipt, "Codex")

        composeRule.runOnIdle {
            composeRule.activity.setDeletionMode(claudeId, ProviderDeletionDebugMode.IN_PROGRESS)
        }
        openRemoval()
        removalRow("Claude").performClick()
        continueButton().performClick()
        confirmRemove().performClick()
        composeRule.waitForIdle()
        composeRule.onNodeWithText(text(R.string.provider_removal_results_title)).assertIsDisplayed()
        resultItem("Claude", "Claude", R.string.provider_removal_status_pending).assertIsDisplayed()
        composeRule.onNodeWithText(text(R.string.provider_removal_close)).performClick()

        composeRule.runOnIdle {
            composeRule.activity.setDeletionMode(codexId, ProviderDeletionDebugMode.REJECTED)
        }
        openRemoval()
        removalRow("Codex").performClick()
        continueButton().performClick()
        confirmRemove().performClick()
        composeRule.waitForIdle()
        resultItem("Codex", "Codex", R.string.provider_removal_status_rejected).assertIsDisplayed()
        assertTrue(composeRule.activity.removedAccountIds.isEmpty())
    }

    @Test
    fun mixedResultsNameEachSnapshotAndRetainFailedCardOnly() {
        dismissFirstRun()
        addProvider(ProviderId.CODEX)
        addProvider(ProviderId.CODEX)
        val receipt = composeRule.activity.catalogReceipt()
        val codexId = accountIdForAlias(receipt, "Codex")
        val codex2Id = accountIdForAlias(receipt, "Codex 2")
        composeRule.runOnIdle {
            composeRule.activity.setDeletionMode(codex2Id, ProviderDeletionDebugMode.FAILED)
        }

        openRemoval()
        removalRow("Codex").performClick()
        removalRow("Codex 2").performClick()
        continueButton().performClick()
        confirmRemove().performClick()
        composeRule.waitForIdle()

        resultItem("Codex", "Codex", R.string.provider_removal_status_completed)
            .performScrollTo()
            .assertIsDisplayed()
        resultItem("Codex 2", "Codex", R.string.provider_removal_status_failed)
            .performScrollTo()
            .assertIsDisplayed()
        composeRule.onNodeWithText(text(R.string.provider_removal_close)).performClick()
        composeRule.waitForIdle()
        assertTrue(composeRule.activity.removedAccountIds == setOf(codexId))
        composeRule.onNodeWithText("Codex 2").assertIsDisplayed()
    }

    private fun dismissFirstRun() {
        composeRule.onNodeWithText(text(R.string.provider_onboarding_later), substring = false).performClick()
        composeRule.onNodeWithText(text(R.string.provider_catalog_empty_prompt), substring = false).assertIsDisplayed()
    }

    private fun addProvider(providerId: ProviderId) {
        composeRule.onAllNodesWithContentDescription(text(R.string.provider_catalog_add_action))[0].performClick()
        removalFreeProviderRow(providerId).performClick()
        composeRule.onNodeWithText(text(R.string.provider_enrollment_next), substring = false).performClick()
        val addActions = composeRule.onAllNodesWithText(text(R.string.provider_enrollment_add), substring = false)
        addActions[addActions.fetchSemanticsNodes().lastIndex].performClick()
        composeRule.waitForIdle()
    }

    private fun openRemoval() {
        composeRule.onNodeWithContentDescription(text(R.string.provider_catalog_remove_action)).performClick()
        composeRule.onNodeWithText(text(R.string.provider_removal_title), substring = false).assertIsDisplayed()
    }

    private fun removalRow(alias: String) = composeRule.onNode(
        hasContentDescriptionExactly(text(R.string.provider_removal_named_card, alias, providerFor(alias))) and
            role(Role.Checkbox)
    )

    private fun providerFor(alias: String): String = when (alias) {
        "Claude" -> ProviderId.CLAUDE.displayName
        else -> ProviderId.CODEX.displayName
    }

    private fun resultItem(alias: String, provider: String, status: Int) = composeRule.onNodeWithText(
        text(R.string.provider_removal_result_item, alias, provider, text(status)),
        substring = false,
    )

    private fun removalFreeProviderRow(providerId: ProviderId) = composeRule.onNode(
        hasContentDescriptionExactly(providerId.displayName) and role(Role.RadioButton)
    )

    private fun continueButton() = composeRule.onNode(
        hasTextExactly(text(R.string.provider_removal_continue)) and
            hasClickAction() and
            hasAnyAncestor(isDialog())
    )

    private fun confirmRemove() = composeRule.onNode(
        hasTextExactly(text(R.string.provider_removal_confirm)) and
            hasClickAction() and
            hasAnyAncestor(isDialog())
    )

    private fun accountKeyForAlias(receipt: String, alias: String): String = receipt.lineSequence()
        .first { line -> line.contains("|$alias|") }
        .substringAfter(':')
        .substringBefore('|')

    private fun accountIdForAlias(receipt: String, alias: String): ProviderAccountId = ProviderAccountId(
        providerId = when (alias) {
            "Claude" -> ProviderId.CLAUDE
            else -> ProviderId.CODEX
        },
        accountKey = AccountKey.parseOpaque(accountKeyForAlias(receipt, alias)),
    )

    private fun role(role: Role): SemanticsMatcher =
        SemanticsMatcher.expectValue(SemanticsProperties.Role, role)

    private fun text(resource: Int, vararg arguments: Any): String =
        composeRule.activity.getString(resource, *arguments)

}
