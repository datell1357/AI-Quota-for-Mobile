package com.aiquota.mobile.accounts

import android.content.Context
import androidx.test.core.app.ApplicationProvider
import com.aiquota.mobile.local.ProviderCardPreferencesRepository
import com.aiquota.mobile.local.ProviderConnectionState
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.local.ProviderPreferencesRepository
import com.aiquota.mobile.local.ProviderUsageLine
import com.aiquota.mobile.local.ProviderUsageSnapshot
import com.aiquota.mobile.providers.ProviderAccountLineKey
import com.aiquota.mobile.providers.ProviderResetNotificationStateRepository
import com.aiquota.mobile.providers.ProviderSnapshotCodec
import com.aiquota.mobile.providers.ProviderUsageThresholdNotificationStateRepository
import com.aiquota.mobile.widget.WidgetSnapshotCache
import java.util.concurrent.atomic.AtomicInteger
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner

@RunWith(RobolectricTestRunner::class)
class ProviderCardDeletionProductionCompositionTest {
    private lateinit var context: Context
    private val databases = mutableListOf<String>()

    @Before
    fun setUp() {
        context = ApplicationProvider.getApplicationContext()
        clearLegacyArtifacts()
    }

    @After
    fun tearDown() {
        MainProcessAccountFeature.resetForTest()
        databases.forEach(context::deleteDatabase)
        clearLegacyArtifacts()
    }

    @Test
    fun productionCompositionDomainApiInvokesRealExactVaultAndNamedProfileOwners() {
        val name = database("composition")
        val authority = MainProcessAccountAuthority.open(context, name)
        val usageAuthority = MainProcessAccountAuthority.open(context, name)
        val usage = AccountUsageRepository.openForTest(usageAuthority)
        val profileStore = AndroidNamedProfileLifecycleStore(context, name)
        val platform = ProductionProfilePlatform()
        val lifecycle = NamedProfileLifecycleManager(profileStore, platform)
        val sibling = id(ProviderId.CODEX, 1)
        val selected = id(ProviderId.CODEX, 2)
        authority.register(seed(sibling, 80))
        authority.register(seed(selected, 20))
        lifecycle.ensureBinding(sibling).also { platform.bind(it.profileName, sibling) }
        lifecycle.ensureBinding(selected).also { platform.bind(it.profileName, selected) }
        val crypto = FakeCredentialVaultCrypto()
        val vault = createAndroidAccountCredentialVault(context, crypto)
        putCredential(vault, sibling, "sibling-header-payload")
        putCredential(vault, selected, "selected-header-payload")
        seedProviderKeyedArtifacts(ProviderId.CODEX)
        seedExactArtifacts(sibling, 80)
        seedExactArtifacts(selected, 20)
        val providerKeyedBefore = providerKeyedArtifactDump()
        val providerCleanup = RecordingProviderCleanup()
        val composition = ProviderCardDeletionComposition.create(
            authority,
            profileStore,
            usage,
            AccountVaultCredentialEraser(vault),
            NamedProfileExactEraser(lifecycle),
            providerCleanup,
            CompositeExactCardArtifactEraser(
                ConservativePreferenceArtifactStore(context),
                ConservativeWidgetArtifactStore(context),
                ConservativeNotificationArtifactStore(context),
            ),
            AccountUsageCompatibilityProjectionClearer(usage),
        )

        val result = composition.delete(selected)

        assertTrue(result is ProviderCardDeletionResult.Completed)
        assertTrue(vault.isAbsent(CredentialVaultAccountId.parse(selected)))
        assertFalse(vault.isAbsent(CredentialVaultAccountId.parse(sibling)))
        assertEquals(
            ProfileLifecycleState.DATA_ERASURE_COMPLETED_CONTAINER_RETAINED,
            lifecycle.binding(selected)?.state,
        )
        assertEquals(ProfileLifecycleState.ACTIVE, lifecycle.binding(sibling)?.state)
        assertEquals(listOf(selected), platform.erased)
        assertTrue(providerCleanup.calls.isEmpty())
        assertEquals(providerKeyedBefore, providerKeyedArtifactDump())
        assertNull(ProviderCardPreferencesRepository(context).providerGaugeColor(selected))
        assertEquals("#445566", ProviderCardPreferencesRepository(context).providerGaugeColor(sibling))
        assertNull(WidgetSnapshotCache(context).readExactCardState(selected))
        assertEquals(80, exactWidgetRemaining(requireNotNull(WidgetSnapshotCache(context).readExactCardState(sibling))))
        assertFalse(ProviderResetNotificationStateRepository(context).readExactPending().keys.any { it.accountId == selected })
        assertTrue(ProviderResetNotificationStateRepository(context).readExactPending().keys.any { it.accountId == sibling })
        assertNull(authority.accountUsageRecord(selected))
        assertEquals(80, authority.accountUsageRecord(sibling)?.snapshot?.lines?.single()?.remainingText?.removeSuffix("%")?.toInt())
        composition.close()
    }

