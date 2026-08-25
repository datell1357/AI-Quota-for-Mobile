package com.aiquota.mobile.accounts

import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.local.ProviderUsageSnapshot
import com.aiquota.mobile.providers.ProviderSnapshotCodec
import java.io.File
import java.nio.ByteBuffer
import java.security.MessageDigest
import java.util.Base64
import javax.crypto.Cipher
import javax.crypto.spec.GCMParameterSpec
import javax.crypto.spec.SecretKeySpec
import org.json.JSONArray
import org.json.JSONObject

internal class DurableFakeMigrationSource private constructor(val root: File) : LegacyMigrationSource, LegacyProjectionStore {
    var aggregateWriteSucceeds: Boolean
        get() = state().optBoolean("aggregateWriteSucceeds", true)
        set(value) = updateState { it.put("aggregateWriteSucceeds", value) }
    var mirrorWriteSucceeds: Boolean
        get() = state().optBoolean("mirrorWriteSucceeds", true)
        set(value) = updateState { it.put("mirrorWriteSucceeds", value) }
    var cacheWriteSucceeds: Boolean
        get() = state().optBoolean("cacheWriteSucceeds", true)
        set(value) = updateState { it.put("cacheWriteSucceeds", value) }

    var present: Boolean
        get() = state().getBoolean("present")
        set(value) = updateState { it.put("present", value) }
    var raw: String
        get() = state().getString("raw")
        set(value) = updateState { it.put("raw", value) }

    fun setContext(provider: ProviderId, bundle: CredentialBundle?) {
        val file = contextFile(provider)
        if (bundle == null) file.delete() else file.writeText(Base64.getEncoder().encodeToString(bundle.copyBytes()))
    }

    fun setRawContext(provider: ProviderId, raw: String) {
        contextFile(provider).writeText(raw)
    }

    override fun capture(): LegacySourceCapture {
        val contexts = listOf(ProviderId.CLAUDE, ProviderId.CODEX).mapNotNull { provider ->
            contextFile(provider).takeIf(File::exists)?.readText()?.let { stored ->
                LegacyContextSourceReceipt(provider, LegacyMigrationCodec.blobReceipt("enc:$stored"))
            }
        }
        return LegacySourceCapture(
            LegacySourceReceipt(present, LegacyMigrationCodec.blobReceipt(raw), contexts),
            raw
        )
    }

    override fun readContext(receipt: LegacyContextSourceReceipt): LegacyContextCapture {
        val current = capture().receipt.contexts.singleOrNull { it.providerId == receipt.providerId }
            ?: return LegacyContextCapture.Malformed
        if (current != receipt) return LegacyContextCapture.Malformed
        val bytes = runCatching { Base64.getDecoder().decode(contextFile(receipt.providerId).readText()) }.getOrNull()
            ?: return LegacyContextCapture.Malformed
        return LegacyContextCapture.Present(CredentialBundle.fromBytes(bytes), receipt)
    }

    override fun mirrorSeedData(providerId: ProviderId): String =
        JSONObject().put("providerId", providerId.storageId).put("surface", "mirror").toString()
    override fun preferenceSeedData(providerId: ProviderId): String =
        JSONObject().put("providerId", providerId.storageId).put("surface", "preferences").toString()

    override fun captureAggregate(): LegacySourceCapture = capture()

    override fun writeAggregate(raw: String): Boolean {
        if (!aggregateWriteSucceeds) return false
        this.raw = raw
        present = true
        return this.raw == raw
    }

    override fun writeMirror(providerId: ProviderId, snapshot: ProviderUsageSnapshot?): Boolean {
        if (!mirrorWriteSucceeds) return false
        mirrorFile(providerId).writeText(snapshot?.let { ProviderSnapshotCodec.encode(listOf(it)) }.orEmpty())
        return true
    }

    override fun writeCompatibilityCache(snapshots: List<ProviderUsageSnapshot>): Boolean {
        if (!cacheWriteSucceeds) return false
        cacheFile().writeText(ProviderSnapshotCodec.encode(snapshots))
        return true
    }

    override fun readProjectionReceipt(projection: LegacyProjection): LegacyProjectionReceipt? {
        if (raw != projection.rawAggregate) return null
        if (!listOf(ProviderId.CLAUDE, ProviderId.CODEX).all { mirrorFile(it).exists() }) return null
        if (!cacheFile().exists()) return null
        return LegacyProjectionReceipt(
            projection.desiredRevision,
            projection.desiredRevision,
            LegacyMigrationCodec.sha256(raw),
            LegacyMigrationCodec.sha256(listOf(ProviderId.CLAUDE, ProviderId.CODEX).joinToString("|") { mirrorFile(it).readText() }),
            LegacyMigrationCodec.sha256(cacheFile().readText())
        )
    }

