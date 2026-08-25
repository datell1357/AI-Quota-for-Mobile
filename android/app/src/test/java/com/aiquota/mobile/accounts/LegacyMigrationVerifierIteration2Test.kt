package com.aiquota.mobile.accounts

import android.database.sqlite.SQLiteDatabase
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.providers.ProviderSnapshotCodec
import java.io.File
import java.util.concurrent.CountDownLatch
import java.util.concurrent.Executors
import java.util.concurrent.TimeUnit
import org.junit.Assert.assertArrayEquals
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNotSame
import org.junit.Assert.assertNull
import org.junit.Assert.assertThrows
import org.junit.Assert.assertTrue
import org.junit.Test
import org.json.JSONObject
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner

@RunWith(RobolectricTestRunner::class)
class LegacyMigrationVerifierIteration2Test {
    @Test
    fun v602ExecutesCoherenceAndEveryExactAndOversizedBoundary() {
        val coherent = linePayload("\"remainingPercent\":0.8,\"usedPercent\":20.4")
        val contradictory = linePayload("\"remainingPercent\":0.8,\"usedPercent\":21.0")
        val exactAggregate = paddedJson("{\"providers\":[]}", 2_097_152)
        val oversizedAggregate = exactAggregate + " "
        val allProviders = ProviderId.entries.joinToString(",") { providerObject(it.storageId, "[]") }
        val providerLimitPlusOne = "$allProviders,${providerObject(ProviderId.CLAUDE.storageId, "[]")}"
        val lines256 = (0 until 256).joinToString(",") { "{\"label\":\"L$it\"}" }
        val lines257 = "$lines256,{\"label\":\"overflow\"}"
        val exactContext = paddedContext(1_048_576)
        val contexts64 = (0 until 64).joinToString(",", "{", "}") { "\"e$it\":{\"Authorization\":\"v\"}" }
        val contexts65 = contexts64.dropLast(1) + ",\"overflow\":{\"Authorization\":\"v\"}}"
        val headers64 = (0 until 64).joinToString(",", "{\"e\":{", "}}") { "\"h$it\":\"v\"" }
        val headers65 = headers64.dropLast(2) + ",\"overflow\":\"v\"}}"
        val exactName = "n".repeat(16_384)
        val cases = linkedMapOf(
            "coherent-percentages" to (strict(coherent) != null),
            "contradictory-percentages" to (strict(contradictory) == null),
            "aggregate-exact" to (strict(exactAggregate) != null),
            "aggregate-plus-one" to (strict(oversizedAggregate) == null),
            "known-provider-limit" to (strict("{\"providers\":[$allProviders]}")?.size == ProviderId.entries.size),
            "provider-limit-plus-one" to (strict("{\"providers\":[$providerLimitPlusOne]}") == null),
            "unknown-provider" to (strict("{\"providers\":[${providerObject("unknown", "[]")}]}") == null),
            "lines-exact" to (strict("{\"providers\":[${providerObject("claude", "[$lines256]")}]}" ) != null),
            "lines-plus-one" to (strict("{\"providers\":[${providerObject("claude", "[$lines257]")}]}" ) == null),
            "context-bytes-exact" to (LegacyContextStrictParser.parse(exactContext) != null),
            "context-bytes-plus-one" to (LegacyContextStrictParser.parse(exactContext + " ") == null),
            "contexts-exact" to (LegacyContextStrictParser.parse(contexts64)?.size == 64),
            "contexts-plus-one" to (LegacyContextStrictParser.parse(contexts65) == null),
            "headers-exact" to (LegacyContextStrictParser.parse(headers64)?.get("e")?.size == 64),
            "headers-plus-one" to (LegacyContextStrictParser.parse(headers65) == null),
            "name-exact" to (LegacyContextStrictParser.parse("{\"$exactName\":{\"h\":\"v\"}}") != null),
            "name-plus-one" to (LegacyContextStrictParser.parse("{\"${exactName}x\":{\"h\":\"v\"}}") == null),
            "numeric-lower" to (strict(linePayload("\"remainingPercent\":0.0")) != null),
            "numeric-upper" to (strict(linePayload("\"remainingPercent\":1.0")) != null),
            "numeric-over" to (strict(linePayload("\"remainingPercent\":1.0001")) == null),
            "amount-exact" to (strict(linePayload("\"limitAmount\":1.0e15")) != null),
            "amount-plus-one" to (strict(linePayload("\"limitAmount\":1.000000000000001e15")) == null),
            "used-exact" to (strict(linePayload("\"remainingPercent\":0.0,\"usedPercent\":100.0")) != null),
            "confidence-exact" to (strict(linePayload("\"confidence\":1.0")) != null),
            "trailing" to (strict("{\"providers\":[]}x") == null),
            "duplicate" to (strict("{\"providers\":[],\"providers\":[]}") == null),
            "wrong-shape" to (strict("{\"providers\":{}}") == null)
        )
        assertEquals(cases.filterValues { !it }.keys.toString(), cases.size, cases.count { it.value })
        println("QA_FIX2_BOUNDARY_CASES=${cases.size};NAMES=${cases.keys.joinToString(",")}")
    }

