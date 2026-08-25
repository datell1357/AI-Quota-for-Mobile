package com.aiquota.mobile.accounts

import com.aiquota.mobile.local.ProviderId
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNull
import org.junit.Assert.assertThrows
import org.junit.Assert.assertTrue
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner

@RunWith(RobolectricTestRunner::class)
class LegacyAccountMigrationFaultTest {
    @Test
    fun everyM00ThroughM13AndP01ThroughP04PowerCutRetriesToSameCompleteState() {
        val points = LegacyMigrationFaultPoint.entries
        assertEquals(18, points.size)
        val finalHashes = linkedSetOf<String>()
        points.forEach { point ->
            val source = migrationSource(
                claude = true,
                codex = true,
                gemini = true,
                claudeContext = migrationContext("CA"),
                codexContext = migrationContext("XA")
            )
            val sourceBytes = source.raw
            MigrationTestEnvironment(source).use { environment ->
                assertThrows(MigrationPowerCut::class.java) {
                    environment.run(LegacyMigrationFaultInjector { reached ->
                        if (reached == point) throw MigrationPowerCut(point)
                    })
                }
                assertEquals(sourceBytes, source.raw)
                environment.journal.readManifest()?.let { interruptedManifest ->
                    assertTrue(point == LegacyMigrationFaultPoint.M12_AFTER_COMPLETE_COMMIT || point == LegacyMigrationFaultPoint.M13_AFTER_GATE_RELEASE)
                    assertEquals(LegacyMigrationPhase.COMPLETE, interruptedManifest.phase)
                }

                val completed = environment.restart() as LegacyMigrationResult.Completed
                assertEquals(2, completed.manifest.targets.size)
                assertEquals(sourceBytes, source.raw)
                assertEquals(completed.manifest, environment.journal.readManifest())
                finalHashes += LegacyMigrationCodec.sha256(requireNotNull(environment.journal.manifestBytes))
            }
        }
        assertEquals(1, finalHashes.size)
        println("QA_FAULT_MATRIX_COUNT=${points.size};CONVERGED_HASH=${finalHashes.single()};INVALID_COMPLETE=0")
    }

    @Test
    fun repeatedInterruptionsAtSecretReadbackAndProjectionStillConverge() {
        val source = migrationSource(
            claude = true,
            codex = true,
            claudeContext = migrationContext("CA"),
            codexContext = migrationContext("XA")
        )
        MigrationTestEnvironment(source).use { environment ->
            listOf(
                LegacyMigrationFaultPoint.M07_AFTER_OLD_DECRYPT,
                LegacyMigrationFaultPoint.M09_AFTER_SECRET_VERIFY,
                LegacyMigrationFaultPoint.P02_AFTER_V1_AGGREGATE
            ).forEach { cut ->
                assertThrows(MigrationPowerCut::class.java) {
                    environment.restart(LegacyMigrationFaultInjector { point ->
                        if (point == cut) throw MigrationPowerCut(cut)
                    })
                }
                assertNull(environment.journal.readManifest())
            }
            val completed = environment.restart() as LegacyMigrationResult.Completed
            assertEquals(2, completed.manifest.targets.size)
            assertEquals(source.raw, environment.journal.captured?.rawAggregate)
        }
    }

