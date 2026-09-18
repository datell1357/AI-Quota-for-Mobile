package com.aiquota.mobile.ui

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.verticalScroll
import androidx.compose.material3.AlertDialog
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.unit.dp
import com.aiquota.mobile.R

/** Only reached through the catalog's first-run enrollment state. No permission requests here. */
@Composable
internal fun ProviderWelcomeDialog(onContinue: () -> Unit, onSkip: () -> Unit) {
    AlertDialog(
        onDismissRequest = onSkip,
        containerColor = AIQuotaTheme.colors.panel,
        title = { Text(stringResource(R.string.onboarding_title)) },
        text = {
            Column(Modifier.verticalScroll(rememberScrollState()), verticalArrangement = Arrangement.spacedBy(16.dp)) {
                Text(stringResource(R.string.onboarding_intro))
                Text(stringResource(R.string.onboarding_connect))
                Text(stringResource(R.string.onboarding_widgets))
                Text(stringResource(R.string.onboarding_refresh))
            }
        },
        confirmButton = { TextButton(onClick = onContinue) { Text(stringResource(R.string.onboarding_choose)) } },
        dismissButton = { TextButton(onClick = onSkip) { Text(stringResource(R.string.provider_onboarding_later)) } },
    )
}
