package com.aiquota.mobile.accounts

import android.content.Context
import androidx.test.core.app.ApplicationProvider
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.local.ProviderConnectionAction
import com.aiquota.mobile.local.ProviderConnectionState
import com.aiquota.mobile.local.ProviderUsageSnapshot
import com.aiquota.mobile.ui.provider.providerDetailConnectionAction
import com.aiquota.mobile.ui.settings.SettingsConnectionAction
import com.aiquota.mobile.ui.settings.settingsConnectionAction
import java.io.File
import org.junit.After
import org.junit.Assert.assertArrayEquals
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNotEquals
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner

@RunWith(RobolectricTestRunner::class)
class ProviderCardRenameTest {
    private lateinit var context: Context
    private val databaseName = "task22-rename-${System.nanoTime()}"
    private lateinit var authority: MainProcessAccountAuthority
    private lateinit var catalog: ProviderCardCatalog

    @Before
    fun setUp() {
        context = ApplicationProvider.getApplicationContext()
        authority = MainProcessAccountAuthority.open(context, databaseName)
        catalog = ProviderCardCatalog.openForTest(authority)
    }

    @After
    fun tearDown() {
        catalog.close()
        context.deleteDatabase(databaseName)
    }

    @Test
    fun renamePreservesImmutableIdentityAndAdvancesVersion() {
        // Given
        val account = added(catalog.add(ProviderId.CODEX))
        val before = authority.accountUsageRecord(account.id)
        val expectedVersion = requireNotNull(before).account.modifiedVersion

        // When
        val result = catalog.rename(
            RenameProviderCardRequest(account.id, " Work ", expectedVersion),
        )

        // Then
        val renamed = renamed(result)
        assertEquals(account.id, renamed.id)
        assertEquals("Work", renamed.alias)
        assertTrue(renamed.modifiedVersion.value > expectedVersion.value)
        assertEquals(renamed.modifiedVersion, authority.displayVersion())
        assertEquals("Work", requireNotNull(authority.accountUsageRecord(account.id)).account.alias)
    }

    @Test
    fun renameRejectsCollisionMalformedAndStaleRequestsWithoutMutatingAnyCard() {
        // Given
        val first = added(catalog.add(ProviderId.CODEX))
        val second = added(catalog.add(ProviderId.CODEX))
        val firstBefore = requireNotNull(authority.accountUsageRecord(first.id))
        val secondBefore = requireNotNull(authority.accountUsageRecord(second.id))
        val bytesBeforeCollision = authority.canonicalDumpForTest()

        assertEquals(
            ProviderCardRenameRejection.AliasConflict("codex"),
            rejected(catalog.rename(RenameProviderCardRequest(second.id, " codex ", second.modifiedVersion))),
        )
        assertArrayEquals(bytesBeforeCollision, authority.canonicalDumpForTest())

        listOf(
            "   " to ProviderCardAliasValidationReason.BLANK,
            "😀".repeat(41) to ProviderCardAliasValidationReason.TOO_LONG,
            "bad\u0000alias" to ProviderCardAliasValidationReason.CONTROL_CHARACTER,
        ).forEach { (alias, reason) ->
            assertEquals(
                ProviderCardRenameRejection.AliasValidation(reason),
                rejected(catalog.rename(RenameProviderCardRequest(second.id, alias, second.modifiedVersion))),
            )
        }

        assertEquals(
            ProviderCardRenameRejection.VERSION_MISMATCH,
            rejected(catalog.rename(RenameProviderCardRequest(second.id, "New", DisplayVersion.ZERO))),
        )
        assertEquals(firstBefore, requireNotNull(authority.accountUsageRecord(first.id)))
        assertEquals(secondBefore, requireNotNull(authority.accountUsageRecord(second.id)))
        assertNotEquals(first.id, second.id)
    }

    @Test
    fun interactiveDeleteRejectsStaleExpectedVersionBeforeTombstoning() {
        val account = added(catalog.add(ProviderId.CODEX))
        val before = requireNotNull(authority.accountUsageRecord(account.id))
        val renamed = renamed(
            catalog.rename(
                RenameProviderCardRequest(account.id, "Work", before.account.modifiedVersion)
            )
        )
        assertEquals(
            BeginProviderCardDeletionResult.Stale,
            authority.beginProviderCardDeletion(account.id, before.account.modifiedVersion),
        )
        assertEquals(
            renamed,
            requireNotNull(authority.accountUsageRecord(account.id)).account,
        )
        assertEquals(AccountDeletionState.NONE, renamed.deletionState)
    }

