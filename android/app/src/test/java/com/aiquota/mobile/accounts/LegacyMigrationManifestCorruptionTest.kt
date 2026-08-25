package com.aiquota.mobile.accounts

import android.database.sqlite.SQLiteDatabase
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.providers.ProviderSnapshotCodec
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner

@RunWith(RobolectricTestRunner::class)
class LegacyMigrationManifestCorruptionTest {
    @Test
    fun everyAuthorityVaultAndProjectionSurfaceInvalidatesOrRepairsComplete() {
        val sqlMutations = listOf(
            "UPDATE accounts SET state='SUSPENDED' WHERE provider_id='claude' AND account_key='default'",
            "UPDATE accounts SET auth_state='SIGNED_OUT' WHERE provider_id='claude' AND account_key='default'",
            "UPDATE accounts SET generation=generation+1 WHERE provider_id='claude' AND account_key='default'",
            "UPDATE accounts SET session_revision=session_revision+1 WHERE provider_id='claude' AND account_key='default'",
            "UPDATE accounts SET modified_version=modified_version+1 WHERE provider_id='claude' AND account_key='default'",
            "UPDATE demands SET demand_mask=1 WHERE provider_id='claude' AND account_key='default'",
            "UPDATE attempts SET generation=generation+1 WHERE provider_id='claude' AND account_key='default'",
            "UPDATE attempts SET session_revision=session_revision+1 WHERE provider_id='claude' AND account_key='default'",
            "UPDATE attempts SET active_nonce='attempt_0000000000000001' WHERE provider_id='claude' AND account_key='default'",
            "UPDATE nonce_heads SET last_nonce='attempt_0000000000000001' WHERE provider_id='claude' AND account_key='default'",
            "INSERT INTO published_nonces(provider_id,account_key,nonce) VALUES('claude','default','attempt_0000000000000001')",
            "UPDATE migration_mirrors SET receipt_sha256='${"0".repeat(64)}' WHERE provider_id='claude' AND account_key='default'",
            "UPDATE migration_preferences SET receipt_sha256='${"0".repeat(64)}' WHERE provider_id='claude' AND account_key='default'",
            "UPDATE snapshots SET snapshot_json='${ProviderSnapshotCodec.encode(listOf(migrationSnapshot(ProviderId.CLAUDE, "corrupt", 1))).replace("'", "''")}' WHERE provider_id='claude' AND account_key='default'"
        )
        sqlMutations.forEach { sql ->
            MigrationTestEnvironment(migrationSource(claude = true)).use { environment ->
                environment.run() as LegacyMigrationResult.Completed
                mutate(environment, sql)
                val result = environment.run()
                assertFalse(sql, result is LegacyMigrationResult.Completed && result.resumed)
            }
        }

        MigrationTestEnvironment(migrationSource(claude = true, claudeContext = migrationContext("CA"))).use { environment ->
            val manifest = (environment.run() as LegacyMigrationResult.Completed).manifest
            val binding = requireNotNull(manifest.targets.single().vaultBinding)
            assertTrue(environment.vault.delete(binding.accountId))
            assertTrue(environment.run() is LegacyMigrationResult.Blocked)
        }

        MigrationTestEnvironment(migrationSource(claude = true)).use { environment ->
            val original = (environment.run() as LegacyMigrationResult.Completed).manifest
            mutate(environment, "UPDATE projection_state SET applied_revision=0, aggregate_sha256='${"0".repeat(64)}' WHERE singleton_id=1")
            val repaired = environment.run() as LegacyMigrationResult.Completed
            assertEquals(repaired.manifest.projection.appliedRevision, environment.authority.legacyProjectionState().appliedRevision)
            assertFalse(environment.authority.legacyProjectionState().aggregateSha256 == "0".repeat(64))
            assertEquals(original.targets, repaired.manifest.targets)
        }
        println("QA_FIX1_AUTHORITY_SURFACE_MUTATIONS=${sqlMutations.size + 2}")
    }

