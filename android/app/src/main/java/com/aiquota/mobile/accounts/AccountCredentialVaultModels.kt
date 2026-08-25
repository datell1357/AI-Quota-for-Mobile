package com.aiquota.mobile.accounts

import com.aiquota.mobile.local.ProviderId
import java.io.ByteArrayInputStream
import java.io.ByteArrayOutputStream
import java.io.DataInputStream
import java.io.DataOutputStream

internal enum class CredentialVaultProvider(val providerId: ProviderId, internal val aadTag: Int) {
    CLAUDE(ProviderId.CLAUDE, 1),
    CODEX(ProviderId.CODEX, 2);

    companion object {
        fun parse(providerId: ProviderId): CredentialVaultProvider =
            entries.firstOrNull { it.providerId == providerId }
                ?: throw IllegalArgumentException("Unsupported credential vault provider")
    }
}

internal data class CredentialVaultAccountId(
    val provider: CredentialVaultProvider,
    val accountKey: AccountKey,
) {
    override fun toString(): String = "CredentialVaultAccountId([opaque])"

    companion object {
        fun parse(accountId: ProviderAccountId): CredentialVaultAccountId =
            CredentialVaultAccountId(
                provider = CredentialVaultProvider.parse(accountId.providerId),
                accountKey = accountId.accountKey,
            )
    }
}

@JvmInline
internal value class CredentialVaultSchema private constructor(val value: Int) {
    companion object {
        val CURRENT = CredentialVaultSchema(1)

        fun of(value: Int): CredentialVaultSchema {
            require(value > 0) { "Credential vault schema must be positive" }
            return CredentialVaultSchema(value)
        }
    }
}

@JvmInline
internal value class SecretRevision private constructor(val value: Long) {
    companion object {
        fun of(value: Long): SecretRevision {
            require(value >= 0) { "Secret revision must be non-negative" }
            return SecretRevision(value)
        }
    }
}

internal data class CredentialVaultBinding(
    val schema: CredentialVaultSchema,
    val accountId: CredentialVaultAccountId,
    val generation: AccountGeneration,
    val sessionRevision: SessionRevision,
    val secretRevision: SecretRevision,
) {
    override fun toString(): String = "CredentialVaultBinding([redacted])"
}

internal class CredentialBundle private constructor(private val payload: ByteArray) {
    init {
        require(payload.isNotEmpty()) { "Credential bundle must not be empty" }
        require(payload.size <= MAX_PAYLOAD_BYTES) { "Credential bundle is too large" }
    }

    internal fun copyBytes(): ByteArray = payload.copyOf()

    fun contentEquals(other: CredentialBundle): Boolean = payload.contentEquals(other.payload)

    override fun toString(): String = "CredentialBundle([redacted])"

    companion object {
        private const val MAX_PAYLOAD_BYTES = 1_048_576

        fun fromBytes(payload: ByteArray): CredentialBundle = CredentialBundle(payload.copyOf())
    }
}

internal class CredentialEnvelope private constructor(
    val schema: CredentialVaultSchema,
    private val iv: ByteArray,
    private val ciphertext: ByteArray,
) {
    internal fun ivBytes(): ByteArray = iv.copyOf()

    internal fun ciphertextBytes(): ByteArray = ciphertext.copyOf()

    fun encodedBytes(): ByteArray = ByteArrayOutputStream().use { bytes ->
        DataOutputStream(bytes).use { output ->
            output.writeInt(MAGIC)
            output.writeInt(schema.value)
            output.writeInt(iv.size)
            output.write(iv)
            output.writeInt(ciphertext.size)
            output.write(ciphertext)
        }
        bytes.toByteArray()
    }

    override fun toString(): String = "CredentialEnvelope([redacted])"

    companion object {
        private const val MAGIC = 0x41515631
        private const val IV_BYTES = 12
        private const val GCM_TAG_BYTES = 16
        private const val MAX_CIPHERTEXT_BYTES = 1_048_592

        internal fun create(
            schema: CredentialVaultSchema,
            iv: ByteArray,
            ciphertext: ByteArray,
        ): CredentialEnvelope? {
            if (iv.size != IV_BYTES) return null
            if (ciphertext.size <= GCM_TAG_BYTES || ciphertext.size > MAX_CIPHERTEXT_BYTES) return null
            return CredentialEnvelope(schema, iv.copyOf(), ciphertext.copyOf())
        }

        fun parse(encoded: ByteArray): CredentialEnvelope? = runCatching {
            DataInputStream(ByteArrayInputStream(encoded)).use { input ->
                if (input.readInt() != MAGIC) return null
                val schema = CredentialVaultSchema.of(input.readInt())
                if (schema != CredentialVaultSchema.CURRENT) return null
                val ivLength = input.readInt()
                if (ivLength != IV_BYTES) return null
                val iv = ByteArray(ivLength).also(input::readFully)
                val ciphertextLength = input.readInt()
                if (ciphertextLength <= GCM_TAG_BYTES || ciphertextLength > MAX_CIPHERTEXT_BYTES) return null
                val ciphertext = ByteArray(ciphertextLength).also(input::readFully)
                if (input.read() != -1) return null
                create(schema, iv, ciphertext)
            }
        }.getOrNull()
    }
}

internal object CredentialVaultAad {
    fun encode(binding: CredentialVaultBinding): ByteArray = ByteArrayOutputStream().use { bytes ->
        DataOutputStream(bytes).use { output ->
            val account = binding.accountId.accountKey.storageValue().toByteArray(Charsets.UTF_8)
            output.writeInt(binding.schema.value)
            output.writeByte(binding.accountId.provider.aadTag)
            output.writeInt(account.size)
            output.write(account)
            output.writeLong(binding.generation.value)
            output.writeLong(binding.sessionRevision.value)
            output.writeLong(binding.secretRevision.value)
        }
        bytes.toByteArray()
    }
}
