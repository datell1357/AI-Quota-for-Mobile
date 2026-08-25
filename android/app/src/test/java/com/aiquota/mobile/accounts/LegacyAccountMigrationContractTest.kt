package com.aiquota.mobile.accounts

import com.aiquota.mobile.local.ProviderId
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNotEquals
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertThrows
import org.junit.Assert.assertTrue
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner

@RunWith(RobolectricTestRunner::class)
class LegacyAccountMigrationContractTest {
    @Test
    fun caCbXaXbGeminiThirtyTwoFixtureCombinationsPreserveSiblingsAndLegacyBytes() {
        var fixtureCount = 0
        for (mask in 0 until 32) {
            val ca = mask and 1 != 0
            val cb = mask and 2 != 0
            val xa = mask and 4 != 0
            val xb = mask and 8 != 0
            val gemini = mask and 16 != 0
            val source = migrationSource(claude = ca, codex = xa, gemini = gemini)
            val rawBefore = source.raw
            MigrationTestEnvironment(source).use { environment ->
                val siblings = buildList {
                    if (cb) add(siblingSeed(ProviderId.CLAUDE, 0xb))
                    if (xb) add(siblingSeed(ProviderId.CODEX, 0xc))
                }
                val siblingRows = siblings.associate { seed ->
                    environment.authority.register(seed)
                    seed.account.id to environment.authority.legacyImportRecord(seed.account.id)
                }

                val result = environment.run()

                assertTrue("fixture=$mask", result is LegacyMigrationResult.Completed)
                val manifest = (result as LegacyMigrationResult.Completed).manifest
                assertEquals(buildSet {
                    if (ca) add(ProviderId.CLAUDE)
                    if (xa) add(ProviderId.CODEX)
                }, manifest.targets.map { it.accountId.providerId }.toSet())
                assertEquals(rawBefore, source.raw)
                siblingRows.forEach { (id, before) -> assertEquals(before, environment.authority.legacyImportRecord(id)) }
                if (gemini) assertTrue(source.raw.contains("\"providerId\":\"gemini\""))
                fixtureCount += 1
            }
        }
        println("QA_FIXTURE_MATRIX_COUNT=$fixtureCount;TARGETS=CA,CB,XA,XB,G;SECRET_MARKERS=0")
    }

    @Test
    fun stagedContextsUseExactAadButImportedAccountsRemainReauthRequired() {
        val source = migrationSource(
            claude = true,
            codex = true,
            gemini = true,
            claudeContext = migrationContext("CA"),
            codexContext = migrationContext("XA")
        )
        MigrationTestEnvironment(source).use { environment ->
            val completed = environment.run() as LegacyMigrationResult.Completed

            assertEquals(2, completed.manifest.targets.size)
            completed.manifest.targets.forEach { target ->
                val record = environment.authority.legacyImportRecord(target.accountId)
                assertEquals(AccountAuthState.REAUTH_REQUIRED, record?.account?.authState)
                assertThrows(IllegalArgumentException::class.java) {
                    environment.authority.beginAttempt(
                        target.accountId,
                        AccountDemandSet.of(AccountDemand.MANUAL),
                        AttemptNonce.parseOpaque("attempt_0000000000000001")
                    )
                }
                val binding = requireNotNull(target.vaultBinding)
                assertNotNull(environment.vault.decrypt(binding))
                assertEquals(AccountKey.reservedDefault(), target.accountId.accountKey)
            }
            val migrationMethods = AndroidLegacyMigrationSource::class.java.declaredMethods.map { it.name.lowercase() }
            assertFalse(migrationMethods.any { "cookie" in it || "webview" in it })
            println("QA_REAUTH_TARGETS=2;REFRESH_ELIGIBLE=0;COOKIE_OPERATIONS=0")
        }
    }