    @Test
    fun malformedNonblankAggregateAndContextAreExplicitFailuresNeverEmptyComplete() {
        val malformedSources = listOf("{", "{\"providers\":{}}", "{\"providers\":[{\"providerId\":\"claude\"},{\"providerId\":\"claude\"}]}")
        malformedSources.forEach { raw ->
            MigrationTestEnvironment(FakeLegacyMigrationSource(true, raw)).use { environment ->
                val result = environment.run()
                assertEquals(
                    LegacyMigrationResult.Blocked(LegacyMigrationStage.SOURCE_PARSE, LegacyMigrationFailure.MALFORMED_NONBLANK_SOURCE),
                    result
                )
                assertNull(environment.journal.readManifest())
                assertEquals(
                    LegacyMigrationStage.SOURCE_PARSE to LegacyMigrationFailure.MALFORMED_NONBLANK_SOURCE,
                    environment.journal.blocked
                )
                assertEquals(0, environment.authority.catalog(0, 10).totalCount)
            }
        }
        MigrationTestEnvironment(
            migrationSource(claude = true, claudeContext = LegacyContextCapture.Malformed)
        ).use { environment ->
            val result = environment.run()
            assertEquals(
                LegacyMigrationResult.Blocked(LegacyMigrationStage.SECRET_READ, LegacyMigrationFailure.MALFORMED_CONTEXT),
                result
            )
            assertNull(environment.journal.readManifest())
            assertEquals(
                LegacyMigrationStage.SECRET_READ to LegacyMigrationFailure.MALFORMED_CONTEXT,
                environment.journal.blocked
            )
        }
        println("QA_MALFORMED_CASES=4;EMPTY_COMPLETE=0")
    }

    @Test
    fun durableAuthorityVaultReadbackProjectionAndManifestFailuresNeverWriteComplete() {
        val outcomes = mutableListOf<LegacyMigrationResult>()

        MigrationTestEnvironment(migrationSource(claude = true), journal = MemoryMigrationJournal().apply {
            captureWriteSucceeds = false
        }).use { outcomes += it.run() }

        val authorityFailure = AccountAuthorityFaultInjector { point ->
            if (point == AccountAuthorityFaultPoint.CATALOG) error("authority-failure")
        }
        MigrationTestEnvironment(migrationSource(claude = true), authorityFaultInjector = authorityFailure).use {
            outcomes += it.run()
            assertEquals(0, it.authority.catalog(0, 10).totalCount)
        }

        val failingStore = FailingEnvelopeStore()
        MigrationTestEnvironment(
            migrationSource(claude = true, claudeContext = migrationContext("CA")),
            envelopeStore = failingStore
        ).use { outcomes += it.run() }

        MigrationTestEnvironment(
            migrationSource(claude = true, claudeContext = migrationContext("CA")),
            crypto = ReadbackFailingCrypto()
        ).use { outcomes += it.run() }

        MigrationTestEnvironment(migrationSource(claude = true).apply { aggregateWriteSucceeds = false }).use {
            outcomes += it.run()
        }
        MigrationTestEnvironment(migrationSource(claude = true).apply { mirrorsValid = false }).use {
            outcomes += it.run()
        }
        MigrationTestEnvironment(migrationSource(claude = true).apply { cachesValid = false }).use {
            outcomes += it.run()
        }
        MigrationTestEnvironment(migrationSource(claude = true), journal = MemoryMigrationJournal().apply {
            manifestWriteSucceeds = false
        }).use { outcomes += it.run() }
        MigrationTestEnvironment(migrationSource(claude = true), journal = MemoryMigrationJournal().apply {
            corruptAfterManifestWrite = true
        }).use {
            outcomes += it.run()
            assertNull(it.journal.readManifest())
        }

        assertEquals(9, outcomes.size)
        assertTrue(outcomes.all { it is LegacyMigrationResult.Blocked })
        assertEquals(
            setOf(
                LegacyMigrationFailure.SOURCE_CAPTURE_WRITE_FAILED,
                LegacyMigrationFailure.AUTHORITY_WRITE_FAILED,
                LegacyMigrationFailure.VAULT_WRITE_FAILED,
                LegacyMigrationFailure.VAULT_READBACK_FAILED,
                LegacyMigrationFailure.PROJECTION_WRITE_FAILED,
                LegacyMigrationFailure.MANIFEST_WRITE_FAILED,
                LegacyMigrationFailure.MANIFEST_INVALID
            ),
            outcomes.map { (it as LegacyMigrationResult.Blocked).reason }.toSet()
        )
    }

