package com.aiquota.mobile.accounts

import java.util.concurrent.locks.ReentrantLock
import kotlin.concurrent.withLock

internal data class CredentialCipherPayload(
    val iv: ByteArray,
    val ciphertext: ByteArray,
)

internal interface CredentialEnvelopeStore {
    fun read(accountId: CredentialVaultAccountId): ByteArray?

    fun write(accountId: CredentialVaultAccountId, envelope: ByteArray): Boolean

    fun remove(accountId: CredentialVaultAccountId): Boolean
}

internal interface CredentialVaultCrypto {
    fun encrypt(
        accountId: CredentialVaultAccountId,
        aad: ByteArray,
        plaintext: ByteArray,
    ): CredentialCipherPayload

    fun decrypt(
        accountId: CredentialVaultAccountId,
        aad: ByteArray,
        payload: CredentialCipherPayload,
    ): ByteArray?

    fun deleteAlias(accountId: CredentialVaultAccountId): Boolean

    fun containsAlias(accountId: CredentialVaultAccountId): Boolean
}

internal interface CredentialVaultOperationLock {
    fun <T> serialized(block: () -> T): T
}

internal class ReentrantCredentialVaultOperationLock : CredentialVaultOperationLock {
    private val lock = ReentrantLock()

    override fun <T> serialized(block: () -> T): T = lock.withLock(block)
}

internal class AccountCredentialVault(
    private val envelopeStore: CredentialEnvelopeStore,
    private val crypto: CredentialVaultCrypto,
    private val operationLock: CredentialVaultOperationLock = ReentrantCredentialVaultOperationLock(),
) {
    fun put(binding: CredentialVaultBinding, bundle: CredentialBundle): Boolean = operationLock.serialized {
        runCatching {
            if (binding.schema != CredentialVaultSchema.CURRENT) return@runCatching false
            val encrypted = crypto.encrypt(
                accountId = binding.accountId,
                aad = CredentialVaultAad.encode(binding),
                plaintext = bundle.copyBytes(),
            )
            val envelope = CredentialEnvelope.create(
                schema = binding.schema,
                iv = encrypted.iv,
                ciphertext = encrypted.ciphertext,
            ) ?: return@runCatching false
            envelopeStore.write(binding.accountId, envelope.encodedBytes())
        }.getOrDefault(false)
    }

    fun lookup(accountId: CredentialVaultAccountId): CredentialEnvelope? = operationLock.serialized {
        lookupUnlocked(accountId)
    }

    fun decrypt(binding: CredentialVaultBinding): CredentialBundle? = operationLock.serialized {
        lookupUnlocked(binding.accountId)?.let { decryptUnlocked(binding, it) }
    }

    fun decrypt(
        binding: CredentialVaultBinding,
        envelope: CredentialEnvelope,
    ): CredentialBundle? = operationLock.serialized {
        decryptUnlocked(binding, envelope)
    }

    fun delete(accountId: CredentialVaultAccountId): Boolean = operationLock.serialized {
        runCatching { envelopeStore.remove(accountId) }
        runCatching { crypto.deleteAlias(accountId) }
        isAbsentUnlocked(accountId)
    }

    fun isAbsent(accountId: CredentialVaultAccountId): Boolean = operationLock.serialized {
        isAbsentUnlocked(accountId)
    }

    private fun lookupUnlocked(accountId: CredentialVaultAccountId): CredentialEnvelope? = runCatching {
        envelopeStore.read(accountId)?.let(CredentialEnvelope::parse)
    }.getOrNull()

    private fun decryptUnlocked(
        binding: CredentialVaultBinding,
        envelope: CredentialEnvelope,
    ): CredentialBundle? = runCatching {
        crypto.decrypt(
            accountId = binding.accountId,
            aad = CredentialVaultAad.encode(binding),
            payload = CredentialCipherPayload(
                iv = envelope.ivBytes(),
                ciphertext = envelope.ciphertextBytes(),
            ),
        )?.let(CredentialBundle::fromBytes)
    }.getOrNull()

    private fun isAbsentUnlocked(accountId: CredentialVaultAccountId): Boolean =
        runCatching {
            envelopeStore.read(accountId) == null && !crypto.containsAlias(accountId)
        }.getOrDefault(false)
}
