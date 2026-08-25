package com.aiquota.mobile.accounts

import java.util.concurrent.CopyOnWriteArrayList
import java.util.concurrent.CountDownLatch
import java.util.concurrent.Executors
import java.util.concurrent.TimeUnit
import java.util.concurrent.atomic.AtomicBoolean
import java.util.concurrent.atomic.AtomicInteger
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class AccountCredentialVaultConcurrencyTest {
    @Test
    fun putCannotCommitStaleEnvelopeAfterDeleteAcknowledgesAbsence() {
        val store = BlockingWriteStore()
        val operationLock = ObservedOperationLock()
        val vault = AccountCredentialVault(store, FakeCredentialVaultCrypto(), operationLock)
        val binding = vaultBinding()
        val bundle = vaultBundle("concurrent-put-delete")
        val completions = CopyOnWriteArrayList<String>()
        val executor = Executors.newFixedThreadPool(2)

        try {
            val put = executor.submit<Boolean> {
                vault.put(binding, bundle).also { completions += "put" }
            }
            store.awaitWriteStarted()
            val delete = executor.submit<Boolean> {
                vault.delete(binding.accountId).also { completions += "delete" }
            }
            operationLock.awaitSecondRequest()
            store.releaseWrite()

            assertTrue(put.get(TIMEOUT_SECONDS, TimeUnit.SECONDS))
            assertTrue(delete.get(TIMEOUT_SECONDS, TimeUnit.SECONDS))
            assertEquals(listOf("put", "delete"), completions)
            assertTrue(vault.isAbsent(binding.accountId))
        } finally {
            store.releaseWrite()
            executor.shutdownNow()
            assertTrue(executor.awaitTermination(TIMEOUT_SECONDS, TimeUnit.SECONDS))
        }
    }

    @Test
    fun concurrentFirstPutsCreateOneKeyAndLastSerializedEnvelopeIsReadable() {
        val binding = vaultBinding()
        val delegateCrypto = FakeCredentialVaultCrypto()
        val crypto = BlockingFirstEncryptCrypto(delegateCrypto)
        val operationLock = ObservedOperationLock()
        val vault = AccountCredentialVault(InMemoryCredentialEnvelopeStore(), crypto, operationLock)
        val firstBundle = vaultBundle("first-create-a")
        val secondBundle = vaultBundle("first-create-b")
        val completions = CopyOnWriteArrayList<String>()
        val executor = Executors.newFixedThreadPool(2)

        try {
            val first = executor.submit<Boolean> {
                vault.put(binding, firstBundle).also { completions += "first" }
            }
            crypto.awaitFirstEncryptStarted()
            val second = executor.submit<Boolean> {
                vault.put(binding, secondBundle).also { completions += "second" }
            }
            operationLock.awaitSecondRequest()
            crypto.releaseFirstEncrypt()

            assertTrue(first.get(TIMEOUT_SECONDS, TimeUnit.SECONDS))
            assertTrue(second.get(TIMEOUT_SECONDS, TimeUnit.SECONDS))
            assertEquals(listOf("first", "second"), completions)
            assertEquals(1, delegateCrypto.keyCreationCount(binding.accountId))
            assertTrue(secondBundle.contentEquals(requireNotNull(vault.decrypt(binding))))
        } finally {
            crypto.releaseFirstEncrypt()
            executor.shutdownNow()
            assertTrue(executor.awaitTermination(TIMEOUT_SECONDS, TimeUnit.SECONDS))
        }
    }

    private class ObservedOperationLock : CredentialVaultOperationLock {
        private val delegate = ReentrantCredentialVaultOperationLock()
        private val requests = AtomicInteger(0)
        private val secondRequest = CountDownLatch(1)

        override fun <T> serialized(block: () -> T): T {
            if (requests.incrementAndGet() == 2) secondRequest.countDown()
            return delegate.serialized(block)
        }

        fun awaitSecondRequest() {
            assertTrue(
                "second vault operation did not request serialization",
                secondRequest.await(TIMEOUT_SECONDS, TimeUnit.SECONDS),
            )
        }
    }

    private class BlockingWriteStore : CredentialEnvelopeStore {
        private val delegate = InMemoryCredentialEnvelopeStore()
        private val writeStarted = CountDownLatch(1)
        private val allowWrite = CountDownLatch(1)

        override fun read(accountId: CredentialVaultAccountId): ByteArray? = delegate.read(accountId)

        override fun write(accountId: CredentialVaultAccountId, envelope: ByteArray): Boolean {
            writeStarted.countDown()
            assertTrue("write release timed out", allowWrite.await(TIMEOUT_SECONDS, TimeUnit.SECONDS))
            return delegate.write(accountId, envelope)
        }

        override fun remove(accountId: CredentialVaultAccountId): Boolean = delegate.remove(accountId)

        fun awaitWriteStarted() {
            assertTrue("put did not reach envelope write", writeStarted.await(TIMEOUT_SECONDS, TimeUnit.SECONDS))
        }

        fun releaseWrite() {
            allowWrite.countDown()
        }
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
                "first put did not reach encryption",
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