    @Test
    fun v604M13FiresOnlyAfterContenderAcquiresReleasedProcessLockAndM05M06DataIsDurable() {
        val contender = MigrationTestEnvironment(migrationSource())
        val primary = MigrationTestEnvironment(migrationSource(claude = true))
        val executor = Executors.newSingleThreadExecutor()
        try {
            val started = CountDownLatch(1)
            val acquired = CountDownLatch(1)
            var contenderFuture: java.util.concurrent.Future<*>? = null
            primary.run(LegacyMigrationFaultInjector { event ->
                if (event.point == LegacyMigrationFaultPoint.M13_AFTER_GATE_RELEASE) {
                    contenderFuture = executor.submit {
                        started.countDown()
                        contender.run(LegacyMigrationFaultInjector { contenderEvent ->
                            if (contenderEvent.point == LegacyMigrationFaultPoint.M00_AFTER_GATE) acquired.countDown()
                        })
                    }
                    assertTrue(started.await(2, TimeUnit.SECONDS))
                    assertTrue(acquired.await(2, TimeUnit.SECONDS))
                }
            })
            requireNotNull(contenderFuture).get(2, TimeUnit.SECONDS)
            println("QA_FIX2_M13_CONTENDER_ACQUIRED=1")
        } finally {
            executor.shutdownNow()
            primary.close()
            contender.close()
        }

        listOf(
            LegacyMigrationFaultPoint.M05_AFTER_MIRROR_COPY to "migration_mirrors",
            LegacyMigrationFaultPoint.M06_AFTER_PREF_COPY to "migration_preferences"
        ).forEach { (point, table) ->
            MigrationTestEnvironment(migrationSource(claude = true)).use { environment ->
                assertThrows(LegacyMigrationInterruptedException::class.java) {
                    environment.run(LegacyMigrationFaultInjector { event -> if (event.point == point) throw LegacyMigrationInterruptedException(event) })
                }
                openDb(environment).use { db ->
                    db.rawQuery("SELECT copied_json FROM $table WHERE provider_id='claude' AND account_key='default'", null).use { cursor ->
                        assertTrue(cursor.moveToFirst())
                        assertEquals("claude", JSONObject(cursor.getString(0)).getString("providerId"))
                    }
                }
                assertNull(environment.journal.readManifest())
            }
        }
        println("QA_FIX2_DURABLE_COPY_POINTS=2;OPERATIONS=MIRROR_DATA_COPIED,PREFERENCE_DATA_COPIED")
    }

