package com.aiquota.mobile.accounts

import android.content.Context
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.providers.ClaudeNativeRequestContextStore
import com.aiquota.mobile.providers.CodexNativeAuthContextStore
import com.aiquota.mobile.providers.SecureStringStore
import java.io.File
import java.nio.charset.StandardCharsets
import java.util.Base64
import org.json.JSONObject

internal class AndroidLegacyMigrationSource(context: Context) : LegacyMigrationSource {
    private val appContext = context.applicationContext
    private val preservedPreferences = capturePreservedPreferences()

    override fun currentAggregate(): Pair<Boolean, String> {
        val preferences = appContext.getSharedPreferences(LOCAL_USAGE_PREFERENCES, Context.MODE_PRIVATE)
        return preferences.contains(SNAPSHOT_KEY) to preferences.getString(SNAPSHOT_KEY, "").orEmpty()
    }

    override fun hasContext(providerId: ProviderId): Boolean {
        val store = contextStoreName(providerId) ?: return false
        return appContext.getSharedPreferences(store, Context.MODE_PRIVATE).contains(CONTEXT_KEY)
    }

    override fun readContext(providerId: ProviderId): LegacyContextCapture {
        val storeName = contextStoreName(providerId) ?: return LegacyContextCapture.Absent
        if (!hasContext(providerId)) return LegacyContextCapture.Absent
        val payload = SecureStringStore(appContext, storeName).getString(CONTEXT_KEY)
            ?: return LegacyContextCapture.Malformed
        val restored = strictContext(payload) ?: return LegacyContextCapture.Malformed
        val canonical = when (providerId) {
            ProviderId.CLAUDE -> ClaudeNativeRequestContextStore.encodeForTest(restored)
            ProviderId.CODEX -> CodexNativeAuthContextStore.encodeForTest(restored)
            else -> return LegacyContextCapture.Absent
        }
        val roundTrip = when (providerId) {
            ProviderId.CLAUDE -> ClaudeNativeRequestContextStore.decodeForTest(canonical)
            ProviderId.CODEX -> CodexNativeAuthContextStore.decodeForTest(canonical)
            else -> emptyMap()
        }
        if (roundTrip != restored) return LegacyContextCapture.Malformed
        return runCatching {
            LegacyContextCapture.Present(CredentialBundle.fromBytes(canonical.toByteArray(StandardCharsets.UTF_8)))
        }.getOrDefault(LegacyContextCapture.Malformed)
    }

    override fun writeAggregate(capture: LegacySourceCapture): Boolean {
        val preferences = appContext.getSharedPreferences(LOCAL_USAGE_PREFERENCES, Context.MODE_PRIVATE)
        val editor = preferences.edit()
        if (capture.present) editor.putString(SNAPSHOT_KEY, capture.rawAggregate) else editor.remove(SNAPSHOT_KEY)
        return editor.commit() && currentAggregate() == (capture.present to capture.rawAggregate)
    }

    override fun verifyMirrorsUnchanged(): Boolean = verifyPreservedPreferences()

    override fun verifyDerivedCachesUnchanged(): Boolean = verifyPreservedPreferences()

    private fun strictContext(payload: String): Map<String, Map<String, String>>? = runCatching {
        val root = JSONObject(payload)
        val restored = linkedMapOf<String, Map<String, String>>()
        val keys = root.keys()
        while (keys.hasNext()) {
            val key = keys.next()
            require(key.isNotBlank())
            val headers = root.getJSONObject(key)
            val restoredHeaders = linkedMapOf<String, String>()
            val names = headers.keys()
            while (names.hasNext()) {
                val name = names.next()
                require(name.isNotBlank())
                val value = headers.get(name)
                require(value is String && value.isNotBlank())
                restoredHeaders[name] = value
            }
            require(restoredHeaders.isNotEmpty())
            restored[key] = restoredHeaders
        }
        require(restored.isNotEmpty())
        restored
    }.getOrNull()

    private fun capturePreservedPreferences(): Map<String, String> = preferencesFiles()
        .filterNot { it.nameWithoutExtension in MUTABLE_MIGRATION_STORES }
        .associate { it.nameWithoutExtension to canonicalPreferences(it.nameWithoutExtension) }

    private fun verifyPreservedPreferences(): Boolean = preservedPreferences.all { (name, hash) ->
        canonicalPreferences(name) == hash
    }

    private fun canonicalPreferences(name: String): String {
        val all = appContext.getSharedPreferences(name, Context.MODE_PRIVATE).all
        val canonical = all.toSortedMap().entries.joinToString("\n") { (key, value) ->
            val rendered = when (value) {
                is Set<*> -> value.filterIsInstance<String>().sorted().joinToString(",")
                else -> value?.toString().orEmpty()
            }
            "$key=${LegacyMigrationCodec.sha256(rendered)}"
        }
        return LegacyMigrationCodec.sha256(canonical)
    }

    private fun preferencesFiles(): List<File> = File(appContext.applicationInfo.dataDir, "shared_prefs")
        .listFiles { file -> file.extension == "xml" }
        ?.toList()
        .orEmpty()