    @Test
    fun deleteUsesDialogVersionAndFreshVersionLeavesSiblingUntouched() {
        val first = added(catalog.add(ProviderId.CODEX))
        val sibling = added(catalog.add(ProviderId.CODEX))
        val firstBefore = requireNotNull(authority.accountUsageRecord(first.id))
        val siblingBefore = requireNotNull(authority.accountUsageRecord(sibling.id))
        val renamedFirst = renamed(
            catalog.rename(
                RenameProviderCardRequest(first.id, "Work", firstBefore.account.modifiedVersion),
            ),
        )
        val deletionCoordinator = immediateDeletionCoordinator()

        assertEquals(
            ProviderCardDeletionResult.Rejected(ProviderCardDeletionRejection.VERSION_MISMATCH),
            deletionCoordinator.delete(first.id, firstBefore.account.modifiedVersion),
        )
        assertEquals(renamedFirst, requireNotNull(authority.accountUsageRecord(first.id)).account)
        assertEquals(siblingBefore, requireNotNull(authority.accountUsageRecord(sibling.id)))

        assertEquals(
            ProviderCardDeletionResult.Completed::class,
            deletionCoordinator.delete(first.id, renamedFirst.modifiedVersion)::class,
        )
        assertEquals(null, authority.accountUsageRecord(first.id))
        assertEquals(siblingBefore, requireNotNull(authority.accountUsageRecord(sibling.id)))
    }

    @Test
    fun singleReservedCardReactivationKeepsIdentityAndGlobalRankAfterAnotherProvider() {
        val cursor = added(catalog.add(ProviderId.CURSOR))
        val codex = added(catalog.add(ProviderId.CODEX))
        val deletionCoordinator = immediateDeletionCoordinator()

        assertEquals(
            listOf(cursor.id, codex.id),
            authority.activeProviderCards(0, 10).records.map { it.accountId },
        )
        assertEquals(
            ProviderCardDeletionResult.Completed::class,
            deletionCoordinator.delete(cursor.id)::class,
        )

        val revived = added(catalog.add(ProviderId.CURSOR))
        val active = authority.activeProviderCards(0, 10).records

        assertEquals(cursor.id, revived.id)
        assertTrue(revived.generation.value > cursor.generation.value)
        assertTrue(revived.sessionRevision.value > cursor.sessionRevision.value)
        assertTrue(revived.modifiedVersion.value > cursor.modifiedVersion.value)
        assertEquals(listOf(0, 1), active.map { it.activeRank })
        assertEquals(listOf(codex.id, cursor.id), active.map { it.accountId })
        assertEquals(
            ProviderCardAddRejection.MultiplicityExceeded(ProviderId.CURSOR),
            (catalog.add(ProviderId.CURSOR) as ProviderCardAddResult.Rejected).rejection,
        )
    }

    @Test
    fun exactDeleteCallbacksCarryDialogVersionAndPreserveIdOnlyRecoveryPath() {
        val source = File("src/main/java/com/aiquota/mobile/ui/AIQuotaAppShell.kt").readText()
        val detailSource = File("src/main/java/com/aiquota/mobile/ui/provider/ProviderDetailScreen.kt").readText()
        val settingsSource = File("src/main/java/com/aiquota/mobile/ui/settings/SettingsPanel.kt").readText()
        val removalSource = File("src/main/java/com/aiquota/mobile/ui/ProviderCardRemovalSurface.kt").readText()

        assertTrue(
            Regex("fun\\s+deleteExactCard\\s*\\(\\s*accountId:\\s*ProviderAccountId,\\s*expectedVersion:\\s*DisplayVersion\\s*\\)")
                .containsMatchIn(source)
        )
        assertTrue(
            Regex("""deletionApi\(\)\.delete\(\s*accountId\s*,\s*expectedVersion\s*\)""")
                .containsMatchIn(source)
        )
        assertTrue(
            Regex("""deletionApi\(\)\.delete\(\s*accountId\s*\)""")
                .containsMatchIn(source)
        )
        assertFalse(source.contains("cardRuntime.state.card(accountId)?.displayRecord?.version"))
        assertTrue(detailSource.contains("onDelete: ((DisplayVersion) -> ProviderCardDeletionResult?)?"))
        assertTrue(settingsSource.contains("onDelete: (ProviderAccountId, DisplayVersion) -> ProviderCardDeletionResult?"))
        assertTrue(removalSource.contains("onDelete: (ProviderAccountId, DisplayVersion) -> ProviderCardDeletionResult"))
        assertTrue(removalSource.contains("onDelete(snapshot.accountId, snapshot.version)"))
    }

