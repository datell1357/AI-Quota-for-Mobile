package com.aiquota.mobile.debug

import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import com.aiquota.mobile.accounts.AccountDeletionState
import com.aiquota.mobile.accounts.AccountState
import com.aiquota.mobile.accounts.DisplayVersion
import com.aiquota.mobile.accounts.ProviderAccountId
import com.aiquota.mobile.accounts.ProviderCardAddRejection
import com.aiquota.mobile.accounts.ProviderCardAddResult
import com.aiquota.mobile.accounts.ProviderCardCatalog
import com.aiquota.mobile.accounts.ProviderCardDeletionFailure
import com.aiquota.mobile.accounts.ProviderCardDeletionRejection
import com.aiquota.mobile.accounts.ProviderCardDeletionRecord
import com.aiquota.mobile.accounts.ProviderCardDeletionResult
import com.aiquota.mobile.accounts.ProviderCardDeletionStep
import com.aiquota.mobile.accounts.ProviderCardDisplayRecord
import com.aiquota.mobile.accounts.VersionedDisplayRecord
import com.aiquota.mobile.local.DashboardViewMode
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.local.ProviderUsageSnapshot
import com.aiquota.mobile.ui.ProviderEnrollmentDialog
import com.aiquota.mobile.ui.ProviderEnrollmentState
import com.aiquota.mobile.ui.ProviderEnrollmentSubmission
import com.aiquota.mobile.ui.ProviderCardRemovalSurface
import com.aiquota.mobile.ui.dashboard.UnifiedDashboardScreen

enum class ProviderDeletionDebugMode {
    COMPLETED,
    IN_PROGRESS,
    FAILED,
    REJECTED,
}

internal class ProviderEnrollmentDebugHost(
    private val catalog: ProviderCardCatalog,
) : AutoCloseable {
    private val removedIds = mutableSetOf<ProviderAccountId>()
    private val deletionModes = mutableMapOf<ProviderAccountId, ProviderDeletionDebugMode>()
    var cards by mutableStateOf(loadCards())
        private set
    var removeInvocations: Int = 0
        private set
    var deletionFailure: Boolean = false
    val removedAccountIds: Set<ProviderAccountId>
        get() = removedIds

    fun suggestAlias(providerId: ProviderId): String? = catalog.suggestAlias(providerId)

    fun submit(submission: ProviderEnrollmentSubmission): ProviderCardAddResult =
        catalog.add(submission.providerId, submission.optionalAlias).also { reload() }

    fun addConcurrently(providerId: ProviderId, alias: String? = null): ProviderCardAddResult =
        catalog.add(providerId, alias).also { reload() }

    fun seedPopulated() {
        catalog.add(ProviderId.CLAUDE, "Work")
        catalog.add(ProviderId.CODEX)
        catalog.add(ProviderId.CURSOR)
        reload()
    }

    fun recordRemoveInvocation() {
        removeInvocations++
    }

    fun setDeletionMode(accountId: ProviderAccountId, mode: ProviderDeletionDebugMode) {
        deletionModes[accountId] = mode
    }

    fun delete(accountId: ProviderAccountId): ProviderCardDeletionResult {
        val card = cards.firstOrNull { it.accountId == accountId }
            ?: return ProviderCardDeletionResult.Rejected(
                ProviderCardDeletionRejection.ACCOUNT_MISSING
            )
        val mode = deletionModes[accountId]
            ?: if (deletionFailure) ProviderDeletionDebugMode.FAILED else ProviderDeletionDebugMode.COMPLETED
        if (mode == ProviderDeletionDebugMode.REJECTED) {
            return ProviderCardDeletionResult.Rejected(ProviderCardDeletionRejection.ACCOUNT_MISSING)
        }
        val version = card.displayRecord.version.value.coerceAtLeast(1L)
        val record = ProviderCardDeletionRecord(
            accountId = accountId,
            step = when (mode) {
                ProviderDeletionDebugMode.COMPLETED -> ProviderCardDeletionStep.ERASED
                ProviderDeletionDebugMode.IN_PROGRESS -> ProviderCardDeletionStep.TOMBSTONED
                ProviderDeletionDebugMode.FAILED -> ProviderCardDeletionStep.CREDENTIAL_ERASED
                ProviderDeletionDebugMode.REJECTED -> error("Rejected mode is returned before record creation")
            },
            failure = if (mode == ProviderDeletionDebugMode.FAILED) {
                ProviderCardDeletionFailure.CREDENTIAL_ERASURE_FAILED
            } else {
                null
            },
            journalRevision = when (mode) {
                ProviderDeletionDebugMode.COMPLETED -> 10L
                ProviderDeletionDebugMode.IN_PROGRESS -> 1L
                ProviderDeletionDebugMode.FAILED -> 4L
                ProviderDeletionDebugMode.REJECTED -> error("Rejected mode is returned before record creation")
            },
            authorityVersion = DisplayVersion.of(version),
        )
        return when (mode) {
            ProviderDeletionDebugMode.COMPLETED -> {
                removedIds += accountId
                reload()
                ProviderCardDeletionResult.Completed(record)
            }
            ProviderDeletionDebugMode.IN_PROGRESS -> ProviderCardDeletionResult.InProgress(record)
            ProviderDeletionDebugMode.FAILED -> ProviderCardDeletionResult.Failed(record)
            ProviderDeletionDebugMode.REJECTED -> error("Rejected mode is returned before record creation")
        }
    }

    fun dropCardFromDisplay(accountId: ProviderAccountId) {
        cards = cards.filterNot { it.accountId == accountId }
    }

    override fun close() = catalog.close()

    private fun reload() {
        cards = loadCards()
    }

    private fun loadCards(): List<ProviderCardDisplayRecord> = catalog.page(0, 250).records
        .filter { account ->
            account.state == AccountState.ACTIVE && account.deletionState == AccountDeletionState.NONE
        }
        .filterNot { account -> account.id in removedIds }
        .mapIndexed { rank, account ->
            ProviderCardDisplayRecord(
                displayRecord = VersionedDisplayRecord(
                    account = account,
                    snapshot = ProviderUsageSnapshot.disconnected(account.id.providerId),
                    version = account.modifiedVersion,
                ),
                activeRank = rank,
            )
        }
}

