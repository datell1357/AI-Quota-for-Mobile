package com.aiquota.mobile.widget

import android.app.Application
import android.content.Context
import androidx.test.core.app.ApplicationProvider
import com.aiquota.mobile.accounts.AccountKey
import com.aiquota.mobile.accounts.ProviderAccountId
import com.aiquota.mobile.accounts.ProviderAccountIdStorageCodec
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.ui.AppRoute
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNotEquals
import org.junit.Assert.assertNull
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.Shadows.shadowOf

@RunWith(RobolectricTestRunner::class)
class ProviderWidgetExactActionTest {
    private val a = id(1)
    private val b = id(2)

    @Test
    fun exactRefreshAndDetailIntentsCarryCanonicalCardIdentityWithoutCollision() {
        // Given
        val context = ApplicationProvider.getApplicationContext<Context>()

        // When
        val refreshA = WidgetRefreshActions.widgetRefreshIntent(context, 41, a)
        val refreshB = WidgetRefreshActions.widgetRefreshIntent(context, 42, b)
        val detailA = providerWidgetDetailIntent(context, 41, a)
        val detailB = providerWidgetDetailIntent(context, 42, b)

        // Then
        assertEquals(encoded(a), refreshA.getStringExtra(WidgetRefreshActions.EXTRA_PROVIDER_ACCOUNT_ID))
        assertEquals(encoded(b), refreshB.getStringExtra(WidgetRefreshActions.EXTRA_PROVIDER_ACCOUNT_ID))
        assertEquals(encoded(a), detailA.getStringExtra(AppRoute.EXTRA_PROVIDER_ACCOUNT_ID))
        assertEquals(encoded(b), detailB.getStringExtra(AppRoute.EXTRA_PROVIDER_ACCOUNT_ID))
        assertNotEquals(refreshA.data, refreshB.data)
        assertNotEquals(detailA.data, detailB.data)
    }

    @Test
    fun malformedMismatchedDeletedAndAmbiguousLegacyActionsFailClosed() {
        // Given
        val activeA = authority(active = { it == a }, binding = a)

        // When
        val malformed = resolve(ProviderId.CODEX.storageId, "pa1:broken", authority = activeA)
        val mismatch = resolve(ProviderId.CLAUDE.storageId, encoded(a), authority = activeA)
        val deleted = resolve(
            ProviderId.CODEX.storageId,
            encoded(b),
            authority = authority(active = { it == a }, binding = b),
        )
        val ambiguousLegacy = resolve(
            ProviderId.CODEX.storageId,
            null,
            authority = authority(active = { true }, compatibility = { null }, binding = null),
        )

        // Then
        assertEquals(ProviderWidgetActionResolution.Rejected, malformed)
        assertEquals(ProviderWidgetActionResolution.Rejected, mismatch)
        assertEquals(ProviderWidgetActionResolution.Rejected, deleted)
        assertEquals(ProviderWidgetActionResolution.Rejected, ambiguousLegacy)
    }

    @Test
    fun malformedExactIdentityNeverUsesCompatibilityPrimary() {
        // Given
        var compatibilityCalls = 0
        val authority = authority(
            active = { it == a },
            compatibility = {
                compatibilityCalls++
                a
            },
            binding = a,
        )

        // When
        val resolution = resolve(ProviderId.CODEX.storageId, "pa1:broken", authority = authority)

        // Then
        assertEquals(ProviderWidgetActionResolution.Rejected, resolution)
        assertEquals(0, compatibilityCalls)
    }

    @Test
    fun explicitLegacyPrimaryRequiresMatchingBindingWhileDisabledModeUsesProviderContract() {
        // Given
        val authority = authority(active = { it == a }, compatibility = { a }, binding = a)

        // When
        val migrated = resolve(ProviderId.CODEX.storageId, null, authority = authority)
        val disabled = resolve(
            ProviderId.CODEX.storageId,
            null,
            multiAccountEnabled = false,
            authority = authority,
        )
        val missingProvider = resolve(null, encoded(a), authority = authority)

        // Then
        assertEquals(ProviderWidgetActionResolution.Exact(a), migrated)
        assertEquals(ProviderWidgetActionResolution.LegacyProvider(ProviderId.CODEX), disabled)
        assertEquals(ProviderWidgetActionResolution.Rejected, missingProvider)
    }

    @Test
    fun staleDeletedReceiverActionEmitsNoRefreshBroadcastOrService() {
        // Given
        val context = ApplicationProvider.getApplicationContext<Context>()
        val application = context as Application
        val beforeBroadcasts = shadowOf(application).broadcastIntents.size
        val beforeService = shadowOf(application).nextStartedService
        val stale = WidgetRefreshActions.widgetRefreshIntent(context, 77, b)

        // When
        WidgetManualRefreshReceiver().onReceive(context, stale)

        // Then
        assertEquals(beforeBroadcasts, shadowOf(application).broadcastIntents.size)
        assertEquals(beforeService, shadowOf(application).nextStartedService)
        assertEquals(false, WidgetRefreshFeedback.isWidgetRefreshInProgress(context, 77))
    }

    @Test
    fun staleDeletedActionSubmitsNoExactTargetOrSiblingFallback() {
        // Given
        val submitted = mutableListOf<ProviderAccountId>()

        // When
        val resolution = resolve(
            ProviderId.CODEX.storageId,
            encoded(b),
            authority = authority(active = { false }, compatibility = { a }, binding = b),
        )
        (resolution as? ProviderWidgetActionResolution.Exact)?.accountId?.let(submitted::add)

        // Then
        assertEquals(ProviderWidgetActionResolution.Rejected, resolution)
        assertEquals(emptyList<ProviderAccountId>(), submitted)
        assertNull(submitted.singleOrNull())
    }

    private fun resolve(
        rawProviderId: String?,
        rawAccountId: String?,
        multiAccountEnabled: Boolean = true,
        authority: ProviderWidgetActionAuthority,
    ) = ProviderWidgetActionBoundary.resolve(
        ProviderWidgetActionRequest(WIDGET_ID, rawProviderId, rawAccountId, multiAccountEnabled),
        authority,
    )

    private fun authority(
        active: (ProviderAccountId) -> Boolean,
        compatibility: (ProviderId) -> ProviderAccountId? = { null },
        binding: ProviderAccountId?,
    ) = ProviderWidgetActionAuthority(active, compatibility) { binding }

    private fun encoded(id: ProviderAccountId) = ProviderAccountIdStorageCodec.encode(id)

    private fun id(index: Int) = ProviderAccountId(
        ProviderId.CODEX,
        AccountKey.parseOpaque("acct_${index.toString(16).padStart(32, '0')}"),
    )

    private companion object {
        const val WIDGET_ID = 77
    }
}
