package com.aiquota.mobile.accounts

import java.io.File
import org.json.JSONObject

internal interface TestMigrationJournal : LegacyMigrationJournal {
    var captureWriteSucceeds: Boolean
    var manifestWriteSucceeds: Boolean
    var corruptAfterManifestWrite: Boolean
    var manifestBytes: String?
    val captured: LegacySourceReceipt?
    val blocked: Pair<LegacyMigrationStage, LegacyMigrationFailure>?
}

internal class DurableTestJournal(private val root: File) : TestMigrationJournal {
    override var captureWriteSucceeds = true
    override var manifestWriteSucceeds = true
    override var corruptAfterManifestWrite = false
    override val captured: LegacySourceReceipt? get() = readSourceReceipt()
    override val blocked: Pair<LegacyMigrationStage, LegacyMigrationFailure>?
        get() = state().optString("blockedStage").takeIf(String::isNotBlank)?.let {
            LegacyMigrationStage.valueOf(it) to LegacyMigrationFailure.valueOf(state().getString("blockedFailure"))
        }
    override var manifestBytes: String?
        get() = state().optString("manifest").takeIf(String::isNotBlank)
        set(value) = update { if (value == null) it.remove("manifest") else it.put("manifest", value) }

    override fun readSourceReceipt(): LegacySourceReceipt? = state().optJSONObject("source")?.let(LegacyMigrationCodec::decodeSourceReceipt)
    override fun commitSourceReceipt(source: LegacySourceReceipt): Boolean {
        if (!captureWriteSucceeds) return false
        val prior = readSourceReceipt()
        if (prior != null) return prior == source
        update { it.put("source", LegacyMigrationCodec.encodeSourceReceipt(source)).put("stage", LegacyMigrationStage.SOURCE_CAPTURE.name) }
        return readSourceReceipt() == source
    }
    override fun readVerifiedTargets(): List<LegacyMigrationTarget> = state().optString("targets").takeIf(String::isNotBlank)
        ?.let(LegacyMigrationCodec::decodeTargets).orEmpty()
    override fun isTargetCheckpointComplete(): Boolean = state().optString("stage") == LegacyMigrationStage.TARGET_VERIFY.name
    override fun commitVerifiedTarget(target: LegacyMigrationTarget): Boolean {
        val values = readVerifiedTargets().associateBy { it.accountId }.toMutableMap()
        if (values[target.accountId]?.let { it != target } == true) return false
        values[target.accountId] = target
        return commitTargets(values.values.toList(), LegacyMigrationStage.SECRET_VERIFY)
    }
    override fun commitTargetCheckpoint(targets: List<LegacyMigrationTarget>): Boolean = commitTargets(targets, LegacyMigrationStage.TARGET_VERIFY)
    override fun readProjectionIntent(): LegacyProjectionIntent? = state().optString("projectionIntent").takeIf(String::isNotBlank)
        ?.let(LegacyMigrationCodec::decodeProjectionIntent)
    override fun commitProjectionIntent(intent: LegacyProjectionIntent): Boolean {
        val prior = readProjectionIntent()
        if (prior != null) return prior == intent
        update { it.put("projectionIntent", LegacyMigrationCodec.encodeProjectionIntent(intent)) }
        return readProjectionIntent() == intent
    }
    override fun readManifest(): LegacyMigrationManifest? = manifestBytes?.let(LegacyMigrationCodec::decodeManifest)
    override fun hasManifestBytes(): Boolean = manifestBytes != null
    override fun commitManifest(manifest: LegacyMigrationManifest): Boolean {
        if (!manifestWriteSucceeds) return false
        manifestBytes = if (corruptAfterManifestWrite) "{corrupt" else LegacyMigrationCodec.encodeManifest(manifest)
        return true
    }
    override fun clearManifest(): Boolean { manifestBytes = null; return true }
    override fun commitBlocked(stage: LegacyMigrationStage, failure: LegacyMigrationFailure): Boolean {
        update { it.put("blockedStage", stage.name).put("blockedFailure", failure.name) }
        return true
    }
    fun reopen() = DurableTestJournal(root)
    private fun commitTargets(targets: List<LegacyMigrationTarget>, stage: LegacyMigrationStage): Boolean {
        val encoded = LegacyMigrationCodec.encodeTargets(targets)
        update { it.put("targets", encoded).put("stage", stage.name) }
        return readVerifiedTargets() == targets.sortedBy { it.accountId.providerId.ordinal }
    }
    private fun state(): JSONObject = file().takeIf(File::exists)?.readText()?.let(::JSONObject) ?: JSONObject()
    private fun update(block: (JSONObject) -> Unit) = state().also(block).let { file().writeText(it.toString()) }
    private fun file() = File(root, "migration-journal.json")
}

internal class MemoryMigrationJournal : TestMigrationJournal {
    override var captureWriteSucceeds = true
    override var manifestWriteSucceeds = true
    override var corruptAfterManifestWrite = false
    override var manifestBytes: String? = null
    override var captured: LegacySourceReceipt? = null
    override var blocked: Pair<LegacyMigrationStage, LegacyMigrationFailure>? = null
    private var targets = emptyList<LegacyMigrationTarget>()
    private var checkpoint = false
    private var projectionIntent: LegacyProjectionIntent? = null
    override fun readSourceReceipt() = captured
    override fun commitSourceReceipt(source: LegacySourceReceipt): Boolean {
        if (!captureWriteSucceeds) return false
        if (captured != null) return captured == source
        captured = source; return true
    }
    override fun readVerifiedTargets() = targets
    override fun isTargetCheckpointComplete() = checkpoint
    override fun commitVerifiedTarget(target: LegacyMigrationTarget): Boolean {
        targets = (targets.filterNot { it.accountId == target.accountId } + target).sortedBy { it.accountId.providerId.ordinal }; return true
    }
    override fun commitTargetCheckpoint(targets: List<LegacyMigrationTarget>): Boolean { this.targets = targets; checkpoint = true; return true }
    override fun readProjectionIntent() = projectionIntent
    override fun commitProjectionIntent(intent: LegacyProjectionIntent): Boolean {
        val prior = projectionIntent
        if (prior != null) return prior == intent
        projectionIntent = intent
        return true
    }
    override fun readManifest() = manifestBytes?.let(LegacyMigrationCodec::decodeManifest)
    override fun hasManifestBytes() = manifestBytes != null
    override fun commitManifest(manifest: LegacyMigrationManifest): Boolean {
        if (!manifestWriteSucceeds) return false
        manifestBytes = if (corruptAfterManifestWrite) "{corrupt" else LegacyMigrationCodec.encodeManifest(manifest); return true
    }
    override fun clearManifest(): Boolean { manifestBytes = null; return true }
    override fun commitBlocked(stage: LegacyMigrationStage, failure: LegacyMigrationFailure): Boolean { blocked = stage to failure; return true }
}
