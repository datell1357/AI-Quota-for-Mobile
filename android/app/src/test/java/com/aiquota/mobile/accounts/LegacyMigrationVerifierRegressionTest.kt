package com.aiquota.mobile.accounts

import android.content.Context
import android.database.sqlite.SQLiteDatabase
import androidx.test.core.app.ApplicationProvider
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.providers.ProviderSnapshotCodec
import java.io.File
import java.util.Base64
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNotSame
import org.junit.Assert.assertNull
import org.junit.Assert.assertSame
import org.junit.Assert.assertThrows
import org.junit.Assert.assertTrue
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner

@RunWith(RobolectricTestRunner::class)
class LegacyMigrationVerifierRegressionTest {
    @Test
    fun v601ReleaseDisabledStartupHasNoMigrationReachability() {
        val application = File("src/main/java/com/aiquota/mobile/AIQuotaApplication.kt").readText()
        val build = File("build.gradle.kts").readText()

        assertTrue(build.contains("debug {\n            buildConfigField(\"boolean\", \"MULTI_ACCOUNT_ENABLED\", \"true\")"))
        assertTrue(build.contains("release {\n            buildConfigField(\"boolean\", \"MULTI_ACCOUNT_ENABLED\", \"false\")"))
        assertTrue(application.contains("if (BuildConfig.MULTI_ACCOUNT_ENABLED)"))
        assertFalse(application.contains("LegacyAccountMigrationRunner.run(this)\n"))
        var calls = 0
        assertNull(LegacyAccountMigrationRunner.runIfEnabled(false) { calls += 1 })
        assertEquals(0, calls)
        assertEquals("enabled", LegacyAccountMigrationRunner.runIfEnabled(true) { calls += 1; "enabled" })
        assertEquals(1, calls)
        println("QA_FIX1_RELEASE_DISABLED_CALLS=0;ENABLED_CALLS=1")
    }

    @Test
    fun v602StrictParserRejectsInvalidEnumsUnknownFieldsWrongTypesDuplicatesAndTrailingData() {
        val mutations = listOf(
            "{\"providers\":[{\"providerId\":\"claude\",\"connectionState\":\"connected\",\"refreshState\":\"IDLE\",\"lines\":[]}]}",
            "{\"providers\":[{\"providerId\":\"claude\",\"connectionState\":\"CONNECTED\",\"refreshState\":\"IDLE\",\"unexpected\":1,\"lines\":[]}]}",
            "{\"providers\":[{\"providerId\":\"claude\",\"connectionState\":3,\"refreshState\":\"IDLE\",\"lines\":[]}]}",
            "{\"providers\":[{\"providerId\":\"claude\",\"providerId\":\"codex\",\"connectionState\":\"CONNECTED\",\"refreshState\":\"IDLE\",\"lines\":[]}]}",
            "{\"providers\":[],\"providers\":[]}",
            "{\"providers\":[],\"unknownRoot\":true}",
            "{\"providers\":[[]]}",
            "{\"providers\":[{\"providerId\":\"claude\",\"connectionState\":\"CONNECTED\",\"refreshState\":\"IDLE\",\"lines\":{}}]}",
            "{\"providers\":[{\"providerId\":\"claude\",\"connectionState\":\"CONNECTED\",\"refreshState\":\"IDLE\",\"lines\":[{\"label\":\"x\",\"unknownLine\":1}]}]}",
            "{\"providers\":[{\"providerId\":\"claude\",\"connectionState\":\"CONNECTED\",\"refreshState\":\"IDLE\",\"lines\":[{\"label\":\"x\",\"remainingPercent\":2}]}]}",
            "{\"providers\":[{\"providerId\":\"claude\",\"connectionState\":\"CONNECTED\",\"refreshState\":\"idle\",\"lines\":[]}]}",
            "{\"providers\":[{\"providerId\":\"claude\",\"connectionState\":\"CONNECTED\",\"refreshState\":\"IDLE\",\"lines\":[{\"label\":\"x\",\"usedAmount\":1e999}]}]}",
            "{\"providers\":[]} trailing"
        )

        mutations.forEach { raw ->
            val capture = LegacySourceCapture(
                LegacySourceReceipt(true, LegacyMigrationCodec.blobReceipt(raw), emptyList()),
                raw
            )
            assertNull(raw, LegacyMigrationCodec.strictSnapshots(capture))
        }
        val contextMutations = listOf(
            "{\"endpoint\":{\"Authorization\":\"a\"},\"endpoint\":{\"Authorization\":\"b\"}}",
            "{\"endpoint\":{\"Authorization\":\"a\",\"Authorization\":\"b\"}}",
            "{\"endpoint\":{\"Authorization\":1}}",
            "{\"endpoint\":[]}",
            "{}",
            "{\"endpoint\":{\"Authorization\":\"a\"}} trailing"
        )
        contextMutations.forEach { assertNull(it, LegacyContextStrictParser.parse(it)) }
        println("QA_FIX1_STRICT_MUTATIONS=${mutations.size + contextMutations.size};ACCEPTED=0")
    }

