package com.aiquota.mobile.accounts

import android.content.Context
import android.database.Cursor
import android.database.sqlite.SQLiteDatabase
import android.database.sqlite.SQLiteException
import androidx.test.core.app.ApplicationProvider
import com.aiquota.mobile.local.ProviderConnectionState
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.local.ProviderUsageLine
import com.aiquota.mobile.local.ProviderUsageSnapshot
import com.aiquota.mobile.providers.ProviderScriptProviders
import com.aiquota.mobile.providers.ProviderSnapshotCodec
import java.security.MessageDigest
import java.util.concurrent.atomic.AtomicInteger
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertNull
import org.junit.Assert.assertThrows
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner

@RunWith(RobolectricTestRunner::class)
class AccountUsageRepositoryFixIteration3Test {
    private lateinit var context: Context
    private val databases = mutableListOf<String>()

    @Before
    fun setUp() {
        context = ApplicationProvider.getApplicationContext()
    }

    @After
    fun tearDown() {
        databases.forEach(context::deleteDatabase)
        clearProjectionStorage()
    }

    @Test
    fun corruptHashParentV4FailsClosedWithoutMutation() {
        val name = parentV4("red-corrupt") { db ->
            insertTarget(db, ProviderId.CLAUDE.storageId, "corrupt", 2)
            insertTarget(db, ProviderId.CODEX.storageId, hash("codex"), 2)
        }
        assertUpgradeAbortsUnchanged(name)
    }

    @Test
    fun partialPairParentV4FailsClosedWithoutMutation() {
        val name = parentV4("red-partial") { db ->
            insertTarget(db, ProviderId.CODEX.storageId, hash("codex"), 2)
        }
        assertUpgradeAbortsUnchanged(name)
    }

    @Test
    fun everyInvalidRawAuthorityShapeAbortsAndRepairsDeterministically() {
        val cases = listOf<InvalidCase>(
            InvalidCase("claude-only") { insertTarget(it, "claude", hash("claude"), 2) },
            InvalidCase("codex-only") { insertTarget(it, "codex", hash("codex"), 2) },
            InvalidCase("unknown-only") { insertTarget(it, "gemini", hash("gemini"), 2) },
            InvalidCase("third-provider") {
                insertValidPair(it)
                insertTarget(it, "gemini", hash("gemini"), 2)
            },
            InvalidCase("duplicate-equivalent-provider") {
                insertValidPair(it)
                insertTarget(it, "CLAUDE", hash("duplicate"), 2)
            },
            InvalidCase("corrupt-hash") {
                insertTarget(it, "claude", "corrupt", 2)
                insertTarget(it, "codex", hash("codex"), 2)
            },
            InvalidCase("uppercase-hash") {
                insertTarget(it, "claude", "A".repeat(64), 2)
                insertTarget(it, "codex", hash("codex"), 2)
            },
            InvalidCase("short-hash") {
                insertTarget(it, "claude", "a".repeat(63), 2)
                insertTarget(it, "codex", hash("codex"), 2)
            },
            InvalidCase("empty-hash") {
                insertTarget(it, "claude", "", 2)
                insertTarget(it, "codex", hash("codex"), 2)
            },
            InvalidCase("mismatched-versions") {
                insertTarget(it, "codex", hash("codex"), 3)
                insertTarget(it, "claude", hash("claude"), 2)
            },
            InvalidCase("text-version") {
                it.execSQL(
                    "INSERT INTO account_usage_projection_targets(provider_id,target_sha256,authority_version) VALUES('claude',?,'broken')",
                    arrayOf(hash("claude"))
                )
                insertTarget(it, "codex", hash("codex"), 2)
            },
            InvalidCase("real-version") {
                it.execSQL(
                    "INSERT INTO account_usage_projection_targets(provider_id,target_sha256,authority_version) VALUES('claude',?,2.5)",
                    arrayOf(hash("claude"))
                )
                insertTarget(it, "codex", hash("codex"), 2)
            },
            InvalidCase("negative-version") {
                it.execSQL("PRAGMA ignore_check_constraints=ON")
                insertTarget(it, "claude", hash("claude"), -1)
                insertTarget(it, "codex", hash("codex"), -1)
                it.execSQL("PRAGMA ignore_check_constraints=OFF")
            },
            InvalidCase("future-version") {
                insertTarget(it, "claude", hash("claude"), 11)
                insertTarget(it, "codex", hash("codex"), 11)
            },
            InvalidCase("targets-with-pending-intent") {
                insertValidPair(it)
                insertIntent(it, 2, hash("intent-claude"), hash("intent-codex"))
            },
            InvalidCase("empty-targets-with-pending-intent") {
                insertIntent(it, 2, hash("intent-claude"), hash("intent-codex"))
            },
            InvalidCase("malformed-intent-hash") {
                insertIntent(it, 2, "corrupt", hash("intent-codex"))
            },
            InvalidCase("malformed-intent-version") {
                it.execSQL(
                    "INSERT INTO account_usage_projection_intent(singleton_id,authority_version,claude_sha256,codex_sha256) VALUES(1,'broken',?,?)",
                    arrayOf(hash("intent-claude"), hash("intent-codex"))
                )
            }
        )
        val unchangedHashes = cases.map { case ->
            val name = parentV4("invalid-${case.label}", case.setup)
            val unchanged = assertUpgradeAbortsUnchanged(name)
            rawDatabase(name).use { db ->
                db.delete("account_usage_projection_intent", null, null)
                db.delete("account_usage_projection_targets", null, null)
                insertValidPair(db, reverse = case.label.length % 2 == 0)
            }
            openProduction(name).close()
            assertEquals(7, userVersion(name))
            val firstV5 = canonicalDatabaseHash(name)
            openProduction(name).close()
            assertEquals(firstV5, canonicalDatabaseHash(name))
            unchanged
        }
        println(
            "QA_FIX3_INVALID_CLASSIFICATIONS=${cases.size};ABORT_COUNT=${cases.size};" +
                "UNCHANGED_V4_HASH_COUNT=${unchangedHashes.size};" +
                "UNCHANGED_V4_HASHES_SHA256=${hash(unchangedHashes.joinToString("|"))}"
        )
    }

