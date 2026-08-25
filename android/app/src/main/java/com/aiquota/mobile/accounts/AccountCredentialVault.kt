package com.aiquota.mobile.accounts

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

internal class AccountCredentialVault(
    private val envelopeStore: CredentialEnvelopeStore,
    private val crypto: CredentialVaultCrypto,
) {
    fun put(binding: CredentialVaultBinding, bundle: CredentialBundle): Boolean = runCatching {
        if (binding.schema != CredentialVaultSchema.CURRENT) return false
        val encrypted = crypto.encrypt(
            accountId = binding.accountId,
            aad = CredentialVaultAad.encode(binding),
            plaintext = bundle.copyBytes(),
        )
        val envelope = CredentialEnvelope.create(
            schema = binding.schema,
            iv = encrypted.iv,
            ciphertext = encrypted.ciphertext,
        ) ?: return false
        envelopeStore.write(binding.accountId, envelope.encodedBytes())
    }.getOrDefault(false)

    fun lookup(accountId: CredentialVaultAccountId): CredentialEnvelope? = runCatching {
        envelopeStore.read(accountId)?.let(CredentialEnvelope::parse)
    }.getOrNull()

    fun decrypt(binding: CredentialVaultBinding): CredentialBundle? =
        lookup(binding.accountId)?.let { decrypt(binding, it) }

    fun decrypt(
        binding: CredentialVaultBinding,
        envelope: CredentialEnvelope,
    ): CredentialBundle? {
        if (envelope.schema != binding.schema) return null
        return runCatching {
            crypto.decrypt(
                accountId = binding.accountId,
                aad = CredentialVaultAad.encode(binding),
                payload = CredentialCipherPayload(
                    iv = envelope.ivBytes(),
                    ciphertext = envelope.ciphertextBytes(),
                ),
            )?.let(CredentialBundle::fromBytes)
        }.getOrNull()
    }

    fun delete(accountId: CredentialVaultAccountId): Boolean {
        runCatching { envelopeStore.remove(accountId) }
        runCatching { crypto.deleteAlias(accountId) }
        return isAbsent(accountId)
    }

    fun isAbsent(accountId: CredentialVaultAccountId): Boolean =
        runCatching {
            envelopeStore.read(accountId) == null && !crypto.containsAlias(accountId)
        }.getOrDefault(false)
}
