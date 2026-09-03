package com.aiquota.mobile.ui

import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.focusable
import androidx.compose.foundation.selection.toggleable
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.ColumnScope
import androidx.compose.foundation.layout.RowScope
import androidx.compose.foundation.layout.widthIn
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.heightIn
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.verticalScroll
import androidx.compose.material3.AlertDialog
import androidx.compose.material3.Button
import androidx.compose.material3.Checkbox
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.OutlinedButton
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.focus.FocusRequester
import androidx.compose.ui.focus.focusRequester
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.semantics.LiveRegionMode
import androidx.compose.ui.semantics.Role
import androidx.compose.ui.semantics.clearAndSetSemantics
import androidx.compose.ui.semantics.contentDescription
import androidx.compose.ui.semantics.heading
import androidx.compose.ui.semantics.liveRegion
import androidx.compose.ui.semantics.onClick
import androidx.compose.ui.semantics.role
import androidx.compose.ui.semantics.semantics
import androidx.compose.ui.semantics.toggleableState
import androidx.compose.ui.state.ToggleableState
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.window.Dialog
import androidx.compose.ui.window.DialogProperties
import com.aiquota.mobile.R
import com.aiquota.mobile.accounts.ProviderAccountId
import com.aiquota.mobile.accounts.ProviderCardDeletionResult
import com.aiquota.mobile.accounts.ProviderCardDisplayRecord
import com.aiquota.mobile.accounts.DisplayVersion

@Composable
internal fun ProviderCardRemovalSurface(
    cards: List<ProviderCardDisplayRecord>,
    visible: Boolean,
    onDismiss: () -> Unit,
    onDelete: (ProviderAccountId, DisplayVersion) -> ProviderCardDeletionResult,
) {
    if (!visible) return

    var selectedIds by remember { mutableStateOf<Set<ProviderAccountId>>(emptySet()) }
    var confirmingCards by remember { mutableStateOf<List<ProviderCardDisplayRecord>>(emptyList()) }
    var confirming by remember { mutableStateOf(false) }
    var deleting by remember { mutableStateOf(false) }
    var resultById by remember { mutableStateOf<Map<ProviderAccountId, RemovalCardResult>>(emptyMap()) }
    val cardsById = cards.associateBy(ProviderCardDisplayRecord::accountId)
    val visibleSelectedIds = selectedIds.intersect(cardsById.keys)
    val selectedCards = cards.filter { it.accountId in selectedIds }
    fun dismiss() {
        selectedIds = emptySet()
        confirmingCards = emptyList()
        confirming = false
        resultById = emptyMap()
        deleting = false
        onDismiss()
    }

    when {
        resultById.isNotEmpty() -> ProviderCardRemovalResultDialog(
            resultById = resultById,
            onDismiss = ::dismiss,
        )
        confirming -> ProviderCardRemovalConfirmationDialog(
            selectedCards = confirmingCards,
            deleting = deleting,
            onDismiss = ::dismiss,
            onConfirm = {
                deleting = true
                val results = confirmingCards.associate { card ->
                    val snapshot = RemovalCardSnapshot(
                        accountId = card.accountId,
                        alias = card.alias,
                        providerName = card.accountId.providerId.displayName,
                        version = card.displayRecord.version,
                    )
                    snapshot.accountId to RemovalCardResult(
                        snapshot = snapshot,
                        outcome = onDelete(snapshot.accountId, snapshot.version).toRemovalResult(),
                    )
                }
                resultById = results
                deleting = false
            },
        )
        else -> ProviderCardRemovalSelectionDialog(
            cards = cards,
            selectedIds = visibleSelectedIds,
            onToggle = { accountId, checked ->
                selectedIds = if (checked) selectedIds + accountId else selectedIds - accountId
            },
            onDismiss = ::dismiss,
            onContinue = {
                confirmingCards = selectedCards.toList()
                confirming = true
            },
        )
    }

}

private enum class RemovalResult {
    PENDING,
    COMPLETED,
    FAILED,
    REJECTED,
}

private data class RemovalCardSnapshot(
    val accountId: ProviderAccountId,
    val alias: String,
    val providerName: String,
    val version: DisplayVersion,
)

private data class RemovalCardResult(
    val snapshot: RemovalCardSnapshot,
    val outcome: RemovalResult,
)

private fun ProviderCardDeletionResult.toRemovalResult(): RemovalResult = when (this) {
    is ProviderCardDeletionResult.Completed -> RemovalResult.COMPLETED
    is ProviderCardDeletionResult.InProgress -> RemovalResult.PENDING
    is ProviderCardDeletionResult.Failed -> RemovalResult.FAILED
    is ProviderCardDeletionResult.Rejected -> RemovalResult.REJECTED
}