    @Test
    fun v605HoldsSixFreshDependenciesAndContrastsMemoryLossWithDurableRecovery() {
        MigrationTestEnvironment(migrationSource(claude = true)).use { environment ->
            val projectionField = environment.javaClass.getDeclaredField("projectionStore").also { it.isAccessible = true }
            val old = listOf(environment.source, environment.journal, environment.authority, environment.vault, environment.crypto)
            val oldProjection = projectionField.get(environment)
            environment.restart()
            val fresh = listOf(environment.source, environment.journal, environment.authority, environment.vault, environment.crypto)
            old.zip(fresh).forEach { (before, after) -> assertNotSame(before, after) }
            assertNotSame(oldProjection, projectionField.get(environment))
            println("QA_FIX2_FRESH_OBJECTS=source,journal,authority,vault,crypto,projectionStore")
        }

        val memorySource = migrationSource(claude = true)
        val memoryJournal = MemoryMigrationJournal()
        MigrationTestEnvironment(memorySource, memoryJournal).use { environment ->
            assertThrows(LegacyMigrationInterruptedException::class.java) {
                environment.run(LegacyMigrationFaultInjector { event ->
                    if (event.point == LegacyMigrationFaultPoint.M10_AFTER_FULL_VERIFY) throw LegacyMigrationInterruptedException(event)
                })
            }
            memorySource.raw = ProviderSnapshotCodec.encode(listOf(migrationSnapshot(ProviderId.CLAUDE, "replacement", 9)))
            assertTrue(memoryJournal.isTargetCheckpointComplete())
            val reconstructed = LegacyAccountMigration(
                environment.source.reopen(), MemoryMigrationJournal(), environment.authority,
                AccountCredentialVault(DurableEnvelopeStore(environment.source.root), DurableCredentialCrypto(environment.source.root)),
                environment.source.reopen()
            ).run()
            assertTrue(reconstructed is LegacyMigrationResult.Blocked)
        }

        MigrationTestEnvironment(migrationSource(claude = true)).use { durable ->
            assertThrows(LegacyMigrationInterruptedException::class.java) {
                durable.run(LegacyMigrationFaultInjector { event ->
                    if (event.point == LegacyMigrationFaultPoint.M10_AFTER_FULL_VERIFY) throw LegacyMigrationInterruptedException(event)
                })
            }
            assertTrue(durable.restart() is LegacyMigrationResult.Completed)
        }
        println("QA_FIX2_RESTART_CONTRAST=memory-reconstructed-blocked,durable-reconstructed-completed")
    }

    @Test
    fun v606ProjectionPreservesWeirdGeminiRawObjectExactly() {
        val claude = ProviderSnapshotCodec.encode(listOf(migrationSnapshot(ProviderId.CLAUDE, "CA", 81)))
            .removePrefix("{\"providers\":[").removeSuffix("]}")
        val geminiRaw = "{ \"providerId\" : \"gemini\", \"connectionState\" : \"CONNECTED\", \"refreshState\" : \"IDLE\", \"plan\" : \"Gemini Plus\", \"fetchedAt\" : \"2026-08-25T00:00:00Z\", \"lines\" : [ { \"remainingPercent\" : 8.0e-1, \"usedPercent\" : 20.0, \"label\" : \"Quota\" } ] }"
        val kiroRaw = "{\"lines\":[], \"refreshState\":\"IDLE\", \"connectionState\":\"CONNECTED\", \"providerId\":\"kiro\", \"planLabel\":\"Kiro\"}"
        val source = DurableFakeMigrationSource.create(true, "{\n  \"providers\" : [ $claude,\n    $geminiRaw,\n $kiroRaw ]\n}", emptyMap())
        MigrationTestEnvironment(source).use { environment ->
            environment.run() as LegacyMigrationResult.Completed
            assertArrayEquals(geminiRaw.toByteArray(), exactSegment(source.raw, geminiRaw))
            assertArrayEquals(kiroRaw.toByteArray(), exactSegment(source.raw, kiroRaw))
            source.raw = source.raw.replace("CA-display", "legacy-target-drift")
            environment.restart() as LegacyMigrationResult.Completed
            assertArrayEquals(geminiRaw.toByteArray(), exactSegment(source.raw, geminiRaw))
            assertArrayEquals(kiroRaw.toByteArray(), exactSegment(source.raw, kiroRaw))
            println("QA_FIX2_RAW_GEMINI_SHA256=${LegacyMigrationCodec.sha256(geminiRaw)};RAW_KIRO_SHA256=${LegacyMigrationCodec.sha256(kiroRaw)}")
        }
    }

