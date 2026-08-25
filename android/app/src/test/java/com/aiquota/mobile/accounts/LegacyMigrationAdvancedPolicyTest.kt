package com.aiquota.mobile.accounts

import android.database.sqlite.SQLiteDatabase
import com.aiquota.mobile.local.ProviderId
import org.json.JSONObject
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner

@RunWith(RobolectricTestRunner::class)
class LegacyMigrationAdvancedPolicyTest {
    @Test
    fun everyManifestFieldIsValidatedInBaselineAndAdvancedBranches() {
        val mutations = manifestMutations()
        var blocked = 0
        var repaired = 0
        listOf(false, true).forEach { advanced ->
            mutations.forEach { mutation ->
                MigrationTestEnvironment(migrationSource(claude = true, claudeContext = migrationContext("CA"))).use { environment ->
                    val original = (environment.run() as LegacyMigrationResult.Completed).manifest
                    if (advanced) advanceAuthenticated(environment, original.targets.single())
                    val corrupted = mutateManifest(original, mutation)
                    environment.journal.manifestBytes = corrupted
                    val countBefore = accountCount(environment)
                    val result = environment.run()
                    assertEquals(mutation.name, countBefore, accountCount(environment))
                    if (mutation.repairableProjection) {
                        assertTrue(mutation.name, result is LegacyMigrationResult.Completed)
                        assertFalse(mutation.name, environment.journal.manifestBytes == corrupted)
                        repaired++
                    } else {
                        assertTrue(mutation.name, result is LegacyMigrationResult.Blocked)
                        blocked++
                    }
                }
            }
        }
        println("QA_FIX2_MANIFEST_FIELDS=${mutations.size};BRANCHES=2;BLOCKED=$blocked;REPAIRED=$repaired")
    }

    @Test
    fun advancedAuthorityFieldsRequireOneCoherentAuthenticatedState() {
        val sqlMutations = listOf(
            "UPDATE accounts SET state='SUSPENDED' WHERE provider_id='claude' AND account_key='default'",
            "UPDATE accounts SET deletion_state='TOMBSTONED' WHERE provider_id='claude' AND account_key='default'",
            "UPDATE accounts SET auth_state='REAUTH_REQUIRED' WHERE provider_id='claude' AND account_key='default'",
            "UPDATE accounts SET modified_version=0 WHERE provider_id='claude' AND account_key='default'",
            "UPDATE demands SET demand_mask=16 WHERE provider_id='claude' AND account_key='default'",
            "UPDATE attempts SET generation=1 WHERE provider_id='claude' AND account_key='default'",
            "UPDATE attempts SET session_revision=1 WHERE provider_id='claude' AND account_key='default'",
            "UPDATE attempts SET active_nonce='attempt_0000000000000001' WHERE provider_id='claude' AND account_key='default'",
            "UPDATE nonce_heads SET last_nonce='attempt_0000000000000001' WHERE provider_id='claude' AND account_key='default'",
            "UPDATE migration_mirrors SET copied_json='corrupt' WHERE provider_id='claude' AND account_key='default'",
            "UPDATE migration_preferences SET copied_sha256='${"0".repeat(64)}' WHERE provider_id='claude' AND account_key='default'"
        )
        sqlMutations.forEach { sql ->
            MigrationTestEnvironment(migrationSource(claude = true, claudeContext = migrationContext("CA"))).use { environment ->
                val manifest = (environment.run() as LegacyMigrationResult.Completed).manifest
                advanceAuthenticated(environment, manifest.targets.single())
                mutateAuthority(environment, sql)
                assertTrue(sql, environment.run() is LegacyMigrationResult.Blocked)
                assertEquals(sql, 1, accountCount(environment))
            }
        }
        MigrationTestEnvironment(migrationSource(claude = true, claudeContext = migrationContext("CA"))).use { environment ->
            val manifest = (environment.run() as LegacyMigrationResult.Completed).manifest
            advanceAuthenticated(environment, manifest.targets.single())
            assertTrue(environment.vault.delete(requireNotNull(manifest.targets.single().vaultBinding).accountId))
            assertTrue(environment.run() is LegacyMigrationResult.Blocked)
        }
        println("QA_FIX2_ADVANCED_AUTHORITY_CORRUPTIONS=${sqlMutations.size + 1}")
    }

