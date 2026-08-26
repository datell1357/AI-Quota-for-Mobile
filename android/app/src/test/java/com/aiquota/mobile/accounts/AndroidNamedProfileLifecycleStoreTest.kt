package com.aiquota.mobile.accounts

import android.content.Context
import android.database.sqlite.SQLiteException
import androidx.test.core.app.ApplicationProvider
import com.aiquota.mobile.local.ProviderId
import java.util.concurrent.CountDownLatch
import java.util.concurrent.Executors
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Assert.assertThrows
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner

@RunWith(RobolectricTestRunner::class)
class AndroidNamedProfileLifecycleStoreTest {
    private lateinit var c: Context
    private val db = "profile-fix5.db"

    @Before
    fun setup() {
        c = ApplicationProvider.getApplicationContext()
        c.deleteDatabase(db)
    }

    @After
    fun down() {
        c.deleteDatabase(db)
    }

    @Test
    fun `monotonic terminal survives reconstruction`() {
        AndroidNamedProfileLifecycleStore(c, db).use { s ->
            s.create(id(1), profile(1))
            s.markPending(id(1))
            s.complete(id(1))
        }
        AndroidNamedProfileLifecycleStore(c, db).use { s ->
            assertEquals(
                ProfileLifecycleState.DATA_ERASURE_COMPLETED_CONTAINER_RETAINED,
                s.read(id(1))!!.state,
            )
            assertEquals(
                ContainerDisposition.CONTAINER_RETAINED_EMPTY_NEVER_REUSED,
                s.read(id(1))!!.receipt!!.disposition,
            )
        }
    }

    @Test
    fun `profile uniqueness enforced`() {
        AndroidNamedProfileLifecycleStore(c, db).use { s ->
            s.create(id(1), profile(1))
            assertThrows(ProfileNameCollisionException::class.java) { s.create(id(2), profile(1)) }
        }
    }

    @Test
    fun `rollback preserves prior state`() {
        val fault = NamedProfileFaultInjector {
            if (it == NamedProfileFaultPoint.AFTER_TRANSITION) error("crash")
        }
        AndroidNamedProfileLifecycleStore(c, db).use { it.create(id(1), profile(1)) }
        assertThrows(IllegalStateException::class.java) {
            AndroidNamedProfileLifecycleStore(c, db, fault).use { it.markPending(id(1)) }
        }
        AndroidNamedProfileLifecycleStore(c, db).use {
            assertEquals(ProfileLifecycleState.ACTIVE, it.read(id(1))!!.state)
        }
    }

    @Test
    fun `malformed row fails closed`() {
        AndroidNamedProfileLifecycleStore(c, db).use { s ->
            s.rawDatabaseForTest()
                .execSQL(
                    "INSERT INTO named_profile_lifecycle VALUES('claude','bad','bad','ACTIVE',NULL)"
                )
            assertThrows(SQLiteException::class.java) { s.readAll() }
        }
    }

    @Test
    fun `independent connections converge without lost rows`() {
        val n = 30
        val start = CountDownLatch(1)
        val pool = Executors.newFixedThreadPool(6)
        val done = CountDownLatch(n)
        repeat(n) { i ->
            pool.execute {
                start.await()
                AndroidNamedProfileLifecycleStore(c, db).use {
                    it.create(id(i + 1), profile(i + 1))
                }
                done.countDown()
            }
        }
        start.countDown()
        done.await()
        pool.shutdown()
        AndroidNamedProfileLifecycleStore(c, db).use { assertEquals(n, it.readAll().size) }
    }
}

private fun id(i: Int) =
    ProviderAccountId(
        ProviderId.CLAUDE,
        AccountKey.parseOpaque("acct_${i.toString(16).padStart(32,'0')}"),
    )

private fun profile(i: Int) =
    WebProfileName.fromStorage("aiq_profile_${i.toString(16).padStart(32,'0')}")