private fun RemovalResult.statusResource(): Int = when (this) {
    RemovalResult.COMPLETED -> R.string.provider_removal_status_completed
    RemovalResult.PENDING -> R.string.provider_removal_status_pending
    RemovalResult.FAILED -> R.string.provider_removal_status_failed
    RemovalResult.REJECTED -> R.string.provider_removal_status_rejected
}

@Composable
private fun ProviderCardRemovalSelectionDialog(
    cards: List<ProviderCardDisplayRecord>,
    selectedIds: Set<ProviderAccountId>,
    onToggle: (ProviderAccountId, Boolean) -> Unit,
    onDismiss: () -> Unit,
    onContinue: () -> Unit,
) {
    val headingFocusRequester = remember { FocusRequester() }
    ProviderCardRemovalWindow(
        title = stringResource(R.string.provider_removal_title),
        titleModifier = Modifier.focusRequester(headingFocusRequester).focusable(),
        onDismiss = onDismiss,
        actions = {
            OutlinedButton(onClick = onDismiss, modifier = Modifier.heightIn(min = 48.dp)) {
                Text(stringResource(R.string.provider_removal_cancel))
            }
            Button(
                onClick = onContinue,
                enabled = selectedIds.isNotEmpty(),
                modifier = Modifier.heightIn(min = 48.dp),
            ) {
                Text(stringResource(R.string.provider_removal_continue))
            }
        },
    ) {
        LaunchedEffect(Unit) { headingFocusRequester.requestFocus() }
        Text(stringResource(R.string.provider_removal_body))
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .heightIn(max = 360.dp)
                .verticalScroll(rememberScrollState()),
            verticalArrangement = Arrangement.spacedBy(8.dp),
        ) {
            cards.forEach { card ->
                val selected = card.accountId in selectedIds
                ProviderCardRemovalRow(card, selected, onToggle)
            }
        }
        Text(
            text = stringResource(R.string.provider_removal_selected_count, selectedIds.size),
            modifier = Modifier.semantics { liveRegion = LiveRegionMode.Polite },
            style = MaterialTheme.typography.bodyMedium,
        )
    }
}

@Composable
private fun ProviderCardRemovalRow(
    card: ProviderCardDisplayRecord,
    selected: Boolean,
    onToggle: (ProviderAccountId, Boolean) -> Unit,
) {
    val identityDescription = stringResource(
        R.string.provider_removal_named_card,
        card.alias,
        card.accountId.providerId.displayName,
    )
    val colors = AIQuotaTheme.colors
    Surface(
        modifier = Modifier
            .fillMaxWidth()
            .heightIn(min = 56.dp)
            .toggleable(
                value = selected,
                role = Role.Checkbox,
                onValueChange = { checked -> onToggle(card.accountId, checked) },
            )
            .clearAndSetSemantics {
                role = Role.Checkbox
                contentDescription = identityDescription
                toggleableState = if (selected) ToggleableState.On else ToggleableState.Off
            }
            .semantics {
                onClick {
                    onToggle(card.accountId, !selected)
                    true
                }
            },
        color = if (selected) colors.selectedNav else colors.panel,
        border = BorderStroke(1.dp, if (selected) colors.primary else colors.borderSoft),
        shape = MaterialTheme.shapes.medium,
    ) {
        Row(
            modifier = Modifier.padding(horizontal = 12.dp, vertical = 8.dp),
            verticalAlignment = Alignment.CenterVertically,
            horizontalArrangement = Arrangement.spacedBy(12.dp),
        ) {
            Column(modifier = Modifier.weight(1f)) {
                Text(card.alias, fontWeight = FontWeight.SemiBold)
                Text(card.accountId.providerId.displayName, style = MaterialTheme.typography.bodySmall)
            }
            Checkbox(
                checked = selected,
                onCheckedChange = null,
                enabled = true,
                modifier = Modifier
                    .size(48.dp)
                    .clearAndSetSemantics {},
            )
        }
    }
}

