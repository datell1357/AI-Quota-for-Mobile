package com.aiquota.mobile.providers

import java.util.concurrent.atomic.AtomicInteger
import kotlinx.coroutines.CompletableDeferred
import kotlinx.coroutines.CoroutineStart
import kotlinx.coroutines.async
import kotlinx.coroutines.runBlocking
import kotlinx.coroutines.withTimeout
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertSame
import org.junit.Test

class ProviderAccountRefreshResourcesTest {
    @Test
    fun exactOperationsAreSerializedAndGateReleasesAfterCompletion() = runBlocking {
        val gate = ExactProviderCollectorOperationGate()
        val entered = CompletableDeferred<Unit>()
        val release = CompletableDeferred<Unit>()
        val running = AtomicInteger()
        val maximum = AtomicInteger()
        val first = async(start = CoroutineStart.UNDISPATCHED) {
            gate.withOperation {
                val current = running.incrementAndGet()
                maximum.updateAndGet { maxOf(it, current) }
                entered.complete(Unit)
                release.await()
                running.decrementAndGet()
            }
        }
        entered.await()
        val second = async(start = CoroutineStart.UNDISPATCHED) {
            gate.withOperation {
                val current = running.incrementAndGet()
                maximum.updateAndGet { maxOf(it, current) }
                running.decrementAndGet()
                "second"
            }
        }

        assertFalse(second.isCompleted)
        release.complete(Unit)
        first.await()
        assertEquals("second", withTimeout(1_000L) { second.await() })
        assertEquals(1, maximum.get())
        assertEquals(0, running.get())
    }

    @Test
    fun faultInjectedReauthenticationPersistenceDoesNotCancelAttempt() {
        var cancelled = false
        val failure = InjectedAuthorityFault()
        val authorityFaultInjector = { throw failure }

        try {
            persistReauthenticationThenCancel(
                persist = authorityFaultInjector,
                cancel = {
                    cancelled = true
                    null
                },
            )
        } catch (actual: InjectedAuthorityFault) {
            assertSame(failure, actual)
        }

        assertFalse(cancelled)
    }

    private class InjectedAuthorityFault : RuntimeException()
}
