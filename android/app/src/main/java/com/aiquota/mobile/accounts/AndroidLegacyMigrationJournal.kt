package com.aiquota.mobile.accounts

import android.content.Context
import org.json.JSONObject

internal class AndroidLegacyMigrationJournal(context: Context) : LegacyMigrationJournal {
    private val preferences = context.applicationContext.getSharedPreferences(PREFERENCES, Context.MODE_PRIVATE)

    override fun readSourceReceipt(): LegacySourceReceipt? = runCatching {
        preferences.getString(KEY_SOURCE_RECEIPT, null)
            ?.let(::JSONObject)
            ?.let(LegacyMigrationCodec::decodeSourceReceipt)
    }.getOrNull()

    override fun commitSourceReceipt(source: LegacySourceReceipt): Boolean {
        val existing = readSourceReceipt()
        if (existing != null) return existing == source
        if (preferences.contains(KEY_SOURCE_RECEIPT)) return false
        val encoded = LegacyMigrationCodec.encodeSourceReceipt(source).toString()
        return preferences.edit()
            .putInt(KEY_SCHEMA, LegacyMigrationManifest.SCHEMA_VERSION)
            .putString(KEY_PHASE, LegacyMigrationPhase.COPYING.name)
            .putString(KEY_STAGE, LegacyMigrationStage.SOURCE_CAPTURE.name)
            .putString(KEY_SOURCE_RECEIPT, encoded)
            .commit() && preferences.getString(KEY_SOURCE_RECEIPT, null) == encoded
    }

    override fun readVerifiedTargets(): List<LegacyMigrationTarget> =
        preferences.getString(KEY_VERIFIED_TARGETS, null)
            ?.let(LegacyMigrationCodec::decodeTargets)
            .orEmpty()

    override fun isTargetCheckpointComplete(): Boolean =
        preferences.getString(KEY_STAGE, null) == LegacyMigrationStage.TARGET_VERIFY.name

    override fun commitVerifiedTarget(target: LegacyMigrationTarget): Boolean {
        val existing = readVerifiedTargets().associateBy { it.accountId }.toMutableMap()
        val prior = existing[target.accountId]
        if (prior != null && prior != target) return false
        existing[target.accountId] = target
        return commitTargets(existing.values.toList(), LegacyMigrationStage.SECRET_VERIFY)
    }

    override fun commitTargetCheckpoint(targets: List<LegacyMigrationTarget>): Boolean =
        commitTargets(targets, LegacyMigrationStage.TARGET_VERIFY)

    override fun readProjectionIntent(): LegacyProjectionIntent? =
        preferences.getString(KEY_PROJECTION_INTENT, null)?.let(LegacyMigrationCodec::decodeProjectionIntent)

    override fun commitProjectionIntent(intent: LegacyProjectionIntent): Boolean {
        val prior = readProjectionIntent()
        if (prior != null) return prior == intent
        val encoded = LegacyMigrationCodec.encodeProjectionIntent(intent)
        return preferences.edit().putString(KEY_PROJECTION_INTENT, encoded).commit() &&
            preferences.getString(KEY_PROJECTION_INTENT, null) == encoded
    }

    override fun readManifest(): LegacyMigrationManifest? =
        preferences.getString(KEY_MANIFEST, null)?.let(LegacyMigrationCodec::decodeManifest)

    override fun hasManifestBytes(): Boolean = preferences.contains(KEY_MANIFEST)

    override fun commitManifest(manifest: LegacyMigrationManifest): Boolean {
        val encoded = LegacyMigrationCodec.encodeManifest(manifest)
        return preferences.edit()
            .putString(KEY_PHASE, LegacyMigrationPhase.COMPLETE.name)
            .putString(KEY_STAGE, LegacyMigrationStage.MANIFEST_VALIDATE.name)
            .putString(KEY_MANIFEST, encoded)
            .remove(KEY_BLOCKED_STAGE)
            .remove(KEY_BLOCKED_FAILURE)
            .commit() && preferences.getString(KEY_MANIFEST, null) == encoded
    }

    override fun clearManifest(): Boolean = preferences.edit()
        .putString(KEY_PHASE, LegacyMigrationPhase.COPYING.name)
        .putString(KEY_STAGE, LegacyMigrationStage.TARGET_VERIFY.name)
        .remove(KEY_MANIFEST)
        .remove(KEY_BLOCKED_STAGE)
        .remove(KEY_BLOCKED_FAILURE)
        .commit() && !preferences.contains(KEY_MANIFEST)

    override fun commitBlocked(stage: LegacyMigrationStage, failure: LegacyMigrationFailure): Boolean =
        preferences.edit()
            .putString(KEY_PHASE, LegacyMigrationPhase.BLOCKED_CORRUPT_SOURCE.name)
            .putString(KEY_STAGE, stage.name)
            .putString(KEY_BLOCKED_STAGE, stage.name)
            .putString(KEY_BLOCKED_FAILURE, failure.name)
            .commit()

    private fun commitTargets(targets: List<LegacyMigrationTarget>, stage: LegacyMigrationStage): Boolean {
        val encoded = LegacyMigrationCodec.encodeTargets(targets)
        return preferences.edit()
            .putString(KEY_PHASE, LegacyMigrationPhase.COPYING.name)
            .putString(KEY_STAGE, stage.name)
            .putString(KEY_VERIFIED_TARGETS, encoded)
            .commit() && preferences.getString(KEY_VERIFIED_TARGETS, null) == encoded
    }

    internal fun canonicalBytesForTest(): String = preferences.all.toSortedMap().entries
        .joinToString("\n") { (key, value) -> "$key=$value" }

    private companion object {
        const val PREFERENCES = "legacy_account_migration_v1"
        const val KEY_SCHEMA = "schema"
        const val KEY_PHASE = "phase"
        const val KEY_STAGE = "stage"
        const val KEY_SOURCE_RECEIPT = "source_receipt"
        const val KEY_VERIFIED_TARGETS = "verified_targets"
        const val KEY_PROJECTION_INTENT = "projection_intent"
        const val KEY_MANIFEST = "complete_manifest"
        const val KEY_BLOCKED_STAGE = "blocked_stage"
        const val KEY_BLOCKED_FAILURE = "blocked_failure"
    }
}
