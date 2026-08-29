package com.aiquota.mobile.ui

import android.os.ParcelFileDescriptor
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
import androidx.compose.ui.test.hasSetTextAction
import androidx.compose.ui.test.hasTextExactly
import androidx.compose.ui.test.isDialog
import androidx.compose.ui.test.junit4.createAndroidComposeRule
import androidx.compose.ui.test.onAllNodesWithText
import androidx.compose.ui.test.onNodeWithContentDescription
import androidx.compose.ui.test.onNodeWithText
import androidx.compose.ui.test.performClick
import androidx.compose.ui.test.performTextInput
import androidx.test.ext.junit.runners.AndroidJUnit4
import androidx.test.platform.app.InstrumentationRegistry
import com.aiquota.mobile.R
import com.aiquota.mobile.debug.ProviderOnboardingComposeTestActivity
import com.aiquota.mobile.local.ProviderId
import org.junit.Assert.assertEquals
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith

@RunWith(AndroidJUnit4::class)
class ProviderOnboardingUiTest {
    @get:Rule
    val composeRule = createAndroidComposeRule<ProviderOnboardingComposeTestActivity>()

    @Test
    fun wholeRowSelectionCommitsExactlyOneRadioBeforeNamingAndSurvivesRecreation() {
        // Given
        val radio = SemanticsMatcher.expectValue(SemanticsProperties.Role, Role.RadioButton)
        composeRule.onAllNodes(radio and hasClickAction()).assertCountEquals(ProviderId.defaultOrder().size)
        selectedRadios(radio).assertCountEquals(0)
        composeRule.onNodeWithText(text(R.string.provider_onboarding_start)).assertIsNotEnabled()

        // When
        composeRule.onNodeWithContentDescription(ProviderId.CURSOR.displayName).performClick()
        composeRule.waitForIdle()

        // Then
        assertEquals(1, selectedRadios(radio).fetchSemanticsNodes().size)
        composeRule.onNodeWithContentDescription(ProviderId.CURSOR.displayName)
            .assert(SemanticsMatcher.expectValue(SemanticsProperties.Selected, true))
        composeRule.onNodeWithText(text(R.string.provider_onboarding_start)).assertIsEnabled().performClick()
        composeRule.onNode(hasSetTextAction()).performTextInput("Work")
        composeRule.activityRule.scenario.recreate()
        composeRule.waitForIdle()
        composeRule.onNodeWithText("Work").assertIsDisplayed()

        // When
        composeRule.onNode(
            hasTextExactly(text(R.string.provider_enrollment_add)) and hasClickAction() and hasAnyAncestor(isDialog())
        ).performClick()

        // Then
        composeRule.onNodeWithText("Work").assertIsDisplayed()
        composeRule.onNodeWithText(text(R.string.provider_status_disconnected)).assertIsDisplayed()
        composeRule.onNodeWithText(text(R.string.provider_connect)).assertHasClickAction()
    }

    @Test
    fun laterShowsEmptyPromptAndAddReopensTheSamePicker() {
        composeRule.onNodeWithText(text(R.string.provider_onboarding_later)).performClick()
        composeRule.onNodeWithText(text(R.string.provider_catalog_empty_prompt)).assertIsDisplayed()
        composeRule.onNodeWithText(text(R.string.provider_catalog_add)).performClick()
        composeRule.onNodeWithText(text(R.string.provider_picker_title)).assertIsDisplayed()
        composeRule.onNodeWithText(text(R.string.provider_enrollment_cancel)).assertIsDisplayed()
        composeRule.onNodeWithText(text(R.string.provider_enrollment_next)).assertIsNotEnabled()
    }

    @Test
    fun namingBackAndExplicitCancelCloseWithoutCreatingCard() {
        openNaming(firstRun = true)
        runShell("input keyevent 4")
        composeRule.waitForIdle()
        assertEmptyCatalog()

        composeRule.onNodeWithText(text(R.string.provider_catalog_add)).performClick()
        openNaming(firstRun = false)
        composeRule.onNodeWithText(text(R.string.provider_enrollment_cancel)).performClick()
        assertEmptyCatalog()
    }

    @Test
    fun namingOutsideDismissClosesWithoutCreatingCard() {
        openNaming(firstRun = true)
        runShell("input tap 20 100")
        composeRule.waitForIdle()
        assertEmptyCatalog()
    }

    private fun openNaming(firstRun: Boolean) {
        composeRule.onNodeWithContentDescription(ProviderId.CURSOR.displayName).performClick()
        composeRule.waitForIdle()
        composeRule.onNodeWithText(
            text(if (firstRun) R.string.provider_onboarding_start else R.string.provider_enrollment_next)
        ).assertIsEnabled().performClick()
        composeRule.onNode(hasSetTextAction()).assertIsDisplayed()
    }

    private fun selectedRadios(radio: SemanticsMatcher) = composeRule.onAllNodes(
        radio and SemanticsMatcher.expectValue(SemanticsProperties.Selected, true)
    )

    private fun assertEmptyCatalog() {
        composeRule.onNodeWithText(text(R.string.provider_catalog_empty_prompt)).assertIsDisplayed()
        composeRule.onAllNodesWithText("Work").assertCountEquals(0)
    }

    private fun runShell(command: String) {
        val descriptor = InstrumentationRegistry.getInstrumentation().uiAutomation
            .executeShellCommand(command)
        ParcelFileDescriptor.AutoCloseInputStream(descriptor).use { stream ->
            stream.readBytes()
        }
    }

    private fun text(resource: Int): String = composeRule.activity.getString(resource)
}
