package com.aiquota.mobile.ui

import android.content.Context
import androidx.compose.runtime.Composable
import androidx.compose.runtime.DisposableEffect
import androidx.compose.runtime.remember
import androidx.compose.runtime.saveable.rememberSaveable
import com.aiquota.mobile.accounts.ProviderCardAddResult
import com.aiquota.mobile.accounts.ProviderCardCatalog

internal class ProviderEnrollmentRuntime(
    val state: ProviderEnrollmentState,
    private val catalog: ProviderCardCatalog,
    private val cardRuntime: ProviderCardShellRuntime,
) {
    fun openExplicitAdd() = state.openExplicitAdd()

    @Composable
    fun Content() {
        ProviderEnrollmentDialog(
            state = state,
            existingAccountIds = cardRuntime.state.catalog.cards
                .mapTo(mutableSetOf()) { it.accountId },
            onLater = { catalog.skipOnboarding() },
            suggestedAlias = catalog::suggestAlias,
            onSubmit = { submission ->
                catalog.add(submission.providerId, submission.optionalAlias).also { result ->
                    if (result is ProviderCardAddResult.Added) catalog.completeOnboarding()
                    cardRuntime.reload()
                }
            },
            onAdded = {},
        )
    }
}

@Composable
internal fun rememberProviderEnrollmentRuntime(
    context: Context,
    cardRuntime: ProviderCardShellRuntime,
): ProviderEnrollmentRuntime? {
    val catalog = remember(context, cardRuntime.enabled) {
        if (cardRuntime.enabled) ProviderCardCatalog.open(context) else null
    }
    val state = rememberSaveable(saver = ProviderEnrollmentState.Saver) {
        if (catalog?.initializationState()?.showFirstRunProviderPicker == true) {
            ProviderEnrollmentState.firstRun()
        } else {
            ProviderEnrollmentState.hidden()
        }
    }
    DisposableEffect(catalog) {
        onDispose { catalog?.close() }
    }
    return remember(catalog, cardRuntime, state) {
        catalog?.let { ProviderEnrollmentRuntime(state, it, cardRuntime) }
    }
}
