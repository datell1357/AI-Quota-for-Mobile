package com.aiquota.mobile.accounts

import com.aiquota.mobile.local.ProviderId
import java.nio.ByteBuffer
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNull
import org.junit.Assert.assertThrows
import org.junit.Assert.assertTrue
import org.junit.Test

class AccountCredentialVaultFailureTest {
    private val store = InMemoryCredentialEnvelopeStore()
    private val vault = AccountCredentialVault(store, FakeCredentialVaultCrypto())

    @Test
    fun ciphertextBodyTagAndIvTamperingFailClosed() {
        val binding = vaultBinding()
        assertTrue(vault.put(binding, vaultBundle("tamper")))
        val envelope = requireNotNull(vault.lookup(binding.accountId))
        val iv = envelope.ivBytes()
        val ciphertext = envelope.ciphertextBytes()

        val tamperedIv = iv.copyOf().also { it[0] = (it[0].toInt() xor 1).toByte() }
        val tamperedBody = ciphertext.copyOf().also { it[0] = (it[0].toInt() xor 1).toByte() }
        val tamperedTag = ciphertext.copyOf().also {
            it[it.lastIndex] = (it[it.lastIndex].toInt() xor 1).toByte()
        }

        assertNull(vault.decrypt(binding, requireNotNull(CredentialEnvelope.create(binding.schema, tamperedIv, ciphertext))))
        assertNull(vault.decrypt(binding, requireNotNull(CredentialEnvelope.create(binding.schema, iv, tamperedBody))))
        assertNull(vault.decrypt(binding, requireNotNull(CredentialEnvelope.create(binding.schema, iv, tamperedTag))))
    }

    @Test
    fun malformedEnvelopeAndUnsupportedVersionFailClosed() {
        val binding = vaultBinding()
        assertFalse(vault.put(binding.copy(schema = CredentialVaultSchema.of(2)), vaultBundle("version")))
        assertTrue(vault.put(binding, vaultBundle("malformed")))
        val valid = requireNotNull(store.read(binding.accountId))
        val unsupportedVersion = valid.copyOf().also { ByteBuffer.wrap(it).putInt(4, 2) }
        val malformed = valid.copyOf(valid.size - 1)

        store.putRaw(binding.accountId, unsupportedVersion)
        assertNull(vault.lookup(binding.accountId))
        assertNull(vault.decrypt(binding))

        store.putRaw(binding.accountId, malformed)
        assertNull(vault.lookup(binding.accountId))
        assertNull(vault.decrypt(binding))

        assertNull(CredentialEnvelope.parse(ByteArray(3)))
        assertNull(CredentialEnvelope.parse(valid + 0x01.toByte()))
    }

    @Test
    fun strictBoundaryRejectsNonTargetProviderWithoutEchoingIdentity() {
        val error = assertThrows(IllegalArgumentException::class.java) {
            CredentialVaultAccountId.parse(
                ProviderAccountId(ProviderId.GEMINI, AccountKey.parseOpaque(SECRET_LIKE_ACCOUNT))
            )
        }

        assertFalse(error.message.orEmpty().contains(SECRET_LIKE_ACCOUNT))
    }

    @Test
    fun backendFailuresAndObjectStringsNeverExposeKeyOrSecretContent() {
        val binding = vaultBinding(accountToken = SECRET_LIKE_ACCOUNT)
        val bundle = CredentialBundle.fromBytes(SECRET_LIKE_PAYLOAD.toByteArray())
        val poisoned = AccountCredentialVault(PoisonStore(), PoisonCrypto())

        assertFalse(poisoned.put(binding, bundle))
        assertNull(poisoned.lookup(binding.accountId))
        assertNull(poisoned.decrypt(binding))
        assertFalse(poisoned.delete(binding.accountId))
        val rendered = listOf(binding, binding.accountId, bundle).joinToString()
        assertFalse(rendered.contains(SECRET_LIKE_ACCOUNT))
        assertFalse(rendered.contains(SECRET_LIKE_PAYLOAD))
    }

    private class PoisonStore : CredentialEnvelopeStore {
        override fun read(accountId: CredentialVaultAccountId): ByteArray? =
            error("backend:$SECRET_LIKE_ACCOUNT:$SECRET_LIKE_PAYLOAD")

        override fun write(accountId: CredentialVaultAccountId, envelope: ByteArray): Boolean =
            error("backend:$SECRET_LIKE_ACCOUNT:$SECRET_LIKE_PAYLOAD")

        override fun remove(accountId: CredentialVaultAccountId): Boolean =
            error("backend:$SECRET_LIKE_ACCOUNT:$SECRET_LIKE_PAYLOAD")
    }

    private class PoisonCrypto : CredentialVaultCrypto {
        override fun encrypt(
            accountId: CredentialVaultAccountId,
            aad: ByteArray,
            plaintext: ByteArray,
        ): CredentialCipherPayload = error("backend:$SECRET_LIKE_ACCOUNT:$SECRET_LIKE_PAYLOAD")

        override fun decrypt(
            accountId: CredentialVaultAccountId,
            aad: ByteArray,
            payload: CredentialCipherPayload,
        ): ByteArray? = error("backend:$SECRET_LIKE_ACCOUNT:$SECRET_LIKE_PAYLOAD")

        override fun deleteAlias(accountId: CredentialVaultAccountId): Boolean =
            error("backend:$SECRET_LIKE_ACCOUNT:$SECRET_LIKE_PAYLOAD")

        override fun containsAlias(accountId: CredentialVaultAccountId): Boolean =
            error("backend:$SECRET_LIKE_ACCOUNT:$SECRET_LIKE_PAYLOAD")
    }

    private companion object {
        const val SECRET_LIKE_ACCOUNT = "acct_ffffffffffffffffffffffffffffffff"
        const val SECRET_LIKE_PAYLOAD = "never-render-this-provider-credential"
    }
}
