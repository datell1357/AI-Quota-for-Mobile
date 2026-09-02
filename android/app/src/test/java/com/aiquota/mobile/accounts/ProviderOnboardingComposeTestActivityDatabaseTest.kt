package com.aiquota.mobile.accounts

import android.content.Context
import androidx.test.core.app.ApplicationProvider
import org.junit.Assert.assertArrayEquals
import org.junit.Assert.assertFalse
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner

@RunWith(RobolectricTestRunner::class)
class ProviderOnboardingComposeTestActivityDatabaseTest {
    @Test
    fun openingProviderOnboardingTestAuthorityDoesNotAddDebugDatabaseFile() {
        val context = ApplicationProvider.getApplicationContext<Context>()
        val before = context.databaseList()

        MainProcessAccountAuthority.openInMemoryForTest(context).use { authority ->
            authority.catalog(0, 1)
        }

        val after = context.databaseList()
        assertArrayEquals("Opening the test authority must not add a database file", before, after)
        assertFalse("The debug authority database must not be listed", after.contains("provider-enrollment-debug.db"))
    }
}