    @Test
    fun everyManifestTargetSourceAndProjectionFieldRejectsValidChecksumCorruption() {
        val source = migrationSource(claude = true, claudeContext = migrationContext("CA"))
        MigrationTestEnvironment(source).use { environment ->
            val original = (environment.run() as LegacyMigrationResult.Completed).manifest
            val target = original.targets.single()
            val hash0 = "0".repeat(64)
            val targetMutations = listOf(
                target.copy(accountId = ProviderAccountId(ProviderId.CODEX, AccountKey.reservedDefault()), contextSourceReceipt = null, vaultBinding = null, vaultEnvelopeSha256 = null),
                target.copy(accountState = AccountState.SUSPENDED),
                target.copy(authState = AccountAuthState.SIGNED_OUT),
                target.copy(deletionState = AccountDeletionState.TOMBSTONED),
                target.copy(generation = target.generation.next()),
                target.copy(sessionRevision = target.sessionRevision.next()),
                target.copy(authorityVersion = target.authorityVersion.next()),
                target.copy(demandMask = 1),
                target.copy(attemptGeneration = target.attemptGeneration.next()),
                target.copy(attemptSessionRevision = target.attemptSessionRevision.next()),
                target.copy(activeNonce = "attempt_0000000000000001"),
                target.copy(lastNonce = "attempt_0000000000000001"),
                target.copy(publishedNonceCount = 1),
                target.copy(mirrorReceiptSha256 = hash0),
                target.copy(preferenceReceiptSha256 = hash0),
                target.copy(contextSourceReceipt = requireNotNull(target.contextSourceReceipt).copy(
                    encryptedSource = requireNotNull(target.contextSourceReceipt).encryptedSource.copy(sha256 = hash0)
                )),
                target.copy(vaultEnvelopeSha256 = hash0)
            )
            targetMutations.forEach { mutation ->
                environment.journal.manifestBytes = LegacyMigrationCodec.encodeManifest(
                    LegacyMigrationCodec.completeManifest(original.sourceReceipt, listOf(mutation), original.projection)
                )
                val result = environment.run()
                assertFalse(result is LegacyMigrationResult.Completed && result.resumed)
                if (result is LegacyMigrationResult.Blocked) assertTrue(environment.run() is LegacyMigrationResult.Completed)
            }
            val projectionMutations = listOf(
                original.projection.copy(desiredRevision = original.projection.desiredRevision + 1),
                original.projection.copy(appliedRevision = 0),
                original.projection.copy(aggregateSha256 = hash0),
                original.projection.copy(mirrorsSha256 = hash0),
                original.projection.copy(cacheSha256 = hash0)
            )
            projectionMutations.forEach { projection ->
                environment.journal.manifestBytes = LegacyMigrationCodec.encodeManifest(
                    LegacyMigrationCodec.completeManifest(original.sourceReceipt, original.targets, projection)
                )
                environment.run() as LegacyMigrationResult.Completed
                assertFalse(environment.journal.readManifest()?.projection == projection)
            }
            val badSource = original.sourceReceipt.copy(
                aggregate = original.sourceReceipt.aggregate.copy(sha256 = hash0)
            )
            environment.journal.manifestBytes = LegacyMigrationCodec.encodeManifest(
                LegacyMigrationCodec.completeManifest(badSource, original.targets, original.projection)
            )
            assertTrue(environment.run() is LegacyMigrationResult.Blocked)
            assertTrue(environment.run() is LegacyMigrationResult.Completed)
            println("QA_FIX1_MANIFEST_FIELD_MUTATIONS=${targetMutations.size + projectionMutations.size + 1}")
        }
    }

    private fun mutate(environment: MigrationTestEnvironment, sql: String) {
        environment.authority.close()
        SQLiteDatabase.openDatabase(
            environment.context.getDatabasePath(environment.databaseName).path,
            null,
            SQLiteDatabase.OPEN_READWRITE
        ).use { it.execSQL(sql) }
        environment.authority = MainProcessAccountAuthority.open(environment.context, environment.databaseName)
    }
}