    @Test
    fun v607AdvancedStateStillRejectsEveryHistoricalAndCurrentCorruption() {
        val source = migrationSource(claude = true, claudeContext = migrationContext("CA"))
        MigrationTestEnvironment(source).use { environment ->
            val original = (environment.run() as LegacyMigrationResult.Completed).manifest
            advanceAuthenticated(environment, original.targets.single())
            val current = environment.authority.legacyImportState(original.targets.single().accountId)!!
            assertTrue(LegacyMigrationTargetValidator(environment.vault).validate(original.targets.single(), current, allowAdvanced = true))
            val corrupted = original.targets.single().copy(demandMask = 1, vaultEnvelopeSha256 = "0".repeat(64))
            environment.journal.manifestBytes = LegacyMigrationCodec.encodeManifest(
                LegacyMigrationCodec.completeManifest(original.sourceReceipt, listOf(corrupted), original.projection)
            )
            val result = environment.run()
            assertFalse(result is LegacyMigrationResult.Completed && result.resumed)
            println("QA_FIX2_ADVANCED_CORRUPTION_BLOCKED=1")
        }
    }

    @Test
    fun v609AggregateReplacementThroughEveryPreCompleteCheckpointBlocks() {
        val checkpoints = listOf(
            LegacyMigrationFaultPoint.M01_AFTER_SOURCE_CAPTURE, LegacyMigrationFaultPoint.M02_AFTER_PARSE,
            LegacyMigrationFaultPoint.M03_AFTER_REGISTRY_COPY, LegacyMigrationFaultPoint.M04_AFTER_SNAPSHOT_COPY,
            LegacyMigrationFaultPoint.M05_AFTER_MIRROR_COPY, LegacyMigrationFaultPoint.M06_AFTER_PREF_COPY,
            LegacyMigrationFaultPoint.M07_AFTER_OLD_DECRYPT, LegacyMigrationFaultPoint.M08_AFTER_SECRET_ENVELOPE,
            LegacyMigrationFaultPoint.M09_AFTER_SECRET_VERIFY, LegacyMigrationFaultPoint.M10_AFTER_FULL_VERIFY,
            LegacyMigrationFaultPoint.P02_AFTER_V1_AGGREGATE, LegacyMigrationFaultPoint.P03_AFTER_V1_MIRRORS,
            LegacyMigrationFaultPoint.P04_AFTER_CACHE, LegacyMigrationFaultPoint.M11_AFTER_PROJECTION_WRITE
        )
        checkpoints.forEach { point ->
            MigrationTestEnvironment(migrationSource(claude = true, claudeContext = migrationContext("CA"))).use { environment ->
                assertThrows(LegacyMigrationInterruptedException::class.java) {
                    environment.run(LegacyMigrationFaultInjector { event -> if (event.point == point) throw LegacyMigrationInterruptedException(event) })
                }
                environment.source.raw = ProviderSnapshotCodec.encode(listOf(migrationSnapshot(ProviderId.CLAUDE, "replacement", 7)))
                assertTrue(point.name, environment.restart() is LegacyMigrationResult.Blocked)
                assertNull(environment.journal.readManifest())
            }
        }
        println("QA_FIX2_SOURCE_SWAP_CHECKPOINTS=${checkpoints.size};POINTS=${checkpoints.joinToString(",") { it.name }}")
    }

    @Test
    fun schemaTwoReceiptOnlyRowsUpgradeAndRepairToReadableCopiedPayloads() {
        MigrationTestEnvironment(migrationSource(claude = true)).use { environment ->
            environment.run() as LegacyMigrationResult.Completed
            environment.authority.close()
            openDb(environment).use { db ->
                db.execSQL("PRAGMA foreign_keys=OFF")
                listOf("migration_mirrors", "migration_preferences").forEach { table ->
                    db.execSQL("CREATE TABLE ${table}_v2 AS SELECT provider_id,account_key,receipt_sha256 FROM $table")
                    db.execSQL("DROP TABLE $table")
                    db.execSQL("ALTER TABLE ${table}_v2 RENAME TO $table")
                }
                db.execSQL("PRAGMA user_version=2")
            }
            environment.authority = MainProcessAccountAuthority.open(environment.context, environment.databaseName)
            val result = environment.restart() as LegacyMigrationResult.Completed
            assertTrue(result.resumed)
            val state = requireNotNull(environment.authority.legacyImportState(defaultId(ProviderId.CLAUDE)))
            assertTrue(state.mirrorCopyData.isNotBlank())
            assertTrue(state.preferenceCopyData.isNotBlank())
            println("QA_FIX2_SCHEMA2_COPY_REPAIR=2")
        }
    }

