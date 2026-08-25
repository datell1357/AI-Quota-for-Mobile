package com.aiquota.mobile.accounts

import android.content.Context
import android.database.sqlite.SQLiteDatabase
import androidx.test.core.app.ApplicationProvider
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.providers.ProviderSnapshotCodec
import java.util.concurrent.atomic.AtomicInteger
import org.json.JSONObject
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner

@RunWith(RobolectricTestRunner::class)
class LegacyMigrationStorageTest {
    @Test
    fun productionJournalAdapterAndRealSqlitePreserveGeminiAndWriteProjectionSurfaces() {
        val context = ApplicationProvider.getApplicationContext<Context>()
        clear(context)
        val geminiBefore = migrationSnapshot(ProviderId.GEMINI, "G", 43)
        val raw = ProviderSnapshotCodec.encode(
            listOf(
                migrationSnapshot(ProviderId.CLAUDE, "CA", 81),
                migrationSnapshot(ProviderId.CODEX, "XA", 62),
                geminiBefore
            )
        )
        context.getSharedPreferences("ai_quota_local_usage", Context.MODE_PRIVATE)
            .edit().putString("provider_snapshots", raw).commit()
        val geminiControl = context.getSharedPreferences("task6_gemini_control", Context.MODE_PRIVATE)
        geminiControl.edit().putString("canonical", "G-byte-control").commit()
        val databaseName = "legacy-storage-${counter.incrementAndGet()}.db"
        context.deleteDatabase(databaseName)
        val source = AndroidLegacyMigrationSource(context)
        val journal = AndroidLegacyMigrationJournal(context)
        MainProcessAccountAuthority.open(context, databaseName).use { authority ->
            val before = LegacyMigrationCodec.sha256(authority.canonicalDumpForTest())
            val result = LegacyAccountMigration(
                source, journal, authority,
                AccountCredentialVault(InMemoryCredentialEnvelopeStore(), FakeCredentialVaultCrypto())
            ).run() as LegacyMigrationResult.Completed

            val projected = LegacySnapshotStrictParser.parse(
                context.getSharedPreferences("ai_quota_local_usage", Context.MODE_PRIVATE)
                    .getString("provider_snapshots", null)!!
            )!!
            assertEquals(setOf(ProviderId.CLAUDE, ProviderId.CODEX, ProviderId.GEMINI), projected.map { it.providerId }.toSet())
            assertEquals(geminiBefore, projected.single { it.providerId == ProviderId.GEMINI })
            assertEquals("G-byte-control", geminiControl.getString("canonical", null))
            assertEquals(AccountAuthState.REAUTH_REQUIRED, authority.legacyImportRecord(defaultId(ProviderId.CLAUDE))?.account?.authState)
            assertEquals(result.manifest, journal.readManifest())
            assertTrue(context.getSharedPreferences("usage_data_claude", Context.MODE_PRIVATE).contains("snapshot"))
            assertTrue(context.getSharedPreferences("ai_quota_widget_cache", Context.MODE_PRIVATE).contains("local_display_snapshot"))
            val after = LegacyMigrationCodec.sha256(authority.canonicalDumpForTest())
            println("QA_FIX1_SQLITE_BEFORE=$before;AFTER=$after;GEMINI_UNCHANGED=1")
        }
        context.deleteDatabase(databaseName)
        clear(context)
    }

