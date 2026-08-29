package com.aiquota.mobile.widget

import android.app.Activity
import android.content.Context
import android.content.Intent
import android.graphics.Bitmap
import android.widget.ImageView
import android.widget.TextView
import java.util.concurrent.CountDownLatch
import java.util.concurrent.TimeUnit
import androidx.test.core.app.ActivityScenario
import androidx.test.core.app.ApplicationProvider
import androidx.test.ext.junit.runners.AndroidJUnit4
import androidx.test.platform.app.InstrumentationRegistry
import androidx.test.runner.lifecycle.ActivityLifecycleMonitorRegistry
import androidx.test.runner.lifecycle.Stage
import com.aiquota.mobile.MainActivity
import com.aiquota.mobile.R
import com.aiquota.mobile.accounts.AccountAuthState
import com.aiquota.mobile.accounts.AccountDeletionState
import com.aiquota.mobile.accounts.AccountDemandSet
import com.aiquota.mobile.accounts.AccountGeneration
import com.aiquota.mobile.accounts.AccountKey
import com.aiquota.mobile.accounts.AccountRecord
import com.aiquota.mobile.accounts.AccountState
import com.aiquota.mobile.accounts.AuthorityAccountSeed
import com.aiquota.mobile.accounts.DisplayVersion
import com.aiquota.mobile.accounts.MainProcessAccountAuthority
import com.aiquota.mobile.accounts.ProviderAccountId
import com.aiquota.mobile.accounts.SessionRevision
import com.aiquota.mobile.local.ProviderCardPreferencesRepository
import com.aiquota.mobile.local.ProviderConnectionState
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.local.ProviderUsageLine
import com.aiquota.mobile.local.ProviderUsageSnapshot
import com.aiquota.mobile.providers.ProviderSnapshotCodec
import java.io.File
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith

@RunWith(AndroidJUnit4::class)
class ProviderWidgetHostedRendererInstrumentationTest {
    private lateinit var context: Context
    private val a = id(1)
    private val b = id(2)

    @Before
    fun setUp() {
        context = ApplicationProvider.getApplicationContext()
        clearState()
        MainProcessAccountAuthority.open(context).use { authority ->
            authority.register(seed(a, "Codex", 81))
            authority.register(seed(b, "Codex 2", 23))
        }
        ProviderCardPreferencesRepository(context).apply {
            saveProviderWidgetSelection(WIDGET_A, a)
            saveProviderWidgetSelection(WIDGET_B, b)
        }
        WidgetSnapshotCache(context).apply {
            writeExactCardSnapshot(a, ProviderSnapshotCodec.encode(listOf(snapshot(81))))
            writeExactCardSnapshot(b, ProviderSnapshotCodec.encode(listOf(snapshot(23))))
        }
    }

    @After
    fun tearDown() = clearState()

    @Test
    fun realHostViewsRenderRestartAndDeletionWithoutStaleDispatch() {
        // Given
        val instrumentation = InstrumentationRegistry.getInstrumentation()
        val launchIntent = Intent(context, ProviderWidgetHostDebugActivity::class.java)
            .addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
        val staleRefresh = WidgetRefreshActions.widgetRefreshIntent(context, WIDGET_B, b)
        val staleDetail = providerWidgetDetailIntent(context, WIDGET_B, b).also {
            it.removeExtra(WidgetRefreshActions.EXTRA_PROVIDER_ACCOUNT_ID)
        }
        val actionA = WidgetRefreshActions.widgetRefreshIntent(context, WIDGET_A, a)
        val actionB = WidgetRefreshActions.widgetRefreshIntent(context, WIDGET_B, b)

        ActivityScenario.launch<ProviderWidgetHostDebugActivity>(launchIntent).use { scenario ->
            // When
            scenario.onActivity { activity -> renderBothAndAssert(activity) }
            awaitNextDraw(scenario)
            assertTrue(actionA.data != actionB.data)
            writeScreenshot("task16-host-before.png")
            writeReadback("task16-host-before.txt", "A=Codex,81%;B=Codex 2,23%")

            scenario.recreate()
            scenario.onActivity { activity -> renderBothAndAssert(activity) }

            MainProcessAccountAuthority.open(context).use { authority ->
                authority.beginProviderCardDeletion(b)
            }
            ProviderCardPreferencesRepository(context).clearExactCardArtifacts(b)
            WidgetSnapshotCache(context).removeExactCard(b)
            scenario.recreate()

            // Then
            scenario.onActivity { activity ->
                val hostA = activity.renderWidget(WIDGET_A, a)
                val hostB = activity.renderWidget(WIDGET_B, b)
                assertEquals("Codex", hostA.findViewById<TextView>(R.id.provider_immediate_name).text.toString())
                assertEquals("81%", hostA.findViewById<TextView>(R.id.provider_immediate_remaining).text.toString())
                assertEquals(
                    activity.getString(R.string.widget_no_data),
                    hostB.findViewById<TextView>(R.id.provider_widget_unavailable_text).text.toString(),
                )
            }
            awaitNextDraw(scenario)
            WidgetManualRefreshReceiver().onReceive(context, staleRefresh)
            WidgetManualRefreshReceiver().onReceive(context, staleRefresh)
            ProviderWidgetDetailReceiver().onReceive(context, staleDetail)
            instrumentation.waitForIdleSync()
            assertZeroDemandAndNoDetailNavigation()
            assertEquals(a, ProviderCardPreferencesRepository(context).providerWidgetSelection(WIDGET_A))
            assertNull(ProviderCardPreferencesRepository(context).providerWidgetSelection(WIDGET_B))
            writeScreenshot("task16-host-after-delete.png")
            writeReadback("task16-host-after-delete.txt", "A=Codex,81%;B=unavailable;stale-demand=0")
        }
    }

