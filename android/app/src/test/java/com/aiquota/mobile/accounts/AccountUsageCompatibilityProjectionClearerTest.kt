package com.aiquota.mobile.accounts

import android.content.Context
import androidx.test.core.app.ApplicationProvider
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.local.ProviderUsageSnapshot
import java.util.concurrent.atomic.AtomicInteger
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner

@RunWith(RobolectricTestRunner::class)
class AccountUsageCompatibilityProjectionClearerTest {
    private lateinit var context: Context
    private val opened = mutableListOf<MainProcessAccountAuthority>()
    private val databases = mutableListOf<String>()

    @Before
    fun setUp() {
        context = ApplicationProvider.getApplicationContext()
    }

    @After
    fun tearDown() {
        opened.forEach { runCatching(it::close) }
        databases.forEach(context::deleteDatabase)
    }

    @Test
    fun malformedLegacyAggregateFromARemovedProviderDoesNotFailCardCleanup() {
        // The strict parser rejects provider ids absent from the enum (e.g. deepseek).
        // No retry can reconcile such a blob, and it predates the deleted card.
        val store = FakeProjectionStore("""{"providers":[{"providerId":"deepseek"}]}""")
        var cardProjectionCalls = 0
        val clearer = clearer(store) { cardProjectionCalls++; true }

        assertTrue(clearer.clear(id(1)))
        assertEquals(1, cardProjectionCalls)
    }

    @Test
    fun malformedLegacyAggregateStillHonorsCardProjectionFailure() {
        val store = FakeProjectionStore("""{"providers":[{"providerId":"deepseek"}]}""")
        val clearer = clearer(store) { false }

        assertFalse(clearer.clear(id(2)))
    }

    @Test
    fun transientLegacyWriteFailureStillFailsCleanupForJournalRetry() {
        val store = FakeProjectionStore("""{"providers":[]}""", aggregateWritable = false)
        val clearer = clearer(store)

        assertFalse(clearer.clear(id(3)))
    }

    @Test
    fun appliedLegacyProjectionAndSuccessfulCardReconcileClears() {
        val store = FakeProjectionStore("""{"providers":[]}""")
        val clearer = clearer(store)

        assertTrue(clearer.clear(id(4)))
        assertTrue(store.writtenAggregates.isNotEmpty())
    }

    private fun clearer(
        store: LegacyProjectionStore,
        reconcileCardProjection: () -> Boolean = { true },
    ): AccountUsageCompatibilityProjectionClearer {
        val name = "compat-clearer-${sequence.incrementAndGet()}.db"
        databases += name
        context.deleteDatabase(name)
        val authority = MainProcessAccountAuthority.open(context, name).also(opened::add)
        return AccountUsageCompatibilityProjectionClearer(
            AccountUsageRepository.openForTest(authority, store),
            reconcileCardProjection,
        )
    }

    private fun id(index: Int) = ProviderAccountId(
        ProviderId.CODEX,
        AccountKey.parseOpaque("acct_${index.toString(16).padStart(32, '0')}"),
    )

    private class FakeProjectionStore(
        private val rawAggregate: String,
        private val aggregateWritable: Boolean = true,
    ) : LegacyProjectionStore {
        val writtenAggregates = mutableListOf<String>()

        override fun captureAggregate() = LegacySourceCapture(
            LegacySourceReceipt(
                aggregatePresent = true,
                aggregate = LegacyBlobReceipt(
                    formatVersion = 1,
                    byteLength = rawAggregate.toByteArray(Charsets.UTF_8).size,
                    sha256 = LegacyMigrationCodec.sha256(rawAggregate),
                ),
                contexts = emptyList(),
            ),
            rawAggregate,
        )

        override fun writeAggregate(raw: String): Boolean {
            if (!aggregateWritable) return false
            writtenAggregates += raw
            return true
        }

        override fun writeMirror(providerId: ProviderId, snapshot: ProviderUsageSnapshot?) = true

        override fun writeCompatibilityCache(snapshots: List<ProviderUsageSnapshot>) = true

        override fun readProjectionReceipt(projection: LegacyProjection) = LegacyProjectionReceipt(
            desiredRevision = projection.desiredRevision,
            appliedRevision = projection.desiredRevision,
            aggregateSha256 = LegacyMigrationCodec.sha256(projection.rawAggregate),
            mirrorsSha256 = LegacyMigrationCodec.sha256("mirrors"),
            cacheSha256 = LegacyMigrationCodec.sha256("cache"),
        )
    }

    private companion object {
        val sequence = AtomicInteger()
    }
}
