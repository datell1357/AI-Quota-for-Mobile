package com.aiquota.mobile.accounts

import android.content.Context
import androidx.test.core.app.ApplicationProvider
import com.aiquota.mobile.local.ProviderConnectionState
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.local.ProviderUsageLine
import com.aiquota.mobile.local.ProviderUsageSnapshot
import com.aiquota.mobile.providers.ProviderSnapshotCodec
import java.util.concurrent.atomic.AtomicInteger

internal class MigrationTestEnvironment(
    val source: FakeLegacyMigrationSource,
    val journal: MemoryMigrationJournal = MemoryMigrationJournal(),
    val envelopeStore: CredentialEnvelopeStore = InMemoryCredentialEnvelopeStore(),
    val crypto: CredentialVaultCrypto = FakeCredentialVaultCrypto(),
    authorityFaultInjector: AccountAuthorityFaultInjector = AccountAuthorityFaultInjector.NONE
) : AutoCloseable {
    val context: Context = ApplicationProvider.getApplicationContext()
    val databaseName = "legacy-migration-${counter.incrementAndGet()}.db"
    var authority = MainProcessAccountAuthority.open(context, databaseName, authorityFaultInjector)
    val vault = AccountCredentialVault(envelopeStore, crypto)

    fun run(fault: LegacyMigrationFaultInjector = LegacyMigrationFaultInjector.NONE): LegacyMigrationResult =
        LegacyAccountMigration(source, journal, authority, vault, fault).run()

    fun restart(fault: LegacyMigrationFaultInjector = LegacyMigrationFaultInjector.NONE): LegacyMigrationResult {
        authority.close()
        authority = MainProcessAccountAuthority.open(context, databaseName)
        return run(fault)
    }

    override fun close() {
        authority.close()
        context.deleteDatabase(databaseName)
    }

    companion object {
        private val counter = AtomicInteger()
    }
}

internal class FakeLegacyMigrationSource(
    present: Boolean,
    raw: String,
    contexts: Map<ProviderId, LegacyContextCapture> = emptyMap()
) : LegacyMigrationSource {
    var present = present
    var raw = raw
    val contexts = contexts.toMutableMap()
    var aggregateWriteSucceeds = true
    var mirrorsValid = true
    var cachesValid = true
    var aggregateWriteCount = 0

    override fun currentAggregate(): Pair<Boolean, String> = present to raw
    override fun hasContext(providerId: ProviderId): Boolean = contexts.containsKey(providerId)
    override fun readContext(providerId: ProviderId): LegacyContextCapture =
        contexts[providerId] ?: LegacyContextCapture.Absent

    override fun writeAggregate(capture: LegacySourceCapture): Boolean {
        aggregateWriteCount += 1
        if (!aggregateWriteSucceeds) return false
        present = capture.present
        raw = capture.rawAggregate
        return true
    }

    override fun verifyMirrorsUnchanged(): Boolean = mirrorsValid
    override fun verifyDerivedCachesUnchanged(): Boolean = cachesValid
}

internal class MemoryMigrationJournal : LegacyMigrationJournal {
    var captured: LegacySourceCapture? = null
    var manifestBytes: String? = null
    var captureWriteSucceeds = true
    var manifestWriteSucceeds = true
    var manifestReadCorrupt = false
    var corruptAfterManifestWrite = false
    var clearSucceeds = true
    var blocked: Pair<LegacyMigrationStage, LegacyMigrationFailure>? = null

    override fun readCapturedSource(): LegacySourceCapture? = captured
    override fun commitCapturedSource(source: LegacySourceCapture): Boolean {
        if (!captureWriteSucceeds) return false
        val existing = captured
        if (existing != null) return existing == source
        captured = source
        return true
    }

    override fun readManifest(): LegacyMigrationManifest? =
        if (manifestReadCorrupt) null else manifestBytes?.let(LegacyMigrationCodec::decodeManifest)

