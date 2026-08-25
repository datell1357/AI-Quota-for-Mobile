package com.aiquota.mobile.accounts

import android.content.Context
import android.content.SharedPreferences
import com.aiquota.mobile.local.ProviderConnectionState
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.local.ProviderUsageSnapshot
import com.aiquota.mobile.local.WidgetCacheSanitizer
import com.aiquota.mobile.providers.ClaudeNativeRequestContextStore
import com.aiquota.mobile.providers.CodexNativeAuthContextStore
import com.aiquota.mobile.providers.ProviderScriptProviders
import com.aiquota.mobile.providers.ProviderSnapshotCodec
import com.aiquota.mobile.providers.SecureStringStore
import org.json.JSONArray
import org.json.JSONObject

internal class AndroidLegacyMigrationSource(context: Context) : LegacyMigrationSource, LegacyProjectionStore {
    private val appContext = context.applicationContext

    override fun capture(): LegacySourceCapture {
        val preferences = appContext.getSharedPreferences(LOCAL_USAGE, Context.MODE_PRIVATE)
        val present = preferences.contains(SNAPSHOT_KEY)
        val raw = preferences.getString(SNAPSHOT_KEY, "").orEmpty()
        val contexts = TARGETS.mapNotNull(::contextSourceReceipt)
        return LegacySourceCapture(
            LegacySourceReceipt(present, LegacyMigrationCodec.blobReceipt(raw), contexts),
            raw
        )
    }

    override fun readContext(receipt: LegacyContextSourceReceipt): LegacyContextCapture {
        if (receipt.encryptedSource.byteLength > MAX_ENCRYPTED_CONTEXT_BYTES) return LegacyContextCapture.Malformed
        val currentReceipt = contextSourceReceipt(receipt.providerId) ?: return LegacyContextCapture.Malformed
        if (currentReceipt != receipt) return LegacyContextCapture.Malformed
        val store = contextStoreName(receipt.providerId)
        val payload = SecureStringStore(appContext, store).getString(CONTEXT_KEY)
            ?: return LegacyContextCapture.Malformed
        val restored = LegacyContextStrictParser.parse(payload) ?: return LegacyContextCapture.Malformed
        val canonical = when (receipt.providerId) {
            ProviderId.CLAUDE -> ClaudeNativeRequestContextStore.encodeForTest(restored)
            ProviderId.CODEX -> CodexNativeAuthContextStore.encodeForTest(restored)
            else -> return LegacyContextCapture.Malformed
        }
        val roundTrip = when (receipt.providerId) {
            ProviderId.CLAUDE -> ClaudeNativeRequestContextStore.decodeForTest(canonical)
            ProviderId.CODEX -> CodexNativeAuthContextStore.decodeForTest(canonical)
            else -> emptyMap()
        }
        if (roundTrip != restored) return LegacyContextCapture.Malformed
        return LegacyContextCapture.Present(CredentialBundle.fromBytes(canonical.toByteArray()), receipt)
    }

    override fun mirrorSeedData(providerId: ProviderId): String = canonicalStores(providerId)

    override fun preferenceSeedData(providerId: ProviderId): String = copiedStores(
        listOf(
            "ai_quota_provider_preferences",
            "ai_quota_reset_notifications",
            "ai_quota_usage_threshold_notifications",
            "ai_quota_claude_prime_state"
        ),
        providerId.storageId
    )

    override fun captureAggregate(): LegacySourceCapture = capture()

    override fun writeAggregate(raw: String): Boolean {
        val preferences = appContext.getSharedPreferences(LOCAL_USAGE, Context.MODE_PRIVATE)
        return preferences.edit().putString(SNAPSHOT_KEY, raw).commit() &&
            preferences.getString(SNAPSHOT_KEY, null) == raw
    }

    override fun writeMirror(providerId: ProviderId, snapshot: ProviderUsageSnapshot?): Boolean {
        val stores = ProviderScriptProviders.storeNamesFor(providerId)
        if (snapshot == null) {
            return listOf(stores.usageData, stores.accountData).all {
                appContext.getSharedPreferences(it, Context.MODE_PRIVATE).edit().clear().commit()
            }
        }
        val usage = appContext.getSharedPreferences(stores.usageData, Context.MODE_PRIVATE).edit()
            .putString("provider_id", providerId.storageId)
            .putString("snapshot", ProviderSnapshotCodec.encode(listOf(snapshot)))
            .putString("updated_at", snapshot.updatedAt)
            .commit()
        val accountEditor = appContext.getSharedPreferences(stores.accountData, Context.MODE_PRIVATE).edit()
            .putString("provider_id", providerId.storageId)
            .putString("connection_state", snapshot.connectionState.name)
            .putString("updated_at", snapshot.updatedAt)
            .putOptional("account", snapshot.account)
            .putOptional("plan", snapshot.planLabel)
        val account = accountEditor.commit()
        val metadata = ProviderScriptProviders.metadataFor(providerId)
        val script = appContext.getSharedPreferences(stores.scriptData, Context.MODE_PRIVATE).edit()
            .putString("provider_id", providerId.storageId)
            .putString("script_version", metadata.version)
            .putString("updated_at", snapshot.updatedAt)
            .commit()
        return usage && account && script
    }

