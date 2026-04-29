package com.aiusage.mobile.sync

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.launch

sealed interface PairingCodeUiState {
    data object Idle : PairingCodeUiState
    data object Loading : PairingCodeUiState
    data class Ready(val code: String, val expiresAt: String, val helperText: String) : PairingCodeUiState
    data class Failed(val message: String) : PairingCodeUiState
}

class PairingCodeViewModel(
    private val apiClient: AIUsageApiClient
) : ViewModel() {
    private val mutableState = MutableStateFlow<PairingCodeUiState>(PairingCodeUiState.Idle)
    val state: StateFlow<PairingCodeUiState> = mutableState.asStateFlow()

    fun generate(idToken: String) {
        mutableState.value = PairingCodeUiState.Loading
        viewModelScope.launch {
            try {
                val response = apiClient.createPairingCode(idToken)
                mutableState.value = PairingCodeUiState.Ready(
                    code = response.displayCode,
                    expiresAt = response.expiresAt,
                    helperText = "Expires in 10:00"
                )
            } catch (error: Throwable) {
                mutableState.value = PairingCodeUiState.Failed("Could not generate PC link code")
            }
        }
    }
}

