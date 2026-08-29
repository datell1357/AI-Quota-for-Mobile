package com.aiquota.mobile.ui

import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.heightIn
import androidx.compose.foundation.layout.widthIn
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.Surface
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalConfiguration
import androidx.compose.ui.unit.dp
import androidx.compose.ui.window.Dialog
import androidx.compose.ui.window.DialogProperties
import com.aiquota.mobile.accounts.ProviderAccountId
import com.aiquota.mobile.accounts.ProviderCardAddResult
import com.aiquota.mobile.local.AppTheme

@Composable
fun ProviderEnrollmentDialog(
    state: ProviderEnrollmentState,
    existingAccountIds: Set<ProviderAccountId>,
    onLater: () -> Unit,
    onSubmit: (ProviderEnrollmentSubmission) -> ProviderCardAddResult,
    onAdded: () -> Unit,
) {
    if (!state.visible) return
    val colors = AIQuotaTheme.colors
    val metrics = rememberAppLayoutMetrics()
    val screenHeight = LocalConfiguration.current.screenHeightDp
    Dialog(
        onDismissRequest = state::close,
        properties = DialogProperties(
            dismissOnBackPress = true,
            dismissOnClickOutside = true,
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
            when (state.step) {
                ProviderEnrollmentStep.PICKER -> ProviderPickerStep(
                    state = state,
                    existingAccountIds = existingAccountIds,
                    onLater = onLater,
                    contentPadding = metrics.cardPaddingDp,
                    contentSpacing = metrics.cardSpacingDp,
                )
                ProviderEnrollmentStep.NAMING -> ProviderNamingStep(
                    state = state,
                    onSubmit = onSubmit,
                    onAdded = onAdded,
                    contentPadding = metrics.cardPaddingDp,
                    contentSpacing = metrics.cardSpacingDp,
                )
            }
        }
    }
}

internal fun providerEnrollmentDialogShape(theme: AppTheme): RoundedCornerShape =
    RoundedCornerShape(if (theme == AppTheme.MACOS) 16.dp else 2.dp)