    @Test
    fun validUntouchedAndCompleteAuthorityStatesUpgradeExactlyOnce() {
        val stateHashes = mutableListOf<String>()
        val fresh = database("fresh-v5")
        openProduction(fresh).close()
        val freshSchema = schemaHash(fresh)

        val validCases = listOf(
            ValidCase("untouched", setup = {}),
            ValidCase("untouched-primary") {
                insertPrimary(it, "claude", accountKey(1))
            },
            ValidCase("both-absent") {
                insertTarget(it, "codex", ACCOUNT_USAGE_ABSENT_SHA256, 3)
                insertTarget(it, "claude", ACCOUNT_USAGE_ABSENT_SHA256, 3)
            },
            ValidCase("claude-absent-explicit-b") {
                insertTarget(it, "codex", hash("codex"), 4)
                insertTarget(it, "claude", ACCOUNT_USAGE_ABSENT_SHA256, 4)
                insertPrimary(it, "codex", accountKey(2))
            },
            ValidCase("codex-absent-explicit-b-reverse") {
                insertTarget(it, "claude", hash("claude"), 4)
                insertTarget(it, "codex", ACCOUNT_USAGE_ABSENT_SHA256, 4)
                insertPrimary(it, "claude", accountKey(3))
            },
            ValidCase("neither-absent") {
                insertValidPair(it, version = 5, reverse = true)
            },
            ValidCase("explicit-none-preserved") {
                insertValidPair(it, version = 6)
                insertPrimary(it, "claude", ACCOUNT_USAGE_PRIMARY_NONE)
                insertPrimary(it, "codex", ACCOUNT_USAGE_PRIMARY_NONE)
            },
            ValidCase("stale-target-version-valid") {
                insertValidPair(it, version = 2, reverse = true)
                it.execSQL(
                    "UPDATE projection_state SET desired_revision=9,applied_revision=9," +
                        "aggregate_sha256=?,mirrors_sha256=?,cache_sha256=? WHERE singleton_id=1",
                    arrayOf(hash("aggregate"), hash("mirrors"), hash("cache"))
                )
            }
        )

        validCases.forEach { case ->
            val name = parentV4("valid-${case.label}", case.setup)
            val beforePrimary = rawPrimaryRows(name)
            openProduction(name).close()
            assertEquals(7, userVersion(name))
            assertEquals(freshSchema, schemaHash(name))
            when (case.label) {
                "untouched" -> {
                    assertNull(primaryToken(name, ProviderId.CLAUDE))
                    assertNull(primaryToken(name, ProviderId.CODEX))
                }
                "untouched-primary" -> assertEquals(accountKey(1), primaryToken(name, ProviderId.CLAUDE))
                "both-absent" -> {
                    assertEquals(ACCOUNT_USAGE_PRIMARY_NONE, primaryToken(name, ProviderId.CLAUDE))
                    assertEquals(ACCOUNT_USAGE_PRIMARY_NONE, primaryToken(name, ProviderId.CODEX))
                }
                "claude-absent-explicit-b" -> {
                    assertEquals(ACCOUNT_USAGE_PRIMARY_NONE, primaryToken(name, ProviderId.CLAUDE))
                    assertEquals(accountKey(2), primaryToken(name, ProviderId.CODEX))
                }
                "codex-absent-explicit-b-reverse" -> {
                    assertEquals(accountKey(3), primaryToken(name, ProviderId.CLAUDE))
                    assertEquals(ACCOUNT_USAGE_PRIMARY_NONE, primaryToken(name, ProviderId.CODEX))
                }
                "neither-absent" -> assertEquals(beforePrimary, rawPrimaryRows(name))
                "explicit-none-preserved" -> assertEquals(beforePrimary, rawPrimaryRows(name))
                "stale-target-version-valid" -> assertEquals(beforePrimary, rawPrimaryRows(name))
            }
            val once = canonicalDatabaseHash(name)
            openProduction(name).close()
            assertEquals(once, canonicalDatabaseHash(name))
            stateHashes += once
        }
        println(
            "QA_FIX3_VALID_CLASSIFICATIONS=${validCases.size};VALID_SCHEMA_SHA256=$freshSchema;" +
                "VALID_STATE_HASH_COUNT=${stateHashes.size};" +
                "VALID_STATE_HASHES_SHA256=${hash(stateHashes.joinToString("|"))}"
        )
    }

