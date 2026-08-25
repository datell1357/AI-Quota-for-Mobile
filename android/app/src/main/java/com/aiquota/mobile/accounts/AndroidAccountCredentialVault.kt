package com.aiquota.mobile.accounts

import android.content.Context
import android.security.keystore.KeyGenParameterSpec
import android.security.keystore.KeyProperties
import android.util.Base64
import java.security.KeyStore
import java.security.MessageDigest
import javax.crypto.Cipher
import javax.crypto.KeyGenerator
import javax.crypto.SecretKey
import javax.crypto.spec.GCMParameterSpec

private val accountCredentialVaultOperationLock = ReentrantCredentialVaultOperationLock()

internal fun createAndroidAccountCredentialVault(context: Context): AccountCredentialVault =
    AccountCredentialVault(
        envelopeStore = SharedPreferencesCredentialEnvelopeStore(context.applicationContext),
        crypto = AndroidKeystoreCredentialVaultCrypto(),
        operationLock = accountCredentialVaultOperationLock,
    )

private class SharedPreferencesCredentialEnvelopeStore(
    private val context: Context,
) : CredentialEnvelopeStore {
    override fun read(accountId: CredentialVaultAccountId): ByteArray? =
        preferences().getString(AccountCredentialLocator.storageKey(accountId), null)?.let { encoded ->
            runCatching { Base64.decode(encoded, Base64.NO_WRAP) }.getOrNull()
        }

    override fun write(accountId: CredentialVaultAccountId, envelope: ByteArray): Boolean =
        preferences().edit()
            .putString(
                AccountCredentialLocator.storageKey(accountId),
                Base64.encodeToString(envelope, Base64.NO_WRAP),
            )
            .commit()

    override fun remove(accountId: CredentialVaultAccountId): Boolean =
        preferences().edit().remove(AccountCredentialLocator.storageKey(accountId)).commit()

    private fun preferences() = context.getSharedPreferences(PREFERENCES, Context.MODE_PRIVATE)

    private companion object {
        const val PREFERENCES = "account_credential_vault_v1"
    }
}

private class AndroidKeystoreCredentialVaultCrypto : CredentialVaultCrypto {
    override fun encrypt(
        accountId: CredentialVaultAccountId,
        aad: ByteArray,
        plaintext: ByteArray,
    ): CredentialCipherPayload {
        val cipher = Cipher.getInstance(TRANSFORMATION)
        cipher.init(Cipher.ENCRYPT_MODE, getOrCreateKey(accountId))
        cipher.updateAAD(aad)
        return CredentialCipherPayload(cipher.iv, cipher.doFinal(plaintext))
    }

    override fun decrypt(
        accountId: CredentialVaultAccountId,
        aad: ByteArray,
        payload: CredentialCipherPayload,
    ): ByteArray? {
        val key = existingKey(accountId) ?: return null
        val cipher = Cipher.getInstance(TRANSFORMATION)
        cipher.init(Cipher.DECRYPT_MODE, key, GCMParameterSpec(GCM_TAG_BITS, payload.iv))
        cipher.updateAAD(aad)
        return cipher.doFinal(payload.ciphertext)
    }

    override fun deleteAlias(accountId: CredentialVaultAccountId): Boolean {
        val alias = AccountCredentialLocator.alias(accountId)
        val keyStore = loadedKeyStore()
        if (keyStore.containsAlias(alias)) keyStore.deleteEntry(alias)
        return !loadedKeyStore().containsAlias(alias)
    }

    override fun containsAlias(accountId: CredentialVaultAccountId): Boolean =
        loadedKeyStore().containsAlias(AccountCredentialLocator.alias(accountId))

    private fun existingKey(accountId: CredentialVaultAccountId): SecretKey? =
        loadedKeyStore().getKey(AccountCredentialLocator.alias(accountId), null) as? SecretKey

    private fun getOrCreateKey(accountId: CredentialVaultAccountId): SecretKey {
        existingKey(accountId)?.let { return it }
        val alias = AccountCredentialLocator.alias(accountId)
        val generator = KeyGenerator.getInstance(KeyProperties.KEY_ALGORITHM_AES, ANDROID_KEYSTORE)
        generator.init(
            KeyGenParameterSpec.Builder(
                alias,
                KeyProperties.PURPOSE_ENCRYPT or KeyProperties.PURPOSE_DECRYPT,
            )
                .setBlockModes(KeyProperties.BLOCK_MODE_GCM)
                .setEncryptionPaddings(KeyProperties.ENCRYPTION_PADDING_NONE)
                .setRandomizedEncryptionRequired(true)
                .build()
        )
        return generator.generateKey()
    }

    private fun loadedKeyStore(): KeyStore =
        KeyStore.getInstance(ANDROID_KEYSTORE).apply { load(null) }

    private companion object {
        const val ANDROID_KEYSTORE = "AndroidKeyStore"
        const val TRANSFORMATION = "AES/GCM/NoPadding"
        const val GCM_TAG_BITS = 128
    }
}

private object AccountCredentialLocator {
    fun alias(accountId: CredentialVaultAccountId): String = "ai_quota_account_vault_v1_${digest(accountId)}"

    fun storageKey(accountId: CredentialVaultAccountId): String = "envelope_${digest(accountId)}"

    private fun digest(accountId: CredentialVaultAccountId): String {
        val identity = buildString {
            append(accountId.provider.aadTag)
            append(':')
            append(accountId.accountKey.storageValue())
        }.toByteArray(Charsets.UTF_8)
        return MessageDigest.getInstance("SHA-256")
            .digest(identity)
            .joinToString("") { byte -> "%02x".format(byte) }
    }
}
