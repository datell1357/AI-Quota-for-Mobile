package com.aiquota.mobile.accounts

import android.content.Context
import android.database.Cursor
import android.database.sqlite.SQLiteDatabase
import android.database.sqlite.SQLiteException
import androidx.test.core.app.ApplicationProvider
import com.aiquota.mobile.local.ProviderConnectionState
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.local.ProviderUsageSnapshot
import java.security.MessageDigest
import java.util.concurrent.atomic.AtomicInteger
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Assert.assertThrows
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner

@RunWith(RobolectricTestRunner::class)
class ProviderCardDeletionSchemaValidationTest {
    private lateinit var context: Context
    private val databases = mutableListOf<String>()

    @Before
    fun setUp() {
        context = ApplicationProvider.getApplicationContext()
    }

    @After
    fun tearDown() {
        databases.forEach(context::deleteDatabase)
    }

    @Test
    fun malformedV9JournalColumnsChecksKeysForeignKeyAndIndexesFailClosedUnchanged() {
        val mutations = listOf<Pair<String, (SQLiteDatabase) -> Unit>>(
            "missing-column" to {
                replaceJournal(it, journalSql(includeChecks = false).replace("failure TEXT, ", ""))
            },
            "extra-column" to {
                replaceJournal(
                    it,
                    journalSql().replace(
                        "claim_expires_at INTEGER, ",
                        "claim_expires_at INTEGER, surprise TEXT, ",
                    ),
                )
            },
            "wrong-affinity" to { replaceJournal(it, journalSql().replace("account_key TEXT", "account_key INTEGER")) },
            "wrong-not-null-default" to {
                replaceJournal(
                    it,
                    journalSql().replace("failure TEXT", "failure TEXT NOT NULL DEFAULT 'PROFILE_ERASURE_FAILED'"),
                )
            },
            "checks-missing" to { replaceJournal(it, journalSql(includeChecks = false)) },
            "checks-reordered" to { replaceJournal(it, journalSql(reverseChecks = true)) },
            "primary-key-split" to {
                replaceJournal(
                    it,
                    journalSql().replace(
                        "PRIMARY KEY(provider_id, account_key)",
                        "UNIQUE(provider_id, account_key)",
                    ),
                )
            },
            "foreign-key-missing" to { replaceJournal(it, journalSql(includeForeignKey = false)) },
            "foreign-key-cascade" to {
                replaceJournal(it, journalSql().replace("ON DELETE RESTRICT", "ON DELETE CASCADE"))
            },
            "pending-index-missing" to {
                it.execSQL("DROP INDEX IF EXISTS provider_card_deletion_pending_index")
            },
            "pending-index-wrong" to {
                it.execSQL("DROP INDEX IF EXISTS provider_card_deletion_pending_index")
                it.execSQL(
                    "CREATE INDEX provider_card_deletion_pending_index " +
                        "ON provider_card_deletion_journal(account_key)"
                )
            },
            "unexpected-index" to {
                it.execSQL("CREATE INDEX provider_card_deletion_surprise ON provider_card_deletion_journal(failure)")
            },
        )

        mutations.forEach { (label, mutation) ->
            val name = database("schema-$label")
            initialize(name)
            raw(name).use(mutation)
            assertCurrentOpenFailsUnchanged(name, label)
        }
    }

    @Test
    fun malformedV9JournalRowsFailClosedForEveryAccountAndJournalCoherenceBoundary() {
        val cases = listOf<Pair<String, (SQLiteDatabase, ProviderAccountId) -> Unit>>(
            "active-has-journal" to { db, id -> insertJournal(db, id, "TOMBSTONED", null, 1, 1) },
            "tombstone-wrong-step" to { db, id ->
                deleteState(db, id, "TOMBSTONED", 1)
                insertJournal(db, id, "WORK_CANCELLED", null, 2, 1)
            },
            "pending-wrong-step" to { db, id ->
                deleteState(db, id, "ERASURE_PENDING", 1)
                insertJournal(db, id, "TOMBSTONED", null, 1, 1)
            },
            "erased-wrong-step" to { db, id ->
                deleteState(db, id, "ERASED", 1)
                insertJournal(db, id, "COMPATIBILITY_CLEARED", null, 9, 1)
            },
            "failure-step-mismatch" to { db, id ->
                deleteState(db, id, "ERASURE_PENDING", 1)
                insertJournal(db, id, "PRIMARY_CLEARED", "PROFILE_ERASURE_FAILED", 3, 1)
            },
            "revision-before-step" to { db, id ->
                deleteState(db, id, "ERASURE_PENDING", 1)
                insertJournal(db, id, "PROFILE_ERASED", null, 1, 1)
            },
            "journal-version-account-mismatch" to { db, id ->
                deleteState(db, id, "ERASURE_PENDING", 1)
                insertJournal(db, id, "WORK_CANCELLED", null, 2, 0)
            },
            "journal-version-future" to { db, id ->
                deleteState(db, id, "ERASURE_PENDING", 1)
                insertJournal(db, id, "WORK_CANCELLED", null, 2, 99)
            },
        )

        cases.forEachIndexed { index, (label, corrupt) ->
            val name = database("row-$label")
            val id = id(index + 1)
            MainProcessAccountAuthority.open(context, name).use { it.register(seed(id)) }
            raw(name).use { db ->
                db.execSQL("PRAGMA ignore_check_constraints=ON")
                try {
                    corrupt(db, id)
                } finally {
                    db.execSQL("PRAGMA ignore_check_constraints=OFF")
                }
            }
            assertCurrentOpenFailsUnchanged(name, label)
        }
    }