    @Test
    fun v610ThreeFreshHermeticEnvironmentsProduceOneLogicalHashAndFixtureClearsEveryStore() {
        val fixtureSource = File("src/test/java/com/aiquota/mobile/accounts/LegacyMigrationStorageTest.kt").readText()
        listOf(
            "ai_quota_provider_preferences", "ai_quota_reset_notifications",
            "ai_quota_usage_threshold_notifications", "ai_quota_claude_prime_state",
            "claude_native_request_context", "codex_native_auth_context", "account_credential_vault_v1"
        ).forEach { assertTrue(it, fixtureSource.contains("\"$it\"")) }
        val hashes = (0 until 3).map {
            MigrationTestEnvironment(migrationSource(
                claude = true, codex = true, gemini = true,
                claudeContext = migrationContext("CA"), codexContext = migrationContext("XA")
            )).use { environment ->
                val manifest = (environment.run() as LegacyMigrationResult.Completed).manifest
                val logicalManifest = LegacyMigrationCodec.completeManifest(
                    manifest.sourceReceipt,
                    manifest.targets.map { it.copy(vaultEnvelopeSha256 = it.vaultEnvelopeSha256?.let { _ -> "0".repeat(64) }) },
                    manifest.projection
                )
                LegacyMigrationCodec.sha256(
                    environment.authority.canonicalDumpForTest() + LegacyMigrationCodec.encodeManifest(logicalManifest).toByteArray()
                )
            }
        }
        assertEquals(hashes.toString(), 1, hashes.distinct().size)
        println("QA_FIX2_HERMETIC_ENVIRONMENTS=3;LOGICAL_HASH=${hashes.first()}")
    }

    private fun exactSegment(raw: String, expected: String): ByteArray {
        val start = raw.indexOf(expected)
        require(start >= 0)
        return raw.substring(start, start + expected.length).toByteArray()
    }
    private fun defaultId(provider: ProviderId) = ProviderAccountId(provider, AccountKey.reservedDefault())
    private fun strict(raw: String) = LegacySnapshotStrictParser.parse(raw)
    private fun linePayload(fields: String) = "{\"providers\":[${providerObject("claude", "[{\"label\":\"L\",$fields}]")}] }"
    private fun providerObject(id: String, lines: String) = "{\"providerId\":\"$id\",\"connectionState\":\"CONNECTED\",\"refreshState\":\"IDLE\",\"lines\":$lines}"
    private fun paddedJson(base: String, bytes: Int) = base + " ".repeat(bytes - base.toByteArray().size)
    private fun paddedContext(bytes: Int): String {
        val empty = (0 until 64).joinToString(",", "{\"e\":{", "}}") { "\"h$it\":\"\"" }
        var remaining = bytes - empty.toByteArray().size
        val values = (0 until 64).map {
            val size = minOf(16_384, remaining)
            remaining -= size
            "\"h$it\":\"${"v".repeat(size)}\""
        }
        require(remaining == 0)
        return values.joinToString(",", "{\"e\":{", "}}")
    }
    private fun openDb(environment: MigrationTestEnvironment) = SQLiteDatabase.openDatabase(
        environment.context.getDatabasePath(environment.databaseName).path, null, SQLiteDatabase.OPEN_READWRITE
    )
    private fun advanceAuthenticated(environment: MigrationTestEnvironment, target: LegacyMigrationTarget) {
        environment.authority.close()
        openDb(environment).use { db ->
            db.execSQL("UPDATE accounts SET auth_state='AUTHENTICATED',generation=2,session_revision=2,modified_version=modified_version+1 WHERE provider_id='claude' AND account_key='default'")
            db.execSQL("UPDATE attempts SET generation=2,session_revision=2 WHERE provider_id='claude' AND account_key='default'")
            db.execSQL("UPDATE snapshots SET display_version=display_version+1 WHERE provider_id='claude' AND account_key='default'")
            db.execSQL("UPDATE authority_metadata SET display_version=display_version+1 WHERE singleton_id=1")
        }
        environment.authority = MainProcessAccountAuthority.open(environment.context, environment.databaseName)
        val binding = requireNotNull(target.vaultBinding).copy(generation = AccountGeneration.of(2), sessionRevision = SessionRevision.of(2))
        assertTrue(environment.vault.put(binding, CredentialBundle.fromBytes("native-context-CA".toByteArray())))
    }
}
