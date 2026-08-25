package com.aiquota.mobile.accounts

import android.content.Context
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
    fun productionJournalAndLegacyAdapterDriveRealSqliteWithoutChangingGeminiOrSiblingPreferences() {
        val context = ApplicationProvider.getApplicationContext<Context>()
        clearMigrationPreferences(context)
        val snapshots = listOf(
            migrationSnapshot(ProviderId.CLAUDE, "CA", 81),
            migrationSnapshot(ProviderId.CODEX, "XA", 62),
            migrationSnapshot(ProviderId.GEMINI, "G", 43)
        )
        val raw = ProviderSnapshotCodec.encode(snapshots)
        context.getSharedPreferences("ai_quota_local_usage", Context.MODE_PRIVATE)
            .edit().putString("provider_snapshots", raw).commit()
        val geminiControl = context.getSharedPreferences("task6_gemini_control", Context.MODE_PRIVATE)
        geminiControl.edit().putString("canonical", "G-byte-control").commit()
        val databaseName = "legacy-storage-${counter.incrementAndGet()}.db"
        context.deleteDatabase(databaseName)

        val source = AndroidLegacyMigrationSource(context)
        val journal = AndroidLegacyMigrationJournal(context)
        MainProcessAccountAuthority.open(context, databaseName).use { authority ->
            val authorityBefore = LegacyMigrationCodec.sha256(authority.canonicalDumpForTest())
            val result = LegacyAccountMigration(
                source,
                journal,
                authority,
                AccountCredentialVault(InMemoryCredentialEnvelopeStore(), FakeCredentialVaultCrypto())
            ).run() as LegacyMigrationResult.Completed

            assertEquals(2, result.manifest.targets.size)
            assertEquals(raw, context.getSharedPreferences("ai_quota_local_usage", Context.MODE_PRIVATE).getString("provider_snapshots", null))
            assertEquals("G-byte-control", geminiControl.getString("canonical", null))
            assertEquals(AccountAuthState.REAUTH_REQUIRED, authority.legacyImportRecord(defaultId(ProviderId.CLAUDE))?.account?.authState)
            assertEquals(AccountAuthState.REAUTH_REQUIRED, authority.legacyImportRecord(defaultId(ProviderId.CODEX))?.account?.authState)
            assertEquals(result.manifest, journal.readManifest())
            val authorityAfter = LegacyMigrationCodec.sha256(authority.canonicalDumpForTest())
            println("QA_SQLITE_BEFORE=$authorityBefore;AFTER=$authorityAfter;SOURCE=${LegacyMigrationCodec.sha256(raw)};GEMINI_UNCHANGED=1")
        }
        context.deleteDatabase(databaseName)
        clearMigrationPreferences(context)
    }

    @Test
    fun productionContextAdapterDistinguishesAbsentFromMalformedNonblankSource() {
        val context = ApplicationProvider.getApplicationContext<Context>()
        context.getSharedPreferences("claude_native_request_context", Context.MODE_PRIVATE).edit().clear().commit()
        val absent = AndroidLegacyMigrationSource(context)
        assertFalse(absent.hasContext(ProviderId.CLAUDE))
        assertTrue(absent.readContext(ProviderId.CLAUDE) is LegacyContextCapture.Absent)

        val preferences = context.getSharedPreferences("claude_native_request_context", Context.MODE_PRIVATE)
        preferences.edit().putString("context", "{malformed-nonblank").commit()
        val malformed = AndroidLegacyMigrationSource(context)
        assertTrue(malformed.hasContext(ProviderId.CLAUDE))
        assertTrue(malformed.readContext(ProviderId.CLAUDE) is LegacyContextCapture.Malformed)

        preferences.edit().putString(
            "context",
            "{\"claude.ai/api/organizations\":{\"Authorization\":\"synthetic-marker\"}}"
        ).commit()
        assertTrue(AndroidLegacyMigrationSource(context).readContext(ProviderId.CLAUDE) is LegacyContextCapture.Present)
        preferences.edit().putString(
            "context",
            "{\"claude.ai/api/organizations\":{\"Cookie\":\"prohibited-marker\"}}"
        ).commit()
        assertTrue(AndroidLegacyMigrationSource(context).readContext(ProviderId.CLAUDE) is LegacyContextCapture.Malformed)
        preferences.edit().clear().commit()
    }

    @Test
    fun completeManifestEncodingIsDeterministicStrictAndSelfValidating() {
        val source = LegacySourceCapture(true, "{\"providers\":[]}", LegacyMigrationCodec.sha256("{\"providers\":[]}"))
        val manifest = LegacyMigrationCodec.completeManifest(source, emptyList(), source.sha256)
        val encoded = LegacyMigrationCodec.encodeManifest(manifest)

        assertEquals(encoded, LegacyMigrationCodec.encodeManifest(manifest))
        assertEquals(manifest, LegacyMigrationCodec.decodeManifest(encoded))
        val badChecksum = JSONObject(encoded).put("checksum", "0".repeat(64)).toString()
        val extraField = JSONObject(encoded).put("partial", true).toString()
        assertNull(LegacyMigrationCodec.decodeManifest(badChecksum))
        assertNull(LegacyMigrationCodec.decodeManifest(extraField))
        assertNull(LegacyMigrationCodec.decodeManifest("{\"phase\":\"COMPLETE\"}"))
    }

    private fun clearMigrationPreferences(context: Context) {
        listOf("legacy_account_migration_v1", "ai_quota_local_usage").forEach { name ->
            context.getSharedPreferences(name, Context.MODE_PRIVATE).edit().clear().commit()
        }
    }

    private fun defaultId(provider: ProviderId) = ProviderAccountId(provider, AccountKey.reservedDefault())

    private companion object {
        val counter = AtomicInteger()
    }
}