    @Test
    fun realConservativeLegacyOwnersClearSingleDefaultAndRetainOtherProviderBytes() {
        val cursor = ProviderAccountId(ProviderId.CURSOR, AccountKey.reservedDefault())
        seedProviderKeyedArtifacts(ProviderId.CURSOR)
        seedProviderKeyedArtifacts(ProviderId.GEMINI)
        seedExactArtifacts(cursor, 50)
        val gemini = ProviderAccountId(ProviderId.GEMINI, AccountKey.reservedDefault())
        seedExactArtifacts(gemini, 60)
        val geminiBefore = ProviderCardPreferencesRepository(context).providerGaugeColor(gemini)
        val eraser = CompositeExactCardArtifactEraser(
            ConservativePreferenceArtifactStore(context),
            ConservativeWidgetArtifactStore(context),
            ConservativeNotificationArtifactStore(context),
        )

        assertTrue(eraser.erase(cursor))

        assertNull(ProviderCardPreferencesRepository(context).providerGaugeColor(cursor))
        assertEquals(geminiBefore, ProviderCardPreferencesRepository(context).providerGaugeColor(gemini))
        assertNull(WidgetSnapshotCache(context).readExactCardState(cursor))
        assertEquals(60, exactWidgetRemaining(requireNotNull(WidgetSnapshotCache(context).readExactCardState(gemini))))
        assertFalse(ProviderResetNotificationStateRepository(context).readExactPending().keys.any {
            it.accountId == cursor
        })
        assertFalse(ProviderUsageThresholdNotificationStateRepository(context).readExactArmed().keys.any {
            it.accountId == cursor
        })
        assertEquals("#112233", ProviderPreferencesRepository(context).providerGaugeColor(ProviderId.CURSOR))
    }

    private fun seedExactArtifacts(accountId: ProviderAccountId, remaining: Int) {
        ProviderCardPreferencesRepository(context).apply {
            saveProviderGaugeColor(accountId, if (remaining == 80) "#445566" else "#112233")
            setResetNotificationEnabled(accountId, false)
            setUsageThresholdNotificationEnabled(accountId, true)
            setUsageThresholdPercent(accountId, remaining.coerceIn(1, 99))
        }
        WidgetSnapshotCache(context).writeExactCardSnapshot(
            accountId,
            ProviderSnapshotCodec.encode(listOf(snapshot(accountId.providerId, remaining))),
        )
        val line = ProviderAccountLineKey(accountId, "quota")
        val reset = ProviderResetNotificationStateRepository(context)
        reset.writeExact(
            reset.readExactPending() + (line to remaining.toLong()),
            reset.readExactNotified() + (line to (remaining - 1L)),
        )
        val threshold = ProviderUsageThresholdNotificationStateRepository(context)
        threshold.writeExactArmed(threshold.readExactArmed() + (line to true))
    }

    private fun exactWidgetRemaining(state: com.aiquota.mobile.widget.WidgetSnapshotState): Int =
        ProviderSnapshotCodec.decode(state.snapshotJson).single().lines.single().remainingText.removeSuffix("%").toInt()

    private fun seedProviderKeyedArtifacts(providerId: ProviderId) {
        ProviderPreferencesRepository(context).apply {
            saveProviderGaugeColor(providerId, "#112233")
            setResetNotificationEnabled(providerId, false)
            setUsageThresholdNotificationEnabled(providerId, true)
            setUsageThresholdPercent(providerId, 17)
        }
        val existing = runCatching { ProviderSnapshotCodec.decode(WidgetSnapshotCache(context).read()) }
            .getOrDefault(emptyList())
            .filterNot { it.providerId == providerId }
        WidgetSnapshotCache(context).write(ProviderSnapshotCodec.encode(existing + snapshot(providerId, 50)))
        val reset = ProviderResetNotificationStateRepository(context)
        reset.write(
            reset.readPending() + ("${providerId.storageId}:quota" to 100L),
            reset.readNotified() + ("${providerId.storageId}:quota" to 90L),
        )
        val threshold = ProviderUsageThresholdNotificationStateRepository(context)
        threshold.writeArmed(threshold.readArmed() + ("${providerId.storageId}:quota" to true))
    }