    @Test
    fun staleSourceAndCorruptOrStaleCompleteFailClosedThenRepairFromCapturedSource() {
        val changedSource = migrationSource(claude = true)
        MigrationTestEnvironment(changedSource).use { environment ->
            val result = environment.run(LegacyMigrationFaultInjector { point ->
                if (point == LegacyMigrationFaultPoint.M02_AFTER_PARSE) changedSource.raw += " "
            })
            assertEquals(LegacyMigrationFailure.SOURCE_CHANGED_DURING_COPY, (result as LegacyMigrationResult.Blocked).reason)
            assertNull(environment.journal.readManifest())
        }

        val source = migrationSource(claude = true, codex = true)
        MigrationTestEnvironment(source).use { environment ->
            val original = (environment.run() as LegacyMigrationResult.Completed).manifest
            val capturedRaw = source.raw
            source.raw = migrationSource(gemini = true).raw
            val repairedProjection = environment.restart() as LegacyMigrationResult.Completed
            assertTrue(repairedProjection.resumed)
            assertEquals(capturedRaw, source.raw)
            assertEquals(original, repairedProjection.manifest)

            environment.journal.manifestBytes = "{corrupt"
            val repairedCorrupt = environment.restart() as LegacyMigrationResult.Completed
            assertFalse(repairedCorrupt.resumed)
            assertEquals(original, repairedCorrupt.manifest)

            val staleTarget = repairedCorrupt.manifest.targets.first()
            val staleManifest = LegacyMigrationCodec.completeManifest(
                requireNotNull(environment.journal.captured),
                repairedCorrupt.manifest.targets.map {
                    if (it == staleTarget) it.copy(authorityVersion = DisplayVersion.of(it.authorityVersion.value + 1)) else it
                },
                repairedCorrupt.manifest.projectionSha256
            )
            environment.journal.manifestBytes = LegacyMigrationCodec.encodeManifest(staleManifest)
            val repairedStale = environment.restart() as LegacyMigrationResult.Completed
            assertFalse(repairedStale.resumed)
            assertEquals(original, repairedStale.manifest)

            environment.authority.close()
            environment.context.deleteDatabase(environment.databaseName)
            environment.authority = MainProcessAccountAuthority.open(environment.context, environment.databaseName)
            val repairedMissingRows = environment.run() as LegacyMigrationResult.Completed
            assertFalse(repairedMissingRows.resumed)
            assertEquals(original, repairedMissingRows.manifest)
            println("QA_COMPLETE_REVALIDATION=3;REPAIRED_HASH=${LegacyMigrationCodec.sha256(requireNotNull(environment.journal.manifestBytes))}")
        }
    }

    @Test
    fun vaultReceiptAadMismatchCannotValidateCompleteAndRetryKeepsExactAccountEnvelope() {
        val source = migrationSource(claude = true, claudeContext = migrationContext("CA"))
        MigrationTestEnvironment(source).use { environment ->
            val completed = (environment.run() as LegacyMigrationResult.Completed).manifest
            val target = completed.targets.single()
            val binding = requireNotNull(target.vaultBinding)
            val envelopeBefore = environment.vault.lookup(binding.accountId)?.encodedBytes()?.toList()
            val mismatched = LegacyMigrationCodec.completeManifest(
                requireNotNull(environment.journal.captured),
                listOf(target.copy(vaultBinding = binding.copy(sessionRevision = binding.sessionRevision.next()))),
                completed.projectionSha256
            )
            environment.journal.manifestBytes = LegacyMigrationCodec.encodeManifest(mismatched)

            val repaired = environment.restart() as LegacyMigrationResult.Completed

            assertEquals(binding, repaired.manifest.targets.single().vaultBinding)
            assertEquals(envelopeBefore, environment.vault.lookup(binding.accountId)?.encodedBytes()?.toList())
        }
    }
}