    override fun writeCompatibilityCache(snapshots: List<ProviderUsageSnapshot>): Boolean {
        val display = compatibilityCache(snapshots)
        val preferences = appContext.getSharedPreferences(WIDGET_CACHE, Context.MODE_PRIVATE)
        return preferences.edit()
            .putString(LOCAL_DISPLAY_SNAPSHOT, display)
            .putString(LOCAL_DISPLAY_UPDATED_AT, "")
            .commit() && preferences.getString(LOCAL_DISPLAY_SNAPSHOT, null) == display
    }

    override fun readProjectionReceipt(projection: LegacyProjection): LegacyProjectionReceipt? {
        val aggregate = appContext.getSharedPreferences(LOCAL_USAGE, Context.MODE_PRIVATE)
            .getString(SNAPSHOT_KEY, null) ?: return null
        if (aggregate != projection.rawAggregate) return null
        TARGETS.forEach { provider ->
            val stores = ProviderScriptProviders.storeNamesFor(provider)
            val rawMirror = appContext.getSharedPreferences(stores.usageData, Context.MODE_PRIVATE)
                .getString("snapshot", "")
                .orEmpty()
            val actual = ProviderSnapshotCodec.decode(rawMirror).singleOrNull { it.providerId == provider }
            if (actual != projection.targetSnapshots[provider]) return null
        }
        val mirrorHash = combinedMirrorHash()
        val cache = appContext.getSharedPreferences(WIDGET_CACHE, Context.MODE_PRIVATE)
            .getString(LOCAL_DISPLAY_SNAPSHOT, null) ?: return null
        if (cache != compatibilityCache(projection.snapshots)) return null
        return LegacyProjectionReceipt(
            desiredRevision = projection.desiredRevision,
            appliedRevision = projection.desiredRevision,
            aggregateSha256 = LegacyMigrationCodec.sha256(aggregate),
            mirrorsSha256 = mirrorHash,
            cacheSha256 = LegacyMigrationCodec.sha256(cache)
        )
    }

    private fun compatibilityCache(snapshots: List<ProviderUsageSnapshot>): String {
        val current = snapshots.associateBy { it.providerId }
        val complete = ProviderId.defaultOrder().map { provider ->
            current[provider] ?: ProviderUsageSnapshot(
                providerId = provider,
                connectionState = ProviderConnectionState.DISCONNECTED,
                updatedAt = "",
                statusUpdatedAt = "",
                message = "Sign in required"
            )
        }
        return LegacyCanonicalJson.encode(
            WidgetCacheSanitizer.toDisplayOnlyJson(
                snapshots = complete,
                order = ProviderId.defaultOrder(),
                hidden = emptySet(),
                updatedAt = ""
            )
        )
    }

    private fun contextSourceReceipt(providerId: ProviderId): LegacyContextSourceReceipt? {
        val raw = appContext.getSharedPreferences(contextStoreName(providerId), Context.MODE_PRIVATE)
            .getString(CONTEXT_KEY, null) ?: return null
        val version = if (raw.startsWith("v1:")) 1 else 2
        return LegacyContextSourceReceipt(providerId, LegacyMigrationCodec.blobReceipt(raw, version))
    }

    private fun combinedMirrorHash(): String = LegacyMigrationCodec.sha256(
        TARGETS.joinToString("|") { "${it.storageId}:${canonicalStoresHash(it)}" }
    )

    private fun canonicalStoresHash(providerId: ProviderId): String =
        LegacyMigrationCodec.sha256(canonicalStores(providerId))

    private fun canonicalStores(providerId: ProviderId): String {
        val stores = ProviderScriptProviders.storeNamesFor(providerId)
        return copiedStores(listOf(stores.accountData, stores.usageData, stores.scriptData), null)
    }

    private fun copiedStores(names: List<String>, keyFilter: String?): String = JSONObject().also { root ->
        names.sorted().forEach { name -> root.put(name, copiedPreferences(name, keyFilter)) }
    }.toString()

    private fun copiedPreferences(name: String, keyFilter: String?): JSONObject = JSONObject().also { copied ->
        appContext.getSharedPreferences(name, Context.MODE_PRIVATE).all.toSortedMap()
            .filterKeys { keyFilter == null || it.contains(keyFilter) }
            .forEach { (key, value) ->
                copied.put(key, when (value) {
                    is String, is Boolean, is Int, is Long, is Float -> value
                    is Set<*> -> JSONArray(value.filterIsInstance<String>().sorted())
                    else -> error("Unsupported legacy preference value")
                })
            }
    }

    private fun contextStoreName(providerId: ProviderId): String = when (providerId) {
        ProviderId.CLAUDE -> "claude_native_request_context"
        ProviderId.CODEX -> "codex_native_auth_context"
        else -> error("Unsupported context provider")
    }

    private fun SharedPreferences.Editor.putOptional(key: String, value: String?): SharedPreferences.Editor =
        if (value.isNullOrBlank()) remove(key) else putString(key, value)

    private companion object {
        val TARGETS = listOf(ProviderId.CLAUDE, ProviderId.CODEX)
        const val LOCAL_USAGE = "ai_quota_local_usage"
        const val SNAPSHOT_KEY = "provider_snapshots"
        const val CONTEXT_KEY = "context"
        const val WIDGET_CACHE = "ai_quota_widget_cache"
        const val LOCAL_DISPLAY_SNAPSHOT = "local_display_snapshot"
        const val LOCAL_DISPLAY_UPDATED_AT = "local_display_updated_at"
        const val MAX_ENCRYPTED_CONTEXT_BYTES = 2_097_152
    }
}
