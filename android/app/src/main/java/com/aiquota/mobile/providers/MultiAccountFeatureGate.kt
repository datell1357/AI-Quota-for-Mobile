package com.aiquota.mobile.providers

import com.aiquota.mobile.BuildConfig

/**
 * Single policy seam for future multi-account entry points.
 *
 * The default reads the build-type flag; tests and callers can inject a policy
 * to keep the decision independent from Android framework state.
 */
class MultiAccountFeatureGate(
    private val isEnabled: () -> Boolean = { BuildConfig.MULTI_ACCOUNT_ENABLED }
) {
    fun allowsAddAccount(): Boolean = isEnabled()

    fun allowsAccountRefresh(): Boolean = isEnabled()
}
