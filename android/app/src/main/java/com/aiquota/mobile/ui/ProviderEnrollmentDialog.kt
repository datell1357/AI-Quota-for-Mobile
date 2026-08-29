package com.aiquota.mobile.ui

import android.content.res.Configuration
import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.border
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.heightIn
import androidx.compose.foundation.layout.widthIn
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.ModalBottomSheet
import androidx.compose.material3.Surface
import androidx.compose.material3.rememberModalBottomSheetState
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalConfiguration
import androidx.compose.ui.unit.dp
import androidx.compose.ui.window.Dialog
import androidx.compose.ui.window.DialogProperties
import com.aiquota.mobile.accounts.ProviderAccountId
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
        ProviderEnrollmentStep.PICKER -> ProviderPickerSheet(state, existingAccountIds, onLater)
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
        ProviderPickerStep(
            state = state,
            existingAccountIds = existingAccountIds,
            onLater = onLater,
            contentPadding = metrics.cardPaddingDp,
            contentSpacing = metrics.cardSpacingDp,
            modifier = Modifier.heightIn(min = sheetHeight, max = sheetHeight),
        )
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
        Surface(
            modifier = Modifier
                .fillMaxWidth()
                .widthIn(max = 560.dp)
                .heightIn(max = (screenHeight - 48).coerceAtLeast(320).dp),
            shape = providerEnrollmentDialogShape(colors.theme),
            color = colors.panel,
            shadowElevation = if (colors.theme == AppTheme.MACOS) 12.dp else 2.dp,
            border = BorderStroke(if (colors.theme == AppTheme.MACOS) 1.dp else 2.dp, colors.border),
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
