package com.aiquota.mobile.accounts

import android.content.Context
import androidx.test.core.app.ApplicationProvider
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.providers.ClaudeNativeRequestContextStore
import com.aiquota.mobile.providers.CodexNativeAuthContextStore
import com.aiquota.mobile.providers.ProviderSnapshotCodec
import java.nio.file.Files
import java.util.Base64
import java.util.concurrent.atomic.AtomicInteger
import org.json.JSONArray
import org.json.JSONObject
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertThrows
import org.junit.Assert.assertTrue
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner

@RunWith(RobolectricTestRunner::class)
class LegacyMigrationFinalVerifierTest {
    @Test
    fun v605PairedAcknowledgedUncommittedCheckpointFalsePassesOnlyWhenMemoryIsReused() {
        val source = migrationSource(claude = true)
        val backing = DurableTestJournal(source.root)
        val buffering = BufferingCheckpointJournal(backing)
        MigrationTestEnvironment(source, buffering).use { environment ->
            assertThrowsAtM10(environment)
            assertTrue(buffering.isTargetCheckpointComplete())
            val bufferedReceipt = requireNotNull(buffering.bufferedWriteReceipt)
            val bufferedEvent = requireNotNull(buffering.acknowledgedEvent)

            environment.authority.close()
            val committedAuthority = environment.context.getDatabasePath(environment.databaseName)
            val committedRoot = Files.createTempDirectory("task6-paired-committed-").toFile().also { it.deleteRecursively() }
            source.root.copyRecursively(committedRoot)
            val branchDatabase = "legacy-migration-paired-${counter.incrementAndGet()}.db"
            val branchDatabaseFile = environment.context.getDatabasePath(branchDatabase)
            committedAuthority.copyTo(branchDatabaseFile, overwrite = true)
            val snapshotA = committedSnapshotId(environment.context, environment.databaseName, backing)
            val branchBacking = DurableTestJournal(committedRoot)
            val snapshotB = committedSnapshotId(environment.context, branchDatabase, branchBacking)
            assertEquals(snapshotA, snapshotB)

            environment.authority = MainProcessAccountAuthority.open(environment.context, environment.databaseName)
            val branchAEvents = mutableListOf<LegacyMigrationFaultEvent>()
            val branchA = LegacyAccountMigration(
                source.reopen(), buffering, environment.authority,
                AccountCredentialVault(DurableEnvelopeStore(source.root), DurableCredentialCrypto(source.root)),
                source.reopen(), LegacyMigrationFaultInjector(branchAEvents::add)
            ).run()

            val branchSource = DurableFakeMigrationSource.openCommittedClone(committedRoot)
            val branchAuthority = MainProcessAccountAuthority.open(environment.context, branchDatabase)
            try {
                val phantomVisible = branchBacking.isTargetCheckpointComplete()
                val branchBEvents = mutableListOf<LegacyMigrationFaultEvent>()
                val branchB = LegacyAccountMigration(
                    branchSource, branchBacking, branchAuthority,
                    AccountCredentialVault(DurableEnvelopeStore(committedRoot), DurableCredentialCrypto(committedRoot)),
                    branchSource.reopen(), LegacyMigrationFaultInjector(branchBEvents::add)
                ).run()
                val branchAStageCount = branchAEvents.count { it.point == LegacyMigrationFaultPoint.M03_AFTER_REGISTRY_COPY }
                val branchBStageCount = branchBEvents.count { it.point == LegacyMigrationFaultPoint.M03_AFTER_REGISTRY_COPY }
                val details = "snapshot=$snapshotA write=$bufferedReceipt event=${bufferedEvent.point} " +
                    "phantomVisible=$phantomVisible branchAStage=$branchAStageCount branchBStage=$branchBStageCount"
                assertTrue(details, branchA is LegacyMigrationResult.Completed)
                assertEquals(details, 0, branchAStageCount)
                assertFalse(details, phantomVisible)
                assertTrue(details, branchB is LegacyMigrationResult.Completed)
                assertExactlyOneM03Replay(branchBEvents, details)
                println(
                    "QA_FIX4_PAIRED_SNAPSHOT=$snapshotA;WRITE=$bufferedReceipt;EVENT=${bufferedEvent.point};" +
                        "A_STAGE=$branchAStageCount;B_STAGE=$branchBStageCount;A=COMPLETED;B=COMPLETED_REPLAY"
                )
            } finally {
                branchAuthority.close()
                environment.context.deleteDatabase(branchDatabase)
                committedRoot.deleteRecursively()
            }
            assertEquals(bufferedReceipt, buffering.bufferedWriteReceipt)
            assertEquals(LegacyMigrationFaultPoint.M10_AFTER_FULL_VERIFY, bufferedEvent.point)
        }
    }