@Composable
private fun ProviderCardRemovalConfirmationDialog(
    selectedCards: List<ProviderCardDisplayRecord>,
    deleting: Boolean,
    onDismiss: () -> Unit,
    onConfirm: () -> Unit,
) {
    val headingFocusRequester = remember { FocusRequester() }
    val pendingStatus = stringResource(R.string.provider_removal_status_pending)
    val names = selectedCards.map { card ->
        stringResource(R.string.provider_removal_named_card, card.alias, card.accountId.providerId.displayName)
    }.joinToString(", ")
    ProviderCardRemovalWindow(
        title = stringResource(R.string.provider_removal_confirmation_title),
        titleModifier = Modifier.focusRequester(headingFocusRequester).focusable(),
        onDismiss = onDismiss,
        dismissible = !deleting,
        actions = {
            OutlinedButton(onClick = onDismiss, modifier = Modifier.heightIn(min = 48.dp)) {
                Text(stringResource(R.string.provider_removal_cancel))
            }
            Button(
                onClick = onConfirm,
                enabled = selectedCards.isNotEmpty() && !deleting,
                modifier = Modifier.heightIn(min = 48.dp),
            ) {
                if (deleting) {
                    CircularProgressIndicator(
                        modifier = Modifier
                            .size(20.dp)
                            .semantics {
                                liveRegion = LiveRegionMode.Polite
                                contentDescription = pendingStatus
                            },
                        strokeWidth = 2.dp,
                    )
                } else {
                    Text(stringResource(R.string.provider_removal_confirm))
                }
            }
        },
    ) {
        LaunchedEffect(Unit) { headingFocusRequester.requestFocus() }
        Column(
            modifier = Modifier.verticalScroll(rememberScrollState()),
            verticalArrangement = Arrangement.spacedBy(12.dp),
        ) {
            Text(stringResource(R.string.provider_removal_confirmation_names, names))
            selectedCards.forEach { card ->
                Text(text = card.alias, fontWeight = FontWeight.SemiBold)
            }
            Text(stringResource(R.string.provider_removal_confirmation_consequence))
        }
    }
}

@Composable
private fun ProviderCardRemovalResultDialog(
    resultById: Map<ProviderAccountId, RemovalCardResult>,
    onDismiss: () -> Unit,
) {
    val headingFocusRequester = remember { FocusRequester() }
    ProviderCardRemovalWindow(
        title = stringResource(R.string.provider_removal_results_title),
        titleModifier = Modifier.focusRequester(headingFocusRequester).focusable(),
        onDismiss = onDismiss,
        actions = {
            Button(onClick = onDismiss, modifier = Modifier.heightIn(min = 48.dp)) {
                Text(stringResource(R.string.provider_removal_close))
            }
        },
    ) {
        LaunchedEffect(Unit) { headingFocusRequester.requestFocus() }
        Column(
            modifier = Modifier.verticalScroll(rememberScrollState()),
            verticalArrangement = Arrangement.spacedBy(8.dp),
        ) {
            resultById.values.forEach { result ->
                val status = stringResource(result.outcome.statusResource())
                Column(
                    modifier = Modifier
                        .fillMaxWidth()
                        .semantics { liveRegion = LiveRegionMode.Polite },
                    verticalArrangement = Arrangement.spacedBy(4.dp),
                ) {
                    Text(
                        stringResource(
                            R.string.provider_removal_result_item,
                            result.snapshot.alias,
                            result.snapshot.providerName,
                            status,
                        ),
                        modifier = Modifier.semantics { liveRegion = LiveRegionMode.Polite },
                    )
                    if (result.outcome == RemovalResult.PENDING) {
                        CircularProgressIndicator(
                            modifier = Modifier
                                .size(20.dp)
                                .semantics {
                                    liveRegion = LiveRegionMode.Polite
                                    contentDescription = status
                                },
                            strokeWidth = 2.dp,
                        )
                    }
                }
            }
        }
    }
}

@Composable
private fun ProviderCardRemovalWindow(
    title: String,
    onDismiss: () -> Unit,
    actions: @Composable RowScope.() -> Unit,
    titleModifier: Modifier = Modifier,
    dismissible: Boolean = true,
    content: @Composable ColumnScope.() -> Unit,
) {
    Dialog(
        onDismissRequest = { if (dismissible) onDismiss() },
        properties = DialogProperties(
            dismissOnBackPress = dismissible,
            dismissOnClickOutside = dismissible,
        ),
    ) {
        AIQuotaWindowFrame(
            title = title,
            titleModifier = titleModifier,
            modifier = Modifier.fillMaxWidth().widthIn(max = 560.dp),
        ) {
            Column(
                modifier = Modifier.padding(18.dp),
                verticalArrangement = Arrangement.spacedBy(12.dp),
                content = content,
            )
            Row(
                modifier = Modifier.fillMaxWidth().padding(start = 18.dp, end = 18.dp, bottom = 18.dp),
                horizontalArrangement = Arrangement.spacedBy(8.dp, Alignment.End),
                verticalAlignment = Alignment.CenterVertically,
                content = actions,
            )
        }
    }
}
