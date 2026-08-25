package com.aiquota.mobile.accounts

import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.local.ProviderUsageSnapshot
import com.aiquota.mobile.providers.ProviderSnapshotCodec
import java.security.MessageDigest
import org.json.JSONArray
import org.json.JSONObject

internal object LegacyMigrationCodec {
    fun strictSnapshots(source: LegacySourceCapture): List<ProviderUsageSnapshot>? {
        if (source.rawAggregate.isBlank()) return emptyList()
        return runCatching {
            val root = JSONObject(source.rawAggregate)
            require(root.keys().asSequence().toSet() == setOf("providers"))
            val providers = root.getJSONArray("providers")
            val providerIds = mutableSetOf<ProviderId>()
            buildList {
                for (index in 0 until providers.length()) {
                    val item = providers.getJSONObject(index)
                    val providerId = requireNotNull(ProviderId.fromStorageId(item.getString("providerId")))
                    require(providerIds.add(providerId))
                    if (item.has("lines") && !item.isNull("lines")) item.getJSONArray("lines")
                    val isolated = JSONObject().put("providers", JSONArray().put(item)).toString()
                    val decoded = ProviderSnapshotCodec.decode(isolated)
                    require(decoded.size == 1 && decoded.single().providerId == providerId)
                    add(decoded.single())
                }
            }
        }.getOrNull()
    }

    fun snapshotSha256(snapshot: ProviderUsageSnapshot): String =
        sha256(ProviderSnapshotCodec.encode(listOf(snapshot)))

    fun encodeManifest(manifest: LegacyMigrationManifest): String {
        val body = manifestBody(manifest)
        val checksum = sha256(body.toString())
        require(checksum == manifest.checksum)
        return body.put("checksum", checksum).toString()
    }

    fun completeManifest(
        source: LegacySourceCapture,
        targets: List<LegacyMigrationTarget>,
        projectionSha256: String
    ): LegacyMigrationManifest {
        val provisional = LegacyMigrationManifest(
            schemaVersion = LegacyMigrationManifest.SCHEMA_VERSION,
            epoch = LegacyMigrationManifest.EPOCH,
            phase = LegacyMigrationPhase.COMPLETE,
            sourcePresent = source.present,
            sourceSha256 = source.sha256,
            sourceContextProviders = source.contextProviders,
            targets = ordered(targets),
            projectionSha256 = projectionSha256,
            checksum = ZERO_HASH
        )
        return provisional.copy(checksum = sha256(manifestBody(provisional).toString()))
    }

    fun decodeManifest(raw: String): LegacyMigrationManifest? = runCatching {
        val root = JSONObject(raw)
        require(root.keys().asSequence().toSet() == MANIFEST_KEYS)
        val targets = root.getJSONArray("targets").let { array ->
            buildList {
                for (index in 0 until array.length()) add(decodeTarget(array.getJSONObject(index)))
            }
        }
        val manifest = LegacyMigrationManifest(
            schemaVersion = root.getInt("schemaVersion"),
            epoch = root.getLong("epoch"),
            phase = LegacyMigrationPhase.valueOf(root.getString("phase")),
            sourcePresent = root.getBoolean("sourcePresent"),
            sourceSha256 = root.getString("sourceSha256"),
            sourceContextProviders = root.getJSONArray("sourceContextProviders").let { array ->
                buildSet {
                    for (index in 0 until array.length()) {
                        add(requireNotNull(ProviderId.fromStorageId(array.getString(index))))
                    }
                }
            },
            targets = ordered(targets),
            projectionSha256 = root.getString("projectionSha256"),
            checksum = root.getString("checksum")
        )
        require(manifest.phase == LegacyMigrationPhase.COMPLETE)
        require(manifest.checksum == sha256(manifestBody(manifest).toString()))
        manifest
    }.getOrNull()

    fun sha256(raw: String): String = MessageDigest.getInstance("SHA-256")
        .digest(raw.toByteArray(Charsets.UTF_8))
        .joinToString("") { "%02x".format(it) }