    @Test
    fun productionContextReceiptDistinguishesAbsentMalformedValidAndFilteredSources() {
        val context = ApplicationProvider.getApplicationContext<Context>()
        val preferences = context.getSharedPreferences("claude_native_request_context", Context.MODE_PRIVATE)
        preferences.edit().clear().commit()
        assertTrue(AndroidLegacyMigrationSource(context).capture().receipt.contexts.isEmpty())

        preferences.edit().putString("context", "{malformed-nonblank").commit()
        val malformedSource = AndroidLegacyMigrationSource(context)
        val malformedReceipt = malformedSource.capture().receipt.contexts.single()
        assertTrue(malformedSource.readContext(malformedReceipt) is LegacyContextCapture.Malformed)

        preferences.edit().putString(
            "context",
            "{\"claude.ai/api/organizations\":{\"Authorization\":\"synthetic-marker\"}}"
        ).commit()
        val validSource = AndroidLegacyMigrationSource(context)
        val validReceipt = validSource.capture().receipt.contexts.single()
        assertTrue(validSource.readContext(validReceipt) is LegacyContextCapture.Present)
        preferences.edit().putString(
            "context",
            "{\"claude.ai/api/organizations\":{\"Authorization\":\"replacement-marker\"}}"
        ).commit()
        assertFalse(validReceipt == AndroidLegacyMigrationSource(context).capture().receipt.contexts.single())
        assertTrue(AndroidLegacyMigrationSource(context).readContext(validReceipt) is LegacyContextCapture.Malformed)

        preferences.edit().putString(
            "context",
            "{\"claude.ai/api/organizations\":{\"Cookie\":\"prohibited-marker\"}}"
        ).commit()
        val filteredSource = AndroidLegacyMigrationSource(context)
        assertTrue(filteredSource.readContext(filteredSource.capture().receipt.contexts.single()) is LegacyContextCapture.Malformed)
        preferences.edit().clear().commit()
    }

    @Test
    fun schemaOneAuthorityUpgradesToDurableMigrationAndProjectionTables() {
        val context = ApplicationProvider.getApplicationContext<Context>()
        val name = "legacy-upgrade-${counter.incrementAndGet()}.db"
        context.deleteDatabase(name)
        MainProcessAccountAuthority.open(context, name).use { it.catalog(0, 1) }
        SQLiteDatabase.openDatabase(context.getDatabasePath(name).path, null, SQLiteDatabase.OPEN_READWRITE).use { db ->
            db.execSQL("DROP TABLE projection_state")
            db.execSQL("DROP TABLE migration_preferences")
            db.execSQL("DROP TABLE migration_mirrors")
            db.execSQL("PRAGMA user_version=1")
        }
        MainProcessAccountAuthority.open(context, name).use { authority ->
            assertEquals(0, authority.legacyProjectionState().appliedRevision)
            assertEquals(0, authority.catalog(0, 10).totalCount)
        }
        context.deleteDatabase(name)
    }

    @Test
    fun completeManifestEncodingIsDeterministicStrictAndReceiptOnly() {
        val source = LegacySourceReceipt(
            aggregatePresent = true,
            aggregate = LegacyMigrationCodec.blobReceipt("{\"providers\":[]}"),
            contexts = emptyList()
        )
        val emptyHash = LegacyMigrationCodec.sha256("")
        val projection = LegacyProjectionReceipt(0, 0, emptyHash, emptyHash, emptyHash)
        val manifest = LegacyMigrationCodec.completeManifest(source, emptyList(), projection)
        val encoded = LegacyMigrationCodec.encodeManifest(manifest)

        assertEquals(encoded, LegacyMigrationCodec.encodeManifest(manifest))
        assertEquals(manifest, LegacyMigrationCodec.decodeManifest(encoded))
        assertFalse(encoded.contains("providers"))
        assertNull(LegacyMigrationCodec.decodeManifest(JSONObject(encoded).put("checksum", "0".repeat(64)).toString()))
        assertNull(LegacyMigrationCodec.decodeManifest(JSONObject(encoded).put("partial", true).toString()))
        assertNull(LegacyMigrationCodec.decodeManifest("{\"phase\":\"COMPLETE\"}"))
    }

    private fun clear(context: Context) {
        listOf(
            "legacy_account_migration_v1", "ai_quota_local_usage", "usage_data_claude",
            "usage_data_codex", "account_data_claude", "account_data_codex", "script_data_claude",
            "script_data_codex", "ai_quota_widget_cache"
        ).forEach { context.getSharedPreferences(it, Context.MODE_PRIVATE).edit().clear().commit() }
    }

    private fun defaultId(provider: ProviderId) = ProviderAccountId(provider, AccountKey.reservedDefault())
    private companion object { val counter = AtomicInteger() }
}
