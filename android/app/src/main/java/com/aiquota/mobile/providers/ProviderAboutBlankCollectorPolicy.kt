package com.aiquota.mobile.providers

import com.aiquota.mobile.local.ProviderId

object ProviderAboutBlankCollectorPolicy {
    fun isEnabled(providerId: ProviderId): Boolean {
        return providerId == ProviderId.CLAUDE ||
            providerId == ProviderId.CODEX ||
            providerId == ProviderId.GEMINI ||
            providerId == ProviderId.COPILOT ||
            providerId == ProviderId.GLM ||
            providerId == ProviderId.OPENCODE ||
            providerId == ProviderId.CURSOR
    }
}