    @Test
    fun v605DuplicateM03ReplayMutationIsRejected() {
        val event = LegacyMigrationFaultEvent(
            LegacyMigrationFaultPoint.M03_AFTER_REGISTRY_COPY,
            LegacyMigrationOperation.REGISTRY_UPSERTED,
            ProviderId.CLAUDE
        )
        assertThrows(AssertionError::class.java) {
            assertExactlyOneM03Replay(listOf(event, event), "duplicate-control")
        }
        println("QA_FIX4_DUPLICATE_M03_COUNT=2;REJECTED=1")
    }

    @Test
    fun v610ThreeFreshProductionAdaptersHaveEqualCanonicalLogicalDumps() {
        synchronized(PRODUCTION_FIXTURE_LOCK) {
            val runs = (0 until 3).map(::runProductionFixture)
            val missingSecurityFields = runs.flatMapIndexed { index, run ->
                REQUIRED_SECURITY_FIELDS.filterNot(run.fields::containsKey).map { "run$index:$it" }
            }
            assertTrue("missing=${missingSecurityFields.joinToString(",")}", missingSecurityFields.isEmpty())
            val expected = runs.map { run ->
                run.fields.toMutableMap().apply {
                    this[CACHE_RECEIPT_FIELD] = "S${run.canonicalCacheSha256}"
                }.toMap()
            }
            val canonicalDiffs = runs.indices.flatMap { index -> fieldDiff(runs[index].fields, expected[index], "run$index-canonical") }
            val crossRunDiffs = runs.drop(1).flatMapIndexed { index, run ->
                fieldDiff(runs.first().fields, run.fields, "run0-vs-run${index + 1}")
            }
            val diffs = canonicalDiffs + crossRunDiffs
            assertTrue(diffs.joinToString("\n"), diffs.isEmpty())
            assertEquals(runs.map(ProductionRun::fields).toString(), 1, runs.map(ProductionRun::fields).distinct().size)
            val hashes = runs.map { canonicalHash(it.fields) }
            assertEquals(hashes.toString(), 1, hashes.distinct().size)
            println("QA_FIX4_PRODUCTION_RUNS=3;CANONICAL_HASH=${hashes.first()};FIELDS=${runs.first().fields.size}")
        }
    }

    private fun assertExactlyOneM03Replay(events: List<LegacyMigrationFaultEvent>, details: String) {
        val count = events.count { it.point == LegacyMigrationFaultPoint.M03_AFTER_REGISTRY_COPY }
        assertEquals("$details M03=$count", 1, count)
    }

    private fun assertThrowsAtM10(environment: MigrationTestEnvironment) {
        org.junit.Assert.assertThrows(LegacyMigrationInterruptedException::class.java) {
            environment.run(LegacyMigrationFaultInjector { event ->
                if (event.point == LegacyMigrationFaultPoint.M10_AFTER_FULL_VERIFY) {
                    (environment.journal as BufferingCheckpointJournal).acknowledgedEvent = event
                    throw LegacyMigrationInterruptedException(event)
                }
            })
        }
    }

    private fun committedSnapshotId(context: Context, databaseName: String, journal: DurableTestJournal): String {
        val authority = MainProcessAccountAuthority.open(context, databaseName)
        return try {
            val journalState = listOf(
                journal.readSourceReceipt()?.let { LegacyMigrationCodec.encodeSourceReceipt(it).toString() }.orEmpty(),
                LegacyMigrationCodec.encodeTargets(journal.readVerifiedTargets()),
                journal.isTargetCheckpointComplete().toString()
            ).joinToString("|")
            LegacyMigrationCodec.sha256(authority.canonicalDumpForTest() + journalState.toByteArray())
        } finally {
            authority.close()
        }
    }

