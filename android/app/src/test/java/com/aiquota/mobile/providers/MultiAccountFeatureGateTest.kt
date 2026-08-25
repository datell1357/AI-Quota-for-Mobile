package com.aiquota.mobile.providers

import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class MultiAccountFeatureGateTest {
    @Test
    fun `enabled policy allows account entry points`() {
        val gate = MultiAccountFeatureGate { true }

        assertTrue(gate.allowsAddAccount())
        assertTrue(gate.allowsAccountRefresh())
    }

    @Test
    fun `disabled policy blocks account entry points`() {
        val gate = MultiAccountFeatureGate { false }

        assertFalse(gate.allowsAddAccount())
        assertFalse(gate.allowsAccountRefresh())
    }
}
