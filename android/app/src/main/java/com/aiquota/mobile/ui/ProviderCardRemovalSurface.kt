package com.aiquota.mobile.ui

import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.selection.toggleable
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
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
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.OutlinedButton
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.semantics.LiveRegionMode
import androidx.compose.ui.semantics.Role
import androidx.compose.ui.semantics.clearAndSetSemantics
import androidx.compose.ui.semantics.contentDescription
import androidx.compose.ui.semantics.liveRegion
import androidx.compose.ui.semantics.onClick
import androidx.compose.ui.semantics.role
import androidx.compose.ui.semantics.semantics
import androidx.compose.ui.semantics.toggleableState
import androidx.compose.ui.state.ToggleableState
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.window.DialogProperties
import com.aiquota.mobile.R
import com.aiquota.mobile.accounts.ProviderAccountId
import com.aiquota.mobile.accounts.ProviderCardDeletionResult
import com.aiquota.mobile.accounts.ProviderCardDisplayRecord

@Composable
internal fun ProviderCardRemovalSurface(
    cards: List<ProviderCardDisplayRecord>,
    visible: Boolean,
    onDismiss: () -> Unit,
    onDelete: (ProviderAccountId) -> ProviderCardDeletionResult,
) {
    if (!visible) return

    var selectedIds by remember { mutableStateOf<Set<ProviderAccountId>>(emptySet()) }
    var confirming by remember { mutableStateOf(false) }
    var resultById by remember { mutableStateOf<Map<ProviderAccountId, RemovalCardResult>>(emptyMap()) }
    val cardsById = cards.associateBy(ProviderCardDisplayRecord::accountId)
    val visibleSelectedIds = selectedIds.intersect(cardsById.keys)
    val selectedCards = cards.filter { it.accountId in selectedIds }
    fun dismiss() {
        selectedIds = emptySet()
        confirming = false
        resultById = emptyMap()
        onDismiss()
    }

    when {
        resultById.isNotEmpty() -> ProviderCardRemovalResultDialog(
            resultById = resultById,
            onDismiss = ::dismiss,
        )
        confirming -> ProviderCardRemovalConfirmationDialog(
            selectedCards = selectedCards,
            onDismiss = ::dismiss,
            onConfirm = {
                val results = selectedCards.associate { card ->
                    val snapshot = RemovalCardSnapshot(
                        accountId = card.accountId,
                        alias = card.alias,
                        providerName = card.accountId.providerId.displayName,
                    )
                    snapshot.accountId to RemovalCardResult(
                        snapshot = snapshot,
                        outcome = onDelete(snapshot.accountId).toRemovalResult(),
                    )
                }
                resultById = results
            },
        )
        else -> ProviderCardRemovalSelectionDialog(
            cards = cards,
            selectedIds = visibleSelectedIds,
            onToggle = { accountId, checked ->
                selectedIds = if (checked) selectedIds + accountId else selectedIds - accountId
            },
            onDismiss = ::dismiss,
            onContinue = { confirming = true },
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
    AlertDialog(
        onDismissRequest = onDismiss,
        properties = DialogProperties(dismissOnBackPress = true, dismissOnClickOutside = true),
        title = {
            Text(
                text = stringResource(R.string.provider_removal_title),
                fontWeight = FontWeight.Bold,
            )
        },
        text = {
            Column(verticalArrangement = Arrangement.spacedBy(12.dp)) {
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
        },
        confirmButton = {
            Button(onClick = onContinue, enabled = selectedIds.isNotEmpty()) {
                Text(stringResource(R.string.provider_removal_continue))
            }
        },
        dismissButton = {
            OutlinedButton(onClick = onDismiss) {
                Text(stringResource(R.string.provider_removal_cancel))
            }
        },
    )
}

@Composable
private fun ProviderCardRemovalRow(
    card: ProviderCardDisplayRecord,
    selected: Boolean,
    onToggle: (ProviderAccountId, Boolean) -> Unit,
) {
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
                contentDescription = card.alias
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
    onDismiss: () -> Unit,
    onConfirm: () -> Unit,
) {
    val names = selectedCards.map { card ->
        stringResource(R.string.provider_removal_named_card, card.alias, card.accountId.providerId.displayName)
    }.joinToString(", ")
    AlertDialog(
        onDismissRequest = onDismiss,
        properties = DialogProperties(dismissOnBackPress = true, dismissOnClickOutside = true),
        title = {
            Text(
                text = stringResource(R.string.provider_removal_confirmation_title),
                fontWeight = FontWeight.Bold,
            )
        },
        text = {
            Column(
                modifier = Modifier.verticalScroll(rememberScrollState()),
                verticalArrangement = Arrangement.spacedBy(12.dp),
            ) {
                Text(stringResource(R.string.provider_removal_confirmation_names, names))
                selectedCards.forEach { card ->
                    Text(
                        text = card.alias,
                        fontWeight = FontWeight.SemiBold,
                    )
                }
                Text(stringResource(R.string.provider_removal_confirmation_consequence))
            }
        },
        confirmButton = {
            Button(onClick = onConfirm, enabled = selectedCards.isNotEmpty()) {
                Text(stringResource(R.string.provider_removal_confirm))
            }
        },
        dismissButton = {
            OutlinedButton(onClick = onDismiss) {
                Text(stringResource(R.string.provider_removal_cancel))
            }
        },
    )
}

@Composable
private fun ProviderCardRemovalResultDialog(
    resultById: Map<ProviderAccountId, RemovalCardResult>,
    onDismiss: () -> Unit,
) {
    AlertDialog(
        onDismissRequest = onDismiss,
        title = {
            Text(stringResource(R.string.provider_removal_results_title), fontWeight = FontWeight.Bold)
        },
        text = {
            Column(
                modifier = Modifier.verticalScroll(rememberScrollState()),
                verticalArrangement = Arrangement.spacedBy(8.dp),
            ) {
                resultById.values.forEach { result ->
                    Text(
                        stringResource(
                            R.string.provider_removal_result_item,
                            result.snapshot.alias,
                            result.snapshot.providerName,
                            stringResource(result.outcome.statusResource()),
                        )
                    )
                }
            }
        },
        confirmButton = {
            Button(onClick = onDismiss) {
                Text(stringResource(R.string.provider_removal_close))
            }
        },
    )
}