    private fun manifestMutations(): List<ManifestMutation> {
        val hash0 = "0".repeat(64)
        val root = listOf(
            mutation("schemaVersion") { it.put("schemaVersion", 999) },
            mutation("epoch") { it.put("epoch", 999) },
            mutation("phase") { it.put("phase", "COPYING") },
            mutation("source.aggregatePresent") { it.getJSONObject("sourceReceipt").put("aggregatePresent", false) },
            mutation("source.aggregate.version") { it.aggregate().put("formatVersion", 2) },
            mutation("source.aggregate.length") { it.aggregate().put("byteLength", it.aggregate().getInt("byteLength") + 1) },
            mutation("source.aggregate.sha") { it.aggregate().put("sha256", hash0) },
            mutation("source.context.provider") { it.context().put("providerId", "codex") },
            mutation("source.context.version") { it.contextBlob().put("formatVersion", 2) },
            mutation("source.context.length") { it.contextBlob().put("byteLength", it.contextBlob().getInt("byteLength") + 1) },
            mutation("source.context.sha") { it.contextBlob().put("sha256", hash0) }
        )
        val targetTextValues = linkedMapOf(
            "providerId" to "codex", "accountKey" to "other", "sourceSnapshot" to hash0,
            "accountState" to "SUSPENDED", "authState" to "SIGNED_OUT", "deletionState" to "TOMBSTONED",
            "activeNonce" to "attempt_0000000000000001", "lastNonce" to "attempt_0000000000000001",
            "mirrorReceipt" to hash0, "preferenceReceipt" to hash0, "vaultEnvelope" to hash0
        ).map { (field, value) -> mutation("target.$field") { it.target().put(field, value) } }
        val targetNumericValues = linkedMapOf(
            "generation" to 2L, "sessionRevision" to 2L, "authorityVersion" to 99L,
            "demandMask" to 1L, "attemptGeneration" to 2L, "attemptSessionRevision" to 2L,
            "publishedNonceCount" to 1L
        ).map { (field, value) -> mutation("target.$field") { it.target().put(field, value) } }
        val targetValues = targetTextValues + targetNumericValues
        val nested = listOf(
            mutation("target.context.provider") { it.target().getJSONObject("contextSource").put("providerId", "codex") },
            mutation("target.context.version") { it.targetContextBlob().put("formatVersion", 2) },
            mutation("target.context.length") { it.targetContextBlob().put("byteLength", it.targetContextBlob().getInt("byteLength") + 1) },
            mutation("target.context.sha") { it.targetContextBlob().put("sha256", hash0) },
            mutation("target.vault.schema") { it.vault().put("schema", 99) },
            mutation("target.vault.generation") { it.vault().put("generation", 2) },
            mutation("target.vault.session") { it.vault().put("sessionRevision", 2) },
            mutation("target.vault.secretRevision") { it.vault().put("secretRevision", 2) }
        )
        val projection = listOf("desiredRevision", "appliedRevision", "aggregate", "mirrors", "cache").map { field ->
            ManifestMutation("projection.$field", true) { rootObject ->
                val target = rootObject.getJSONObject("projection")
                when (field) {
                    "desiredRevision" -> target.put(field, 999L)
                    "appliedRevision" -> target.put(field, 0L)
                    else -> target.put(field, hash0)
                }
            }
        }
        return root + targetValues + nested + projection + mutation("checksum", recomputeChecksum = false) {
            it.put("checksum", hash0)
        }
    }

    private fun mutateManifest(manifest: LegacyMigrationManifest, mutation: ManifestMutation): String {
        val root = JSONObject(LegacyMigrationCodec.encodeManifest(manifest))
        if (mutation.recomputeChecksum) root.remove("checksum")
        mutation.change(root)
        if (mutation.recomputeChecksum) root.put("checksum", LegacyMigrationCodec.sha256(root.toString()))
        return root.toString()
    }

    private fun mutation(name: String, recomputeChecksum: Boolean = true, change: (JSONObject) -> Unit) =
        ManifestMutation(name, false, recomputeChecksum, change)

    private fun JSONObject.aggregate() = getJSONObject("sourceReceipt").getJSONObject("aggregate")
    private fun JSONObject.context() = getJSONObject("sourceReceipt").getJSONArray("contexts").getJSONObject(0)
    private fun JSONObject.contextBlob() = context().getJSONObject("encryptedSource")
    private fun JSONObject.target() = getJSONArray("targets").getJSONObject(0)
    private fun JSONObject.targetContextBlob() = target().getJSONObject("contextSource").getJSONObject("encryptedSource")
    private fun JSONObject.vault() = target().getJSONObject("vault")

    private fun advanceAuthenticated(environment: MigrationTestEnvironment, target: LegacyMigrationTarget) {
        mutateAuthority(environment, "UPDATE accounts SET auth_state='AUTHENTICATED',generation=2,session_revision=2,modified_version=modified_version+1 WHERE provider_id='claude' AND account_key='default';UPDATE attempts SET generation=2,session_revision=2 WHERE provider_id='claude' AND account_key='default';UPDATE snapshots SET display_version=display_version+1 WHERE provider_id='claude' AND account_key='default';UPDATE authority_metadata SET display_version=display_version+1 WHERE singleton_id=1")
        val binding = requireNotNull(target.vaultBinding).copy(generation = AccountGeneration.of(2), sessionRevision = SessionRevision.of(2))
        assertTrue(environment.vault.put(binding, CredentialBundle.fromBytes("native-context-CA".toByteArray())))
    }

    private fun accountCount(environment: MigrationTestEnvironment): Int = SQLiteDatabase.openDatabase(
        environment.context.getDatabasePath(environment.databaseName).path, null, SQLiteDatabase.OPEN_READONLY
    ).use { db -> db.rawQuery("SELECT COUNT(*) FROM accounts", null).use { cursor -> check(cursor.moveToFirst()); cursor.getInt(0) } }

    private fun mutateAuthority(environment: MigrationTestEnvironment, statements: String) {
        environment.authority.close()
        SQLiteDatabase.openDatabase(environment.context.getDatabasePath(environment.databaseName).path, null, SQLiteDatabase.OPEN_READWRITE).use { db ->
            statements.split(';').filter(String::isNotBlank).forEach(db::execSQL)
        }
        environment.authority = MainProcessAccountAuthority.open(environment.context, environment.databaseName)
    }

    private data class ManifestMutation(
        val name: String,
        val repairableProjection: Boolean,
        val recomputeChecksum: Boolean = true,
        val change: (JSONObject) -> Unit
    )
}
