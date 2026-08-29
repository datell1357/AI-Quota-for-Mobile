package com.aiquota.mobile.debug

import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import com.aiquota.mobile.accounts.AccountAuthState
import com.aiquota.mobile.accounts.AccountDeletionState
import com.aiquota.mobile.accounts.AccountGeneration
import com.aiquota.mobile.accounts.AccountKey
import com.aiquota.mobile.accounts.AccountRecord
import com.aiquota.mobile.accounts.AccountState
import com.aiquota.mobile.accounts.DisplayVersion
import com.aiquota.mobile.accounts.ProviderAccountId
import com.aiquota.mobile.accounts.ProviderCardAddResult
import com.aiquota.mobile.accounts.ProviderCardDisplayRecord
import com.aiquota.mobile.accounts.SessionRevision
import com.aiquota.mobile.accounts.VersionedDisplayRecord
import com.aiquota.mobile.local.DashboardViewMode
import com.aiquota.mobile.local.ProviderUsageSnapshot
import com.aiquota.mobile.ui.ProviderEnrollmentDialog
import com.aiquota.mobile.ui.ProviderEnrollmentState
import com.aiquota.mobile.ui.dashboard.UnifiedDashboardScreen

@Composable
internal fun ProviderOnboardingDebugSurface() {
    val enrollmentState = rememberSaveable(saver = ProviderEnrollmentState.Saver) {
        ProviderEnrollmentState.firstRun()
    }
    var cards by remember { mutableStateOf(emptyList<ProviderCardDisplayRecord>()) }

    UnifiedDashboardScreen(
        cards = cards,
        busyAccountIds = emptySet(),
        errors = emptyMap(),
        gaugeColors = emptyMap(),
        onCardSelected = {},
        onConnectCard = {},
        onReorderCard = { _, _ -> },
        onAddWidget = {},
        onOpenSettings = {},
        viewMode = DashboardViewMode.LIST,
        onSelectViewMode = {},
        onAddProvider = enrollmentState::openExplicitAdd,
        modifier = Modifier.fillMaxSize(),
    )
    ProviderEnrollmentDialog(
        state = enrollmentState,
        existingAccountIds = cards.mapTo(mutableSetOf()) { it.accountId },
        onLater = {},
        onSubmit = { submission ->
            val alias = submission.optionalAlias?.trim().takeUnless { it.isNullOrEmpty() }
                ?: submission.providerId.displayName
            val account = AccountRecord(
                id = ProviderAccountId(submission.providerId, AccountKey.reservedDefault()),
                state = AccountState.ACTIVE,
                authState = AccountAuthState.SIGNED_OUT,
                deletionState = AccountDeletionState.NONE,
                generation = AccountGeneration.of(0),
                sessionRevision = SessionRevision.of(0),
                alias = alias,
                modifiedVersion = DisplayVersion.of(1),
            )
            cards = listOf(
                ProviderCardDisplayRecord(
                    displayRecord = VersionedDisplayRecord(
                        account = account,
                        snapshot = ProviderUsageSnapshot.disconnected(submission.providerId),
                        version = DisplayVersion.of(1),
                    ),
                    activeRank = 0,
                )
            )
            ProviderCardAddResult.Added(account)
        },
        onAdded = {},
    )
}
