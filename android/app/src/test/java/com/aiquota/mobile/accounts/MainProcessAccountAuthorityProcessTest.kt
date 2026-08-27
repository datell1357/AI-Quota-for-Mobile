package com.aiquota.mobile.accounts

import com.aiquota.mobile.ProcessNameCandidate
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class MainProcessAccountAuthorityProcessTest {
    @Test
    fun `api 26 authority requires the exact current pid and uid`() {
        assertExactLegacyIdentity(sdkInt = 26)
    }

    @Test
    fun `api 27 authority requires the exact current pid and uid`() {
        assertExactLegacyIdentity(sdkInt = 27)
    }

    private fun assertExactLegacyIdentity(sdkInt: Int) {
        var modernCalls = 0

        val isMainProcess =
            MainProcessAccountAuthority.isMainProcess(
                expectedProcessName = "com.aiquota.mobile",
                sdkInt = sdkInt,
                currentPid = 42,
                currentUid = 1001,
                candidates = {
                    listOf(
                        ProcessNameCandidate(42, 1002, "wrong.uid"),
                        ProcessNameCandidate(43, 1001, "wrong.pid"),
                        ProcessNameCandidate(42, 1001, "com.aiquota.mobile"),
                    )
                },
                modernProcessName = {
                    modernCalls++
                    "wrong.modern"
                },
            )

        assertTrue(isMainProcess)
        assertEquals(0, modernCalls)
    }
}
