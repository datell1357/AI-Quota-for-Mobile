package com.aiquota.mobile

import org.junit.Assert.assertEquals
import org.junit.Test

class AIQuotaApplicationProcessTest {
    @Test
    fun `api 26 uses the legacy provider without invoking the modern api`() {
        val processName = selectCurrentProcessName(
            sdkInt = 26,
            currentPid = 42,
            currentUid = 1001,
            candidates = {
                listOf(ProcessNameCandidate(42, 1001, "com.aiquota.mobile"))
            },
            modernProcessName = { throw AssertionError("API 28 provider invoked on API 26") },
        )

        assertEquals("com.aiquota.mobile", processName)
    }

    @Test
    fun `legacy lookup matches the exact current pid and uid`() {
        val processName = selectExactProcessName(
            currentPid = 42,
            currentUid = 1001,
            candidates = listOf(
                ProcessNameCandidate(pid = 42, uid = 1002, processName = "wrong.uid"),
                ProcessNameCandidate(pid = 43, uid = 1001, processName = "wrong.pid"),
                ProcessNameCandidate(pid = 42, uid = 1001, processName = "com.aiquota.mobile"),
            ),
        )

        assertEquals("com.aiquota.mobile", processName)
    }
}