    @Test
    fun sixCanonicalMirrorMismatchesRemainFailClosed() {
        val claude = snapshot(ProviderId.CLAUDE, 61)
        val codex = snapshot(ProviderId.CODEX, 62)
        val snapshots = listOf(claude, codex)
        val raw = ProviderSnapshotCodec.encode(snapshots)
        val projection = LegacyProjection(
            rawAggregate = raw,
            snapshots = snapshots,
            targetSnapshots = snapshots.associateBy { it.providerId },
            desiredRevision = 1
        )
        val store = AndroidLegacyMigrationSource(context)
        val claudeStores = ProviderScriptProviders.storeNamesFor(ProviderId.CLAUDE)
        val corruptions = listOf<(Context) -> Unit>(
            { it.getSharedPreferences(claudeStores.accountData, Context.MODE_PRIVATE).edit().clear().commit() },
            { it.getSharedPreferences(claudeStores.scriptData, Context.MODE_PRIVATE).edit().clear().commit() },
            {
                it.getSharedPreferences(claudeStores.accountData, Context.MODE_PRIVATE).edit().clear().commit()
                it.getSharedPreferences(claudeStores.scriptData, Context.MODE_PRIVATE).edit().clear().commit()
            },
            {
                it.getSharedPreferences(claudeStores.accountData, Context.MODE_PRIVATE)
                    .edit().putString("extra", "1").commit()
            },
            {
                it.getSharedPreferences(claudeStores.scriptData, Context.MODE_PRIVATE)
                    .edit().putString("extra", "1").commit()
            },
            {
                it.getSharedPreferences(claudeStores.accountData, Context.MODE_PRIVATE)
                    .edit().putString("provider_id", "Claude").commit()
            }
        )
        val outcomes = corruptions.map { corrupt ->
            clearProjectionStorage()
            assertEquals(true, store.writeAggregate(raw))
            snapshots.forEach { assertEquals(true, store.writeMirror(it.providerId, it)) }
            assertEquals(true, store.writeCompatibilityCache(snapshots))
            assertNotNull(store.readProjectionReceipt(projection))
            corrupt(context)
            assertNull(store.readProjectionReceipt(projection))
            assertEquals(true, store.writeMirror(ProviderId.CLAUDE, claude))
            assertNotNull(store.readProjectionReceipt(projection))
            "1"
        }
        println("QA_FIX3_MIRROR_REJECTIONS=${outcomes.size};MIRROR_MATRIX_SHA256=${hash(outcomes.joinToString("|"))}")
    }

