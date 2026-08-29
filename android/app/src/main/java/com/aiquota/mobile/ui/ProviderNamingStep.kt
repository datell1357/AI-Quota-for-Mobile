package com.aiquota.mobile.ui

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.Button
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.OutlinedButton
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.semantics.LiveRegionMode
import androidx.compose.ui.semantics.liveRegion
import androidx.compose.ui.semantics.semantics
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import com.aiquota.mobile.R
import com.aiquota.mobile.accounts.ProviderCardAddRejection
import com.aiquota.mobile.accounts.ProviderCardAddResult

@Composable
internal fun ProviderNamingStep(
    state: ProviderEnrollmentState,
    onSubmit: (ProviderEnrollmentSubmission) -> ProviderCardAddResult,
    onAdded: () -> Unit,
    contentPadding: Int,
    contentSpacing: Int,
) {
    val providerId = checkNotNull(state.selectedProvider)
    Column(
        modifier = Modifier.padding(contentPadding.dp),
        verticalArrangement = Arrangement.spacedBy(contentSpacing.dp),
    ) {
        Text(
            text = stringResource(R.string.provider_naming_title, providerId.displayName),
            style = MaterialTheme.typography.titleLarge,
            fontWeight = FontWeight.Bold,
        )
        OutlinedTextField(
            value = state.alias,
            onValueChange = {
                state.alias = it
                state.errorResource = null
            },
            modifier = Modifier.fillMaxWidth(),
            label = { Text(stringResource(R.string.provider_naming_label)) },
            supportingText = {
                val error = state.errorResource
                Text(
                    text = if (error == null) {
                        stringResource(R.string.provider_naming_default, providerId.displayName)
                    } else {
                        stringResource(error)
                    },
                    modifier = if (error == null) Modifier else Modifier.semantics {
                        liveRegion = LiveRegionMode.Polite
                    },
                )
            },
            isError = state.errorResource != null,
            singleLine = true,
        )
        Row(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.spacedBy(contentSpacing.dp, Alignment.End),
        ) {
            OutlinedButton(onClick = state::close) {
                Text(stringResource(R.string.provider_enrollment_cancel))
            }
            Button(onClick = {
                val submission = checkNotNull(state.submission())
                when (val result = onSubmit(submission)) {
                    is ProviderCardAddResult.Added -> {
                        state.close()
                        onAdded()
                    }
                    is ProviderCardAddResult.Rejected -> {
                        state.errorResource = providerEnrollmentErrorResource(result.rejection)
                    }
                }
            }) {
                Text(stringResource(R.string.provider_enrollment_add))
            }
        }
    }
}

private fun providerEnrollmentErrorResource(rejection: ProviderCardAddRejection): Int = when (rejection) {
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
