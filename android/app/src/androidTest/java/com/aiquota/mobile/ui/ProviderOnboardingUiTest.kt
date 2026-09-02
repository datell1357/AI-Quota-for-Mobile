package com.aiquota.mobile.ui

import android.os.ParcelFileDescriptor
import androidx.compose.ui.semantics.Role
import androidx.compose.ui.semantics.SemanticsProperties
import androidx.compose.ui.state.ToggleableState
import androidx.compose.ui.test.SemanticsMatcher
import androidx.compose.ui.test.assert
import androidx.compose.ui.test.assertCountEquals
import androidx.compose.ui.test.assertHasClickAction
import androidx.compose.ui.test.assertIsDisplayed
import androidx.compose.ui.test.assertIsEnabled
import androidx.compose.ui.test.assertIsNotEnabled
import androidx.compose.ui.test.hasClickAction
import androidx.compose.ui.test.hasSetTextAction
import androidx.compose.ui.test.hasTextExactly
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
    fun firstRunChecksSeveralProvidersSurvivesRecreationAndCreatesOneCardEach() {
        // Given
        val checkbox = SemanticsMatcher.expectValue(SemanticsProperties.Role, Role.Checkbox)
        composeRule.onAllNodes(checkbox and hasClickAction()).assertCountEquals(ProviderId.defaultOrder().size)
        checked(checkbox).assertCountEquals(0)
        composeRule.onNodeWithText(text(R.string.provider_onboarding_start)).assertIsNotEnabled()

        // When
        composeRule.onNodeWithContentDescription(ProviderId.CURSOR.displayName).performClick()
        composeRule.onNodeWithContentDescription(ProviderId.CODEX.displayName).performClick()
        composeRule.waitForIdle()

        // Then
        assertEquals(2, checked(checkbox).fetchSemanticsNodes().size)
        composeRule.onNodeWithContentDescription(ProviderId.CODEX.displayName)
            .assert(SemanticsMatcher.expectValue(SemanticsProperties.ToggleableState, ToggleableState.On))
        composeRule.activityRule.scenario.recreate()
        composeRule.waitForIdle()
        assertEquals(2, checked(checkbox).fetchSemanticsNodes().size)

        // When
        composeRule.onNodeWithText(text(R.string.provider_onboarding_start)).assertIsEnabled().performClick()
        composeRule.waitForIdle()

        // Then: no naming step, one automatically named disconnected card per checked provider
        composeRule.onAllNodes(hasSetTextAction()).assertCountEquals(0)
        composeRule.onNodeWithText("Cursor").assertIsDisplayed()
        composeRule.onNodeWithText("Codex").assertIsDisplayed()
        composeRule.onAllNodesWithText(text(R.string.provider_status_disconnected)).assertCountEquals(2)
        composeRule.onAllNodesWithText(text(R.string.provider_connect))[0].assertHasClickAction()
    }

    @Test
    fun laterShowsEmptyPromptAndAddReopensSingleChoicePicker() {
        composeRule.onNodeWithText(text(R.string.provider_onboarding_later)).performClick()
        composeRule.onNodeWithText(text(R.string.provider_catalog_empty_prompt)).assertIsDisplayed()
        composeRule.onAllNodes(
            hasTextExactly(text(R.string.provider_catalog_add)) and hasClickAction()
        )[0].performClick()
        composeRule.onNodeWithText(text(R.string.provider_picker_title)).assertIsDisplayed()
        composeRule.onNodeWithText(text(R.string.provider_enrollment_cancel)).assertIsDisplayed()
        composeRule.onNodeWithText(text(R.string.provider_enrollment_next)).assertIsNotEnabled()
        composeRule.onAllNodes(
            SemanticsMatcher.expectValue(SemanticsProperties.Role, Role.RadioButton) and hasClickAction()
        ).assertCountEquals(ProviderId.defaultOrder().size)
    }

    @Test
    fun namingBackAndExplicitCancelCloseWithoutCreatingCard() {
        composeRule.onNodeWithText(text(R.string.provider_onboarding_later)).performClick()
        openExplicitNaming()
        runShell("input keyevent 4")
        composeRule.waitForIdle()
        assertEmptyCatalog()

        openExplicitNaming()
        composeRule.onNodeWithText(text(R.string.provider_enrollment_cancel)).performClick()
        assertEmptyCatalog()
    }

    @Test
    fun firstRunOutsideDismissClosesWithoutCreatingCard() {
        composeRule.onNodeWithContentDescription(ProviderId.CURSOR.displayName).performClick()
        composeRule.waitForIdle()
        runShell("input tap 20 100")
        composeRule.waitForIdle()
        assertEmptyCatalog()
    }

    private fun openExplicitNaming() {
        composeRule.onAllNodes(
            hasTextExactly(text(R.string.provider_catalog_add)) and hasClickAction()
        )[0].performClick()
        composeRule.onNodeWithContentDescription(ProviderId.CURSOR.displayName).performClick()
        composeRule.waitForIdle()
        composeRule.onNodeWithText(text(R.string.provider_enrollment_next)).assertIsEnabled().performClick()
        composeRule.onNode(hasSetTextAction()).assertIsDisplayed()
        composeRule.onNode(hasSetTextAction()).performTextInput("Work")
    }

    private fun checked(choice: SemanticsMatcher) = composeRule.onAllNodes(
        choice and SemanticsMatcher.expectValue(SemanticsProperties.ToggleableState, ToggleableState.On)
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
