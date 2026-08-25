package com.aiquota.mobile.accounts

import com.aiquota.mobile.local.ProviderId
import org.junit.Assert.assertArrayEquals
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
    fun everyM00ThroughM13AndP01ThroughP04UsesFreshRestartAndConverges() {
        assertEquals(18, LegacyMigrationFaultPoint.entries.size)
        val hashes = linkedSetOf<String>()
        LegacyMigrationFaultPoint.entries.forEach { point ->
            val source = fullSource()
            MigrationTestEnvironment(source).use { environment ->
                assertThrows(LegacyMigrationInterruptedException::class.java) {
                    environment.run(cutAt(point))
                }
                environment.journal.readManifest()?.let {
                    assertTrue(point == LegacyMigrationFaultPoint.M12_AFTER_COMPLETE_COMMIT || point == LegacyMigrationFaultPoint.M13_AFTER_GATE_RELEASE)
                }
                val completed = environment.restart() as LegacyMigrationResult.Completed
                assertEquals(2, completed.manifest.targets.size)
                hashes += LegacyMigrationCodec.sha256(requireNotNull(environment.journal.manifestBytes))
            }
        }
        assertEquals(1, hashes.size)
        println("QA_FIX1_FAULT_POINTS=18;CONVERGED_HASH=${hashes.single()}")
    }

    @Test
    fun indexedFaultEventsFollowEachRealProviderAndCredentialOperation() {
        val events = mutableListOf<LegacyMigrationFaultEvent>()
        MigrationTestEnvironment(fullSource()).use { environment ->
            environment.run(LegacyMigrationFaultInjector(events::add)) as LegacyMigrationResult.Completed
        }
        val counts = events.groupingBy { it.point }.eachCount()
        listOf(
            LegacyMigrationFaultPoint.M03_AFTER_REGISTRY_COPY,
            LegacyMigrationFaultPoint.M04_AFTER_SNAPSHOT_COPY,
            LegacyMigrationFaultPoint.M05_AFTER_MIRROR_COPY,
            LegacyMigrationFaultPoint.M06_AFTER_PREF_COPY,
            LegacyMigrationFaultPoint.M07_AFTER_OLD_DECRYPT,
            LegacyMigrationFaultPoint.M08_AFTER_SECRET_ENVELOPE,
            LegacyMigrationFaultPoint.M09_AFTER_SECRET_VERIFY,
            LegacyMigrationFaultPoint.P03_AFTER_V1_MIRRORS
        ).forEach { assertEquals(it.name, 2, counts[it]) }
        events.filter { it.total == 2 }.groupBy { it.point }.forEach { (_, values) ->
            assertEquals(listOf(0, 1), values.map { it.index }.distinct().sorted())
            assertEquals(setOf(ProviderId.CLAUDE, ProviderId.CODEX), values.mapNotNull { it.providerId }.toSet())
        }
        val expectedOperations = mapOf(
            LegacyMigrationFaultPoint.M03_AFTER_REGISTRY_COPY to LegacyMigrationOperation.REGISTRY_UPSERTED,
            LegacyMigrationFaultPoint.M04_AFTER_SNAPSHOT_COPY to LegacyMigrationOperation.SNAPSHOT_STATE_UPSERTED,
            LegacyMigrationFaultPoint.M05_AFTER_MIRROR_COPY to LegacyMigrationOperation.MIRROR_DATA_COPIED,
            LegacyMigrationFaultPoint.M06_AFTER_PREF_COPY to LegacyMigrationOperation.PREFERENCE_DATA_COPIED,
            LegacyMigrationFaultPoint.M07_AFTER_OLD_DECRYPT to LegacyMigrationOperation.OLD_CONTEXT_DECRYPTED,
            LegacyMigrationFaultPoint.M08_AFTER_SECRET_ENVELOPE to LegacyMigrationOperation.AFTER_NEW_ENCRYPT,
            LegacyMigrationFaultPoint.M09_AFTER_SECRET_VERIFY to LegacyMigrationOperation.AFTER_SECRET_VERIFY,
            LegacyMigrationFaultPoint.P03_AFTER_V1_MIRRORS to LegacyMigrationOperation.LEGACY_MIRROR_COMMITTED
        )
        expectedOperations.forEach { (point, operation) ->
            assertTrue(point.name, events.filter { it.point == point }.all { it.operation == operation })
        }
        println("QA_FIX1_INDEXED_EVENTS=${events.size};INDEXED_POINTS=${counts.count { it.value == 2 }}")
    }

    @Test
    fun everyIndexedAuthorityAndCredentialCutHasExactDurableBeforeAfterState() {
        val authorityPoints = listOf(
            LegacyMigrationFaultPoint.M03_AFTER_REGISTRY_COPY,
            LegacyMigrationFaultPoint.M04_AFTER_SNAPSHOT_COPY,
            LegacyMigrationFaultPoint.M05_AFTER_MIRROR_COPY,
            LegacyMigrationFaultPoint.M06_AFTER_PREF_COPY
        )
        authorityPoints.forEach { point ->
            for (index in 0..1) {
                MigrationTestEnvironment(migrationSource(claude = true, codex = true)).use { environment ->
                    val before = environment.authority.canonicalDumpForTest()
                    assertThrows(LegacyMigrationInterruptedException::class.java) {
                        environment.run(LegacyMigrationFaultInjector { event ->
                            if (event.point == point && event.index == index) throw LegacyMigrationInterruptedException(event)
                        })
                    }
                    if (point == LegacyMigrationFaultPoint.M03_AFTER_REGISTRY_COPY ||
                        point == LegacyMigrationFaultPoint.M04_AFTER_SNAPSHOT_COPY
                    ) {
                        assertArrayEquals("${point.name}[$index]", before, environment.authority.canonicalDumpForTest())
                    } else {
                        assertFalse("${point.name}[$index]", before.contentEquals(environment.authority.canonicalDumpForTest()))
                    }
                }
            }
        }
        listOf(LegacyMigrationFaultPoint.M08_AFTER_SECRET_ENVELOPE, LegacyMigrationFaultPoint.M09_AFTER_SECRET_VERIFY).forEach { point ->
            for (index in 0..1) {
                MigrationTestEnvironment(fullSource()).use { environment ->
                    assertThrows(LegacyMigrationInterruptedException::class.java) {
                        environment.run(LegacyMigrationFaultInjector { event ->
                            if (event.point == point && event.index == index) throw LegacyMigrationInterruptedException(event)
                        })
                    }
                    if (point == LegacyMigrationFaultPoint.M09_AFTER_SECRET_VERIFY) {
                        assertEquals(index + 1, environment.journal.readVerifiedTargets().size)
                    }
                    assertTrue(environment.restart() is LegacyMigrationResult.Completed)
                }
            }
        }
        println("QA_FIX1_INDEXED_CUT_CASES=12")
    }

    @Test
    fun repeatedM07M09P02CutsReconstructEveryDurableDependency() {
        MigrationTestEnvironment(fullSource()).use { environment ->
            listOf(
                LegacyMigrationFaultPoint.M07_AFTER_OLD_DECRYPT,
                LegacyMigrationFaultPoint.M09_AFTER_SECRET_VERIFY,
                LegacyMigrationFaultPoint.P02_AFTER_V1_AGGREGATE
            ).forEach { point ->
                assertThrows(LegacyMigrationInterruptedException::class.java) { environment.restart(cutAt(point)) }
                assertNull(environment.journal.readManifest())
            }
            assertTrue(environment.restart() is LegacyMigrationResult.Completed)
        }
    }

    @Test
    fun malformedAggregateAndContextRemainBlockedWithoutComplete() {
        listOf(
            "{",
            "{\"providers\":{}}",
            "{\"providers\":[{\"providerId\":\"claude\"},{\"providerId\":\"claude\"}]}",
            "{\"providers\":[{\"providerId\":\"claude\",\"connectionState\":\"bad\",\"refreshState\":\"IDLE\",\"lines\":[]}]}")
            .forEach { raw ->
                MigrationTestEnvironment(DurableFakeMigrationSource.create(true, raw, emptyMap())).use { environment ->
                    val result = environment.run() as LegacyMigrationResult.Blocked
                    assertEquals(LegacyMigrationFailure.MALFORMED_NONBLANK_SOURCE, result.reason)
                    assertNull(environment.journal.readManifest())
                }
            }
        val malformedContext = migrationSource(claude = true, claudeContext = migrationContext("CA"))
        malformedContext.setRawContext(ProviderId.CLAUDE, "not-base64")
        MigrationTestEnvironment(malformedContext).use { environment ->
            val result = environment.run() as LegacyMigrationResult.Blocked
            assertEquals(LegacyMigrationFailure.MALFORMED_CONTEXT, result.reason)
            assertNull(environment.journal.readManifest())
        }
        println("QA_FIX1_MALFORMED_CASES=5")
    }

    @Test
    fun sourceAuthorityVaultProjectionAndManifestFailuresNeverWriteComplete() {
        val outcomes = mutableListOf<LegacyMigrationResult>()
        MigrationTestEnvironment(migrationSource(claude = true), journal = MemoryMigrationJournal().apply { captureWriteSucceeds = false })
            .use { outcomes += it.run() }
        MigrationTestEnvironment(migrationSource(claude = true)).use { environment ->
            outcomes += environment.run(LegacyMigrationFaultInjector { event ->
                if (event.point == LegacyMigrationFaultPoint.M03_AFTER_REGISTRY_COPY) error("durable-authority-failure")
            })
            assertEquals(0, environment.authority.catalog(0, 10).totalCount)
        }
        MigrationTestEnvironment(
            migrationSource(claude = true, claudeContext = migrationContext("CA")),
            envelopeStore = FailingEnvelopeStore()
        ).use { outcomes += it.run() }
        MigrationTestEnvironment(
            migrationSource(claude = true, claudeContext = migrationContext("CA")),
            crypto = ReadbackFailingCrypto()
        ).use { outcomes += it.run() }
        MigrationTestEnvironment(migrationSource(claude = true).apply { aggregateWriteSucceeds = false }).use { outcomes += it.run() }
        MigrationTestEnvironment(migrationSource(claude = true).apply { mirrorWriteSucceeds = false }).use { outcomes += it.run() }
        MigrationTestEnvironment(migrationSource(claude = true).apply { cacheWriteSucceeds = false }).use { outcomes += it.run() }
        MigrationTestEnvironment(migrationSource(claude = true), journal = MemoryMigrationJournal().apply { manifestWriteSucceeds = false })
            .use { outcomes += it.run() }
        MigrationTestEnvironment(migrationSource(claude = true), journal = MemoryMigrationJournal().apply { corruptAfterManifestWrite = true })
            .use { outcomes += it.run() }
        assertEquals(9, outcomes.size)
        assertTrue(outcomes.all { it is LegacyMigrationResult.Blocked })
    }

    @Test
    fun sourceReplacementStaleManifestAndAadReceiptNeverShortCircuit() {
        val source = fullSource()
        MigrationTestEnvironment(source).use { environment ->
            assertThrows(LegacyMigrationInterruptedException::class.java) {
                environment.run(cutAt(LegacyMigrationFaultPoint.M01_AFTER_SOURCE_CAPTURE))
            }
            source.setContext(ProviderId.CLAUDE, CredentialBundle.fromBytes("replacement".toByteArray()))
            assertTrue(environment.restart() is LegacyMigrationResult.Blocked)
            assertNull(environment.journal.readManifest())
        }

        MigrationTestEnvironment(fullSource()).use { environment ->
            val original = (environment.run() as LegacyMigrationResult.Completed).manifest
            environment.journal.manifestBytes = "{corrupt"
            assertTrue(environment.restart() is LegacyMigrationResult.Blocked)
            assertTrue(environment.restart() is LegacyMigrationResult.Completed)
            val target = original.targets.first()
            val stale = LegacyMigrationCodec.completeManifest(
                original.sourceReceipt,
                original.targets.map { if (it == target) it.copy(authorityVersion = it.authorityVersion.next()) else it },
                original.projection
            )
            environment.journal.manifestBytes = LegacyMigrationCodec.encodeManifest(stale)
            assertTrue(environment.restart() is LegacyMigrationResult.Blocked)
            assertTrue(environment.restart() is LegacyMigrationResult.Completed)
            val binding = requireNotNull(target.vaultBinding)
            val aadMismatch = LegacyMigrationCodec.completeManifest(
                original.sourceReceipt,
                original.targets.map { if (it == target) it.copy(vaultBinding = binding.copy(sessionRevision = binding.sessionRevision.next())) else it },
                original.projection
            )
            environment.journal.manifestBytes = LegacyMigrationCodec.encodeManifest(aadMismatch)
            assertTrue(environment.restart() is LegacyMigrationResult.Blocked)
            assertTrue(environment.restart() is LegacyMigrationResult.Completed)
            assertFalse(environment.journal.readManifest() == aadMismatch)
            println("QA_FIX1_COMPLETE_REPAIRS=3")
        }
    }

    private fun fullSource() = migrationSource(
        claude = true, codex = true, gemini = true,
        claudeContext = migrationContext("CA"), codexContext = migrationContext("XA")
    )

    private fun cutAt(point: LegacyMigrationFaultPoint) = LegacyMigrationFaultInjector { event ->
        if (event.point == point) throw LegacyMigrationInterruptedException(event)
    }
}