    fun reopen() = DurableFakeMigrationSource(root)

    private fun state(): JSONObject = JSONObject(stateFile().readText())
    private fun updateState(update: (JSONObject) -> Unit) = state().also(update).let { stateFile().writeText(it.toString()) }
    private fun stateFile() = File(root, "legacy-source.json")
    private fun contextFile(provider: ProviderId) = File(root, "context-${provider.storageId}")
    private fun mirrorFile(provider: ProviderId) = File(root, "mirror-${provider.storageId}")
    private fun cacheFile() = File(root, "compatibility-cache")

    companion object {
        fun create(present: Boolean, raw: String, contexts: Map<ProviderId, CredentialBundle>): DurableFakeMigrationSource {
            val root = kotlin.io.path.createTempDirectory("task6-migration-").toFile()
            File(root, "legacy-source.json").writeText(JSONObject().put("present", present).put("raw", raw).toString())
            return DurableFakeMigrationSource(root).also { source -> contexts.forEach { (provider, bundle) -> source.setContext(provider, bundle) } }
        }
    }
}

internal class DurableEnvelopeStore(private val root: File) : CredentialEnvelopeStore {
    override fun read(accountId: CredentialVaultAccountId): ByteArray? = file(accountId).takeIf(File::exists)?.readBytes()
    override fun write(accountId: CredentialVaultAccountId, envelope: ByteArray): Boolean = runCatching { file(accountId).writeBytes(envelope); true }.getOrDefault(false)
    override fun remove(accountId: CredentialVaultAccountId): Boolean = !file(accountId).exists() || file(accountId).delete()
    fun reopen() = DurableEnvelopeStore(root)
    private fun file(id: CredentialVaultAccountId) = File(root, "envelope-${locator(id)}")
}

internal class DurableCredentialCrypto(private val root: File) : CredentialVaultCrypto {
    override fun encrypt(accountId: CredentialVaultAccountId, aad: ByteArray, plaintext: ByteArray): CredentialCipherPayload {
        val key = key(accountId, create = true)!!
        val counterFile = File(root, "iv-counter")
        val counter = counterFile.takeIf(File::exists)?.readText()?.toLong() ?: 0L
        counterFile.writeText((counter + 1).toString())
        val iv = ByteArray(12).also { ByteBuffer.wrap(it, 4, 8).putLong(counter + 1) }
        return Cipher.getInstance(TRANSFORMATION).run {
            init(Cipher.ENCRYPT_MODE, key, GCMParameterSpec(128, iv)); updateAAD(aad)
            CredentialCipherPayload(iv, doFinal(plaintext))
        }
    }
    override fun decrypt(accountId: CredentialVaultAccountId, aad: ByteArray, payload: CredentialCipherPayload): ByteArray? = runCatching {
        val key = key(accountId, create = false) ?: return null
        Cipher.getInstance(TRANSFORMATION).run {
            init(Cipher.DECRYPT_MODE, key, GCMParameterSpec(128, payload.iv)); updateAAD(aad); doFinal(payload.ciphertext)
        }
    }.getOrNull()
    override fun deleteAlias(accountId: CredentialVaultAccountId): Boolean = !keyFile(accountId).exists() || keyFile(accountId).delete()
    override fun containsAlias(accountId: CredentialVaultAccountId): Boolean = keyFile(accountId).exists()
    fun reopen() = DurableCredentialCrypto(root)
    private fun key(id: CredentialVaultAccountId, create: Boolean): SecretKeySpec? {
        val file = keyFile(id)
        if (!file.exists() && create) file.writeBytes(MessageDigest.getInstance("SHA-256").digest("key:${locator(id)}".toByteArray()))
        return file.takeIf(File::exists)?.readBytes()?.let { SecretKeySpec(it, "AES") }
    }
    private fun keyFile(id: CredentialVaultAccountId) = File(root, "key-${locator(id)}")
    private companion object { const val TRANSFORMATION = "AES/GCM/NoPadding" }
}

private fun locator(id: CredentialVaultAccountId): String = MessageDigest.getInstance("SHA-256")
    .digest("${id.provider.aadTag}:${id.accountKey.storageValue()}".toByteArray()).joinToString("") { "%02x".format(it) }