    @Test
    fun interactiveRenameCapturesDialogVersionAndExactAuthState() {
        val runtimeSource = File("src/main/java/com/aiquota/mobile/ui/ProviderCardShellRuntime.kt").readText()
        val detailSource = File("src/main/java/com/aiquota/mobile/ui/provider/ProviderDetailScreen.kt").readText()
        val settingsSource = File("src/main/java/com/aiquota/mobile/ui/settings/SettingsPanel.kt").readText()
        val shellSource = File("src/main/java/com/aiquota/mobile/ui/AIQuotaAppShell.kt").readText()

        assertTrue(
            Regex("fun\\s+rename\\s*\\(\\s*accountId:\\s*ProviderAccountId,\\s*alias:\\s*String,\\s*expectedVersion:\\s*DisplayVersion")
                .containsMatchIn(runtimeSource)
        )
        assertTrue(detailSource.contains("renameExpectedVersion"))
        assertTrue(settingsSource.contains("renameExpectedVersion"))
        assertTrue(detailSource.contains("providerDetailConnectionAction(authState, snapshot)"))
        assertTrue(settingsSource.contains("settingsConnectionAction(card.authState, card.displayRecord.snapshot)"))
        assertTrue(shellSource.contains("authState = exactDetail?.authState"))
    }

    @Test
    fun authoritativeReauthStateWinsOverStaleConnectedSnapshot() {
        val staleConnected = ProviderUsageSnapshot(
            providerId = ProviderId.CODEX,
            connectionState = ProviderConnectionState.CONNECTED,
        )

        assertEquals(
            SettingsConnectionAction.CONNECT,
            settingsConnectionAction(AccountAuthState.REAUTH_REQUIRED, staleConnected),
        )
        assertEquals(
            ProviderConnectionAction.CONNECT,
            providerDetailConnectionAction(AccountAuthState.REAUTH_REQUIRED, staleConnected),
        )
        assertEquals(
            SettingsConnectionAction.DISCONNECT,
            settingsConnectionAction(AccountAuthState.AUTHENTICATED, staleConnected),
        )
        assertEquals(
            ProviderConnectionAction.DISCONNECT,
            providerDetailConnectionAction(AccountAuthState.AUTHENTICATED, staleConnected),
        )
    }

    @Test
    fun detailStaleDeleteRejectionKeepsDialogAndShowsLocalizedError() {
        val source = File("src/main/java/com/aiquota/mobile/ui/provider/ProviderDetailScreen.kt").readText()

        assertTrue(source.contains("var deleteError by remember"))
        assertTrue(
            Regex(
                "is\\s+ProviderCardDeletionResult\\.Rejected\\s*->\\s*\\{?\\s*deleteError\\s*=\\s*providerDeleteErrorResource\\(result\\.reason\\)",
                RegexOption.DOT_MATCHES_ALL,
            ).containsMatchIn(source)
        )
        assertTrue(source.contains("deleteError?.let { error ->"))
        assertTrue(source.contains("R.string.provider_removal_error_stale"))
    }

    @Test
    fun settingsStaleDeleteRejectionKeepsDialogAndShowsLocalizedError() {
        val source = File("src/main/java/com/aiquota/mobile/ui/settings/SettingsPanel.kt").readText()

        assertTrue(source.contains("onDelete: (ProviderAccountId, DisplayVersion) -> ProviderCardDeletionResult?"))
        assertTrue(source.contains("var deleteError by remember"))
        assertTrue(
            Regex(
                "is\\s+ProviderCardDeletionResult\\.Rejected\\s*->\\s*\\{?\\s*deleteError\\s*=\\s*settingsDeleteErrorResource\\(result\\.reason\\)",
                RegexOption.DOT_MATCHES_ALL,
            ).containsMatchIn(source)
        )
        assertTrue(source.contains("deleteError?.let { error ->"))
        assertTrue(source.contains("R.string.provider_removal_error_stale"))
    }

    @Test
    fun exactDeleteConfirmationsNameTheSelectedAliasAndProvider() {
        val detailSource = File("src/main/java/com/aiquota/mobile/ui/provider/ProviderDetailScreen.kt").readText()
        val settingsSource = File("src/main/java/com/aiquota/mobile/ui/settings/SettingsPanel.kt").readText()

        assertTrue(detailSource.contains("R.string.provider_removal_named_card"))
        assertTrue(settingsSource.contains("R.string.provider_removal_named_card"))
    }

    private fun added(result: ProviderCardAddResult): AccountRecord =
        (result as ProviderCardAddResult.Added).account

    private fun renamed(result: ProviderCardRenameResult): AccountRecord =
        (result as ProviderCardRenameResult.Renamed).account

    private fun rejected(result: ProviderCardRenameResult): ProviderCardRenameRejection =
        (result as ProviderCardRenameResult.Rejected).rejection

    private fun immediateDeletionCoordinator() = ProviderCardDeletionCoordinator(
        authority = authority,
        credentials = ExactCredentialEraser { true },
        profiles = object : ExactProfileEraser {
            override fun erase(accountId: ProviderAccountId, callback: ExactProfileErasureCallback): Boolean {
                callback.complete(ProfileDataErasureResult.Completed)
                return true
            }
        },
        providerCleanup = object : ProviderSpecificAccountCleanup {
            override fun supports(providerId: ProviderId) = false
            override fun erase(accountId: ProviderAccountId) = true
        },
        artifacts = ExactCardArtifactEraser { true },
        compatibility = CompatibilityProjectionClearer { true },
    )
}
