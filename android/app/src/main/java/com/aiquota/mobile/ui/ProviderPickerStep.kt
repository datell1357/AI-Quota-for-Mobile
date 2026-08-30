package com.aiquota.mobile.ui

import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.heightIn
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.lazy.rememberLazyListState
import androidx.compose.foundation.selection.selectableGroup
import androidx.compose.material3.Button
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.RadioButton
import androidx.compose.material3.RadioButtonDefaults
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.remember
import androidx.compose.runtime.derivedStateOf
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.alpha
import androidx.compose.ui.draw.clipToBounds
import androidx.compose.ui.platform.LocalConfiguration
import androidx.compose.ui.semantics.Role
import androidx.compose.ui.semantics.clearAndSetSemantics
import androidx.compose.ui.semantics.contentDescription
import androidx.compose.ui.semantics.disabled
import androidx.compose.ui.semantics.onClick
import androidx.compose.ui.semantics.role
import androidx.compose.ui.semantics.selected
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.LineBreak
import androidx.compose.ui.unit.dp
import com.aiquota.mobile.R
import com.aiquota.mobile.accounts.ProviderAccountId
import com.aiquota.mobile.accounts.ProviderCardCatalogPolicy
import com.aiquota.mobile.accounts.ProviderCardMultiplicity
import com.aiquota.mobile.accounts.ProviderCardProviderPolicy
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.ui.provider.ProviderIconImage

@Composable
internal fun ProviderPickerStep(
    state: ProviderEnrollmentState,
    existingAccountIds: Set<ProviderAccountId>,
    onLater: () -> Unit,
    contentPadding: Int,
    contentSpacing: Int,
    modifier: Modifier = Modifier,
) {
    val pickerListState = rememberLazyListState()
    val compactHeight = LocalConfiguration.current.screenHeightDp < 400
    Column(
        modifier = modifier.padding(contentPadding.dp),
        verticalArrangement = Arrangement.spacedBy(contentSpacing.dp),
    ) {
        Text(
            text = androidx.compose.ui.res.stringResource(R.string.provider_picker_title),
            style = MaterialTheme.typography.titleLarge,
            fontWeight = FontWeight.Bold,
        )
        if (!compactHeight) {
            Text(
                text = androidx.compose.ui.res.stringResource(R.string.provider_picker_body),
                style = MaterialTheme.typography.bodyMedium.copy(lineBreak = LineBreak.Paragraph),
                color = AIQuotaTheme.colors.textMuted,
            )
        }
        LazyColumn(
            modifier = Modifier.fillMaxWidth().weight(1f).clipToBounds().selectableGroup(),
            state = pickerListState,
            verticalArrangement = Arrangement.spacedBy(contentSpacing.dp),
        ) {
            items(ProviderId.defaultOrder(), key = ProviderId::storageId) { providerId ->
                val fullyVisible by remember(providerId, pickerListState) {
                    derivedStateOf {
                        pickerListState.layoutInfo.visibleItemsInfo
                            .firstOrNull { it.key == providerId.storageId }
                            ?.let { item ->
                                item.offset >= pickerListState.layoutInfo.viewportStartOffset &&
                                    item.offset + item.size <= pickerListState.layoutInfo.viewportEndOffset
                            } == true
                    }
                }
                ProviderPickerRow(
                    providerId = providerId,
                    selected = state.selectedProvider == providerId,
                    enabled = providerAvailable(providerId, existingAccountIds),
                    onSelect = { state.select(providerId) },
                    modifier = if (fullyVisible) {
                        Modifier
                    } else {
                        Modifier.alpha(0f).clearAndSetSemantics { }
                    },
                )
            }
        }
        Row(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.spacedBy(contentSpacing.dp, Alignment.End),
            verticalAlignment = Alignment.CenterVertically,
        ) {
            if (state.origin == ProviderEnrollmentOrigin.FIRST_RUN) {
                TextButton(onClick = {
                    onLater()
                    state.close()
                }) {
                    Text(androidx.compose.ui.res.stringResource(R.string.provider_onboarding_later))
                }
            } else {
                TextButton(onClick = state::close) {
                    Text(androidx.compose.ui.res.stringResource(R.string.provider_enrollment_cancel))
                }
            }
            Button(onClick = state::advance, enabled = state.selectedProvider != null) {
                Text(
                    androidx.compose.ui.res.stringResource(
                        if (state.origin == ProviderEnrollmentOrigin.FIRST_RUN) {
                            R.string.provider_onboarding_start
                        } else {
                            R.string.provider_enrollment_next
                        }
                    )
                )
            }
        }
    }
}

@Composable
private fun ProviderPickerRow(
    providerId: ProviderId,
    selected: Boolean,
    enabled: Boolean,
    onSelect: () -> Unit,
    modifier: Modifier = Modifier,
) {
    val colors = AIQuotaTheme.colors
    val accessibilityLabel = if (enabled) {
        providerId.displayName
    } else {
        androidx.compose.ui.res.stringResource(R.string.provider_picker_disabled_description, providerId.displayName)
    }
    Surface(
        modifier = modifier
            .fillMaxWidth()
            .heightIn(min = 56.dp)
            .clickable(enabled = enabled, role = Role.RadioButton, onClick = onSelect)
            .clearAndSetSemantics {
                role = Role.RadioButton
                this.selected = selected
                contentDescription = accessibilityLabel
                if (enabled) onClick { onSelect(); true } else disabled()
            },
        color = if (selected) colors.selectedNav else colors.content,
        border = BorderStroke(1.dp, if (selected) colors.primary else colors.borderSoft),
        shape = MaterialTheme.shapes.medium,
    ) {
        Row(
            modifier = Modifier.padding(horizontal = 12.dp, vertical = 8.dp),
            horizontalArrangement = Arrangement.spacedBy(12.dp),
            verticalAlignment = Alignment.CenterVertically,
        ) {
            ProviderIconImage(providerId, Modifier.size(40.dp).clearAndSetSemantics { })
            Column(modifier = Modifier.weight(1f)) {
                Text(providerId.displayName, fontWeight = FontWeight.SemiBold)
                if (!enabled) {
                    Text(
                        text = androidx.compose.ui.res.stringResource(R.string.provider_picker_already_added),
                        style = MaterialTheme.typography.bodySmall,
                        color = colors.textMuted,
                    )
                }
            }
            RadioButton(
                selected = selected,
                onClick = null,
                modifier = Modifier.clearAndSetSemantics { },
                enabled = enabled,
                colors = RadioButtonDefaults.colors(
                    selectedColor = colors.textPrimary,
                    unselectedColor = colors.textSecondary,
                ),
            )
        }
    }
}

private fun providerAvailable(
    providerId: ProviderId,
    existingAccountIds: Set<ProviderAccountId>,
): Boolean {
    val policy = ProviderCardCatalogPolicy.classify(providerId) as? ProviderCardProviderPolicy.Released
        ?: return false
    return policy.multiplicity == ProviderCardMultiplicity.UNLIMITED ||
        existingAccountIds.none { it.providerId == providerId }
}
