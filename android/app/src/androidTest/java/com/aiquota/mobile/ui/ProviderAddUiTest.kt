package com.aiquota.mobile.ui

import androidx.compose.ui.semantics.Role
import androidx.compose.ui.semantics.SemanticsProperties
import androidx.compose.ui.text.AnnotatedString
import androidx.compose.ui.test.SemanticsMatcher
import androidx.compose.ui.test.assert
import androidx.compose.ui.test.assertHasClickAction
import androidx.compose.ui.test.assertHeightIsEqualTo
import androidx.compose.ui.test.assertIsDisplayed
import androidx.compose.ui.test.assertIsEnabled
import androidx.compose.ui.test.assertIsNotEnabled
import androidx.compose.ui.test.assertWidthIsEqualTo
import androidx.compose.ui.test.getUnclippedBoundsInRoot
import androidx.compose.ui.test.hasAnyAncestor
import androidx.compose.ui.test.hasClickAction
import androidx.compose.ui.test.hasContentDescriptionExactly
import androidx.compose.ui.test.hasSetTextAction
import androidx.compose.ui.test.hasTextExactly
import androidx.compose.ui.test.isDialog
import androidx.compose.ui.test.junit4.createAndroidComposeRule
import androidx.compose.ui.test.onAllNodesWithContentDescription
import androidx.compose.ui.test.onNodeWithContentDescription
import androidx.compose.ui.test.onNodeWithText
import androidx.compose.ui.test.performClick
import androidx.compose.ui.test.performTextClearance
import androidx.compose.ui.test.performTextInput
import androidx.compose.ui.unit.dp
import androidx.test.ext.junit.runners.AndroidJUnit4
import com.aiquota.mobile.R
import com.aiquota.mobile.debug.ProviderOnboardingComposeTestActivity
import com.aiquota.mobile.local.ProviderId
import org.junit.Assert.assertTrue
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith

@RunWith(AndroidJUnit4::class)
class ProviderAddUiTest {
    @get:Rule
    val composeRule = createAndroidComposeRule<ProviderOnboardingComposeTestActivity>()

    @Test
    fun headerOrdersAccessibleSettingsAddRemoveAndRemoveDoesNotDelete() {
        // Given
        dismissFirstRun()
        addProvider(ProviderId.CODEX)

        // When
        val settings = composeRule.onNodeWithContentDescription(text(R.string.nav_settings))
            .assertHasClickAction()
            .assertWidthIsEqualTo(48.dp)
            .assertHeightIsEqualTo(48.dp)
        val add = composeRule.onAllNodesWithContentDescription(text(R.string.provider_catalog_add_action))[0]
            .assertHasClickAction()
            .assertWidthIsEqualTo(48.dp)
            .assertHeightIsEqualTo(48.dp)
        val remove = composeRule.onNodeWithContentDescription(text(R.string.provider_catalog_remove_action))
            .assertHasClickAction()
            .assertWidthIsEqualTo(48.dp)
            .assertHeightIsEqualTo(48.dp)

        // Then
        val settingsBounds = settings.getUnclippedBoundsInRoot()
        val addBounds = add.getUnclippedBoundsInRoot()
        val removeBounds = remove.getUnclippedBoundsInRoot()
        assertTrue("Settings must precede Add", settingsBounds.left < addBounds.left)
        assertTrue("Add must precede Remove", addBounds.left < removeBounds.left)

        remove.performClick()
        composeRule.waitForIdle()
        assertTrue("Remove must delegate exactly once", composeRule.activity.removeInvocationCount == 1)
        composeRule.onNodeWithText("Codex").assertIsDisplayed()
    }

    @Test
    fun addAllowsSiblingProvidersAndDisablesPresentSingleInstanceAsOneRadioRow() {
        // Given
        dismissFirstRun()
        addProvider(ProviderId.CODEX)
        addProvider(ProviderId.CODEX)
        addProvider(ProviderId.CURSOR)

        // When
        openPicker()

        // Then
        providerRow(ProviderId.CLAUDE)
            .assertIsEnabled()
            .assertHasClickAction()
            .assert(role(Role.RadioButton))
        providerRow(ProviderId.CODEX)
            .assertIsEnabled()
            .assertHasClickAction()
            .assert(role(Role.RadioButton))
        composeRule.onNodeWithContentDescription(
            text(R.string.provider_picker_disabled_description, ProviderId.CURSOR.displayName)
        )
            .assertIsNotEnabled()
            .assert(role(Role.RadioButton))
        composeRule.onNodeWithText("Codex 2").assertIsDisplayed()
        composeRule.onNodeWithText("Cursor").assertIsDisplayed()
    }

