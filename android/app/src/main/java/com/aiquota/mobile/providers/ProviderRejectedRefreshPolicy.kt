package com.aiquota.mobile.providers

internal object ProviderRejectedRefreshPolicy {
    fun stopAfterRejectedRequest(running: Boolean, refreshInProgress: Boolean): Boolean =
        !running && !refreshInProgress
}
