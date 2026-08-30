package com.aiquota.mobile.providers

import android.content.Context
import androidx.test.core.app.ApplicationProvider
import com.aiquota.mobile.accounts.AccountKey
import com.aiquota.mobile.accounts.ProviderAccountId
import com.aiquota.mobile.accounts.ProviderAccountIdStorageCodec
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.widget.WidgetRefreshActions
import org.junit.Assert.assertEquals
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner

@RunWith(RobolectricTestRunner::class)
class ProviderAccountRefreshServiceIntentTest {
    @Test
    fun manualAndResetServiceIntentsRoundTripExactBIdentityOnce() {
        val context = ApplicationProvider.getApplicationContext<Context>()
        val b = ProviderAccountId(
            ProviderId.CLAUDE,
            AccountKey.parseOpaque("acct_00000000000000000000000000000002"),
        )

        val manual = ProviderBackgroundRefreshService.createRefreshIntent(context, b, appWidgetId = 37)
        val reset = ProviderBackgroundRefreshService.createSessionResetIntent(context, b)

        assertEquals(ProviderBackgroundRefreshService.ACTION_REFRESH, manual.action)
        assertEquals(37, manual.getIntExtra(WidgetRefreshActions.EXTRA_APP_WIDGET_ID, -1))
        assertEquals(ProviderId.CLAUDE.storageId, manual.getStringExtra(WidgetRefreshActions.EXTRA_PROVIDER_ID))
        assertEquals(
            b,
            ProviderAccountIdStorageCodec.decodeOrNull(
                manual.getStringExtra(ProviderBackgroundRefreshService.EXTRA_PROVIDER_ACCOUNT_ID)
            ),
        )
        assertEquals(ProviderBackgroundRefreshService.ACTION_PROVIDER_SESSION_RESET, reset.action)
        assertEquals(
            b,
            ProviderAccountIdStorageCodec.decodeOrNull(
                reset.getStringExtra(ProviderBackgroundRefreshService.EXTRA_PROVIDER_ACCOUNT_ID)
            ),
        )
    }

    @Test
    fun providerOnlyServiceTargetsFailClosedInMultiAccountButRemainExplicitLegacyInSingleAccount() {
        val multiAccountTarget = resolveProviderServiceIntentTarget(
            rawProviderId = ProviderId.CLAUDE.storageId,
            rawAccountId = null,
            multiAccountEnabled = true,
        )
        val singleAccountTarget = resolveProviderServiceIntentTarget(
            rawProviderId = ProviderId.CLAUDE.storageId,
            rawAccountId = null,
            multiAccountEnabled = false,
        )

        assertEquals(ProviderServiceIntentTarget.Rejected, multiAccountTarget)
        assertEquals(
            ProviderServiceIntentTarget.LegacyProvider(ProviderId.CLAUDE),
            singleAccountTarget,
        )
    }

    @Test
    fun exactServiceTargetKeepsAccountBAndRejectsAccountWithoutProvider() {
        val b = ProviderAccountId(
            ProviderId.CLAUDE,
            AccountKey.parseOpaque("acct_00000000000000000000000000000002"),
        )
        val exact = resolveProviderServiceIntentTarget(
            rawProviderId = ProviderId.CLAUDE.storageId,
            rawAccountId = ProviderAccountIdStorageCodec.encode(b),
            multiAccountEnabled = true,
        )
        val missingProvider = resolveProviderServiceIntentTarget(
            rawProviderId = null,
            rawAccountId = ProviderAccountIdStorageCodec.encode(b),
            multiAccountEnabled = true,
        )

        assertEquals(ProviderServiceIntentTarget.Exact(b), exact)
        assertEquals(ProviderServiceIntentTarget.Rejected, missingProvider)
    }
}