    @Test
    fun namingShowsAllocatorSuggestionAndBlankSubmissionUsesIt() {
        // Given
        dismissFirstRun()
        addProvider(ProviderId.CODEX)

        // When
        openNaming(ProviderId.CODEX)

        // Then
        val suggestion = text(R.string.provider_naming_default, "Codex 2")
        composeRule.onNodeWithText(suggestion).assertIsDisplayed()
        composeRule.onNode(hasSetTextAction()).assert(
            SemanticsMatcher.expectValue(SemanticsProperties.EditableText, AnnotatedString(""))
        )

        namingAdd().performClick()
        composeRule.onNodeWithText("Codex 2").assertIsDisplayed()
    }

    @Test
    fun concurrentSingleInstanceSubmitReturnsTypedInlineConflictAndReloadsPicker() {
        // Given
        dismissFirstRun()
        openNaming(ProviderId.CURSOR)
        composeRule.runOnIdle {
            composeRule.activity.addConcurrently(ProviderId.CURSOR)
        }

        // When
        namingAdd().performClick()

        // Then
        assertFieldError(R.string.provider_enrollment_error_already_added)
        composeRule.onNodeWithText(text(R.string.provider_enrollment_cancel)).performClick()
        openPicker()
        composeRule.onNodeWithContentDescription(
            text(R.string.provider_picker_disabled_description, ProviderId.CURSOR.displayName)
        ).assertIsNotEnabled()
    }

    @Test
    fun invalidCustomNamesAndSecondSingleInstanceStayInlineWithoutWrites() {
        // Given
        dismissFirstRun()
        addProvider(ProviderId.CLAUDE, "Work")
        openNaming(ProviderId.CLAUDE)
        val field = composeRule.onNode(hasSetTextAction())
        val add = namingAdd()

        // When / Then: same-provider Locale.ROOT case collision
        field.performTextInput(" work ")
        add.performClick()
        assertFieldError(R.string.provider_enrollment_error_alias_conflict)

        // When / Then: control character
        field.performTextClearance()
        field.performTextInput("\u0007work")
        add.performClick()
        assertFieldError(R.string.provider_enrollment_error_control_character)

        // When / Then: 41 Unicode code points
        field.performTextClearance()
        field.performTextInput("a".repeat(41))
        add.performClick()
        assertFieldError(R.string.provider_enrollment_error_too_long)

        composeRule.onNodeWithText(text(R.string.provider_enrollment_cancel)).performClick()
        addProvider(ProviderId.CURSOR)
        openPicker()
        composeRule.onNodeWithContentDescription(
            text(R.string.provider_picker_disabled_description, ProviderId.CURSOR.displayName)
        ).assertIsNotEnabled()
        composeRule.onNodeWithText("Work").assertIsDisplayed()
        composeRule.onNodeWithText("Cursor").assertIsDisplayed()
    }

    private fun dismissFirstRun() {
        composeRule.onNodeWithText(text(R.string.provider_onboarding_later)).performClick()
        composeRule.onNodeWithText(text(R.string.provider_catalog_empty_prompt)).assertIsDisplayed()
    }

    private fun addProvider(providerId: ProviderId, alias: String? = null) {
        openNaming(providerId)
        if (alias != null) composeRule.onNode(hasSetTextAction()).performTextInput(alias)
        namingAdd().performClick()
        composeRule.waitForIdle()
    }

    private fun openPicker() {
        composeRule.onAllNodesWithContentDescription(text(R.string.provider_catalog_add_action))[0].performClick()
        composeRule.onNodeWithText(text(R.string.provider_picker_title)).assertIsDisplayed()
    }

    private fun openNaming(providerId: ProviderId) {
        openPicker()
        providerRow(providerId).performClick()
        composeRule.onNodeWithText(text(R.string.provider_enrollment_next)).performClick()
        composeRule.onNode(hasSetTextAction()).assertIsDisplayed()
    }

    private fun namingAdd() = composeRule.onNode(
        hasTextExactly(text(R.string.provider_enrollment_add)) and
            hasClickAction() and
            hasAnyAncestor(isDialog())
    )

    private fun assertFieldError(resource: Int) {
        val message = text(resource)
        composeRule.onNodeWithText(message)
            .assertIsDisplayed()
            .assert(SemanticsMatcher.expectValue(SemanticsProperties.Error, message))
        composeRule.onNode(hasSetTextAction())
            .assert(SemanticsMatcher.expectValue(SemanticsProperties.Error, message))
    }

    private fun providerRow(providerId: ProviderId) = composeRule.onNode(
        hasContentDescriptionExactly(providerId.displayName) and role(Role.RadioButton)
    )

    private fun role(role: Role): SemanticsMatcher =
        SemanticsMatcher.expectValue(SemanticsProperties.Role, role)

    private fun text(resource: Int, vararg arguments: Any): String =
        composeRule.activity.getString(resource, *arguments)
}
