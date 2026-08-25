package com.aiquota.mobile.accounts

import java.util.concurrent.CopyOnWriteArrayList
import java.util.concurrent.CountDownLatch
import java.util.concurrent.Executors
import java.util.concurrent.TimeUnit
import java.util.concurrent.atomic.AtomicBoolean
import java.util.concurrent.locks.ReentrantLock
import org.junit.Assert.assertArrayEquals
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNull
import org.junit.Assert.assertThrows
import org.junit.Assert.assertTrue
import org.junit.Test

class AccountCredentialVaultConcurrencyTest {
    @Test
    fun twoProductionFactoryVaultsObserveSharedContentionBeforePutThenDelete() {
        val store = CausalEnvelopeStore(blockFirstWrite = true)
        val crypto = FakeCredentialVaultCrypto()
        val secondAttempt = LockAttemptRecorder()
        val vault1 = ProcessAccountCredentialVaultFactory.create(store, crypto)
        val vault2 = ProcessAccountCredentialVaultFactory.create(store, crypto, secondAttempt)
        val binding = vaultBinding()
        val bundle = vaultBundle("concurrent-put-delete")
        val executor = Executors.newFixedThreadPool(2)

        try {
            val put = executor.submit<Boolean> { vault1.put(binding, bundle) }
            store.awaitFirstWriteStarted()
            val delete = executor.submit<Boolean> { vault2.delete(binding.accountId) }
            requireSharedContention(secondAttempt.awaitOnlyAttempt())
            store.releaseFirstWrite()

            assertTrue(put.get(TIMEOUT_SECONDS, TimeUnit.SECONDS))
            assertTrue(delete.get(TIMEOUT_SECONDS, TimeUnit.SECONDS))
            assertEquals(listOf(MutationEvent.WRITE, MutationEvent.REMOVE), store.mutationEvents())
            assertTrue(vault1.isAbsent(binding.accountId))
        } finally {
            store.releaseFirstWrite()
            executor.shutdownNow()
            assertTrue(executor.awaitTermination(TIMEOUT_SECONDS, TimeUnit.SECONDS))
        }
    }

    @Test
    fun twoProductionFactoryVaultsObserveSharedContentionAndCreateOneFirstKey() {
        val store = CausalEnvelopeStore(blockFirstWrite = false)
        val binding = vaultBinding()
        val delegateCrypto = FakeCredentialVaultCrypto()
        val crypto = BlockingFirstEncryptCrypto(delegateCrypto)
        val secondAttempt = LockAttemptRecorder()
        val vault1 = ProcessAccountCredentialVaultFactory.create(store, crypto)
        val vault2 = ProcessAccountCredentialVaultFactory.create(store, crypto, secondAttempt)
        val firstBundle = vaultBundle("first-create-a")
        val secondBundle = vaultBundle("first-create-b")
        val executor = Executors.newFixedThreadPool(2)

        try {
            val first = executor.submit<Boolean> { vault1.put(binding, firstBundle) }
            crypto.awaitFirstEncryptStarted()
            val second = executor.submit<Boolean> { vault2.put(binding, secondBundle) }
            requireSharedContention(secondAttempt.awaitOnlyAttempt())
            crypto.releaseFirstEncrypt()

            assertTrue(first.get(TIMEOUT_SECONDS, TimeUnit.SECONDS))
            assertTrue(second.get(TIMEOUT_SECONDS, TimeUnit.SECONDS))
            assertEquals(listOf(MutationEvent.WRITE, MutationEvent.WRITE), store.mutationEvents())
            assertEquals(1, delegateCrypto.keyCreationCount(binding.accountId))
            val finalEnvelope = requireNotNull(vault1.lookup(binding.accountId))
            assertArrayEquals(store.lastWrittenEnvelope(), finalEnvelope.encodedBytes())
            val decrypted = requireNotNull(vault1.decrypt(binding))
            assertTrue(firstBundle.contentEquals(decrypted) || secondBundle.contentEquals(decrypted))
        } finally {
            crypto.releaseFirstEncrypt()
            executor.shutdownNow()
            assertTrue(executor.awaitTermination(TIMEOUT_SECONDS, TimeUnit.SECONDS))
        }
    }