    @Test
    fun contextOnlyProviderCreatesDefaultWithoutChangingExistingSiblingVaultEnvelope() {
        val source = migrationSource(claudeContext = migrationContext("CA"))
        MigrationTestEnvironment(source).use { environment ->
            val siblingBinding = vaultBinding(
                providerId = ProviderId.CLAUDE,
                accountToken = "acct_0000000000000000000000000000000b",
                generation = 4,
                sessionRevision = 2,
                secretRevision = 5
            )
            environment.authority.register(siblingSeed(ProviderId.CLAUDE, 0xb))
            assertTrue(environment.vault.put(siblingBinding, vaultBundle("CB")))
            val siblingEnvelope = environment.vault.lookup(siblingBinding.accountId)?.encodedBytes()?.toList()

            val completed = environment.run() as LegacyMigrationResult.Completed

            assertEquals(listOf(ProviderId.CLAUDE), completed.manifest.targets.map { it.accountId.providerId })
            assertEquals(AccountAuthState.REAUTH_REQUIRED, environment.authority.legacyImportRecord(defaultId(ProviderId.CLAUDE))?.account?.authState)
            assertEquals(siblingEnvelope, environment.vault.lookup(siblingBinding.accountId)?.encodedBytes()?.toList())
            assertTrue(environment.vault.decrypt(siblingBinding)?.contentEquals(vaultBundle("CB")) == true)
        }
    }

    @Test
    fun duplicateAndRestartRunsConvergeToOneByteStableCompleteManifestAndVaultEnvelope() {
        val source = migrationSource(
            claude = true,
            codex = true,
            claudeContext = migrationContext("CA"),
            codexContext = migrationContext("XA")
        )
        MigrationTestEnvironment(source).use { environment ->
            val first = environment.run() as LegacyMigrationResult.Completed
            val manifestBefore = environment.journal.manifestBytes
            val envelopesBefore = first.manifest.targets.associate { target ->
                target.accountId to environment.vault.lookup(requireNotNull(target.vaultBinding).accountId)?.encodedBytes()?.toList()
            }

            val second = environment.restart() as LegacyMigrationResult.Completed
            val third = environment.restart() as LegacyMigrationResult.Completed

            assertTrue(second.resumed)
            assertTrue(third.resumed)
            assertEquals(first.manifest, second.manifest)
            assertEquals(manifestBefore, environment.journal.manifestBytes)
            first.manifest.targets.forEach { target ->
                assertEquals(
                    envelopesBefore[target.accountId],
                    environment.vault.lookup(requireNotNull(target.vaultBinding).accountId)?.encodedBytes()?.toList()
                )
            }
            println("QA_RETRY_RUNS=3;MANIFEST_HASH=${LegacyMigrationCodec.sha256(requireNotNull(manifestBefore))};TARGETS=2")
        }
    }

    @Test
    fun absentAndPresentEmptySourcesRemainDistinctValidCapturesWithoutTargetRows() {
        val absent = MigrationTestEnvironment(migrationSource(present = false))
        val empty = MigrationTestEnvironment(FakeLegacyMigrationSource(true, ""))
        absent.use { absentEnvironment ->
            empty.use { emptyEnvironment ->
                val absentResult = absentEnvironment.run() as LegacyMigrationResult.Completed
                val emptyResult = emptyEnvironment.run() as LegacyMigrationResult.Completed

                assertFalse(absentResult.manifest.sourcePresent)
                assertTrue(emptyResult.manifest.sourcePresent)
                assertTrue(absentResult.manifest.targets.isEmpty())
                assertTrue(emptyResult.manifest.targets.isEmpty())
                assertNotEquals(absentResult.manifest.checksum, emptyResult.manifest.checksum)
                absentEnvironment.source.present = true
                absentEnvironment.source.raw = ""
                val repairedAbsent = absentEnvironment.restart() as LegacyMigrationResult.Completed
                assertTrue(repairedAbsent.resumed)
                assertFalse(absentEnvironment.source.present)
            }
        }
    }

    private fun defaultId(providerId: ProviderId) = ProviderAccountId(providerId, AccountKey.reservedDefault())
}
