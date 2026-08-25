package com.aiquota.mobile.accounts

import android.content.Context
import android.database.Cursor
import android.database.sqlite.SQLiteDatabase
import android.database.sqlite.SQLiteException
import androidx.test.core.app.ApplicationProvider
import java.security.MessageDigest
import java.util.concurrent.atomic.AtomicInteger
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Assert.assertThrows
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner

@RunWith(RobolectricTestRunner::class)
class AccountUsageRepositoryFixIteration4Test {
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
    fun untouchedMissingMetadataFailsClosed() = verifyMalformedMetadata("missing") { name ->
        rawDatabase(name).use { it.delete("authority_metadata", null, null) }
    }

    @Test
    fun untouchedTextMetadataFailsClosed() = verifyMalformedMetadata("text") { name ->
        rawDatabase(name).use { it.execSQL("UPDATE authority_metadata SET display_version='broken'") }
    }

    @Test
    fun untouchedRealMetadataFailsClosed() = verifyMalformedMetadata("real") { name ->
        rawDatabase(name).use { it.execSQL("UPDATE authority_metadata SET display_version=2.5") }
    }

    @Test
    fun untouchedBlobMetadataFailsClosed() = verifyMalformedMetadata("blob") { name ->
        rawDatabase(name).use { it.execSQL("UPDATE authority_metadata SET display_version=X'0102'") }
    }

    @Test
    fun untouchedNullMetadataFailsClosed() = verifyMalformedMetadata("null") { name ->
        forceNullDisplayVersion(name)
    }

    @Test
    fun untouchedNegativeMetadataFailsClosed() = verifyMalformedMetadata("negative") { name ->
        rawDatabase(name).use { db ->
            db.execSQL("PRAGMA ignore_check_constraints=ON")
            db.execSQL("UPDATE authority_metadata SET display_version=-1")
            db.execSQL("PRAGMA ignore_check_constraints=OFF")
        }
    }

    @Test
    fun untouchedWrongSingletonMetadataFailsClosed() = verifyMalformedMetadata("wrong-singleton") { name ->
        rawDatabase(name).use { db ->
            db.delete("authority_metadata", null, null)
            db.execSQL("PRAGMA ignore_check_constraints=ON")
            db.execSQL("INSERT INTO authority_metadata(singleton_id,display_version) VALUES(2,10)")
            db.execSQL("PRAGMA ignore_check_constraints=OFF")
        }
    }

    @Test
    fun untouchedExtraMetadataRowFailsClosed() = verifyMalformedMetadata("extra-row") { name ->
        rawDatabase(name).use { db ->
            db.execSQL("PRAGMA ignore_check_constraints=ON")
            db.execSQL("INSERT INTO authority_metadata(singleton_id,display_version) VALUES(2,10)")
            db.execSQL("PRAGMA ignore_check_constraints=OFF")
        }
    }

    @Test
    fun validUntouchedAndCompleteMetadataRemainDeterministic() {
        val untouched = parentV4("valid-untouched")
        val untouchedPrimary = accountKey(1)
        rawDatabase(untouched).use { db ->
            db.execSQL(
                "INSERT INTO account_usage_primary(provider_id,account_key) VALUES('claude',?)",
                arrayOf(untouchedPrimary)
            )
        }
        openProduction(untouched).close()
        assertEquals(5, userVersion(untouched))
        assertEquals(untouchedPrimary, primaryToken(untouched, "claude"))
        assertNull(primaryToken(untouched, "codex"))
        val untouchedHash = canonicalDatabaseHash(untouched)
        openProduction(untouched).close()
        assertEquals(untouchedHash, canonicalDatabaseHash(untouched))

        val complete = parentV4("valid-complete")
        rawDatabase(complete).use { db ->
            insertTarget(db, "codex", hash("codex"), 7)
            insertTarget(db, "claude", ACCOUNT_USAGE_ABSENT_SHA256, 7)
        }
        openProduction(complete).close()
        assertEquals(5, userVersion(complete))
        assertEquals(ACCOUNT_USAGE_PRIMARY_NONE, primaryToken(complete, "claude"))
        assertNull(primaryToken(complete, "codex"))
        val completeHash = canonicalDatabaseHash(complete)
        openProduction(complete).close()
        assertEquals(completeHash, canonicalDatabaseHash(complete))
        println(
            "QA_FIX4_VALID_COUNT=2;VALID_UNTOUCHED_SHA256=$untouchedHash;" +
                "VALID_COMPLETE_SHA256=$completeHash"
        )
    }