    @Test
    fun midpointBackfillFailureRollsBackAndRetryConverges() {
        val name = parentV4("midpoint-rollback") { db ->
            insertTarget(db, "codex", ACCOUNT_USAGE_ABSENT_SHA256, 2)
            insertTarget(db, "claude", ACCOUNT_USAGE_ABSENT_SHA256, 2)
            db.execSQL(
                "CREATE TRIGGER fail_codex_primary BEFORE INSERT ON account_usage_primary " +
                    "WHEN NEW.provider_id='codex' BEGIN SELECT RAISE(ABORT,'injected-upgrade-failure'); END"
            )
        }
        val unchanged = assertUpgradeAbortsUnchanged(name)
        rawDatabase(name).use { it.execSQL("DROP TRIGGER fail_codex_primary") }
        openProduction(name).close()
        assertEquals(ACCOUNT_USAGE_PRIMARY_NONE, primaryToken(name, ProviderId.CLAUDE))
        assertEquals(ACCOUNT_USAGE_PRIMARY_NONE, primaryToken(name, ProviderId.CODEX))
        val converged = canonicalDatabaseHash(name)
        openProduction(name).close()
        assertEquals(converged, canonicalDatabaseHash(name))
        println(
            "QA_FIX3_ROLLBACK_COUNT=1;ROLLBACK_V4_SHA256=$unchanged;" +
                "RETRY_STATE_SHA256=$converged"
        )
    }

    private fun assertUpgradeAbortsUnchanged(name: String): String {
        val before = canonicalDatabaseHash(name)
        assertEquals(4, userVersion(name))
        assertThrows(SQLiteException::class.java) {
            openProduction(name).use { it.catalog(0, 1) }
        }
        assertEquals(4, userVersion(name))
        assertEquals(before, canonicalDatabaseHash(name))
        return before
    }

    private fun parentV4(label: String, setup: (SQLiteDatabase) -> Unit): String {
        val name = database(label)
        openProduction(name).close()
        rawDatabase(name).use { db ->
            db.execSQL("UPDATE authority_metadata SET display_version=10 WHERE singleton_id=1")
            db.delete("account_usage_projection_intent", null, null)
            db.delete("account_usage_projection_targets", null, null)
            db.delete("account_usage_primary", null, null)
            setup(db)
            db.execSQL("PRAGMA user_version=4")
        }
        return name
    }

    private fun insertValidPair(db: SQLiteDatabase, version: Long = 2, reverse: Boolean = false) {
        val providers = if (reverse) listOf("codex", "claude") else listOf("claude", "codex")
        providers.forEach { insertTarget(db, it, hash(it), version) }
    }

    private fun insertTarget(db: SQLiteDatabase, provider: String, target: String, version: Long) {
        db.execSQL(
            "INSERT INTO account_usage_projection_targets(provider_id,target_sha256,authority_version) VALUES(?,?,?)",
            arrayOf(provider, target, version)
        )
    }

    private fun insertIntent(db: SQLiteDatabase, version: Long, claude: String, codex: String) {
        db.execSQL(
            "INSERT INTO account_usage_projection_intent(singleton_id,authority_version,claude_sha256,codex_sha256) VALUES(1,?,?,?)",
            arrayOf(version, claude, codex)
        )
    }

    private fun insertPrimary(db: SQLiteDatabase, provider: String, accountKey: String) {
        db.execSQL(
            "INSERT INTO account_usage_primary(provider_id,account_key) VALUES(?,?)",
            arrayOf(provider, accountKey)
        )
    }

    private fun openProduction(name: String): MainProcessAccountAuthority =
        MainProcessAccountAuthority.open(context, name).also { it.catalog(0, 1) }

    private fun primaryToken(name: String, provider: ProviderId): String? = rawDatabase(name).use { db ->
        db.rawQuery(
            "SELECT account_key FROM account_usage_primary WHERE provider_id=?",
            arrayOf(provider.storageId)
        ).use { cursor -> if (cursor.moveToFirst()) cursor.getString(0) else null }
    }

    private fun rawPrimaryRows(name: String): List<String> = rawDatabase(name).use { db ->
        db.rawQuery("SELECT provider_id,account_key FROM account_usage_primary ORDER BY provider_id", null).use { cursor ->
            buildList {
                while (cursor.moveToNext()) add("${cursor.getString(0)}=${cursor.getString(1)}")
            }
        }
    }

    private fun userVersion(name: String): Int = rawDatabase(name).use { db ->
        db.rawQuery("PRAGMA user_version", null).use { cursor -> cursor.moveToFirst(); cursor.getInt(0) }
    }

