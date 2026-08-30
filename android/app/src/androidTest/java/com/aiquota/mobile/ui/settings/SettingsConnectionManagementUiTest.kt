package com.aiquota.mobile.ui.settings

import androidx.compose.ui.test.assertCountEquals
import androidx.compose.ui.test.assertIsDisplayed
import androidx.compose.ui.test.junit4.createComposeRule
import androidx.compose.ui.test.onAllNodesWithText
import androidx.compose.ui.test.onNodeWithText
import androidx.test.ext.junit.runners.AndroidJUnit4
import androidx.test.platform.app.InstrumentationRegistry
import com.aiquota.mobile.R
import com.aiquota.mobile.local.ProviderId
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
}
