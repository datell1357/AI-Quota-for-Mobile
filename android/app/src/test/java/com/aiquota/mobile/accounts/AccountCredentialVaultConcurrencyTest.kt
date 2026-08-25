package com.aiquota.mobile.accounts

import java.util.concurrent.CopyOnWriteArrayList
import java.util.concurrent.CountDownLatch
import java.util.concurrent.Executors
import java.util.concurrent.TimeUnit
import java.util.concurrent.atomic.AtomicBoolean
import org.junit.Assert.assertArrayEquals
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class AccountCredentialVaultConcurrencyTest {
    @Test
    fun twoProductionFactoryVaultsSerializePutBeforeQueuedDelete() {
        val store = CausalEnvelopeStore(blockFirstWrite = true)
        val crypto = FakeCredentialVaultCrypto()
        val vault1 = ProcessAccountCredentialVaultFactory.create(store, crypto)
        val vault2 = ProcessAccountCredentialVaultFactory.create(store, crypto)
        val binding = vaultBinding()
        val bundle = vaultBundle("concurrent-put-delete")
        val deleteTriggered = CountDownLatch(1)
        val executor = Executors.newFixedThreadPool(2)

        try {
            val put = executor.submit<Boolean> { vault1.put(binding, bundle) }
            store.awaitFirstWriteStarted()
            val delete = executor.submit<Boolean> {
                deleteTriggered.countDown()
                vault2.delete(binding.accountId)
            }
            assertTrue("delete task did not trigger", deleteTriggered.await(TIMEOUT_SECONDS, TimeUnit.SECONDS))
            store.releaseFirstWrite()

            assertTrue(put.get(TIMEOUT_SECONDS, TimeUnit.SECONDS))
            assertTrue(delete.get(TIMEOUT_SECONDS, TimeUnit.SECONDS))
            assertEquals(listOf(MutationEvent.WRITE, MutationEvent.REMOVE), store.mutationEvents())
            assertTrue(vault1.isAbsent(binding.accountId))
            assertTrue(vault2.isAbsent(binding.accountId))
        } finally {
            store.releaseFirstWrite()
            executor.shutdownNow()
            assertTrue(executor.awaitTermination(TIMEOUT_SECONDS, TimeUnit.SECONDS))
        }
    }

    @Test
    fun twoProductionFactoryVaultsCreateOneFirstKeyAndKeepLastWriteReadable() {
        val store = CausalEnvelopeStore(blockFirstWrite = false)
        val binding = vaultBinding()
        val delegateCrypto = FakeCredentialVaultCrypto()
        val crypto = BlockingFirstEncryptCrypto(delegateCrypto)
        val vault1 = ProcessAccountCredentialVaultFactory.create(store, crypto)
        val vault2 = ProcessAccountCredentialVaultFactory.create(store, crypto)
        val firstBundle = vaultBundle("first-create-a")
        val secondBundle = vaultBundle("first-create-b")
        val secondTriggered = CountDownLatch(1)
        val executor = Executors.newFixedThreadPool(2)

        try {
            val first = executor.submit<Boolean> { vault1.put(binding, firstBundle) }
            crypto.awaitFirstEncryptStarted()
            val second = executor.submit<Boolean> {
                secondTriggered.countDown()
                vault2.put(binding, secondBundle)
            }
            assertTrue("second put task did not trigger", secondTriggered.await(TIMEOUT_SECONDS, TimeUnit.SECONDS))
            crypto.releaseFirstEncrypt()

            assertTrue(first.get(TIMEOUT_SECONDS, TimeUnit.SECONDS))
            assertTrue(second.get(TIMEOUT_SECONDS, TimeUnit.SECONDS))
            assertEquals(listOf(MutationEvent.WRITE, MutationEvent.WRITE), store.mutationEvents())
            assertEquals(1, delegateCrypto.keyCreationCount(binding.accountId))
            val finalEnvelope = requireNotNull(vault1.lookup(binding.accountId))
            assertArrayEquals(store.lastWrittenEnvelope(), finalEnvelope.encodedBytes())
            val decrypted = requireNotNull(vault2.decrypt(binding))
            assertTrue(firstBundle.contentEquals(decrypted) || secondBundle.contentEquals(decrypted))
        } finally {
            crypto.releaseFirstEncrypt()
            executor.shutdownNow()
            assertTrue(executor.awaitTermination(TIMEOUT_SECONDS, TimeUnit.SECONDS))
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
