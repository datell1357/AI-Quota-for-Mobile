package com.aiquota.mobile.accounts

import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class NamedProfileFixIteration5Test {
    @Test
    fun `runtime floor rejects builds older than multi-profile support and accepts the rest`() {
        assertEquals(
            RuntimeSupportReason.VERSION_BELOW_SAFE_FLOOR,
            NamedProfileRuntimePolicy.evaluate("com.google.android.webview", "113.0.5672.163")
                .reason,
        )
        assertTrue(
            NamedProfileRuntimePolicy.evaluate("com.google.android.webview", "114.0.0.0")
                is NamedProfileRuntimeDecision.Supported
        )
        // 오늘 실제로 쓰이는 빌드가 통과해야 한다. 하한이 미출시 버전이면 어떤 기기에서도
        // 두 번째 카드를 만들 수 없다(2026-09-04 실측 회귀).
        assertTrue(
            NamedProfileRuntimePolicy.evaluate("com.google.android.webview", "145.0.7632.218")
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