    private fun contextStoreName(providerId: ProviderId): String? = when (providerId) {
        ProviderId.CLAUDE -> CLAUDE_CONTEXT_PREFERENCES
        ProviderId.CODEX -> CODEX_CONTEXT_PREFERENCES
        else -> null
    }

    private companion object {
        const val LOCAL_USAGE_PREFERENCES = "ai_quota_local_usage"
        const val SNAPSHOT_KEY = "provider_snapshots"
        const val CONTEXT_KEY = "context"
        const val CLAUDE_CONTEXT_PREFERENCES = "claude_native_request_context"
        const val CODEX_CONTEXT_PREFERENCES = "codex_native_auth_context"
        val MUTABLE_MIGRATION_STORES = setOf(
            LOCAL_USAGE_PREFERENCES,
            "legacy_account_migration_v1",
            "account_credential_vault_v1"
        )
    }
}

internal class AndroidLegacyMigrationJournal(context: Context) : LegacyMigrationJournal {
    private val preferences = context.applicationContext.getSharedPreferences(PREFERENCES, Context.MODE_PRIVATE)

    override fun readCapturedSource(): LegacySourceCapture? = runCatching {
        if (!preferences.contains(KEY_SOURCE)) return null
        val raw = String(Base64.getDecoder().decode(preferences.getString(KEY_SOURCE, null)), StandardCharsets.UTF_8)
        val present = preferences.getBoolean(KEY_SOURCE_PRESENT, false)
        val hash = preferences.getString(KEY_SOURCE_HASH, null) ?: return null
        val contextProviders = preferences.getStringSet(KEY_CONTEXT_PROVIDERS, emptySet()).orEmpty().mapTo(mutableSetOf()) {
            requireNotNull(ProviderId.fromStorageId(it))
        }
        require(LegacyMigrationCodec.sha256(raw) == hash)
        LegacySourceCapture(present, raw, hash, contextProviders)
    }.getOrNull()

    override fun commitCapturedSource(source: LegacySourceCapture): Boolean {
        val existing = readCapturedSource()
        if (existing != null) return existing == source
        if (preferences.contains(KEY_SOURCE)) return false
        return preferences.edit()
            .putInt(KEY_SCHEMA, LegacyMigrationManifest.SCHEMA_VERSION)
            .putString(KEY_PHASE, LegacyMigrationPhase.COPYING.name)
            .putBoolean(KEY_SOURCE_PRESENT, source.present)
            .putString(KEY_SOURCE, Base64.getEncoder().encodeToString(source.rawAggregate.toByteArray(StandardCharsets.UTF_8)))
            .putString(KEY_SOURCE_HASH, source.sha256)
            .putStringSet(KEY_CONTEXT_PROVIDERS, source.contextProviders.mapTo(mutableSetOf()) { it.storageId })
            .commit() && readCapturedSource() == source
    }

    override fun readManifest(): LegacyMigrationManifest? =
        preferences.getString(KEY_MANIFEST, null)?.let(LegacyMigrationCodec::decodeManifest)

    override fun hasManifestBytes(): Boolean = preferences.contains(KEY_MANIFEST)

    override fun commitManifest(manifest: LegacyMigrationManifest): Boolean {
        val encoded = LegacyMigrationCodec.encodeManifest(manifest)
        return preferences.edit()
            .putString(KEY_PHASE, LegacyMigrationPhase.COMPLETE.name)
            .putString(KEY_MANIFEST, encoded)
            .remove(KEY_BLOCKED_STAGE)
            .remove(KEY_BLOCKED_FAILURE)
            .commit() && preferences.getString(KEY_MANIFEST, null) == encoded
    }

    override fun clearManifest(): Boolean = preferences.edit()
        .putString(KEY_PHASE, LegacyMigrationPhase.COPYING.name)
        .remove(KEY_MANIFEST)
        .remove(KEY_BLOCKED_STAGE)
        .remove(KEY_BLOCKED_FAILURE)
        .commit() && !preferences.contains(KEY_MANIFEST)

    override fun commitBlocked(stage: LegacyMigrationStage, failure: LegacyMigrationFailure): Boolean =
        preferences.edit()
            .putString(KEY_PHASE, LegacyMigrationPhase.BLOCKED_CORRUPT_SOURCE.name)
            .putString(KEY_BLOCKED_STAGE, stage.name)
            .putString(KEY_BLOCKED_FAILURE, failure.name)
            .commit()

    private companion object {
        const val PREFERENCES = "legacy_account_migration_v1"
        const val KEY_SCHEMA = "schema"
        const val KEY_PHASE = "phase"
        const val KEY_SOURCE_PRESENT = "source_present"
        const val KEY_SOURCE = "source_capture"
        const val KEY_SOURCE_HASH = "source_sha256"
        const val KEY_CONTEXT_PROVIDERS = "context_providers"
        const val KEY_MANIFEST = "complete_manifest"
        const val KEY_BLOCKED_STAGE = "blocked_stage"
        const val KEY_BLOCKED_FAILURE = "blocked_failure"
    }
}
