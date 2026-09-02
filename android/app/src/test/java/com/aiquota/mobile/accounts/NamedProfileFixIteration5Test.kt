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
        assertTrue(
            NamedProfileRuntimePolicy.evaluate("com.android.webview", "999.0.0.0")
                is NamedProfileRuntimeDecision.Supported,
        )
    }

    @Test
    fun `runtime rejects negative missing overflow and extreme components`() {
        listOf(
                "-2147483648.0.0.0",
                "152.-1.7977.54",
                "152.0.7977",
                "152.0.7977.54.1",
                "152..7977.54",
                "152.0.2147483648.54",
                "999999999999999999999.0.0.0",
            )
            .forEach { version ->
                assertEquals(
                    version,
                    RuntimeSupportReason.VERSION_MALFORMED,
                    NamedProfileRuntimePolicy.evaluate("com.google.android.webview", version)
                        .reason,
                )
            }
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
