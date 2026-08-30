package com.aiquota.mobile.ui

import android.content.res.Configuration
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.imePadding
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.verticalScroll
import androidx.compose.material3.Button
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.OutlinedButton
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.DisposableEffect
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.remember
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.focus.FocusRequester
import androidx.compose.ui.focus.focusRequester
import androidx.compose.ui.platform.LocalConfiguration
import androidx.compose.ui.platform.LocalFocusManager
import androidx.compose.ui.platform.LocalSoftwareKeyboardController
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.semantics.LiveRegionMode
import androidx.compose.ui.semantics.error
import androidx.compose.ui.semantics.liveRegion
import androidx.compose.ui.semantics.semantics
import androidx.compose.ui.semantics.setText
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import com.aiquota.mobile.R
import com.aiquota.mobile.accounts.ProviderCardAddRejection
import com.aiquota.mobile.accounts.ProviderCardAddResult

@Composable
internal fun ProviderNamingStep(
    state: ProviderEnrollmentState,
    suggestedAlias: String,
    onSubmit: (ProviderEnrollmentSubmission) -> ProviderCardAddResult,
    onAdded: () -> Unit,
    contentPadding: Int,
    contentSpacing: Int,
) {
    val providerId = checkNotNull(state.selectedProvider)
    val errorMessage = state.errorResource?.let { stringResource(it) }
    val focusRequester = remember { FocusRequester() }
    val focusManager = LocalFocusManager.current
    val keyboardController = LocalSoftwareKeyboardController.current
    val scrollState = rememberScrollState()
    val landscapeLayout =
        LocalConfiguration.current.orientation == Configuration.ORIENTATION_LANDSCAPE
    LaunchedEffect(providerId) { focusRequester.requestFocus() }
    DisposableEffect(Unit) {
        onDispose {
            keyboardController?.hide()
            focusManager.clearFocus(force = true)
        }
    }
    val title: @Composable () -> Unit = {
        Text(
            text = stringResource(R.string.provider_naming_title, providerId.displayName),
            style = MaterialTheme.typography.titleLarge,
            fontWeight = FontWeight.Bold,
        )
    }
    val field: @Composable (Modifier) -> Unit = { modifier ->
        OutlinedTextField(
            value = state.alias,
            onValueChange = {
                state.alias = it
                state.errorResource = null
            },
            modifier = modifier
                .focusRequester(focusRequester)
                .semantics {
                    setText { value ->
                        state.alias = value.text
                        state.errorResource = null
                        true
                    }
                    if (errorMessage != null) error(errorMessage)
                },
            label = { Text(stringResource(R.string.provider_naming_label)) },
            supportingText = {
                Text(
                    text = errorMessage ?: stringResource(R.string.provider_naming_default, suggestedAlias),
                    modifier = if (errorMessage == null) {
                        Modifier
                    } else {
                        Modifier.semantics {
                            liveRegion = LiveRegionMode.Polite
                            error(errorMessage)
                        }
                    },
                )
            },
            isError = errorMessage != null,
            singleLine = true,
        )
    }
    val body: @Composable (Modifier) -> Unit = { modifier ->
        if (landscapeLayout) {
            Row(
                modifier = modifier,
                horizontalArrangement = Arrangement.spacedBy(contentSpacing.dp),
                verticalAlignment = Alignment.CenterVertically,
            ) {
                title()
                field(Modifier.weight(1f))
            }
        } else {
            Column(
                modifier = modifier,
                verticalArrangement = Arrangement.spacedBy(contentSpacing.dp),
            ) {
                title()
                field(Modifier.fillMaxWidth())
            }
        }
    }
    val actions: @Composable (Modifier) -> Unit = { modifier ->
        Row(
            modifier = modifier,
            horizontalArrangement = Arrangement.spacedBy(contentSpacing.dp, Alignment.End),
        ) {
            OutlinedButton(onClick = state::close) {
                Text(stringResource(R.string.provider_enrollment_cancel))
            }
            Button(onClick = {
                val submission = checkNotNull(state.submission())
                when (val result = onSubmit(submission)) {
                    is ProviderCardAddResult.Added -> {
                        focusManager.clearFocus(force = true)
                        keyboardController?.hide()
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
    Column(
        modifier = Modifier
            .imePadding()
            .padding(
                horizontal = contentPadding.dp,
                vertical = if (landscapeLayout) 0.dp else contentPadding.dp,
            ),
        verticalArrangement = Arrangement.spacedBy(contentSpacing.dp),
    ) {
        if (landscapeLayout) {
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.spacedBy(contentSpacing.dp),
                verticalAlignment = Alignment.Bottom,
            ) {
                body(Modifier.weight(1f).verticalScroll(scrollState))
                actions(Modifier)
            }
        } else {
            body(Modifier.weight(1f, fill = false).verticalScroll(scrollState))
            actions(Modifier.fillMaxWidth())
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
