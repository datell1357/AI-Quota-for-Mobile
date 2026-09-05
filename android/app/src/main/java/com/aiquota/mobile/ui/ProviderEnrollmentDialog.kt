package com.aiquota.mobile.ui

import android.content.res.Configuration
import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.border
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.heightIn
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.widthIn
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.ModalBottomSheet
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.material3.rememberModalBottomSheetState
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalConfiguration
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.semantics.LiveRegionMode
import androidx.compose.ui.semantics.error
import androidx.compose.ui.semantics.liveRegion
import androidx.compose.ui.semantics.semantics
import androidx.compose.ui.unit.dp
import androidx.compose.ui.window.Dialog
import androidx.compose.ui.window.DialogProperties
import com.aiquota.mobile.accounts.ProviderAccountId
import com.aiquota.mobile.R
import com.aiquota.mobile.accounts.ProviderCardAddRejection
import com.aiquota.mobile.accounts.ProviderCardAddResult
import com.aiquota.mobile.local.AppTheme
import com.aiquota.mobile.local.ProviderId

@Composable
fun ProviderEnrollmentDialog(
    state: ProviderEnrollmentState,
    existingAccountIds: Set<ProviderAccountId>,
    onLater: () -> Unit,
    suggestedAlias: (ProviderId) -> String?,
    onSubmit: (ProviderEnrollmentSubmission) -> ProviderCardAddResult,
    onAdded: () -> Unit,
) {
    if (!state.visible) return
    when (state.step) {
        ProviderEnrollmentStep.PICKER -> ProviderPickerSheet(
            state = state,
            existingAccountIds = existingAccountIds,
            onLater = onLater,
            onStart = {
                val rejections = state.bulkSubmissions().mapNotNull { submission ->
                    when (val result = onSubmit(submission)) {
                        is ProviderCardAddResult.Added -> {
                            state.select(submission.providerId)
                            null
                        }
                        is ProviderCardAddResult.Rejected -> result.rejection
                    }
                }
                if (rejections.isEmpty()) {
                    state.close()
                    onAdded()
                } else {
                    state.errorResource = bulkProviderEnrollmentErrorResource(rejections.first())
                }
            },
        )
        ProviderEnrollmentStep.NAMING -> ProviderNamingDialog(
            state = state,
            suggestedAlias = suggestedAlias(checkNotNull(state.selectedProvider))
                ?: checkNotNull(state.selectedProvider).displayName,
            onSubmit = onSubmit,
            onAdded = onAdded,
        )
    }
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
private fun ProviderPickerSheet(
    state: ProviderEnrollmentState,
    existingAccountIds: Set<ProviderAccountId>,
    onLater: () -> Unit,
    onStart: () -> Unit,
) {
    val colors = AIQuotaTheme.colors
    val metrics = rememberAppLayoutMetrics()
    val shape = providerEnrollmentSheetShape(colors.theme)
    val sheetHeight = (LocalConfiguration.current.screenHeightDp - 48).coerceAtLeast(320).dp
    ModalBottomSheet(
        onDismissRequest = state::close,
        modifier = Modifier.border(
            width = if (colors.theme == AppTheme.MACOS) 1.dp else 2.dp,
            color = colors.border,
            shape = shape,
        ),
        sheetState = rememberModalBottomSheetState(skipPartiallyExpanded = true),
        shape = shape,
        containerColor = colors.panel,
        tonalElevation = 0.dp,
    ) {
        AIQuotaWindowFrame(
            title = stringResource(R.string.provider_picker_title),
            modifier = Modifier
                .padding(horizontal = 8.dp, vertical = 8.dp)
                .heightIn(min = sheetHeight, max = sheetHeight),
        ) {
            val errorMessage = state.errorResource?.let { stringResource(it) }
            if (errorMessage != null) {
                Text(
                    text = errorMessage,
                    modifier = Modifier
                        .fillMaxWidth()
                        .padding(horizontal = metrics.cardPaddingDp.dp)
                        .semantics {
                            liveRegion = LiveRegionMode.Polite
                            error(errorMessage)
                        },
                    color = MaterialTheme.colorScheme.error,
                )
            }
            ProviderPickerStep(
                state = state,
                existingAccountIds = existingAccountIds,
                onLater = onLater,
                onStart = onStart,
                contentPadding = metrics.cardPaddingDp,
                contentSpacing = metrics.cardSpacingDp,
                modifier = Modifier.fillMaxWidth().weight(1f),
            )
        }
    }
}

@Composable
private fun ProviderNamingDialog(
    state: ProviderEnrollmentState,
    suggestedAlias: String,
    onSubmit: (ProviderEnrollmentSubmission) -> ProviderCardAddResult,
    onAdded: () -> Unit,
) {
    val colors = AIQuotaTheme.colors
    val metrics = rememberAppLayoutMetrics()
    val configuration = LocalConfiguration.current
    val screenHeight = configuration.screenHeightDp
    val isLandscape = configuration.orientation == Configuration.ORIENTATION_LANDSCAPE
    Dialog(
        onDismissRequest = state::close,
        properties = DialogProperties(
            dismissOnBackPress = true,
            dismissOnClickOutside = true,
            usePlatformDefaultWidth = !isLandscape,
        ),
    ) {
        AIQuotaWindowFrame(
            title = stringResource(
                R.string.provider_naming_title,
                checkNotNull(state.selectedProvider).displayName,
            ),
            modifier = Modifier
                .fillMaxWidth()
                .widthIn(max = 560.dp)
                .heightIn(max = (screenHeight - 48).coerceAtLeast(320).dp),
        ) {
            ProviderNamingStep(
                state = state,
                suggestedAlias = suggestedAlias,
                onSubmit = onSubmit,
                onAdded = onAdded,
                contentPadding = metrics.cardPaddingDp,
                contentSpacing = metrics.cardSpacingDp,
            )
        }
    }
}

internal fun providerEnrollmentDialogShape(theme: AppTheme): RoundedCornerShape =
    RoundedCornerShape(if (theme == AppTheme.MACOS) 16.dp else 2.dp)

internal fun providerEnrollmentSheetShape(theme: AppTheme): RoundedCornerShape = RoundedCornerShape(
    topStart = if (theme == AppTheme.MACOS) 16.dp else 2.dp,
    topEnd = if (theme == AppTheme.MACOS) 16.dp else 2.dp,
)

private fun bulkProviderEnrollmentErrorResource(rejection: ProviderCardAddRejection): Int = when (rejection) {
    is ProviderCardAddRejection.UnsupportedProvider -> R.string.provider_enrollment_error_unavailable
    is ProviderCardAddRejection.MultiplicityExceeded -> R.string.provider_enrollment_error_already_added
    is ProviderCardAddRejection.AliasConflict -> R.string.provider_enrollment_error_alias_conflict
    is ProviderCardAddRejection.AliasValidation -> when (rejection.reason) {
        com.aiquota.mobile.accounts.ProviderCardAliasValidationReason.BLANK ->
            R.string.provider_enrollment_error_blank
        com.aiquota.mobile.accounts.ProviderCardAliasValidationReason.TOO_LONG ->
            R.string.provider_enrollment_error_too_long
        com.aiquota.mobile.accounts.ProviderCardAliasValidationReason.CONTROL_CHARACTER ->
            R.string.provider_enrollment_error_control_character
    }
}
