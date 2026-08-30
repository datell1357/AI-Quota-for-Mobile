package com.aiquota.mobile.ui

import android.content.Intent
import com.aiquota.mobile.MainActivity
import com.aiquota.mobile.accounts.AccountKey
import com.aiquota.mobile.accounts.ProviderAccountId
import com.aiquota.mobile.accounts.ProviderAccountIdStorageCodec
import com.aiquota.mobile.local.ProviderId
import java.util.concurrent.atomic.AtomicInteger
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNotEquals
import org.junit.Assert.assertTrue
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner

@RunWith(RobolectricTestRunner::class)
class AppRouteTest {
    @Test
    fun legacySingleInstanceProviderRouteKeepsProviderIdentity() {
        val route = AppRoute.fromExtras(
            route = AppRoute.ROUTE_PROVIDER,
            providerIdStorageId = ProviderId.CURSOR.storageId,
            multiAccountEnabled = false,
        )

        assertTrue(route is AppRoute.ProviderDetail)
        assertEquals(ProviderId.CURSOR, (route as AppRoute.ProviderDetail).providerId)
    }

    @Test
    fun twoCodexSiblingsRoundTripAsDistinctExactRoutes() {
        val a = account(ProviderId.CODEX, 1)
        val b = account(ProviderId.CODEX, 2)
        val routeA = AppRoute.ProviderDetail(a)
        val routeB = AppRoute.ProviderDetail(b)

        assertNotEquals(routeA, routeB)
        assertEquals(a, (AppRoute.fromSavedState(routeA.toSavedState()) as AppRoute.ProviderDetail).accountId)
        assertEquals(b, (AppRoute.fromSavedState(routeB.toSavedState()) as AppRoute.ProviderDetail).accountId)
    }

    @Test
    fun directIntentAndProcessSavedStateKeepExactB() {
        val b = account(ProviderId.CODEX, 2)
        val intent = Intent()
            .putExtra(AppRoute.EXTRA_ROUTE, AppRoute.ROUTE_PROVIDER)
            .putExtra(AppRoute.EXTRA_PROVIDER_ACCOUNT_ID, ProviderAccountIdStorageCodec.encode(b))

        val dispatched = MainActivity.routeFromIntent(intent) { null }
        assertEquals(b, (dispatched as AppRoute.ProviderDetail).accountId)
        assertEquals(b, (AppRoute.fromSavedState(dispatched.toSavedState()) as AppRoute.ProviderDetail).accountId)
    }

    @Test
    fun newIntentBoundaryPreservesCurrentRouteOnlyWhenNavigationDataIsAbsent() {
        val a = account(ProviderId.CODEX, 1)
        val b = account(ProviderId.CODEX, 2)
        val exactB = Intent()
            .putExtra(AppRoute.EXTRA_ROUTE, AppRoute.ROUTE_PROVIDER)
            .putExtra(AppRoute.EXTRA_PROVIDER_ACCOUNT_ID, ProviderAccountIdStorageCodec.encode(b))
        val malformed = Intent()
            .putExtra(AppRoute.EXTRA_ROUTE, AppRoute.ROUTE_PROVIDER)
            .putExtra(AppRoute.EXTRA_PROVIDER_ACCOUNT_ID, "codex/not-an-account")

        var currentRoute: AppRoute = a.let(AppRoute::ProviderDetail)
        currentRoute = MainActivity.routeRequestFromIntent(exactB) { null }.applyTo(currentRoute)
        assertEquals(AppRoute.ProviderDetail(b), currentRoute)

        currentRoute = AppRoute.ProviderDetail(b)
        currentRoute = MainActivity.routeRequestFromIntent(malformed) { null }.applyTo(currentRoute)
        assertEquals(AppRoute.Home, currentRoute)

        currentRoute = AppRoute.ProviderDetail(b)
        currentRoute = MainActivity.routeRequestFromIntent(Intent()) { null }.applyTo(currentRoute)
        assertEquals(AppRoute.ProviderDetail(b), currentRoute)
    }

    @Test
    fun documentedCanonicalPathDeepLinkKeepsExactB() {
        val b = account(ProviderId.CODEX, 2)
        val route = AppRoute.fromExtras(
            route = AppRoute.ROUTE_PROVIDER,
            providerAccountId = "codex/acct_00000000000000000000000000000002",
            legacyProviderResolver = { null },
        )

        assertEquals(b, (route as AppRoute.ProviderDetail).accountId)
    }

