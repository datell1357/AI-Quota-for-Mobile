package com.aiquota.mobile.ui

import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.saveable.Saver
import androidx.compose.runtime.setValue
import com.aiquota.mobile.local.ProviderId

enum class ProviderEnrollmentOrigin {
    FIRST_RUN,
    EXPLICIT_ADD,
}

enum class ProviderEnrollmentStep {
    PICKER,
    NAMING,
}

data class ProviderEnrollmentSubmission(
    val providerId: ProviderId,
    val optionalAlias: String?,
)

/**
 * First run lets the user tick several providers and creates one automatically named card per
 * tick; explicit Add picks exactly one provider and continues to the naming step.
 */
class ProviderEnrollmentState private constructor(
    visible: Boolean,
    origin: ProviderEnrollmentOrigin,
    step: ProviderEnrollmentStep,
    selectedProviders: Set<ProviderId>,
    alias: String,
    errorResource: Int?,
) {
    var visible by mutableStateOf(visible)
        private set
    var origin by mutableStateOf(origin)
        private set
    var step by mutableStateOf(step)
        private set
    var selectedProviders by mutableStateOf(selectedProviders)
        private set
    var alias by mutableStateOf(alias)
    var errorResource by mutableStateOf(errorResource)

    val multiSelect: Boolean get() = origin == ProviderEnrollmentOrigin.FIRST_RUN

    /** The single choice of an explicit Add; null while nothing (or several providers) is selected. */
    val selectedProvider: ProviderId? get() = selectedProviders.singleOrNull()

    fun openExplicitAdd() {
        visible = true
        origin = ProviderEnrollmentOrigin.EXPLICIT_ADD
        step = ProviderEnrollmentStep.PICKER
        selectedProviders = emptySet()
        alias = ""
        errorResource = null
    }

    fun select(providerId: ProviderId) {
        selectedProviders = when {
            !multiSelect -> setOf(providerId)
            providerId in selectedProviders -> selectedProviders - providerId
            else -> selectedProviders + providerId
        }
        errorResource = null
    }

    fun advance() {
        if (!multiSelect && selectedProvider != null) step = ProviderEnrollmentStep.NAMING
    }

    fun back() = close()

    fun close() {
        visible = false
        step = ProviderEnrollmentStep.PICKER
        selectedProviders = emptySet()
        alias = ""
        errorResource = null
    }

    fun submission(): ProviderEnrollmentSubmission? {
        val providerId = selectedProvider ?: return null
        return ProviderEnrollmentSubmission(
            providerId = providerId,
            optionalAlias = alias.takeUnless(String::isBlank),
        )
    }

    /** First-run cards are created with automatic aliases, in the picker's display order. */
    fun firstRunSubmissions(): List<ProviderEnrollmentSubmission> =
        ProviderId.defaultOrder()
            .filter { it in selectedProviders }
            .map { ProviderEnrollmentSubmission(it, optionalAlias = null) }

    fun savedState(): List<String> = listOf(
        visible.toString(),
        origin.name,
        step.name,
        selectedProviders.joinToString(",") { it.storageId },
        alias,
        errorResource?.toString().orEmpty(),
    )

    companion object {
        fun firstRun(): ProviderEnrollmentState = ProviderEnrollmentState(
            visible = true,
            origin = ProviderEnrollmentOrigin.FIRST_RUN,
            step = ProviderEnrollmentStep.PICKER,
            selectedProviders = emptySet(),
            alias = "",
            errorResource = null,
        )

        fun hidden(): ProviderEnrollmentState = ProviderEnrollmentState(
            visible = false,
            origin = ProviderEnrollmentOrigin.EXPLICIT_ADD,
            step = ProviderEnrollmentStep.PICKER,
            selectedProviders = emptySet(),
            alias = "",
            errorResource = null,
        )

        fun explicitAdd(): ProviderEnrollmentState = hidden().also {
            it.openExplicitAdd()
        }

        fun restore(values: List<String>): ProviderEnrollmentState = ProviderEnrollmentState(
            visible = values[0].toBooleanStrict(),
            origin = ProviderEnrollmentOrigin.valueOf(values[1]),
            step = ProviderEnrollmentStep.valueOf(values[2]),
            selectedProviders = values[3].split(',')
                .filter(String::isNotEmpty)
                .mapNotNull(ProviderId::fromStorageId)
                .toSet(),
            alias = values[4],
            errorResource = values[5].toIntOrNull(),
        )

        val Saver: Saver<ProviderEnrollmentState, List<String>> = Saver(
            save = { state -> state.savedState() },
            restore = ::restore,
        )
    }
}