    private fun awaitNextDraw(scenario: ActivityScenario<ProviderWidgetHostDebugActivity>) {
        val drawn = CountDownLatch(1)
        scenario.onActivity { activity ->
            val root = activity.window.decorView
            root.viewTreeObserver.addOnPreDrawListener(object : android.view.ViewTreeObserver.OnPreDrawListener {
                override fun onPreDraw(): Boolean {
                    root.viewTreeObserver.removeOnPreDrawListener(this)
                    drawn.countDown()
                    return true
                }
            })
            root.invalidate()
        }
        assertTrue(drawn.await(5, TimeUnit.SECONDS))
        InstrumentationRegistry.getInstrumentation().waitForIdleSync()
    }

    private fun renderBothAndAssert(activity: ProviderWidgetHostDebugActivity) {
        val hostA = activity.renderWidget(WIDGET_A, a)
        val hostB = activity.renderWidget(WIDGET_B, b)
        assertEquals("Codex", hostA.findViewById<TextView>(R.id.provider_immediate_name).text.toString())
        assertEquals("Codex 2", hostB.findViewById<TextView>(R.id.provider_immediate_name).text.toString())
        assertEquals("81%", hostA.findViewById<TextView>(R.id.provider_immediate_remaining).text.toString())
        assertEquals("23%", hostB.findViewById<TextView>(R.id.provider_immediate_remaining).text.toString())
        assertNotNull(hostA.findViewById<ImageView>(R.id.provider_immediate_icon).drawable)
        assertNotNull(hostB.findViewById<ImageView>(R.id.provider_immediate_icon).drawable)
    }

    private fun assertZeroDemandAndNoDetailNavigation() {
        MainProcessAccountAuthority.open(context).use { authority ->
            val demands = authority.refreshDemandRecords()
            assertEquals(AccountDemandSet.NONE, demands.single { it.card.accountId == a }.demand)
            assertTrue(demands.none { it.card.accountId == b })
        }
        var resumed: Collection<Activity> = emptyList()
        InstrumentationRegistry.getInstrumentation().runOnMainSync {
            resumed = ActivityLifecycleMonitorRegistry.getInstance().getActivitiesInStage(Stage.RESUMED)
        }
        assertTrue(resumed.any { it is ProviderWidgetHostDebugActivity })
        assertTrue(resumed.none { it is MainActivity })
    }

    private fun writeScreenshot(name: String) {
        val bitmap = requireNotNull(InstrumentationRegistry.getInstrumentation().uiAutomation.takeScreenshot())
        assertTrue(bitmap.width > 0)
        assertTrue(bitmap.height > 0)
        val file = evidenceFile(name)
        file.outputStream().use { stream -> bitmap.compress(Bitmap.CompressFormat.PNG, 100, stream) }
        assertTrue(file.length() > 0)
        android.util.Log.i(TAG, "screenshot=${file.absolutePath};${bitmap.width}x${bitmap.height};bytes=${file.length()}")
    }

    private fun writeReadback(name: String, value: String) {
        val file = evidenceFile(name)
        file.writeText(value)
        android.util.Log.i(TAG, "readback=${file.absolutePath}:$value")
    }

    private fun evidenceFile(name: String): File = File(requireNotNull(context.getExternalFilesDir(null)), name)

    private fun seed(accountId: ProviderAccountId, alias: String, remaining: Int) = AuthorityAccountSeed(
        AccountRecord(
            accountId,
            AccountState.ACTIVE,
            AccountAuthState.AUTHENTICATED,
            AccountDeletionState.NONE,
            AccountGeneration.of(1),
            SessionRevision.of(1),
            alias = alias,
            modifiedVersion = DisplayVersion.ZERO,
        ),
        snapshot(remaining),
    )

    private fun snapshot(remaining: Int) = ProviderUsageSnapshot(
        providerId = ProviderId.CODEX,
        connectionState = ProviderConnectionState.CONNECTED,
        updatedAt = "2026-08-29T00:00:00Z",
        statusUpdatedAt = "2026-08-29T00:00:00Z",
        lines = listOf(
            ProviderUsageLine(
                key = "quota",
                label = "Quota",
                remainingPercent = remaining / 100f,
                remainingText = "$remaining%",
            )
        ),
    )

    private fun id(index: Int) = ProviderAccountId(
        ProviderId.CODEX,
        AccountKey.parseOpaque("acct_${index.toString(16).padStart(32, '0')}"),
    )

    private fun clearState() {
        if (!::context.isInitialized) return
        context.deleteDatabase(DATABASE_NAME)
        listOf("ai_quota_provider_preferences", "ai_quota_widget_cache", "ai_quota_widget_refresh_feedback")
            .forEach { context.getSharedPreferences(it, Context.MODE_PRIVATE).edit().clear().commit() }
    }

    private companion object {
        const val TAG = "Task16HostedQA"
        const val DATABASE_NAME = "ai_quota_accounts_v2.db"
        const val WIDGET_A = 1_701
        const val WIDGET_B = 1_702
    }
}
