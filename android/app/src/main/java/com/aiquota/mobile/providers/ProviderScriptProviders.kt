package com.aiquota.mobile.providers

import com.aiquota.mobile.local.ProviderId

data class ProviderStoreNames(
    val accountData: String,
    val usageData: String,
    val scriptData: String
)

data class ProviderScriptMetadata(
    val providerId: ProviderId,
    val version: String,
    val stores: ProviderStoreNames
)

object ProviderScriptProviders {
    fun metadataFor(providerId: ProviderId): ProviderScriptMetadata {
        return ProviderScriptMetadata(
            providerId = providerId,
            version = scriptVersionFor(providerId),
            stores = storeNamesFor(providerId)
        )
    }

    fun storeNamesFor(providerId: ProviderId): ProviderStoreNames {
        return ProviderStoreNames(
            accountData = "account_data_${providerId.storageId}",
            usageData = "usage_data_${providerId.storageId}",
            scriptData = "script_data_${providerId.storageId}"
        )
    }

    private fun scriptVersionFor(providerId: ProviderId): String {
        return when (providerId) {
            ProviderId.CLAUDE -> "a260503"
            ProviderId.COPILOT -> "b260503"
            ProviderId.CODEX -> "e260503"
            ProviderId.GLM -> "glm260617-web"
            ProviderId.OPENCODE -> "opencode260701-native"
            ProviderId.GEMINI -> "d260503"
            ProviderId.ANTIGRAVITY -> "c260503"
            ProviderId.CURSOR -> "cursor-local"
            ProviderId.GROK -> "grok-local"
            ProviderId.KIMI -> "kimi-local"
            ProviderId.KIRO -> "kiro-local"
        }
    }
}