    private fun verifyMalformedMetadata(label: String, corrupt: (String) -> Unit) {
        val name = parentV4("invalid-$label")
        corrupt(name)
        val before = canonicalDatabaseHash(name)
        repeat(2) {
            assertThrows(SQLiteException::class.java) { openProduction(name).close() }
            assertEquals(4, userVersion(name))
            assertEquals(before, canonicalDatabaseHash(name))
        }
        repairMetadata(name)
        openProduction(name).close()
        assertEquals(5, userVersion(name))
        assertNull(primaryToken(name, "claude"))
        assertNull(primaryToken(name, "codex"))
        val repaired = canonicalDatabaseHash(name)
        openProduction(name).close()
        assertEquals(repaired, canonicalDatabaseHash(name))
        println(
            "QA_FIX4_METADATA_ABORT_COUNT=2;UNCHANGED_V4_SHA256=$before;" +
                "REPAIRED_V5_SHA256=$repaired"
        )
    }

    private fun parentV4(label: String): String {
        val name = database(label)
        openProduction(name).close()
        rawDatabase(name).use { db ->
            db.execSQL("UPDATE authority_metadata SET display_version=10 WHERE singleton_id=1")
            db.delete("account_usage_projection_intent", null, null)
            db.delete("account_usage_projection_targets", null, null)
            db.delete("account_usage_primary", null, null)
            db.execSQL("PRAGMA user_version=4")
        }
        return name
    }

    private fun forceNullDisplayVersion(name: String) {
        val exactSql = rawDatabase(name).use { db ->
            db.rawQuery(
                "SELECT sql FROM sqlite_master WHERE type='table' AND name='authority_metadata'",
                null
            ).use { cursor ->
                check(cursor.moveToFirst())
                cursor.getString(0)
            }
        }
        val laxSql = exactSql.replace("display_version INTEGER NOT NULL", "display_version INTEGER")
        check(laxSql != exactSql)
        replaceTableSchema(name, laxSql)
        rawDatabase(name).use { it.execSQL("UPDATE authority_metadata SET display_version=NULL") }
        replaceTableSchema(name, exactSql)
    }

    private fun replaceTableSchema(name: String, sql: String) {
        rawDatabase(name).use { db ->
            val schemaVersion = db.rawQuery("PRAGMA schema_version", null).use { cursor ->
                cursor.moveToFirst()
                cursor.getInt(0)
            }
            db.execSQL("PRAGMA writable_schema=ON")
            db.execSQL(
                "UPDATE sqlite_master SET sql=? WHERE type='table' AND name='authority_metadata'",
                arrayOf(sql)
            )
            db.execSQL("PRAGMA writable_schema=OFF")
            db.execSQL("PRAGMA schema_version=${schemaVersion + 1}")
        }
    }

    private fun repairMetadata(name: String) {
        rawDatabase(name).use { db ->
            db.execSQL("PRAGMA ignore_check_constraints=ON")
            db.delete("authority_metadata", null, null)
            db.execSQL("INSERT INTO authority_metadata(singleton_id,display_version) VALUES(1,10)")
            db.execSQL("PRAGMA ignore_check_constraints=OFF")
        }
    }

    private fun insertTarget(db: SQLiteDatabase, provider: String, target: String, version: Long) {
        db.execSQL(
            "INSERT INTO account_usage_projection_targets(provider_id,target_sha256,authority_version) VALUES(?,?,?)",
            arrayOf(provider, target, version)
        )
    }

    private fun openProduction(name: String): MainProcessAccountAuthority =
        MainProcessAccountAuthority.open(context, name).also { it.catalog(0, 1) }

    private fun primaryToken(name: String, provider: String): String? = rawDatabase(name).use { db ->
        db.rawQuery(
            "SELECT account_key FROM account_usage_primary WHERE provider_id=?",
            arrayOf(provider)
        ).use { cursor -> if (cursor.moveToFirst()) cursor.getString(0) else null }
    }

    private fun userVersion(name: String): Int = rawDatabase(name).use { db ->
        db.rawQuery("PRAGMA user_version", null).use { cursor -> cursor.moveToFirst(); cursor.getInt(0) }
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
                                    Cursor.FIELD_TYPE_BLOB -> append("B").append(
                                        cursor.getBlob(index).joinToString("") { "%02x".format(it) }
                                    )
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

    private fun database(label: String): String = "account-usage-fix4-$label-${counter.incrementAndGet()}.db"
        .also { databases += it; context.deleteDatabase(it) }

    private fun accountKey(index: Int): String = "acct_${index.toString(16).padStart(32, '0')}"

    private fun hash(value: String): String = MessageDigest.getInstance("SHA-256")
        .digest(value.toByteArray()).joinToString("") { "%02x".format(it) }

    private companion object { val counter = AtomicInteger() }
}