    @Test
    fun everySupportedOldSchemaVersionUpgradesToOneValidatedDeletionJournalSchema() {
        val hashes = mutableSetOf<String>()
        (1..8).forEach { oldVersion ->
            val name = database("upgrade-$oldVersion")
            initialize(name)
            raw(name).use { db ->
                db.execSQL("DROP INDEX IF EXISTS provider_card_deletion_pending_index")
                db.execSQL("DROP TABLE provider_card_deletion_journal")
                db.execSQL("PRAGMA user_version=$oldVersion")
            }
            MainProcessAccountAuthority.open(context, name).use { it.displayVersion() }
            assertEquals(9, userVersion(name))
            hashes += journalSchemaHash(name)
            assertTrue(journalSchemaSql(name).contains("claim_owner TEXT"))
            assertTrue(journalSchemaSql(name).contains("provider_card_deletion_pending_index"))
        }
        assertEquals(1, hashes.size)
    }

    private fun replaceJournal(db: SQLiteDatabase, sql: String) {
        db.execSQL("DROP INDEX IF EXISTS provider_card_deletion_pending_index")
        db.execSQL("DROP TABLE provider_card_deletion_journal")
        db.execSQL(sql)
        db.execSQL(
            "CREATE INDEX provider_card_deletion_pending_index ON " +
                "provider_card_deletion_journal(step,claim_expires_at) WHERE step!='ERASED'"
        )
    }

    private fun journalSql(
        includeChecks: Boolean = true,
        reverseChecks: Boolean = false,
        includeForeignKey: Boolean = true,
    ): String {
        val checks = listOf(
            "CHECK(step IN ('TOMBSTONED','WORK_CANCELLED','PRIMARY_CLEARED','CREDENTIAL_ERASED','PROFILE_ERASED','PROVIDER_CLEANUP','USAGE_ERASED','ARTIFACTS_ERASED','COMPATIBILITY_CLEARED','ERASED'))",
            "CHECK(failure IS NULL OR failure IN ('CREDENTIAL_ERASURE_FAILED','PROFILE_ERASURE_FAILED','PROVIDER_CLEANUP_FAILED','ARTIFACT_ERASURE_FAILED','COMPATIBILITY_CLEAR_FAILED'))",
            "CHECK(journal_revision > 0)",
            "CHECK(authority_version >= 0)",
            "CHECK((claim_owner IS NULL AND claim_step IS NULL AND claim_revision IS NULL AND claim_authority_version IS NULL AND claim_expires_at IS NULL) OR (claim_owner IS NOT NULL AND claim_step IS NOT NULL AND claim_revision IS NOT NULL AND claim_authority_version IS NOT NULL AND claim_expires_at IS NOT NULL))",
            "CHECK(claim_owner IS NULL OR (length(claim_owner)=64 AND claim_owner NOT GLOB '*[^0-9a-f]*'))",
            "CHECK(claim_step IS NULL OR claim_step=step)",
            "CHECK(claim_revision IS NULL OR claim_revision=journal_revision)",
            "CHECK(claim_authority_version IS NULL OR claim_authority_version=authority_version)",
            "CHECK(claim_expires_at IS NULL OR claim_expires_at>0)",
        ).let { if (reverseChecks) it.reversed() else it }
        return buildString {
            append("CREATE TABLE provider_card_deletion_journal(")
            append("provider_id TEXT NOT NULL, account_key TEXT NOT NULL, step TEXT NOT NULL, failure TEXT, ")
            append("journal_revision INTEGER NOT NULL, authority_version INTEGER NOT NULL, ")
            append("claim_owner TEXT, claim_step TEXT, claim_revision INTEGER, ")
            append("claim_authority_version INTEGER, claim_expires_at INTEGER, ")
            if (includeChecks) append(checks.joinToString(", ")).append(", ")
            append("PRIMARY KEY(provider_id, account_key)")
            if (includeForeignKey) {
                append(", FOREIGN KEY(provider_id, account_key) REFERENCES accounts(provider_id, account_key) ON DELETE RESTRICT")
            }
            append(")")
        }
    }

    private fun initialize(name: String) {
        MainProcessAccountAuthority.open(context, name).use { it.displayVersion() }
    }

