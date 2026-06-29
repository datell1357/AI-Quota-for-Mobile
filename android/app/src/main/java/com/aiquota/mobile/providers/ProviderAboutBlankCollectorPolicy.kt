package com.aiquota.mobile.providers

import com.aiquota.mobile.local.ProviderId

object ProviderAboutBlankCollectorPolicy {
    fun isEnabled(providerId: ProviderId): Boolean {
        return false
    }
}
