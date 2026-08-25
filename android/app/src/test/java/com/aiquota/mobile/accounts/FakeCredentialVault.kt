package com.aiquota.mobile.accounts

import java.nio.ByteBuffer
import java.security.MessageDigest
import javax.crypto.Cipher
import javax.crypto.spec.GCMParameterSpec
import javax.crypto.spec.SecretKeySpec

internal class InMemoryCredentialEnvelopeStore : CredentialEnvelopeStore {
    private val envelopes = mutableMapOf<CredentialVaultAccountId, ByteArray>()

    override fun read(accountId: CredentialVaultAccountId): ByteArray? =
        envelopes[accountId]?.copyOf()

    override fun write(accountId: CredentialVaultAccountId, envelope: ByteArray): Boolean {
        envelopes[accountId] = envelope.copyOf()
        return true
    }

    override fun remove(accountId: CredentialVaultAccountId): Boolean {
        envelopes.remove(accountId)
        return true
    }

    fun putRaw(accountId: CredentialVaultAccountId, envelope: ByteArray) {
        envelopes[accountId] = envelope.copyOf()
    }
}

internal class FakeCredentialVaultCrypto : CredentialVaultCrypto {
    private val aliases = mutableMapOf<CredentialVaultAccountId, SecretKeySpec>()
    private var ivSequence = 1L

    override fun encrypt(
        accountId: CredentialVaultAccountId,
        aad: ByteArray,
        plaintext: ByteArray,
    ): CredentialCipherPayload {
        val iv = ByteArray(12).also {
            ByteBuffer.wrap(it, 4, Long.SIZE_BYTES).putLong(ivSequence++)
        }
        val cipher = Cipher.getInstance(TRANSFORMATION)
        cipher.init(Cipher.ENCRYPT_MODE, aliases.getOrPut(accountId) { keyFor(accountId) }, GCMParameterSpec(128, iv))
        cipher.updateAAD(aad)
        return CredentialCipherPayload(iv, cipher.doFinal(plaintext))
    }

    override fun decrypt(
        accountId: CredentialVaultAccountId,
        aad: ByteArray,
        payload: CredentialCipherPayload,
    ): ByteArray? {
        val key = aliases[accountId] ?: return null
        val cipher = Cipher.getInstance(TRANSFORMATION)
        cipher.init(Cipher.DECRYPT_MODE, key, GCMParameterSpec(128, payload.iv))
        cipher.updateAAD(aad)
        return cipher.doFinal(payload.ciphertext)
    }

    override fun deleteAlias(accountId: CredentialVaultAccountId): Boolean {
        aliases.remove(accountId)
        return true
    }

    override fun containsAlias(accountId: CredentialVaultAccountId): Boolean =
        aliases.containsKey(accountId)

    private fun keyFor(accountId: CredentialVaultAccountId): SecretKeySpec {
        val seed = "${accountId.provider.aadTag}:${accountId.accountKey.storageValue()}".toByteArray()
        return SecretKeySpec(MessageDigest.getInstance("SHA-256").digest(seed), "AES")
    }

    private companion object {
        const val TRANSFORMATION = "AES/GCM/NoPadding"
    }
}

internal fun vaultBinding(
    providerId: com.aiquota.mobile.local.ProviderId = com.aiquota.mobile.local.ProviderId.CLAUDE,
    accountToken: String = "acct_00000000000000000000000000000001",
    schema: Int = 1,
    generation: Long = 7,
    sessionRevision: Long = 11,
    secretRevision: Long = 13,
): CredentialVaultBinding = CredentialVaultBinding(
    schema = CredentialVaultSchema.of(schema),
    accountId = CredentialVaultAccountId.parse(
        ProviderAccountId(providerId, AccountKey.parseOpaque(accountToken))
    ),
    generation = AccountGeneration.of(generation),
    sessionRevision = SessionRevision.of(sessionRevision),
    secretRevision = SecretRevision.of(secretRevision),
)

internal fun vaultBundle(label: String): CredentialBundle =
    CredentialBundle.fromBytes("secret-fixture-$label".toByteArray())