    @Test
    fun separateLocksReportUncontendedAttemptAndFailSharedContentionRequirement() {
        val store = CausalEnvelopeStore(blockFirstWrite = true)
        val crypto = FakeCredentialVaultCrypto()
        val secondAttempt = LockAttemptRecorder()
        val vault1 = AccountCredentialVault(
            store,
            crypto,
            ReentrantCredentialVaultOperationLock(ReentrantLock()),
        )
        val vault2 = AccountCredentialVault(
            store,
            crypto,
            ReentrantCredentialVaultOperationLock(ReentrantLock(), secondAttempt),
        )
        val binding = vaultBinding()
        val executor = Executors.newFixedThreadPool(2)

        try {
            val put = executor.submit<Boolean> { vault1.put(binding, vaultBundle("negative-control")) }
            store.awaitFirstWriteStarted()
            val delete = executor.submit<Boolean> { vault2.delete(binding.accountId) }
            val contended = secondAttempt.awaitOnlyAttempt()

            assertFalse(contended)
            assertThrows(IllegalArgumentException::class.java) { requireSharedContention(contended) }
            assertTrue(delete.get(TIMEOUT_SECONDS, TimeUnit.SECONDS))
            assertEquals(listOf(MutationEvent.REMOVE), store.mutationEvents())
            store.releaseFirstWrite()
            assertTrue(put.get(TIMEOUT_SECONDS, TimeUnit.SECONDS))
            assertEquals(listOf(MutationEvent.REMOVE, MutationEvent.WRITE), store.mutationEvents())
            assertTrue(vault1.lookup(binding.accountId) != null)
            assertNull(vault1.decrypt(binding))
        } finally {
            store.releaseFirstWrite()
            executor.shutdownNow()
            assertTrue(executor.awaitTermination(TIMEOUT_SECONDS, TimeUnit.SECONDS))
        }
    }

    private fun requireSharedContention(contended: Boolean) {
        require(contended) { "Expected a contended process-global credential vault lock attempt" }
    }

    private class LockAttemptRecorder : CredentialVaultLockAttemptObserver {
        private val attemptObserved = CountDownLatch(1)
        private val attempts = CopyOnWriteArrayList<Boolean>()

        override fun onAttempt(contended: Boolean) {
            attempts += contended
            attemptObserved.countDown()
        }

        fun awaitOnlyAttempt(): Boolean {
            assertTrue(
                "lock acquisition attempt was not observed",
                attemptObserved.await(TIMEOUT_SECONDS, TimeUnit.SECONDS),
            )
            assertEquals(1, attempts.size)
            return attempts.single()
        }
    }

    private enum class MutationEvent {
        WRITE,
        REMOVE,
    }

    private class CausalEnvelopeStore(
        private val blockFirstWrite: Boolean,
    ) : CredentialEnvelopeStore {
        private val delegate = InMemoryCredentialEnvelopeStore()
        private val firstWrite = AtomicBoolean(true)
        private val firstWriteStarted = CountDownLatch(1)
        private val allowFirstWrite = CountDownLatch(1)
        private val events = CopyOnWriteArrayList<MutationEvent>()
        private val writtenEnvelopes = CopyOnWriteArrayList<ByteArray>()

        override fun read(accountId: CredentialVaultAccountId): ByteArray? = delegate.read(accountId)

        override fun write(accountId: CredentialVaultAccountId, envelope: ByteArray): Boolean {
            if (blockFirstWrite && firstWrite.compareAndSet(true, false)) {
                firstWriteStarted.countDown()
                assertTrue(
                    "first write release timed out",
                    allowFirstWrite.await(TIMEOUT_SECONDS, TimeUnit.SECONDS),
                )
            }
            val written = delegate.write(accountId, envelope)
            writtenEnvelopes += envelope.copyOf()
            events += MutationEvent.WRITE
            return written
        }

        override fun remove(accountId: CredentialVaultAccountId): Boolean {
            val removed = delegate.remove(accountId)
            events += MutationEvent.REMOVE
            return removed
        }

        fun awaitFirstWriteStarted() {
            assertTrue(
                "first put did not reach in-lock store write",
                firstWriteStarted.await(TIMEOUT_SECONDS, TimeUnit.SECONDS),
            )
        }

        fun releaseFirstWrite() {
            allowFirstWrite.countDown()
        }

        fun mutationEvents(): List<MutationEvent> = events.toList()

        fun lastWrittenEnvelope(): ByteArray = requireNotNull(writtenEnvelopes.lastOrNull()).copyOf()
    }

    private class BlockingFirstEncryptCrypto(
        private val delegate: CredentialVaultCrypto,
    ) : CredentialVaultCrypto by delegate {
        private val first = AtomicBoolean(true)
        private val firstEncryptStarted = CountDownLatch(1)
        private val allowFirstEncrypt = CountDownLatch(1)

        override fun encrypt(
            accountId: CredentialVaultAccountId,
            aad: ByteArray,
            plaintext: ByteArray,
        ): CredentialCipherPayload {
            if (first.compareAndSet(true, false)) {
                firstEncryptStarted.countDown()
                assertTrue(
                    "first encryption release timed out",
                    allowFirstEncrypt.await(TIMEOUT_SECONDS, TimeUnit.SECONDS),
                )
            }
            return delegate.encrypt(accountId, aad, plaintext)
        }

        fun awaitFirstEncryptStarted() {
            assertTrue(
                "first put did not reach in-lock encryption",
                firstEncryptStarted.await(TIMEOUT_SECONDS, TimeUnit.SECONDS),
            )
        }

        fun releaseFirstEncrypt() {
            allowFirstEncrypt.countDown()
        }
    }

    private companion object {
        const val TIMEOUT_SECONDS = 10L
    }
}