    @Test
    fun v603SamePresenceContextReplacementAfterM01BlocksCompletion() {
        val source = migrationSource(claude = true, claudeContext = migrationContext("first"))
        MigrationTestEnvironment(source).use { environment ->
            runCatching {
                environment.run(LegacyMigrationFaultInjector { event ->
                    if (event.point == LegacyMigrationFaultPoint.M01_AFTER_SOURCE_CAPTURE) throw LegacyMigrationInterruptedException(event)
                })
            }
            source.setContext(ProviderId.CLAUDE, CredentialBundle.fromBytes("replacement".toByteArray()))

            val result = environment.restart()

            assertTrue(result is LegacyMigrationResult.Blocked)
            assertNull(environment.journal.readManifest())
            println("QA_FIX1_CONTEXT_REPLACEMENT=BLOCKED")
        }
    }

    @Test
    fun v604M03FaultOccursInsideActualImportTransactionBeforeSnapshotAndRollsBack() {
        MigrationTestEnvironment(migrationSource(claude = true, codex = true)).use { environment ->
            runCatching {
                environment.run(LegacyMigrationFaultInjector { event ->
                    if (event.point == LegacyMigrationFaultPoint.M03_AFTER_REGISTRY_COPY) throw LegacyMigrationInterruptedException(event)
                })
            }

            assertEquals(0, environment.authority.catalog(0, 10).totalCount)
            println("QA_FIX1_M03_ROLLBACK_ROWS=0")
        }
    }

    @Test
    fun v605RestartReconstructsSourceJournalVaultStoreAndCryptoObjects() {
        val environment = MigrationTestEnvironment(migrationSource(claude = true))
        environment.use {
            val sourceBefore = environment.source
            val journalBefore = environment.journal
            val vaultBefore = environment.vault
            val storeBefore = environment.envelopeStore
            val cryptoBefore = environment.crypto

            environment.restart()

            assertNotSame(sourceBefore, environment.source)
            assertNotSame(journalBefore, environment.journal)
            assertNotSame(vaultBefore, environment.vault)
            assertNotSame(storeBefore, environment.envelopeStore)
            assertNotSame(cryptoBefore, environment.crypto)
            println("QA_FIX1_FRESH_RECONSTRUCTIONS=5")
        }
    }

    @Test
    fun v605NegativeControlProvesMemoryOnlyHarnessCanFalsePass() {
        val source = migrationSource(claude = true, claudeContext = migrationContext("CA"))
        val memoryJournal = MemoryMigrationJournal()
        val memoryStore = InMemoryCredentialEnvelopeStore()
        val memoryCrypto = FakeCredentialVaultCrypto()
        MigrationTestEnvironment(source, memoryJournal, memoryStore, memoryCrypto).use { environment ->
            assertThrows(LegacyMigrationInterruptedException::class.java) {
                environment.run(LegacyMigrationFaultInjector { event ->
                    if (event.point == LegacyMigrationFaultPoint.M09_AFTER_SECRET_VERIFY) {
                        throw LegacyMigrationInterruptedException(event)
                    }
                })
            }
            val result = environment.restart()
            assertTrue(result is LegacyMigrationResult.Completed)
            assertSame(memoryJournal, environment.journal)
            assertSame(memoryStore, environment.envelopeStore)
            assertSame(memoryCrypto, environment.crypto)
            println("QA_FIX1_MEMORY_NEGATIVE_FALSE_PASS=1")
        }
    }

