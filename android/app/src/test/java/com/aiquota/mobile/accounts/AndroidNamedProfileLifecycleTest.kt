package com.aiquota.mobile.accounts

import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class AndroidNamedProfileLifecycleTest {
    @Test
    fun `stale observations cannot complete a newer quiesce attempt`() {
        val stale = QuiesceObservations(attempt = 1)
        stale.recordRequest()

        val current = QuiesceObservations(attempt = 2)
        stale.recordBeacon()

        assertTrue(stale.complete())
        assertFalse(current.complete())
    }
}
