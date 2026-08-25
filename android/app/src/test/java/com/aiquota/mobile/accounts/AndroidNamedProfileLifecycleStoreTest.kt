package com.aiquota.mobile.accounts

import android.content.Context
import androidx.test.core.app.ApplicationProvider
import com.aiquota.mobile.local.ProviderId
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Assert.assertThrows
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner

@RunWith(RobolectricTestRunner::class)
class AndroidNamedProfileLifecycleStoreTest {
    private lateinit var context: Context

    @Before
    fun setUp() {
        context = ApplicationProvider.getApplicationContext()
        preferences().edit().clear().commit()
    }

    @After
    fun tearDown() {
        preferences().edit().clear().commit()
    }

    @Test
    fun `pending request and accepted receipt survive store reconstruction`() {
        val binding = AccountProfileBinding(account(), profile(1), ProfileLifecycleState.ERASURE_PENDING_COLD_START, null)
        AndroidNamedProfileLifecycleStore(context).write(binding)

        val reconstructed = AndroidNamedProfileLifecycleStore(context)
        assertEquals(binding, reconstructed.read(account()))
        val receipt = ProfileDeletionReceipt(account(), profile(1), ProfileDeletionDisposition.DELETION_ACCEPTED)
        reconstructed.write(binding.copy(state = ProfileLifecycleState.DELETION_ACCEPTED, receipt = receipt))

        assertEquals(receipt, AndroidNamedProfileLifecycleStore(context).read(account())!!.receipt)
    }

    @Test
    fun `malformed durable lifecycle fails closed`() {
        preferences().edit().putString("records", "[{\"provider\":\"claude\"}]").commit()

        assertThrows(Exception::class.java) { AndroidNamedProfileLifecycleStore(context).readAll() }
    }

    @Test
    fun `durable profile identity cannot be replaced or reused`() {
        val store = AndroidNamedProfileLifecycleStore(context)
        store.write(AccountProfileBinding(account(), profile(1), ProfileLifecycleState.ACTIVE, null))

        assertThrows(IllegalArgumentException::class.java) {
            store.write(AccountProfileBinding(account(), profile(2), ProfileLifecycleState.ACTIVE, null))
        }
        assertThrows(IllegalArgumentException::class.java) {
            store.write(AccountProfileBinding(account(2), profile(1), ProfileLifecycleState.ACTIVE, null))
        }
    }

    private fun preferences() = context.getSharedPreferences("named_profile_lifecycle_v1", Context.MODE_PRIVATE)

    private fun account(index: Int = 1) = ProviderAccountId(
        ProviderId.CLAUDE,
        AccountKey.parseOpaque("acct_${index.toString(16).padStart(32, '0')}"),
    )

    private fun profile(index: Int) =
        WebProfileName.fromStorage("aiq_profile_${index.toString(16).padStart(32, '0')}")
}