    fun sha256(raw: ByteArray): String = MessageDigest.getInstance("SHA-256")
        .digest(raw)
        .joinToString("") { "%02x".format(it) }

    private fun manifestBody(manifest: LegacyMigrationManifest): JSONObject = JSONObject()
        .put("schemaVersion", manifest.schemaVersion)
        .put("epoch", manifest.epoch)
        .put("phase", manifest.phase.name)
        .put("sourcePresent", manifest.sourcePresent)
        .put("sourceSha256", manifest.sourceSha256)
        .put("sourceContextProviders", JSONArray().also { array ->
            manifest.sourceContextProviders.sortedBy { it.ordinal }.forEach { array.put(it.storageId) }
        })
        .put("targets", JSONArray().also { array -> ordered(manifest.targets).forEach { array.put(encodeTarget(it)) } })
        .put("projectionSha256", manifest.projectionSha256)

    private fun encodeTarget(target: LegacyMigrationTarget): JSONObject = JSONObject()
        .put("providerId", target.accountId.providerId.storageId)
        .put("accountKey", target.accountId.accountKey.storageValue())
        .put("snapshotSha256", target.sourceSnapshotSha256)
        .put("authorityVersion", target.authorityVersion.value)
        .put("vault", target.vaultBinding?.let(::encodeVault) ?: JSONObject.NULL)
        .put("vaultEnvelopeSha256", target.vaultEnvelopeSha256 ?: JSONObject.NULL)

    private fun encodeVault(binding: CredentialVaultBinding): JSONObject = JSONObject()
        .put("schema", binding.schema.value)
        .put("generation", binding.generation.value)
        .put("sessionRevision", binding.sessionRevision.value)
        .put("secretRevision", binding.secretRevision.value)

    private fun decodeTarget(root: JSONObject): LegacyMigrationTarget {
        require(root.keys().asSequence().toSet() == TARGET_KEYS)
        val provider = requireNotNull(ProviderId.fromStorageId(root.getString("providerId")))
        require(provider == ProviderId.CLAUDE || provider == ProviderId.CODEX)
        val accountId = ProviderAccountId(provider, AccountKey.fromStorage(root.getString("accountKey")))
        val vault = if (root.isNull("vault")) null else root.getJSONObject("vault").let { value ->
            require(value.keys().asSequence().toSet() == VAULT_KEYS)
            CredentialVaultBinding(
                schema = CredentialVaultSchema.of(value.getInt("schema")),
                accountId = CredentialVaultAccountId.parse(accountId),
                generation = AccountGeneration.of(value.getLong("generation")),
                sessionRevision = SessionRevision.of(value.getLong("sessionRevision")),
                secretRevision = SecretRevision.of(value.getLong("secretRevision"))
            )
        }
        return LegacyMigrationTarget(
            accountId = accountId,
            sourceSnapshotSha256 = root.getString("snapshotSha256"),
            authorityVersion = DisplayVersion.of(root.getLong("authorityVersion")),
            vaultBinding = vault,
            vaultEnvelopeSha256 = if (root.isNull("vaultEnvelopeSha256")) null else root.getString("vaultEnvelopeSha256")
        )
    }

    private fun ordered(targets: List<LegacyMigrationTarget>) = targets.sortedBy { it.accountId.providerId.ordinal }

    private const val ZERO_HASH = "0000000000000000000000000000000000000000000000000000000000000000"
    private val MANIFEST_KEYS = setOf("schemaVersion", "epoch", "phase", "sourcePresent", "sourceSha256", "sourceContextProviders", "targets", "projectionSha256", "checksum")
    private val TARGET_KEYS = setOf("providerId", "accountKey", "snapshotSha256", "authorityVersion", "vault", "vaultEnvelopeSha256")
    private val VAULT_KEYS = setOf("schema", "generation", "sessionRevision", "secretRevision")
}
