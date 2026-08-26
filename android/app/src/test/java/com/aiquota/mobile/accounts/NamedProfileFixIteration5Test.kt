package com.aiquota.mobile.accounts

import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class NamedProfileFixIteration5Test {
    @Test
    fun `runtime floor rejects 151 and accepts exact floor and newer`() {
        assertEquals(
            RuntimeSupportReason.VERSION_BELOW_SAFE_FLOOR,
            NamedProfileRuntimePolicy.evaluate("com.google.android.webview", "151.0.7922.169")
                .reason,
        )
        assertTrue(
            NamedProfileRuntimePolicy.evaluate("com.google.android.webview", "152.0.7977.54")
                is NamedProfileRuntimeDecision.Supported
        )
        assertTrue(
            NamedProfileRuntimePolicy.evaluate("com.google.android.webview", "152.0.7977.55")
                is NamedProfileRuntimeDecision.Supported
        )
        assertTrue(
            NamedProfileRuntimePolicy.evaluate("com.google.android.webview", "153.0.8000.1")
                is NamedProfileRuntimeDecision.Supported
        )
    }

    @Test
    fun `runtime rejects malformed missing and non Google providers`() {
        assertEquals(
            RuntimeSupportReason.PROVIDER_MISSING,
            NamedProfileRuntimePolicy.evaluate(null, null).reason,
        )
        assertEquals(
            RuntimeSupportReason.VERSION_MALFORMED,
            NamedProfileRuntimePolicy.evaluate("com.google.android.webview", "152.bad").reason,
        )
        assertEquals(
            RuntimeSupportReason.PROVIDER_UNVERIFIED,
            NamedProfileRuntimePolicy.evaluate("com.android.webview", "999.0.0.0").reason,
        )
    }

    @Test
    fun `double probe flip rejects with zero mutation`() {
        var mutations = 0
        val values =
            ArrayDeque(
                listOf(
                    NamedProfileCapability.Supported(
                        WebViewProviderIdentity("com.google.android.webview", "152.0.7977.54")
                    ),
                    NamedProfileCapability.Supported(
                        WebViewProviderIdentity("com.google.android.webview", "153.0.8000.1")
                    ),
                )
            )
        val result =
            NamedProfileEnrollmentCoordinator({}, { values.removeFirst() }).enroll(1) {
                mutations++
            }
        assertEquals(
            EnrollmentFailureReason.PROVIDER_CHANGED,
            (result as EnrollmentCoordinationResult.Rejected).reason,
        )
        assertEquals(0, mutations)
    }
}