    private fun providerKeyedArtifactDump(): Map<String, Any?> = buildMap {
        ProviderId.entries.forEach { provider ->
            put("${provider.storageId}:values", providerArtifactValues(provider))
        }
        put("widget", WidgetSnapshotCache(context).read())
        put("reset-pending", ProviderResetNotificationStateRepository(context).readPending())
        put("reset-notified", ProviderResetNotificationStateRepository(context).readNotified())
        put("threshold", ProviderUsageThresholdNotificationStateRepository(context).readArmed())
    }

    private fun providerArtifactValues(provider: ProviderId): List<Any?> =
        ProviderPreferencesRepository(context).run {
            listOf(
                providerGaugeColor(provider),
                isResetNotificationEnabled(provider),
                isUsageThresholdNotificationEnabled(provider),
                usageThresholdPercent(provider),
            )
        }

    private fun putCredential(
        vault: AccountCredentialVault,
        id: ProviderAccountId,
        value: String,
    ) {
        assertTrue(
            vault.put(
                CredentialVaultBinding(
                    CredentialVaultSchema.CURRENT,
                    CredentialVaultAccountId.parse(id),
                    AccountGeneration.of(1),
                    SessionRevision.of(1),
                    SecretRevision.of(1),
                ),
                CredentialBundle.fromBytes(value.toByteArray()),
            )
        )
    }

    private fun seed(id: ProviderAccountId, remaining: Int) = AuthorityAccountSeed(
        AccountRecord(
            id,
            AccountState.ACTIVE,
            AccountAuthState.AUTHENTICATED,
            AccountDeletionState.NONE,
            AccountGeneration.of(1),
            SessionRevision.of(1),
        ),
        snapshot(id.providerId, remaining),
    )

    private fun snapshot(providerId: ProviderId, remaining: Int) = ProviderUsageSnapshot(
        providerId = providerId,
        connectionState = ProviderConnectionState.CONNECTED,
        updatedAt = "2026-08-28T00:00:00Z",
        statusUpdatedAt = "2026-08-28T00:00:00Z",
        lines = listOf(
            ProviderUsageLine(
                key = "quota",
                label = "Quota",
                remainingPercent = remaining / 100f,
                remainingText = "$remaining%",
            )
        ),
    )

    private fun id(provider: ProviderId, index: Int) = ProviderAccountId(
        provider,
        AccountKey.parseOpaque("acct_${index.toString(16).padStart(32, '0')}"),
    )

    private fun database(label: String): String =
        "provider-delete-production-$label-${counter.incrementAndGet()}.db".also {
            databases += it
            context.deleteDatabase(it)
        }

    private fun clearLegacyArtifacts() {
        listOf(
            "ai_quota_provider_preferences",
            "ai_quota_widget_cache",
            "ai_quota_reset_notifications",
            "ai_quota_usage_threshold_notifications",
            "account_credential_vault_v1",
        ).forEach { context.getSharedPreferences(it, Context.MODE_PRIVATE).edit().clear().commit() }
    }

    private class RecordingProviderCleanup : ProviderSpecificAccountCleanup {
        val calls = mutableListOf<ProviderAccountId>()
        override fun supports(providerId: ProviderId) = true
        override fun erase(accountId: ProviderAccountId) = true.also { calls += accountId }
    }

    private class ProductionProfilePlatform : NamedProfilePlatform {
        val erased = mutableListOf<ProviderAccountId>()
        private val names = mutableMapOf<WebProfileName, ProviderAccountId>()
        override fun probeCapability() = NamedProfileCapability.Supported(
            WebViewProviderIdentity("com.google.android.webview", "152.0.7977.54")
        )
        override fun requireUiThread() = Unit
        override fun createBoundSession(name: WebProfileName): NamedProfileSessionResource =
            error("Deletion composition must not create a login session")
        override fun eraseProfileData(
            name: WebProfileName,
            callback: (ProfileDataErasureResult) -> Unit,
        ) {
            names[name]?.let(erased::add)
            callback(ProfileDataErasureResult.Completed)
        }

        fun bind(name: WebProfileName, id: ProviderAccountId) {
            names[name] = id
        }
    }

    private companion object {
        val counter = AtomicInteger()
    }
}