    private fun runProductionFixture(index: Int): ProductionRun {
        val context = ApplicationProvider.getApplicationContext<Context>()
        clearProductionStores(context)
        val databaseName = "legacy-production-fix3-$index-${counter.incrementAndGet()}.db"
        context.deleteDatabase(databaseName)
        return try {
            seedProductionStores(context)
            val source = AndroidLegacyMigrationSource(context)
            val journal = AndroidLegacyMigrationJournal(context)
            val vault = createAndroidAccountCredentialVault(context, FakeCredentialVaultCrypto())
            MainProcessAccountAuthority.open(context, databaseName).use { authority ->
                val result = LegacyAccountMigration(
                    source, journal, authority, vault, AndroidLegacyMigrationSource(context)
                ).run() as LegacyMigrationResult.Completed
                assertEquals(result.manifest, journal.readManifest())
                val exactVaultFields = linkedMapOf<String, String>()
                result.manifest.targets.forEachIndexed { index, target ->
                    target.vaultBinding?.let { binding ->
                        val envelope = requireNotNull(vault.lookup(binding.accountId))
                        val encoded = envelope.encodedBytes()
                        assertEquals(target.vaultEnvelopeSha256, LegacyMigrationCodec.sha256(encoded))
                        assertTrue(vault.decrypt(binding, envelope) != null)
                        exactVaultFields["vault.targets[$index].encodedEnvelope"] =
                            Base64.getEncoder().encodeToString(encoded)
                    }
                }
                val cache = context.getSharedPreferences("ai_quota_widget_cache", Context.MODE_PRIVATE)
                    .getString("local_display_snapshot", null)!!
                val fields = authority.canonicalLogicalFieldsForTest()
                    .mapValues { (field, value) ->
                        if (field.endsWith(".snapshot_json") || field.endsWith(".copied_json")) {
                            "S${canonicalJson(value.removePrefix("S"))}"
                        } else {
                            value
                        }
                    }
                    .toMutableMap()
                appendObjectFields(fields, "manifest", logicalManifest(result.manifest))
                fields.putAll(exactVaultFields)
                appendObjectFields(
                    fields,
                    "journal.source",
                    LegacyMigrationCodec.encodeSourceReceipt(result.manifest.sourceReceipt)
                )
                appendObjectFields(fields, "projection.cache", JSONObject(cache))
                fields["vault.verifiedTargets"] = result.manifest.targets.count { it.vaultBinding != null }.toString()
                ProductionRun(fields.toSortedMap(), LegacyMigrationCodec.sha256(canonicalJson(cache)))
            }
        } finally {
            context.deleteDatabase(databaseName)
            clearProductionStores(context)
        }
    }

    private fun seedProductionStores(context: Context) {
        val raw = ProviderSnapshotCodec.encode(
            listOf(
                migrationSnapshot(ProviderId.CLAUDE, "CA", 81),
                migrationSnapshot(ProviderId.CODEX, "XA", 62),
                migrationSnapshot(ProviderId.GEMINI, "G", 43)
            )
        )
        context.getSharedPreferences("ai_quota_local_usage", Context.MODE_PRIVATE)
            .edit().putString("provider_snapshots", raw).commit()
        val claude = ClaudeNativeRequestContextStore.encodeForTest(
            mapOf("https://claude.ai/api/organizations" to mapOf("Authorization" to "fix3-claude-marker"))
        )
        val codex = CodexNativeAuthContextStore.encodeForTest(
            mapOf("https://chatgpt.com/backend-api/wham/usage" to mapOf("Authorization" to "fix3-codex-marker"))
        )
        context.getSharedPreferences("claude_native_request_context", Context.MODE_PRIVATE)
            .edit().putString("context", claude).commit()
        context.getSharedPreferences("codex_native_auth_context", Context.MODE_PRIVATE)
            .edit().putString("context", codex).commit()
    }

    private fun clearProductionStores(context: Context) {
        PRODUCTION_PREFERENCES.forEach { name ->
            context.getSharedPreferences(name, Context.MODE_PRIVATE).edit().clear().commit()
        }
    }

    private fun logicalManifest(manifest: LegacyMigrationManifest): JSONObject =
        JSONObject(LegacyMigrationCodec.encodeManifest(manifest))

    private fun appendObjectFields(output: MutableMap<String, String>, prefix: String, value: JSONObject) {
        value.keys().asSequence().toList().sorted().forEach { key ->
            when (val child = value.get(key)) {
                is JSONObject -> appendObjectFields(output, "$prefix.$key", child)
                is JSONArray -> appendArrayFields(output, "$prefix.$key", child)
                else -> output["$prefix.$key"] = canonicalObjectValue(value, key)
            }
        }
    }