    @Test
    fun malformedAndNoncanonicalExactIdsReturnHomeWithoutLegacyOrSelectionEffects() {
        val resolverCalls = AtomicInteger()
        val malformed = listOf(
            "",
            "codex/not-an-account",
            "CODEX/acct_00000000000000000000000000000002",
            "codex/acct_0000000000000000000000000000000A",
            "pa1:05:codex:37:acct_00000000000000000000000000000002",
            "pa2:5:codex:37:acct_00000000000000000000000000000002",
            "codex/acct_00000000000000000000000000000002/extra",
            "codex\u0000/acct_00000000000000000000000000000002",
        )

        malformed.forEach { encoded ->
            val route = AppRoute.fromExtras(
                route = AppRoute.ROUTE_PROVIDER,
                providerAccountId = encoded,
                providerIdStorageId = ProviderId.CODEX.storageId,
                legacyProviderResolver = {
                    resolverCalls.incrementAndGet()
                    account(ProviderId.CODEX, 1)
                },
            )
            assertEquals("Rejected exact identity: $encoded", AppRoute.Home, route)
        }
        assertEquals(0, resolverCalls.get())
    }

    @Test
    fun missingOrDeletedExactCardReturnsHomeWithoutSelectingOrRefreshing() {
        val active = account(ProviderId.CODEX, 1)
        val deleted = account(ProviderId.CODEX, 2)
        val acceptedRouteEffects = AtomicInteger()
        val resolved = AppRoute.ProviderDetail(deleted).resolveAgainst(
            activeAccountIds = setOf(active),
            onAccepted = { acceptedRouteEffects.incrementAndGet() },
        )

        assertEquals(AppRoute.Home, resolved)
        assertEquals(0, acceptedRouteEffects.get())
    }

    @Test
    fun ambiguousLegacyProviderRouteReturnsHomeButExplicitPrimaryAndReservedDefaultSucceed() {
        val a = account(ProviderId.CODEX, 1)
        val b = account(ProviderId.CODEX, 2)
        val ambiguous = AppRoute.fromExtras(
            route = AppRoute.ROUTE_PROVIDER,
            providerIdStorageId = ProviderId.CODEX.storageId,
            legacyProviderResolver = { null },
        )
        val explicitPrimary = AppRoute.fromExtras(
            route = AppRoute.ROUTE_PROVIDER,
            providerIdStorageId = ProviderId.CODEX.storageId,
            multiAccountEnabled = false,
            legacyProviderResolver = { provider -> b.takeIf { provider == ProviderId.CODEX } },
        )
        val cursorDefault = ProviderAccountId(ProviderId.CURSOR, AccountKey.reservedDefault())
        val reservedDefault = AppRoute.fromExtras(
            route = AppRoute.ROUTE_PROVIDER,
            legacyProviderIdStorageId = ProviderId.CURSOR.storageId,
            multiAccountEnabled = false,
            legacyProviderResolver = { provider -> cursorDefault.takeIf { provider == ProviderId.CURSOR } },
        )

        assertEquals(AppRoute.Home, ambiguous)
        assertEquals(b, (explicitPrimary as AppRoute.ProviderDetail).accountId)
        assertEquals(cursorDefault, (reservedDefault as AppRoute.ProviderDetail).accountId)
        assertNotEquals(a, explicitPrimary.accountId)
    }

    @Test
    fun providerOnlyDetailRouteFailsClosedInMultiAccountButLegacyModeCanResolveIt() {
        val providerOnly = {
            AppRoute.fromExtras(
                route = AppRoute.ROUTE_PROVIDER,
                providerIdStorageId = ProviderId.CODEX.storageId,
                multiAccountEnabled = true,
            )
        }
        val legacy = AppRoute.fromExtras(
            route = AppRoute.ROUTE_PROVIDER,
            providerIdStorageId = ProviderId.CODEX.storageId,
            multiAccountEnabled = false,
        )

        assertEquals(AppRoute.Home, providerOnly())
        assertEquals(
            AppRoute.ProviderDetail(ProviderAccountId(ProviderId.CODEX, AccountKey.reservedDefault())),
            legacy,
        )
    }

    private fun account(provider: ProviderId, index: Int) = ProviderAccountId(
        provider,
        AccountKey.parseOpaque("acct_${index.toString(16).padStart(32, '0')}"),
    )
}
