package com.aiquota.mobile.accounts

import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.local.ProviderUsageSnapshot
import com.aiquota.mobile.providers.ProviderSnapshotCodec
import java.security.MessageDigest
import org.json.JSONArray
import org.json.JSONObject

internal object LegacyMigrationCodec {
    fun strictSnapshots(source: LegacySourceCapture): List<ProviderUsageSnapshot>? =
        LegacySnapshotStrictParser.parse(source.rawAggregate)

    fun blobReceipt(raw: String, formatVersion: Int = 1): LegacyBlobReceipt = LegacyBlobReceipt(
        formatVersion = formatVersion,
        byteLength = raw.toByteArray(Charsets.UTF_8).size,
        sha256 = sha256(raw)
    )

    fun snapshotSha256(snapshot: ProviderUsageSnapshot): String =
        sha256(ProviderSnapshotCodec.encode(listOf(snapshot)))

    fun completeManifest(
        source: LegacySourceReceipt,
        targets: List<LegacyMigrationTarget>,
        projection: LegacyProjectionReceipt
    ): LegacyMigrationManifest {
        val provisional = LegacyMigrationManifest(
            schemaVersion = LegacyMigrationManifest.SCHEMA_VERSION,
            epoch = LegacyMigrationManifest.EPOCH,
            phase = LegacyMigrationPhase.COMPLETE,
            sourceReceipt = source,
            targets = targets.sortedBy { it.accountId.providerId.ordinal },
            projection = projection,
            checksum = ZERO_HASH
        )
        return provisional.copy(checksum = sha256(manifestBody(provisional).toString()))
    }

    fun encodeManifest(manifest: LegacyMigrationManifest): String {
        val body = manifestBody(manifest)
        require(manifest.checksum == sha256(body.toString()))
        return body.put("checksum", manifest.checksum).toString()
    }

    fun decodeManifest(raw: String): LegacyMigrationManifest? = runCatching {
        val root = JSONObject(raw)
        require(root.keys().asSequence().toSet() == MANIFEST_KEYS)
        val manifest = LegacyMigrationManifest(
            schemaVersion = root.getInt("schemaVersion"),
            epoch = root.getLong("epoch"),
            phase = LegacyMigrationPhase.valueOf(root.getString("phase")),
            sourceReceipt = decodeSourceReceipt(root.getJSONObject("sourceReceipt")),
            targets = LegacyMigrationTargetCodec.decodeList(root.getJSONArray("targets")),
            projection = decodeProjection(root.getJSONObject("projection")),
            checksum = root.getString("checksum")
        )
        require(manifest.checksum == sha256(manifestBody(manifest).toString()))
        manifest
    }.getOrNull()

    fun encodeSourceReceipt(receipt: LegacySourceReceipt): JSONObject = JSONObject()
        .put("aggregatePresent", receipt.aggregatePresent)
        .put("aggregate", encodeBlob(receipt.aggregate))
        .put("contexts", JSONArray().also { array ->
            receipt.contexts.sortedBy { it.providerId.ordinal }.forEach { array.put(encodeContextReceipt(it)) }
        })

    fun decodeSourceReceipt(root: JSONObject): LegacySourceReceipt {
        require(root.keys().asSequence().toSet() == SOURCE_KEYS)
        val contexts = root.getJSONArray("contexts").let { array ->
            buildList { for (index in 0 until array.length()) add(decodeContextReceipt(array.getJSONObject(index))) }
        }
        return LegacySourceReceipt(root.getBoolean("aggregatePresent"), decodeBlob(root.getJSONObject("aggregate")), contexts)
    }

    fun encodeContextReceipt(receipt: LegacyContextSourceReceipt): JSONObject = JSONObject()
        .put("providerId", receipt.providerId.storageId)
        .put("encryptedSource", encodeBlob(receipt.encryptedSource))

    fun decodeContextReceipt(root: JSONObject): LegacyContextSourceReceipt {
        require(root.keys().asSequence().toSet() == CONTEXT_KEYS)
        return LegacyContextSourceReceipt(
            requireNotNull(ProviderId.fromStorageId(root.getString("providerId"))),
            decodeBlob(root.getJSONObject("encryptedSource"))
        )
    }

