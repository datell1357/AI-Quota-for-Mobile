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
    source: DurableFakeMigrationSource,
    journal: TestMigrationJournal? = null,
    envelopeStore: CredentialEnvelopeStore? = null,
    crypto: CredentialVaultCrypto? = null,
    authorityFaultInjector: AccountAuthorityFaultInjector = AccountAuthorityFaultInjector.NONE
) : AutoCloseable {
    val context: Context = ApplicationProvider.getApplicationContext()
    val databaseName = "legacy-migration-${counter.incrementAndGet()}.db"
    var source = source
    var journal: TestMigrationJournal = journal ?: DurableTestJournal(source.root)
    var envelopeStore: CredentialEnvelopeStore = envelopeStore ?: DurableEnvelopeStore(source.root)
    var crypto: CredentialVaultCrypto = crypto ?: DurableCredentialCrypto(source.root)
    var authority = MainProcessAccountAuthority.open(context, databaseName, authorityFaultInjector)
    var vault = AccountCredentialVault(this.envelopeStore, this.crypto)

    fun run(fault: LegacyMigrationFaultInjector = LegacyMigrationFaultInjector.NONE): LegacyMigrationResult =
        LegacyAccountMigration(source, journal, authority, vault, fault).run()

    fun restart(fault: LegacyMigrationFaultInjector = LegacyMigrationFaultInjector.NONE): LegacyMigrationResult {
        authority.close()
        source = source.reopen()
        journal = (journal as? DurableTestJournal)?.reopen() ?: journal
        envelopeStore = (envelopeStore as? DurableEnvelopeStore)?.reopen() ?: envelopeStore
        crypto = (crypto as? DurableCredentialCrypto)?.reopen() ?: crypto
        vault = AccountCredentialVault(envelopeStore, crypto)
        authority = MainProcessAccountAuthority.open(context, databaseName)
        return run(fault)
    }

    override fun close() {
        authority.close()
        context.deleteDatabase(databaseName)
        source.root.deleteRecursively()
    }

    companion object { private val counter = AtomicInteger() }
}

internal class FailingEnvelopeStore(
    private val delegate: InMemoryCredentialEnvelopeStore = InMemoryCredentialEnvelopeStore()
) : CredentialEnvelopeStore {
    var failWrites = true
    override fun read(accountId: CredentialVaultAccountId) = delegate.read(accountId)
    override fun write(accountId: CredentialVaultAccountId, envelope: ByteArray) = !failWrites && delegate.write(accountId, envelope)
    override fun remove(accountId: CredentialVaultAccountId) = delegate.remove(accountId)
}

internal class ReadbackFailingCrypto(
    private val delegate: FakeCredentialVaultCrypto = FakeCredentialVaultCrypto()
) : CredentialVaultCrypto by delegate {
    var rejectDecrypt = true
    override fun decrypt(accountId: CredentialVaultAccountId, aad: ByteArray, payload: CredentialCipherPayload): ByteArray? =
        if (rejectDecrypt) null else delegate.decrypt(accountId, aad, payload)
}

internal class MigrationPowerCut(val event: LegacyMigrationFaultEvent) : RuntimeException(event.point.name)

internal fun migrationSource(
    claude: Boolean = false,
    codex: Boolean = false,
    gemini: Boolean = false,
    claudeContext: LegacyContextCapture.Present? = null,
    codexContext: LegacyContextCapture.Present? = null,
    present: Boolean = true
): DurableFakeMigrationSource {
    val snapshots = buildList {
        if (claude) add(migrationSnapshot(ProviderId.CLAUDE, "CA", 81))
        if (codex) add(migrationSnapshot(ProviderId.CODEX, "XA", 62))
        if (gemini) add(migrationSnapshot(ProviderId.GEMINI, "G", 43))
    }
    val contexts = buildMap {
        claudeContext?.let { put(ProviderId.CLAUDE, it.bundle) }
        codexContext?.let { put(ProviderId.CODEX, it.bundle) }
    }
    return DurableFakeMigrationSource.create(
        present,
        if (present) ProviderSnapshotCodec.encode(snapshots) else "",
        contexts
    )
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
            remainingText = "$remaining%",
            severity = com.aiquota.mobile.local.UsageSeverity.UNKNOWN,
            unit = "percent",
            sourceLabel = "provider-api",
            confidence = 0f
        )
    )
)

internal fun migrationContext(label: String): LegacyContextCapture.Present {
    val bundle = CredentialBundle.fromBytes("native-context-$label".toByteArray())
    val provider = ProviderId.CLAUDE
    val receipt = LegacyContextSourceReceipt(provider, LegacyMigrationCodec.blobReceipt("placeholder-$label"))
    return LegacyContextCapture.Present(bundle, receipt)
}

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