    private fun appendArrayFields(output: MutableMap<String, String>, prefix: String, value: JSONArray) {
        for (index in 0 until value.length()) {
            when (val child = value.get(index)) {
                is JSONObject -> appendObjectFields(output, "$prefix[$index]", child)
                is JSONArray -> appendArrayFields(output, "$prefix[$index]", child)
                else -> output["$prefix[$index]"] = canonicalArrayValue(value, index)
            }
        }
    }

    private fun canonicalJson(raw: String): String = canonicalObject(JSONObject(raw))

    private fun canonicalObject(value: JSONObject): String = value.keys().asSequence().toList().sorted()
        .joinToString(",", "{", "}") { key -> "${JSONObject.quote(key)}:${canonicalObjectValue(value, key)}" }

    private fun canonicalArray(value: JSONArray): String = (0 until value.length())
        .joinToString(",", "[", "]") { index -> canonicalArrayValue(value, index) }

    private fun canonicalObjectValue(container: JSONObject, key: String): String = when (val value = container.get(key)) {
        JSONObject.NULL -> "null"
        is JSONObject -> canonicalObject(value)
        is JSONArray -> canonicalArray(value)
        is String -> JSONObject.quote(value)
        is Number, is Boolean -> value.toString()
        else -> error("Unsupported JSON value")
    }

    private fun canonicalArrayValue(container: JSONArray, index: Int): String = when (val value = container.get(index)) {
        JSONObject.NULL -> "null"
        is JSONObject -> canonicalObject(value)
        is JSONArray -> canonicalArray(value)
        is String -> JSONObject.quote(value)
        is Number, is Boolean -> value.toString()
        else -> error("Unsupported JSON value")
    }

    private fun fieldDiff(actual: Map<String, String>, expected: Map<String, String>, run: String): List<String> =
        (actual.keys + expected.keys).sorted().mapNotNull { field ->
            val actualHash = actual[field]?.let(LegacyMigrationCodec::sha256)
            val expectedHash = expected[field]?.let(LegacyMigrationCodec::sha256)
            if (actualHash == expectedHash) null else "$run field=$field actual=$actualHash expected=$expectedHash"
        }

    private fun canonicalHash(fields: Map<String, String>): String = LegacyMigrationCodec.sha256(
        fields.entries.joinToString("\n") { (field, value) -> "$field=${LegacyMigrationCodec.sha256(value)}" }
    )

    private data class ProductionRun(
        val fields: Map<String, String>,
        val canonicalCacheSha256: String
    )

    private class BufferingCheckpointJournal(
        private val backing: DurableTestJournal
    ) : TestMigrationJournal by backing {
        private var bufferedTargets: List<LegacyMigrationTarget>? = null
        var bufferedWriteReceipt: String? = null
            private set
        var acknowledgedEvent: LegacyMigrationFaultEvent? = null

        override fun readVerifiedTargets(): List<LegacyMigrationTarget> =
            bufferedTargets ?: backing.readVerifiedTargets()

        override fun isTargetCheckpointComplete(): Boolean =
            bufferedTargets != null || backing.isTargetCheckpointComplete()

        override fun commitTargetCheckpoint(targets: List<LegacyMigrationTarget>): Boolean {
            bufferedTargets = targets.toList()
            bufferedWriteReceipt = LegacyMigrationCodec.sha256(LegacyMigrationCodec.encodeTargets(targets))
            return true
        }
    }

    companion object {
        private val counter = AtomicInteger()
        private val PRODUCTION_FIXTURE_LOCK = Object()
        private const val CACHE_RECEIPT_FIELD = "projection_state[0].cache_sha256"
        private val REQUIRED_SECURITY_FIELDS = setOf(
            "manifest.targets[0].vaultEnvelope",
            "manifest.targets[1].vaultEnvelope",
            "manifest.checksum",
            "vault.targets[0].encodedEnvelope",
            "vault.targets[1].encodedEnvelope"
        )
        private val PRODUCTION_PREFERENCES = listOf(
            "legacy_account_migration_v1", "ai_quota_local_usage", "usage_data_claude",
            "usage_data_codex", "account_data_claude", "account_data_codex", "script_data_claude",
            "script_data_codex", "ai_quota_widget_cache", "ai_quota_provider_preferences",
            "ai_quota_reset_notifications", "ai_quota_usage_threshold_notifications",
            "ai_quota_claude_prime_state", "claude_native_request_context",
            "codex_native_auth_context", "account_credential_vault_v1"
        )
    }
}