    private fun insertJournal(
        db: SQLiteDatabase,
        id: ProviderAccountId,
        step: String,
        failure: String?,
        revision: Long,
        version: Long,
    ) {
        db.execSQL(
            "INSERT INTO provider_card_deletion_journal(" +
                "provider_id,account_key,step,failure,journal_revision,authority_version) VALUES(?,?,?,?,?,?)",
            arrayOf(
                id.providerId.storageId,
                id.accountKey.storageValue(),
                step,
                failure,
                revision,
                version,
            ),
        )
    }

    private fun deleteState(
        db: SQLiteDatabase,
        id: ProviderAccountId,
        state: String,
        version: Long,
    ) {
        db.execSQL(
            "UPDATE accounts SET state='DELETED',auth_state='SIGNED_OUT',deletion_state=?,modified_version=? " +
                "WHERE provider_id=? AND account_key=?",
            arrayOf(state, version, id.providerId.storageId, id.accountKey.storageValue()),
        )
        db.execSQL(
            "UPDATE provider_card_catalog SET active_rank=NULL WHERE provider_id=? AND account_key=?",
            arrayOf(id.providerId.storageId, id.accountKey.storageValue()),
        )
        db.execSQL("UPDATE authority_metadata SET display_version=? WHERE singleton_id=1", arrayOf(version))
    }

    private fun assertCurrentOpenFailsUnchanged(name: String, label: String) {
        val before = rawSurface(name)
        repeat(2) {
            assertThrows(label, SQLiteException::class.java) {
                MainProcessAccountAuthority.open(context, name).use { authority -> authority.displayVersion() }
            }
            assertEquals(label, 9, userVersion(name))
            assertTrue(label, before.contentEquals(rawSurface(name)))
        }
    }

    private fun seed(id: ProviderAccountId) = AuthorityAccountSeed(
        AccountRecord(
            id = id,
            state = AccountState.ACTIVE,
            authState = AccountAuthState.SIGNED_OUT,
            deletionState = AccountDeletionState.NONE,
            generation = AccountGeneration.of(1),
            sessionRevision = SessionRevision.of(1),
        ),
        ProviderUsageSnapshot(
            providerId = id.providerId,
            connectionState = ProviderConnectionState.DISCONNECTED,
            updatedAt = "2026-08-28T00:00:00Z",
            statusUpdatedAt = "2026-08-28T00:00:00Z",
        ),
    )

    private fun database(label: String): String =
        "provider-delete-schema-$label-${counter.incrementAndGet()}.db".also {
            databases += it
            context.deleteDatabase(it)
        }

    private fun id(index: Int) = ProviderAccountId(
        ProviderId.CLAUDE,
        AccountKey.parseOpaque("acct_${index.toString(16).padStart(32, '0')}"),
    )

    private fun raw(name: String): SQLiteDatabase = SQLiteDatabase.openDatabase(
        context.getDatabasePath(name).path,
        null,
        SQLiteDatabase.OPEN_READWRITE,
    )

    private fun userVersion(name: String): Int = raw(name).use { db ->
        db.rawQuery("PRAGMA user_version", null).use { cursor -> cursor.moveToFirst(); cursor.getInt(0) }
    }

    private fun journalSchemaHash(name: String): String = sha256(journalSchemaSql(name).toByteArray())

    private fun journalSchemaSql(name: String): String = raw(name).use { db ->
        db.rawQuery(
            "SELECT type,name,sql FROM sqlite_master WHERE tbl_name='provider_card_deletion_journal' " +
                "ORDER BY type,name",
            null,
        ).use { cursor -> buildString { while (cursor.moveToNext()) append(canonicalRow(cursor)) } }
    }

    private fun rawSurface(name: String): ByteArray = raw(name).use { db ->
        buildString {
            db.rawQuery(
                "SELECT type,name,tbl_name,sql FROM sqlite_master WHERE name NOT LIKE 'sqlite_%' " +
                    "AND name!='android_metadata' ORDER BY type,name",
                null,
            ).use { cursor -> while (cursor.moveToNext()) append(canonicalRow(cursor)).append('\n') }
            listOf("authority_metadata", "accounts", "provider_card_deletion_journal").forEach { table ->
                db.rawQuery("SELECT * FROM $table", null).use { cursor ->
                    while (cursor.moveToNext()) append(canonicalRow(cursor)).append('\n')
                }
            }
        }.toByteArray()
    }

    private fun canonicalRow(cursor: Cursor): String = buildString {
        repeat(cursor.columnCount) { index ->
            when (cursor.getType(index)) {
                Cursor.FIELD_TYPE_NULL -> append("N;")
                Cursor.FIELD_TYPE_INTEGER -> append("I${cursor.getLong(index)};")
                else -> append("S${cursor.getString(index).length}:${cursor.getString(index)};")
            }
        }
    }

    private fun sha256(bytes: ByteArray): String = MessageDigest.getInstance("SHA-256")
        .digest(bytes).joinToString("") { "%02x".format(it) }

    private companion object {
        val counter = AtomicInteger()
    }
}
