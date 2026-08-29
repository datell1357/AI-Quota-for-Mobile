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

class ProviderEnrollmentState private constructor(
    visible: Boolean,
    origin: ProviderEnrollmentOrigin,
    step: ProviderEnrollmentStep,
    selectedProvider: ProviderId?,
    alias: String,
    errorResource: Int?,
) {
    var visible by mutableStateOf(visible)
        private set
    var origin by mutableStateOf(origin)
        private set
    var step by mutableStateOf(step)
        private set
    var selectedProvider by mutableStateOf(selectedProvider)
        private set
    var alias by mutableStateOf(alias)
    var errorResource by mutableStateOf(errorResource)

    fun openExplicitAdd() {
        visible = true
        origin = ProviderEnrollmentOrigin.EXPLICIT_ADD
        step = ProviderEnrollmentStep.PICKER
        selectedProvider = null
        alias = ""
        errorResource = null
    }

    fun select(providerId: ProviderId) {
        selectedProvider = providerId
        errorResource = null
    }

    fun advance() {
        if (selectedProvider != null) step = ProviderEnrollmentStep.NAMING
    }

    fun back() = close()

    fun close() {
        visible = false
        step = ProviderEnrollmentStep.PICKER
        selectedProvider = null
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

    fun savedState(): List<String> = listOf(
        visible.toString(),
        origin.name,
        step.name,
        selectedProvider?.storageId.orEmpty(),
        alias,
        errorResource?.toString().orEmpty(),
    )

    companion object {
        fun firstRun(): ProviderEnrollmentState = ProviderEnrollmentState(
            visible = true,
            origin = ProviderEnrollmentOrigin.FIRST_RUN,
            step = ProviderEnrollmentStep.PICKER,
            selectedProvider = null,
            alias = "",
            errorResource = null,
        )

        fun hidden(): ProviderEnrollmentState = ProviderEnrollmentState(
            visible = false,
            origin = ProviderEnrollmentOrigin.EXPLICIT_ADD,
            step = ProviderEnrollmentStep.PICKER,
            selectedProvider = null,
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
            selectedProvider = ProviderId.fromStorageId(values[3]),
            alias = values[4],
            errorResource = values[5].toIntOrNull(),
        )

        val Saver: Saver<ProviderEnrollmentState, List<String>> = Saver(
            save = { state -> state.savedState() },
            restore = ::restore,
        )
    }
}
