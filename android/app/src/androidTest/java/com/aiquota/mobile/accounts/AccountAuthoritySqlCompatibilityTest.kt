package com.aiquota.mobile.accounts

import android.content.Context
import androidx.test.core.app.ApplicationProvider
import androidx.test.ext.junit.runners.AndroidJUnit4
import com.aiquota.mobile.local.ProviderId
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test
import org.junit.runner.RunWith

@RunWith(AndroidJUnit4::class)
class AccountAuthoritySqlCompatibilityTest {
    @Test
    fun firstAddOccupiedSuffixAndHoleReuseWorkOnDeviceSqlite() {
        val context = ApplicationProvider.getApplicationContext<Context>()
        MainProcessAccountAuthority.openInMemoryForTest(context).use { authority ->
            ProviderCardCatalog.openForTest(authority).use { catalog ->
                val first = added(catalog.add(ProviderId.CLAUDE))
                assertEquals("Claude", first.alias)

                val occupied = added(catalog.add(custom(ProviderId.CLAUDE, " Claude 3 ")))
                assertEquals("Claude 3", occupied.alias)

                val holeReuse = added(catalog.add(ProviderId.CLAUDE))
                assertEquals("Claude 2", holeReuse.alias)

                val sameAliasOnOtherProvider = added(
                    catalog.add(custom(ProviderId.CODEX, " Claude ")),
                )
                assertEquals("Claude", sameAliasOnOtherProvider.alias)

                assertTrue(
                    authority.beginProviderCardDeletion(occupied.id) is BeginProviderCardDeletionResult.Ready,
                )
                val inactiveAliasReuse = added(catalog.add(ProviderId.CLAUDE))
                assertEquals("Claude 3", inactiveAliasReuse.alias)
            }
        }
    }

    private fun custom(providerId: ProviderId, alias: String): AddProviderCardRequest =
        AddProviderCardRequest(
            providerId = providerId,
            alias = ProviderCardAliasSelection.Custom(alias),
        )

    private fun added(result: ProviderCardAddResult): AccountRecord {
        assertTrue(result.toString(), result is ProviderCardAddResult.Added)
        return (result as ProviderCardAddResult.Added).account
    }
}
