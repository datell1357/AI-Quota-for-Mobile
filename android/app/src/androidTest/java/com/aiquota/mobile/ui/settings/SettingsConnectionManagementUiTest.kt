package com.aiquota.mobile.ui.settings

import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.width
import androidx.compose.ui.Modifier
import androidx.compose.ui.semantics.LiveRegionMode
import androidx.compose.ui.semantics.SemanticsProperties
import androidx.compose.ui.unit.dp
import androidx.compose.ui.test.assertCountEquals
import androidx.compose.ui.test.assertIsDisplayed
import androidx.compose.ui.test.assertIsEnabled
import androidx.compose.ui.test.assertIsFocused
import androidx.compose.ui.test.hasSetTextAction
import androidx.compose.ui.test.junit4.createComposeRule
import androidx.compose.ui.test.onAllNodesWithText
import androidx.compose.ui.test.onNodeWithText
import androidx.compose.ui.test.performClick
import androidx.test.ext.junit.runners.AndroidJUnit4
import androidx.test.platform.app.InstrumentationRegistry
import com.aiquota.mobile.R
import com.aiquota.mobile.accounts.AccountAuthState
import com.aiquota.mobile.accounts.AccountGeneration
import com.aiquota.mobile.accounts.AccountKey
import com.aiquota.mobile.accounts.AccountRecord
import com.aiquota.mobile.accounts.AccountState
import com.aiquota.mobile.accounts.AccountDeletionState
import com.aiquota.mobile.accounts.DisplayVersion
import com.aiquota.mobile.accounts.ProviderAccountId
import com.aiquota.mobile.accounts.ProviderCardDeletionRejection
import com.aiquota.mobile.accounts.ProviderCardDeletionResult
import com.aiquota.mobile.accounts.ProviderCardDisplayRecord
import com.aiquota.mobile.accounts.ProviderCardRenameRejection
import com.aiquota.mobile.accounts.ProviderCardRenameResult
import com.aiquota.mobile.accounts.SessionRevision
import com.aiquota.mobile.accounts.VersionedDisplayRecord
import com.aiquota.mobile.local.ProviderConnectionState
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.local.ProviderUsageSnapshot
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith

@RunWith(AndroidJUnit4::class)
class SettingsConnectionManagementUiTest {
    @get:Rule
    val composeRule = createComposeRule()

    @Test
    fun enabledEmptyExactRuntimeShowsEmptyStateWithoutLegacyProviderControls() {
        composeRule.setContent {
            SettingsPanel(
                notificationEnabled = false,
                canPostNotifications = true,
                onNotificationEnabledChanged = {},
                onOpenNotificationSettings = {},
                exactCardRuntimeEnabled = true,
                providerCards = emptyList(),
            )
        }

        val context = InstrumentationRegistry.getInstrumentation().targetContext
        composeRule.onNodeWithText(context.getString(R.string.settings_connection_management_empty))
            .assertIsDisplayed()
        composeRule.onNodeWithText(context.getString(R.string.settings_disconnect_all_providers))
            .assertDoesNotExist()
        composeRule.onAllNodesWithText(context.getString(R.string.provider_connect))
            .assertCountEquals(0)
        ProviderId.defaultOrder().forEach { providerId ->
            composeRule.onNodeWithText(providerId.displayName).assertDoesNotExist()
        }
    }

    @Test
    fun exactCardActionsKeepSingleLineCompactButtonsAtCompactWidth() {
        composeRule.setContent {
            Box(modifier = Modifier.width(320.dp).height(900.dp)) {
                SettingsPanel(
                    notificationEnabled = false,
                    canPostNotifications = true,
                    onNotificationEnabledChanged = {},
                    onOpenNotificationSettings = {},
                    exactCardRuntimeEnabled = true,
                    providerCards = listOf(card()),
                )
            }
        }

        val context = InstrumentationRegistry.getInstrumentation().targetContext
        val actionLabels = listOf(context.getString(R.string.provider_connect))
        // Buttons keep their natural 40dp height (labels never wrap); the row itself may flow onto a second line.
        val singleLineMaxPx = with(composeRule.density) { 48.dp.toPx() }
        val heights = actionLabels.map { label ->
            composeRule.onNodeWithText(label).assertIsDisplayed().fetchSemanticsNode().boundsInRoot.height
        }
        assertTrue("Exact-card action labels must stay single-line at 320dp: $heights", heights.all { it <= singleLineMaxPx })
    }

    private fun card(): ProviderCardDisplayRecord {
        val accountId = ProviderAccountId(ProviderId.CODEX, AccountKey.reservedDefault())
        val version = DisplayVersion.of(1)
        return ProviderCardDisplayRecord(
            displayRecord = VersionedDisplayRecord(
                account = AccountRecord(
                    id = accountId,
                    state = AccountState.ACTIVE,
                    authState = AccountAuthState.SIGNED_OUT,
                    deletionState = AccountDeletionState.NONE,
                    generation = AccountGeneration.of(1),
                    sessionRevision = SessionRevision.of(1),
                    alias = "Codex",
                    modifiedVersion = version,
                ),
                snapshot = ProviderUsageSnapshot(
                    providerId = ProviderId.CODEX,
                    connectionState = ProviderConnectionState.DISCONNECTED,
                ),
                version = version,
            ),
            activeRank = 0,
        )
    }
}