    @Test
    fun v606ProjectionRepairUsesCurrentV2SnapshotNotCapturedV1() {
        val source = migrationSource(claude = true, gemini = true)
        MigrationTestEnvironment(source).use { environment ->
            environment.run() as LegacyMigrationResult.Completed
            val currentV2 = migrationSnapshot(ProviderId.CLAUDE, "V2-current", 19)
            environment.authority.close()
            SQLiteDatabase.openDatabase(
                environment.context.getDatabasePath(environment.databaseName).path,
                null,
                SQLiteDatabase.OPEN_READWRITE
            ).use { db ->
                db.execSQL(
                    "UPDATE snapshots SET snapshot_json = ?, display_version = display_version + 1 WHERE provider_id = 'claude' AND account_key = 'default'",
                    arrayOf(ProviderSnapshotCodec.encode(listOf(currentV2)))
                )
                db.execSQL("UPDATE accounts SET auth_state = 'AUTHENTICATED', generation = generation + 1, session_revision = session_revision + 1, modified_version = modified_version + 1 WHERE provider_id = 'claude' AND account_key = 'default'")
                db.execSQL("UPDATE attempts SET generation = generation + 1, session_revision = session_revision + 1 WHERE provider_id = 'claude' AND account_key = 'default'")
                db.execSQL("UPDATE authority_metadata SET display_version = display_version + 1 WHERE singleton_id = 1")
            }
            environment.authority = MainProcessAccountAuthority.open(environment.context, environment.databaseName)
            source.raw = ProviderSnapshotCodec.encode(listOf(migrationSnapshot(ProviderId.GEMINI, "G-drift", 9)))

            val result = environment.run()

            assertTrue(result is LegacyMigrationResult.Completed)
            assertTrue((result as LegacyMigrationResult.Completed).resumed)
            val projected = ProviderSnapshotCodec.decode(source.raw).single { it.providerId == ProviderId.CLAUDE }
            assertEquals(currentV2, projected)
            println("QA_FIX1_V2_PROJECTION_HASH=${LegacyMigrationCodec.snapshotSha256(projected)}")
        }
    }

    @Test
    fun v607CompleteRejectsGenerationAndSessionCorruptionDespiteStableSnapshotVersion() {
        val source = migrationSource(claude = true)
        MigrationTestEnvironment(source).use { environment ->
            environment.run() as LegacyMigrationResult.Completed
            environment.authority.close()
            SQLiteDatabase.openDatabase(
                environment.context.getDatabasePath(environment.databaseName).path,
                null,
                SQLiteDatabase.OPEN_READWRITE
            ).use { db ->
                db.execSQL("UPDATE accounts SET generation = 9, session_revision = 9 WHERE provider_id = 'claude' AND account_key = 'default'")
            }
            environment.authority = MainProcessAccountAuthority.open(environment.context, environment.databaseName)

            val result = environment.run()

            assertTrue(result is LegacyMigrationResult.Blocked)
            assertNull(environment.journal.readManifest())
            println("QA_FIX1_COMPLETE_STATE_CORRUPTION=BLOCKED")
        }
    }

    @Test
    fun v608JournalContainsReceiptsButNoReversibleAggregateOrDisplayIdentity() {
        val context = ApplicationProvider.getApplicationContext<Context>()
        context.getSharedPreferences("legacy_account_migration_v1", Context.MODE_PRIVATE).edit().clear().commit()
        val raw = ProviderSnapshotCodec.encode(listOf(migrationSnapshot(ProviderId.CLAUDE, "private-display", 81)))
        val journal = AndroidLegacyMigrationJournal(context)
        assertTrue(journal.commitSourceReceipt(
            LegacySourceReceipt(true, LegacyMigrationCodec.blobReceipt(raw), emptyList())
        ))
        val all = context.getSharedPreferences("legacy_account_migration_v1", Context.MODE_PRIVATE).all
        val serialized = all.values.joinToString("|")

        assertFalse(all.containsKey("source_capture"))
        assertFalse(serialized.contains("private-display"))
        assertFalse(serialized.contains(Base64.getEncoder().encodeToString(raw.toByteArray())))
        MigrationTestEnvironment(DurableFakeMigrationSource.create(true, raw, emptyMap())).use { environment ->
            environment.run() as LegacyMigrationResult.Completed
            val completeBytes = requireNotNull(environment.journal.manifestBytes)
            assertFalse(completeBytes.contains("private-display"))
            assertFalse(completeBytes.contains(Base64.getEncoder().encodeToString(raw.toByteArray())))
        }
        println("QA_FIX1_JOURNAL_PRIVACY_HASH=${LegacyMigrationCodec.sha256(serialized)};RAW_MATCHES=0")
    }
}