    override fun hasManifestBytes(): Boolean = manifestBytes != null
    override fun commitManifest(manifest: LegacyMigrationManifest): Boolean {
        if (!manifestWriteSucceeds) return false
        manifestBytes = if (corruptAfterManifestWrite) "{corrupt" else LegacyMigrationCodec.encodeManifest(manifest)
        return true
    }

    override fun clearManifest(): Boolean {
        if (!clearSucceeds) return false
        manifestBytes = null
        manifestReadCorrupt = false
        return true
    }

    override fun commitBlocked(stage: LegacyMigrationStage, failure: LegacyMigrationFailure): Boolean {
        blocked = stage to failure
        return true
    }
}

internal class FailingEnvelopeStore(
    private val delegate: InMemoryCredentialEnvelopeStore = InMemoryCredentialEnvelopeStore()
) : CredentialEnvelopeStore {
    var failWrites = true
    override fun read(accountId: CredentialVaultAccountId): ByteArray? = delegate.read(accountId)
    override fun write(accountId: CredentialVaultAccountId, envelope: ByteArray): Boolean =
        !failWrites && delegate.write(accountId, envelope)
    override fun remove(accountId: CredentialVaultAccountId): Boolean = delegate.remove(accountId)
}

internal class ReadbackFailingCrypto(
    private val delegate: FakeCredentialVaultCrypto = FakeCredentialVaultCrypto()
) : CredentialVaultCrypto by delegate {
    var rejectDecrypt = true
    override fun decrypt(
        accountId: CredentialVaultAccountId,
        aad: ByteArray,
        payload: CredentialCipherPayload
    ): ByteArray? = if (rejectDecrypt) null else delegate.decrypt(accountId, aad, payload)
}

internal class MigrationPowerCut(val point: LegacyMigrationFaultPoint) : RuntimeException(point.name)

internal fun migrationSource(
    claude: Boolean = false,
    codex: Boolean = false,
    gemini: Boolean = false,
    claudeContext: LegacyContextCapture? = null,
    codexContext: LegacyContextCapture? = null,
    present: Boolean = true
): FakeLegacyMigrationSource {
    val snapshots = buildList {
        if (claude) add(migrationSnapshot(ProviderId.CLAUDE, "CA", 81))
        if (codex) add(migrationSnapshot(ProviderId.CODEX, "XA", 62))
        if (gemini) add(migrationSnapshot(ProviderId.GEMINI, "G", 43))
    }
    val contexts = buildMap {
        if (claudeContext != null) put(ProviderId.CLAUDE, claudeContext)
        if (codexContext != null) put(ProviderId.CODEX, codexContext)
    }
    return FakeLegacyMigrationSource(present, if (present) ProviderSnapshotCodec.encode(snapshots) else "", contexts)
}

internal fun migrationSnapshot(provider: ProviderId, label: String, remaining: Int) = ProviderUsageSnapshot(
    providerId = provider,
    connectionState = ProviderConnectionState.CONNECTED,
    account = "$label-display",
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

internal fun migrationContext(label: String): LegacyContextCapture.Present =
    LegacyContextCapture.Present(CredentialBundle.fromBytes("native-context-$label".toByteArray()))

internal fun siblingSeed(provider: ProviderId, token: Int): AuthorityAccountSeed {
    val id = ProviderAccountId(provider, AccountKey.parseOpaque("acct_${token.toString(16).padStart(32, '0')}"))
    return AuthorityAccountSeed(
        AccountRecord(
            id = id,
            state = AccountState.ACTIVE,
            authState = AccountAuthState.AUTHENTICATED,
            deletionState = AccountDeletionState.NONE,
            generation = AccountGeneration.of(4),
            sessionRevision = SessionRevision.of(2)
        ),
        migrationSnapshot(provider, if (provider == ProviderId.CLAUDE) "CB" else "XB", 27)
    )
}
