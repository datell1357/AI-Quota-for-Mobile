package com.aiquota.mobile.accounts

import com.aiquota.mobile.local.ProviderId
import org.json.JSONArray
import org.json.JSONObject

internal object LegacyMigrationTargetCodec {
    fun encodeList(targets: List<LegacyMigrationTarget>): JSONArray = JSONArray().also { array ->
        targets.sortedBy { it.accountId.providerId.ordinal }.forEach { array.put(encode(it)) }
    }

    fun decodeList(array: JSONArray): List<LegacyMigrationTarget> = buildList {
        for (index in 0 until array.length()) add(decode(array.getJSONObject(index)))
    }.sortedBy { it.accountId.providerId.ordinal }

    private fun encode(target: LegacyMigrationTarget): JSONObject = JSONObject()
        .put("providerId", target.accountId.providerId.storageId)
        .put("accountKey", target.accountId.accountKey.storageValue())
        .put("sourceSnapshot", target.sourceSnapshotSha256)
        .put("accountState", target.accountState.name)
        .put("authState", target.authState.name)
        .put("deletionState", target.deletionState.name)
        .put("generation", target.generation.value)
        .put("sessionRevision", target.sessionRevision.value)
        .put("authorityVersion", target.authorityVersion.value)
        .put("demandMask", target.demandMask)
        .put("attemptGeneration", target.attemptGeneration.value)
        .put("attemptSessionRevision", target.attemptSessionRevision.value)
        .put("activeNonce", target.activeNonce ?: JSONObject.NULL)
        .put("lastNonce", target.lastNonce ?: JSONObject.NULL)
        .put("publishedNonceCount", target.publishedNonceCount)
        .put("mirrorReceipt", target.mirrorReceiptSha256)
        .put("preferenceReceipt", target.preferenceReceiptSha256)
        .put("contextSource", target.contextSourceReceipt?.let(LegacyMigrationCodec::encodeContextReceipt) ?: JSONObject.NULL)
        .put("vault", target.vaultBinding?.let(::encodeVault) ?: JSONObject.NULL)
        .put("vaultEnvelope", target.vaultEnvelopeSha256 ?: JSONObject.NULL)

    private fun decode(root: JSONObject): LegacyMigrationTarget {
        require(root.keys().asSequence().toSet() == KEYS)
        val provider = requireNotNull(ProviderId.fromStorageId(root.getString("providerId")))
        val accountId = ProviderAccountId(provider, AccountKey.fromStorage(root.getString("accountKey")))
        val binding = if (root.isNull("vault")) null else decodeVault(root.getJSONObject("vault"), accountId)
        return LegacyMigrationTarget(
            accountId = accountId,
            sourceSnapshotSha256 = root.getString("sourceSnapshot"),
            accountState = AccountState.valueOf(root.getString("accountState")),
            authState = AccountAuthState.valueOf(root.getString("authState")),
            deletionState = AccountDeletionState.valueOf(root.getString("deletionState")),
            generation = AccountGeneration.of(root.getLong("generation")),
            sessionRevision = SessionRevision.of(root.getLong("sessionRevision")),
            authorityVersion = DisplayVersion.of(root.getLong("authorityVersion")),
            demandMask = root.getInt("demandMask"),
            attemptGeneration = AccountGeneration.of(root.getLong("attemptGeneration")),
            attemptSessionRevision = SessionRevision.of(root.getLong("attemptSessionRevision")),
            activeNonce = root.nullableString("activeNonce"),
            lastNonce = root.nullableString("lastNonce"),
            publishedNonceCount = root.getInt("publishedNonceCount"),
            mirrorReceiptSha256 = root.getString("mirrorReceipt"),
            preferenceReceiptSha256 = root.getString("preferenceReceipt"),
            contextSourceReceipt = if (root.isNull("contextSource")) null else LegacyMigrationCodec.decodeContextReceipt(root.getJSONObject("contextSource")),
            vaultBinding = binding,
            vaultEnvelopeSha256 = root.nullableString("vaultEnvelope")
        )
    }

    private fun encodeVault(binding: CredentialVaultBinding): JSONObject = JSONObject()
        .put("schema", binding.schema.value)
        .put("generation", binding.generation.value)
        .put("sessionRevision", binding.sessionRevision.value)
        .put("secretRevision", binding.secretRevision.value)

    private fun decodeVault(root: JSONObject, accountId: ProviderAccountId): CredentialVaultBinding {
        require(root.keys().asSequence().toSet() == VAULT_KEYS)
        return CredentialVaultBinding(
            schema = CredentialVaultSchema.of(root.getInt("schema")),
            accountId = CredentialVaultAccountId.parse(accountId),
            generation = AccountGeneration.of(root.getLong("generation")),
            sessionRevision = SessionRevision.of(root.getLong("sessionRevision")),
            secretRevision = SecretRevision.of(root.getLong("secretRevision"))
        )
    }

    private fun JSONObject.nullableString(key: String): String? = if (isNull(key)) null else getString(key)

    private val KEYS = setOf(
        "providerId", "accountKey", "sourceSnapshot", "accountState", "authState", "deletionState",
        "generation", "sessionRevision", "authorityVersion", "demandMask", "attemptGeneration",
        "attemptSessionRevision", "activeNonce", "lastNonce", "publishedNonceCount", "mirrorReceipt",
        "preferenceReceipt", "contextSource", "vault", "vaultEnvelope"
    )
    private val VAULT_KEYS = setOf("schema", "generation", "sessionRevision", "secretRevision")
}
