package com.aiquota.mobile.notification

import android.content.Context
import androidx.test.core.app.ApplicationProvider
import com.aiquota.mobile.accounts.*
import com.aiquota.mobile.local.*
import com.aiquota.mobile.providers.ProviderSnapshotCodec
import com.aiquota.mobile.widget.WidgetSnapshotCache
import org.json.JSONArray
import org.json.JSONObject
import org.junit.Assert.*
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner

@RunWith(RobolectricTestRunner::class)
@org.robolectric.annotation.Config(sdk = [32], application = android.app.Application::class)
class AccountUsageNotificationTest {
    private fun item(id: String, label: String, state: String, remaining: Int) = JSONObject()
        .put("providerId", "claude").put("accountId", id).put("displayName", label).put("connectionState", state)
        .put("lines", JSONArray().put(JSONObject().put("key", "claude:session").put("label", "Session")
            .put("remainingPercent", remaining / 100.0).put("remainingText", "$remaining% left")))
    private fun json(vararg items: JSONObject) = JSONObject().put("providers", JSONArray(items.toList())).toString()

    @Test fun disconnectedSiblingDoesNotInheritAnotherAccountsConnectedStateOrLabel() {
        val content = buildUsageNotificationContent(json(item("a", "Old", "disconnected", 10), item("b", "Work", "connected", 80)))
        assertEquals(listOf("b"), content.gauges.map { it.accountId })
        assertTrue(content.summary.contains("Work 80%"))
        assertFalse(content.summary.contains("Old"))
    }

    @Test fun expandedNotificationIncludesTwelveAccountsAndKeepsTheirValuesInOrder() {
        val content = buildUsageNotificationContent(json(*(1..13).map {
            item("account-$it", "Account $it", "connected", it)
        }.toTypedArray()))
        assertEquals((1..12).map { "account-$it" }, content.gauges.map { it.accountId })
        assertTrue(content.gaugeRows.last().remainingText.contains("Account 12"))
        assertTrue(content.gaugeRows.last().remainingText.contains("12%"))
    }

    @Test fun expandedRemoteViewsUseRowOrderLikeCompactAndHideUnusedSlotsOnSmallerUpdates() {
        val context: Context = ApplicationProvider.getApplicationContext()
        org.junit.Assume.assumeTrue(
            "Run with -Paiquota.testIncludeAndroidResources=true",
            context.resources.getIdentifier("notification_usage_gauges", "layout", context.packageName) != 0,
        )
        val method = UsageLimitNotificationController::class.java.getDeclaredMethod(
            "remoteViews", Context::class.java, UsageNotificationContent::class.java).apply { isAccessible = true }
        val compactMethod = UsageLimitNotificationController::class.java.getDeclaredMethod(
            "compactRemoteViews", Context::class.java, UsageNotificationContent::class.java).apply { isAccessible = true }
        var expandedRoot: android.view.ViewGroup? = null
        fun visibleItemsInReadingOrder(root: android.view.ViewGroup, prefix: String, size: Int): List<android.view.View> {
            root.measure(android.view.View.MeasureSpec.makeMeasureSpec(1080, android.view.View.MeasureSpec.EXACTLY),
                android.view.View.MeasureSpec.makeMeasureSpec(0, android.view.View.MeasureSpec.UNSPECIFIED))
            root.layout(0, 0, root.measuredWidth, root.measuredHeight)
            return (0 until size).map { index ->
                root.findViewById<android.view.View>(context.resources.getIdentifier("${prefix}_$index", "id", context.packageName))
            }.filter { it.visibility == android.view.View.VISIBLE }.map { view ->
                val rect = android.graphics.Rect()
                view.getDrawingRect(rect)
                root.offsetDescendantRectToMyCoords(view, rect)
                view to rect
            }.sortedWith(compareBy({ it.second.top }, { it.second.left })).map { it.first }
        }
        for (count in listOf(12, 8, 9, 7, 4, 3, 1, 0)) {
            val content = buildUsageNotificationContent(json(*(1..count).map {
                item("account-$it", "Account $it", "connected", it)
            }.toTypedArray()))
            val views = method.invoke(UsageLimitNotificationController, context, content) as android.widget.RemoteViews
            val root = expandedRoot?.also { views.reapply(context, it) }
                ?: (views.apply(context, android.widget.FrameLayout(context)) as android.view.ViewGroup).also { expandedRoot = it }
            val ordered = visibleItemsInReadingOrder(root, "notification_row", 12)
            assertEquals(count, ordered.size)
            assertEquals("Expanded items must read left to right, then top to bottom ($count)",
                content.gaugeRows.map { it.remainingText }, ordered.map { row ->
                    val slot = context.resources.getResourceEntryName(row.id).removePrefix("notification_row_")
                    row.findViewById<android.widget.TextView>(context.resources.getIdentifier("notification_remaining_$slot", "id", context.packageName)).text.toString()
                })
            if (count > 0) {
                val compact = compactMethod.invoke(UsageLimitNotificationController, context, content) as android.widget.RemoteViews
                val compactRoot = compact.apply(context, android.widget.FrameLayout(context)) as android.view.ViewGroup
                assertEquals(content.gaugeRows.take(4).map { it.compactRemainingText },
                    visibleItemsInReadingOrder(compactRoot, "notification_compact_item", 4).map { row ->
                        val slot = context.resources.getResourceEntryName(row.id).removePrefix("notification_compact_item_")
                        row.findViewById<android.widget.TextView>(context.resources.getIdentifier("notification_compact_text_$slot", "id", context.packageName)).text.toString()
                    })
            }
        }
    }

