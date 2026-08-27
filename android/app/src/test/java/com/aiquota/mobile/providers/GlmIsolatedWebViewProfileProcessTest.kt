package com.aiquota.mobile.providers

import com.aiquota.mobile.ProcessNameCandidate
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Test

class GlmIsolatedWebViewProfileProcessTest {
    @Test
    fun `api 26 and 27 glm isolation rejects a same pid process from another uid`() {
        var modernCalls = 0

        listOf(26, 27).forEach { sdkInt ->
            val isIsolated =
                GlmIsolatedWebViewProfile.isGlmIsolatedProcess(
                    sdkInt = sdkInt,
                    currentPid = 42,
                    currentUid = 1001,
                    candidates = {
                        listOf(
                            ProcessNameCandidate(42, 1002, "com.aiquota.mobile:glm_webview"),
                            ProcessNameCandidate(42, 1001, "com.aiquota.mobile"),
                        )
                    },
                    modernProcessName = {
                        modernCalls++
                        "com.aiquota.mobile:glm_webview"
                    },
                )

            assertFalse("SDK $sdkInt selected another UID's process", isIsolated)
        }

        assertEquals(0, modernCalls)
    }
}
