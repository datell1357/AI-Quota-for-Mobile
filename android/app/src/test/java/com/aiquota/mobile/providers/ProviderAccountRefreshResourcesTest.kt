package com.aiquota.mobile.providers

import com.aiquota.mobile.accounts.AccountKey
import com.aiquota.mobile.accounts.LeaseCloseResult
import com.aiquota.mobile.accounts.ProviderAccountId
import com.aiquota.mobile.local.ProviderId
import java.util.concurrent.atomic.AtomicInteger
import kotlinx.coroutines.CompletableDeferred
import kotlinx.coroutines.CoroutineStart
import kotlinx.coroutines.awaitCancellation
import kotlinx.coroutines.async
import kotlinx.coroutines.launch
import kotlinx.coroutines.runBlocking
import kotlinx.coroutines.withTimeout
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNull
import org.junit.Assert.assertSame
import org.junit.Assert.assertTrue
import org.junit.Test

class ProviderAccountRefreshResourcesTest {
    @Test
    fun serviceShutdownClosesStoreOnlyAfterActiveCycleCleanup() = runBlocking {
        val events = mutableListOf<String>()
        val activeCycle = launch(start = CoroutineStart.UNDISPATCHED) {
            try {
                awaitCancellation()
            } finally {
                events += "lease-closed"
            }
        }

        closeAfterRefreshCycle(activeCycle) { events += "store-closed" }

        assertEquals(listOf("lease-closed", "store-closed"), events)
    }

    @Test
    fun failedCycleSchedulesQueuedManualWorkImmediately() = runBlocking {
        val scheduled = mutableListOf<Long>()
        val failure = InjectedAuthorityFault()

        runRefreshCycleResiliently(
            runCycle = { throw failure },
            isRunning = { true },
            hasPendingManualRefresh = { true },
            automaticDelayMillis = { 25L },
            schedule = scheduled::add,
            onFailure = { assertSame(failure, it) },
        )

        assertEquals(listOf(0L), scheduled)
    }

    @Test
    fun exactLeaseCloseRetriesTransientQuiesceFailure() = runBlocking {
        val results = ArrayDeque<LeaseCloseResult>().apply {
            addLast(LeaseCloseResult.RetryableFailure("renderer"))
            addLast(LeaseCloseResult.Closed)
        }
        var attempts = 0

        closeExactLeaseWithRetry { callback ->
            attempts++
            callback(results.removeFirst())
        }

        assertEquals(2, attempts)
    }

    @Test
    fun exactManualRefreshQueuePreservesDistinctPendingAccountsAndWidgetTargets() {
        val queue = ExactManualRefreshQueue()
        val first = account(1)
        val second = account(2)

        queue.enqueue(first, 101)
        queue.enqueue(second, 202)

        assertEquals(ExactManualRefreshRequest(first, 101), queue.poll())
        assertEquals(ExactManualRefreshRequest(second, 202), queue.poll())
        assertNull(queue.poll())
    }

    @Test
    fun exactManualRefreshQueuePreservesEveryWidgetTargetForTheSameAccount() {
        val queue = ExactManualRefreshQueue()
        val account = account(1)

        queue.enqueue(account, 101)
        queue.enqueue(account, 202)

        assertEquals(ExactManualRefreshRequest(account, 101), queue.poll())
        assertEquals(ExactManualRefreshRequest(account, 202), queue.poll())
        assertNull(queue.poll())
    }

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
    fun faultInjectedReauthenticationPersistenceAbortsCycleBeforeRethrowing() {
        var cancelled = false
        var aborted = false
        val failure = InjectedAuthorityFault()
        val authorityFaultInjector = { throw failure }

        try {
            persistReauthenticationThenCancel(
                persist = authorityFaultInjector,
                cancel = {
                    cancelled = true
                    null
                },
                abort = { aborted = true },
            )
        } catch (actual: InjectedAuthorityFault) {
            assertSame(failure, actual)
        }

        assertFalse(cancelled)
        assertTrue(aborted)
    }

    private fun account(index: Int) = ProviderAccountId(
        ProviderId.CODEX,
        AccountKey.parseOpaque("acct_${index.toString(16).padStart(32, '0')}"),
    )

    private class InjectedAuthorityFault : RuntimeException()
}
