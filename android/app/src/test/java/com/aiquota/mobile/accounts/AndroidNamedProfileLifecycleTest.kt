package com.aiquota.mobile.accounts

import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class AndroidNamedProfileLifecycleTest {
    @Test
    fun `quiesce completes once the neutral page was served without any provider-side signal`() {
        val stale = QuiesceObservations(attempt = 1)
        val current = QuiesceObservations(attempt = 2)

        stale.recordRequest()

        assertTrue(stale.complete())
        assertFalse(current.complete())
    }
}
