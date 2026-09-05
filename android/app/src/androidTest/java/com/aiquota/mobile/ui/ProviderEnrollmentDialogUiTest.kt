package com.aiquota.mobile.ui

import androidx.compose.ui.test.assertIsDisplayed
import androidx.compose.ui.test.assertIsOn
import androidx.compose.ui.test.junit4.createComposeRule
import androidx.compose.ui.test.onNodeWithContentDescription
import androidx.compose.ui.test.onNodeWithText
import androidx.compose.ui.test.performClick
import androidx.test.core.app.ApplicationProvider
import androidx.test.ext.junit.runners.AndroidJUnit4
import com.aiquota.mobile.R
import com.aiquota.mobile.accounts.AccountAuthState
import com.aiquota.mobile.accounts.AccountDeletionState
import com.aiquota.mobile.accounts.AccountGeneration
import com.aiquota.mobile.accounts.AccountKey
import com.aiquota.mobile.accounts.AccountRecord
import com.aiquota.mobile.accounts.AccountState
import com.aiquota.mobile.accounts.ProviderAccountId
import com.aiquota.mobile.accounts.ProviderCardAddRejection
import com.aiquota.mobile.accounts.ProviderCardAddResult
import com.aiquota.mobile.accounts.SessionRevision
import com.aiquota.mobile.debug.ProviderCardCatalogDebugTheme
import com.aiquota.mobile.local.ProviderId
import org.junit.Assert.assertEquals
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith

@RunWith(AndroidJUnit4::class)
class ProviderEnrollmentDialogUiTest {
    @get:Rule
    val composeRule = createComposeRule()

    @Test
    fun bulkAddKeepsRejectedProviderForRetryWithoutResubmittingAddedProvider() {
        val state = ProviderEnrollmentState.firstRun()
        state.select(ProviderId.CLAUDE)
        state.select(ProviderId.CURSOR)
        val submittedProviders = mutableListOf<ProviderId>()

        composeRule.setContent {
            ProviderCardCatalogDebugTheme {
                ProviderEnrollmentDialog(
                    state = state,
                    existingAccountIds = emptySet(),
                    onLater = {},
                    suggestedAlias = ProviderId::displayName,
                    onSubmit = { submission ->
                        submittedProviders += submission.providerId
                        if (
                            submission.providerId == ProviderId.CURSOR &&
                            submittedProviders.count { it == ProviderId.CURSOR } == 1
                        ) {
                            ProviderCardAddResult.Rejected(
                                ProviderCardAddRejection.MultiplicityExceeded(ProviderId.CURSOR),
                            )
                        } else {
                            ProviderCardAddResult.Added(addedAccount(submission.providerId))
                        }
                    },
                    onAdded = {},
                )
            }
        }

        composeRule.waitForIdle()
        startButton().performClick()
        composeRule.waitForIdle()

        assertEquals(listOf(ProviderId.CLAUDE, ProviderId.CURSOR), submittedProviders)
        composeRule.onNodeWithText(text(R.string.provider_picker_title)).assertIsDisplayed()
        composeRule.onNodeWithText(text(R.string.provider_enrollment_error_already_added)).assertIsDisplayed()
        composeRule.onNodeWithContentDescription(ProviderId.CURSOR.displayName).assertIsOn()

        startButton().performClick()
        composeRule.waitForIdle()

        assertEquals(
            listOf(ProviderId.CLAUDE, ProviderId.CURSOR, ProviderId.CURSOR),
            submittedProviders,
        )
        composeRule.onNodeWithText(text(R.string.provider_picker_title)).assertDoesNotExist()
    }

    private fun startButton() = composeRule.onNodeWithText(text(R.string.provider_onboarding_start))

    private fun text(resource: Int): String =
        ApplicationProvider.getApplicationContext<android.content.Context>().getString(resource)

    private fun addedAccount(providerId: ProviderId): AccountRecord = AccountRecord(
        id = ProviderAccountId(
            providerId = providerId,
            accountKey = AccountKey.parseOpaque(
                "acct_" + (providerId.ordinal + 1).toString(16).padStart(32, '0'),
            ),
        ),
        state = AccountState.ACTIVE,
        authState = AccountAuthState.SIGNED_OUT,
        deletionState = AccountDeletionState.NONE,
        generation = AccountGeneration.of(1),
        sessionRevision = SessionRevision.of(1),
        alias = providerId.displayName,
    )
}