    private fun schemaHash(name: String): String = rawDatabase(name).use { db ->
        val canonical = buildString {
            db.rawQuery(
                "SELECT type,name,tbl_name,sql FROM sqlite_master " +
                    "WHERE name NOT LIKE 'sqlite_%' AND name!='android_metadata' AND type IN ('table','index') " +
                    "ORDER BY type,name",
                null
            ).use { cursor ->
                while (cursor.moveToNext()) {
                    append(cursor.getString(0)).append('|').append(cursor.getString(1)).append('|')
                        .append(cursor.getString(2)).append('|').append(cursor.getString(3)).append('\n')
                }
            }
        }
        hash(canonical)
    }

    private fun canonicalDatabaseHash(name: String): String = rawDatabase(name).use { db ->
        val canonical = buildString {
            append("user_version=").append(
                db.rawQuery("PRAGMA user_version", null).use { cursor -> cursor.moveToFirst(); cursor.getInt(0) }
            ).append('\n')
            val tables = mutableListOf<String>()
            db.rawQuery(
                "SELECT type,name,tbl_name,sql FROM sqlite_master WHERE name NOT LIKE 'sqlite_%' ORDER BY type,name",
                null
            ).use { cursor ->
                while (cursor.moveToNext()) {
                    val type = cursor.getString(0)
                    val objectName = cursor.getString(1)
                    append(type).append('|').append(objectName).append('|')
                        .append(cursor.getString(2)).append('|').append(cursor.getString(3)).append('\n')
                    if (type == "table") tables += objectName
                }
            }
            tables.sorted().forEach { table ->
                append('[').append(table).append("]\n")
                val escaped = table.replace("\"", "\"\"")
                val rows = mutableListOf<String>()
                db.rawQuery("SELECT * FROM \"$escaped\"", null).use { cursor ->
                    while (cursor.moveToNext()) {
                        rows += buildString {
                            cursor.columnNames.forEachIndexed { index, column ->
                                append(column).append('=')
                                when (cursor.getType(index)) {
                                    Cursor.FIELD_TYPE_NULL -> append("N")
                                    Cursor.FIELD_TYPE_INTEGER -> append("I").append(cursor.getLong(index))
                                    Cursor.FIELD_TYPE_FLOAT -> append("F").append(cursor.getDouble(index))
                                    Cursor.FIELD_TYPE_STRING -> append("S").append(cursor.getString(index))
                                    Cursor.FIELD_TYPE_BLOB -> append("B").append(cursor.getBlob(index).joinToString("") { "%02x".format(it) })
                                }
                                append(';')
                            }
                        }
                    }
                }
                rows.sorted().forEach { append(it).append('\n') }
            }
        }
        hash(canonical)
    }

    private fun rawDatabase(name: String): SQLiteDatabase = SQLiteDatabase.openDatabase(
        context.getDatabasePath(name).path,
        null,
        SQLiteDatabase.OPEN_READWRITE
    )

    private fun clearProjectionStorage() {
        listOf("ai_quota_local_usage", "ai_quota_widget_cache").forEach { name ->
            context.getSharedPreferences(name, Context.MODE_PRIVATE).edit().clear().commit()
        }
        listOf(ProviderId.CLAUDE, ProviderId.CODEX).forEach { provider ->
            val stores = ProviderScriptProviders.storeNamesFor(provider)
            listOf(stores.usageData, stores.accountData, stores.scriptData).forEach { name ->
                context.getSharedPreferences(name, Context.MODE_PRIVATE).edit().clear().commit()
            }
        }
    }

    private fun snapshot(provider: ProviderId, remaining: Int) = ProviderUsageSnapshot(
        providerId = provider,
        connectionState = ProviderConnectionState.CONNECTED,
        account = "fixture-$remaining.invalid",
        updatedAt = "2026-08-25T00:00:00Z",
        statusUpdatedAt = "2026-08-25T00:00:00Z",
        lines = listOf(
            ProviderUsageLine(
                key = "${provider.storageId}:quota",
                label = "Quota",
                remainingPercent = remaining / 100f,
                remainingText = "$remaining%"
            )
        )
    )

    private fun database(label: String): String = "account-usage-fix3-$label-${counter.incrementAndGet()}.db"
        .also { databases += it; context.deleteDatabase(it) }

    private fun accountKey(index: Int): String = "acct_${index.toString(16).padStart(32, '0')}"

    private fun hash(value: String): String = MessageDigest.getInstance("SHA-256")
        .digest(value.toByteArray()).joinToString("") { "%02x".format(it) }

    private data class InvalidCase(val label: String, val setup: (SQLiteDatabase) -> Unit)
    private data class ValidCase(val label: String, val setup: (SQLiteDatabase) -> Unit)

    private companion object { val counter = AtomicInteger() }
}