    @Test fun allDisconnectedAccountsProduceNoGauges() {
        assertTrue(buildUsageNotificationContent(json(item("a", "Old", "disconnected", 10))).gauges.isEmpty())
    }

    @Test fun connectedSiblingLabelsAndValuesStayTogetherEvenWhenAnEarlierCardHasNoQuota() {
        val noQuota = item("empty", "Waiting", "connecting", 0).put("lines", JSONArray())
        val content = buildUsageNotificationContent(json(noQuota, item("b", "Work", "connected", 80), item("c", "Personal", "stale", 35)))
        assertEquals(listOf("b", "c"), content.gauges.map { it.accountId })
        assertTrue(content.summary.contains("Work 80%"))
        assertTrue(content.summary.contains("Personal 35%"))
        assertFalse(content.summary.contains("Waiting"))
    }

    @Test fun pinnedAndForegroundContentReadAllExactAccountsEvenWhenLegacyCacheOnlyContainsAntigravity() {
        val context: Context = ApplicationProvider.getApplicationContext()
        context.applicationInfo.processName = context.packageName
        org.robolectric.shadows.ShadowApplication.setProcessName(context.packageName)
        org.robolectric.shadows.ShadowProcess.setProcessName(context.packageName)
        context.deleteDatabase(AccountAuthorityDatabase.DEFAULT_DATABASE_NAME)
        fun snapshot(provider: ProviderId, alias: String, percent: Float) = ProviderUsageSnapshot(
            providerId = provider, displayName = alias, connectionState = ProviderConnectionState.CONNECTED,
            lines = listOf(ProviderUsageLine("Usage", remainingPercent = percent, remainingText = "${(percent * 100).toInt()}% left")))
        try {
            MainProcessAccountAuthority.open(context).use { authority ->
                listOf(Triple(ProviderId.CLAUDE, "Claude", 0.8f), Triple(ProviderId.CLAUDE, "Claude 2", 0.35f), Triple(ProviderId.ANTIGRAVITY, "Antigravity", 1f)).forEachIndexed { i, row ->
                    val id = ProviderAccountId(row.first, AccountKey.parseOpaque("acct_${(i+1).toString().padStart(32, '0')}"))
                    authority.register(AuthorityAccountSeed(AccountRecord(id, AccountState.ACTIVE, AccountAuthState.AUTHENTICATED,
                        AccountDeletionState.NONE, AccountGeneration.of(1), SessionRevision.of(1), alias = row.second),
                        snapshot(row.first, row.second, row.third)))
                }
            }
            val partial = ProviderSnapshotCodec.encode(listOf(snapshot(ProviderId.ANTIGRAVITY, "Antigravity", 1f)))
            WidgetSnapshotCache(context).write(partial)
            val first = ProviderAccountId(ProviderId.CLAUDE, AccountKey.parseOpaque("acct_${"1".padStart(32, '0')}"))
            ProviderCardPreferencesRepository(context).saveProviderGaugeColor(first, "#123456")
            val content = UsageLimitNotificationController.buildUsageNotificationContentForContext(context, partial)
            assertEquals(3, content.gauges.size)
            assertEquals(2, content.gauges.count { it.providerId == "claude" })
            assertEquals("#123456", content.gauges.first { it.accountId == ProviderAccountIdStorageCodec.encode(first) }.gaugeColorHex)
            assertTrue(content.gaugeRows.any { it.remainingText.startsWith("Claude 2 ·") })
            assertTrue(content.summary.contains("Claude 2 35%"))
        } finally { context.deleteDatabase(AccountAuthorityDatabase.DEFAULT_DATABASE_NAME) }
    }
}