@Composable
internal fun ProviderOnboardingDebugSurface(
    host: ProviderEnrollmentDebugHost,
    showFirstRun: Boolean = true,
) {
    val enrollmentState = rememberSaveable(saver = ProviderEnrollmentState.Saver) {
        if (showFirstRun) ProviderEnrollmentState.firstRun() else ProviderEnrollmentState.hidden()
    }
    var showRemoval by rememberSaveable { mutableStateOf(false) }

    UnifiedDashboardScreen(
        cards = host.cards,
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
        onRemoveProvider = {
            host.recordRemoveInvocation()
            showRemoval = true
        },
        modifier = Modifier.fillMaxSize(),
    )
    ProviderEnrollmentDialog(
        state = enrollmentState,
        existingAccountIds = host.cards.mapTo(mutableSetOf()) { it.accountId },
        onLater = {},
        suggestedAlias = host::suggestAlias,
        onSubmit = host::submit,
        onAdded = {},
    )
    ProviderCardRemovalSurface(
        cards = host.cards,
        visible = showRemoval,
        onDismiss = { showRemoval = false },
        onDelete = host::delete,
    )
}

/** Remote-process visual preview only; production and Compose behavior tests use Task8 through [ProviderEnrollmentDebugHost]. */
@Composable
internal fun ProviderOnboardingPreviewSurface() {
    val state = rememberSaveable(saver = ProviderEnrollmentState.Saver) {
        ProviderEnrollmentState.firstRun()
    }
    val cards = emptyList<ProviderCardDisplayRecord>()
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
        onAddProvider = state::openExplicitAdd,
        onRemoveProvider = {},
        modifier = Modifier.fillMaxSize(),
    )
    ProviderEnrollmentDialog(
        state = state,
        existingAccountIds = cards.mapTo(mutableSetOf()) { it.accountId },
        onLater = {},
        suggestedAlias = ProviderId::displayName,
        onSubmit = { submission ->
            ProviderCardAddResult.Rejected(
                ProviderCardAddRejection.UnsupportedProvider(submission.providerId)
            )
        },
        onAdded = {},
    )
}