    fun encodeTargets(targets: List<LegacyMigrationTarget>): String =
        JSONObject().put("targets", LegacyMigrationTargetCodec.encodeList(targets)).toString()

    fun decodeTargets(raw: String): List<LegacyMigrationTarget>? = runCatching {
        val root = JSONObject(raw)
        require(root.keys().asSequence().toSet() == setOf("targets"))
        LegacyMigrationTargetCodec.decodeList(root.getJSONArray("targets"))
    }.getOrNull()

    fun encodeProjectionIntent(intent: LegacyProjectionIntent): String = JSONObject()
        .put("sourceAggregate", encodeBlob(intent.sourceAggregate))
        .put("projectedAggregate", encodeBlob(intent.projectedAggregate))
        .put("desiredRevision", intent.desiredRevision)
        .toString()

    fun decodeProjectionIntent(raw: String): LegacyProjectionIntent? = runCatching {
        val root = JSONObject(raw)
        require(root.keys().asSequence().toSet() == PROJECTION_INTENT_KEYS)
        LegacyProjectionIntent(
            decodeBlob(root.getJSONObject("sourceAggregate")),
            decodeBlob(root.getJSONObject("projectedAggregate")),
            root.getLong("desiredRevision")
        )
    }.getOrNull()

    fun sha256(raw: String): String = sha256(raw.toByteArray(Charsets.UTF_8))

    fun sha256(raw: ByteArray): String = MessageDigest.getInstance("SHA-256")
        .digest(raw).joinToString("") { "%02x".format(it) }

    private fun manifestBody(manifest: LegacyMigrationManifest): JSONObject = JSONObject()
        .put("schemaVersion", manifest.schemaVersion)
        .put("epoch", manifest.epoch)
        .put("phase", manifest.phase.name)
        .put("sourceReceipt", encodeSourceReceipt(manifest.sourceReceipt))
        .put("targets", LegacyMigrationTargetCodec.encodeList(manifest.targets))
        .put("projection", encodeProjection(manifest.projection))

    private fun encodeProjection(receipt: LegacyProjectionReceipt): JSONObject = JSONObject()
        .put("desiredRevision", receipt.desiredRevision)
        .put("appliedRevision", receipt.appliedRevision)
        .put("aggregate", receipt.aggregateSha256)
        .put("mirrors", receipt.mirrorsSha256)
        .put("cache", receipt.cacheSha256)

    private fun decodeProjection(root: JSONObject): LegacyProjectionReceipt {
        require(root.keys().asSequence().toSet() == PROJECTION_KEYS)
        return LegacyProjectionReceipt(
            desiredRevision = root.getLong("desiredRevision"),
            appliedRevision = root.getLong("appliedRevision"),
            aggregateSha256 = root.getString("aggregate"),
            mirrorsSha256 = root.getString("mirrors"),
            cacheSha256 = root.getString("cache")
        )
    }

    private fun encodeBlob(receipt: LegacyBlobReceipt): JSONObject = JSONObject()
        .put("formatVersion", receipt.formatVersion)
        .put("byteLength", receipt.byteLength)
        .put("sha256", receipt.sha256)

    private fun decodeBlob(root: JSONObject): LegacyBlobReceipt {
        require(root.keys().asSequence().toSet() == BLOB_KEYS)
        return LegacyBlobReceipt(root.getInt("formatVersion"), root.getInt("byteLength"), root.getString("sha256"))
    }

    private const val ZERO_HASH = "0000000000000000000000000000000000000000000000000000000000000000"
    private val MANIFEST_KEYS = setOf("schemaVersion", "epoch", "phase", "sourceReceipt", "targets", "projection", "checksum")
    private val SOURCE_KEYS = setOf("aggregatePresent", "aggregate", "contexts")
    private val CONTEXT_KEYS = setOf("providerId", "encryptedSource")
    private val BLOB_KEYS = setOf("formatVersion", "byteLength", "sha256")
    private val PROJECTION_KEYS = setOf("desiredRevision", "appliedRevision", "aggregate", "mirrors", "cache")
    private val PROJECTION_INTENT_KEYS = setOf("sourceAggregate", "projectedAggregate", "desiredRevision")
}
