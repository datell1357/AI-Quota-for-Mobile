package com.aiquota.mobile.widget

import android.app.Application
import android.appwidget.AppWidgetManager
import android.os.Bundle
import android.util.SizeF
import org.junit.Assert.*
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [32], application = Application::class)
class WidgetCapacityNoticeTest {
    private val accounts = listOf("Claude", "Claude 2", "Codex", "Codex 2", "Cursor", "Grok", "Antigravity", "Gemini")
    private fun sizes(vararg sizes: SizeF) = Bundle().apply {
        putParcelableArrayList(AppWidgetManager.OPTION_APPWIDGET_SIZES, arrayListOf(*sizes))
    }

    @Test fun eightSelectedAccountsIdentifyThoseOutsideSixAccountDashboard() {
        val notice = widgetCapacityNotice(sizes(SizeF(240f, 240f)), false)
        assertEquals(WidgetCapacityNotice(6, 6), notice)
        assertEquals(listOf("Antigravity", "Gemini"), notice.potentiallyOverflowing(accounts))
        assertEquals(listOf("Claude", "Claude 2"), notice.potentiallyOverflowing(accounts.drop(2) + accounts.take(2)))
    }

    @Test fun compactDashboardWarnsAfterFourAccountsAndClearsAfterHidingOverflow() {
        val notice = widgetCapacityNotice(sizes(SizeF(160f, 160f)), false)
        assertEquals(WidgetCapacityNotice(4, 4), notice)
        assertEquals(accounts.drop(4), notice.potentiallyOverflowing(accounts))
        assertTrue(notice.potentiallyOverflowing(accounts.take(4)).isEmpty())
        assertTrue(notice.potentiallyOverflowing(emptyList()).isEmpty())
    }

    @Test fun responsiveSizesExposeTheRangeInsteadOfPromisingAllSixAlwaysFit() {
        val notice = widgetCapacityNotice(sizes(SizeF(160f, 160f), SizeF(240f, 240f)), false)
        assertEquals(WidgetCapacityNotice(4, 6), notice)
        assertEquals(accounts.drop(4), notice.potentiallyOverflowing(accounts))
    }

    @Test fun batteryUsesItsOwnSmallAndLargeSizeCapacity() {
        assertEquals(WidgetCapacityNotice(1, 1), widgetCapacityNotice(sizes(SizeF(40f, 40f)), true))
        assertEquals(WidgetCapacityNotice(4, 4), widgetCapacityNotice(sizes(SizeF(110f, 110f)), true))
        assertEquals(WidgetCapacityNotice(4, 4), widgetCapacityNotice(sizes(SizeF(76f, 180f)), true))
        assertEquals(WidgetCapacityNotice(6, 6), widgetCapacityNotice(sizes(SizeF(240f, 240f)), true))
    }

    @Test fun batteryDoesNotCountAnAccountWithoutGaugeDataAgainstItsCapacity() {
        val ids = listOf("empty", "a", "b", "c", "d")
        val payload = UnifiedWidgetPayload(
            providers = ids.map { ProviderWidgetPayload("claude", it, "SIGNED_OUT", true, lines = emptyList(), accountId = it) },
            gauges = ids.drop(1).map { WidgetProviderGauge("claude", 1f, "100%", null, accountId = it) },
        )
        val notice = WidgetCapacityNotice(4, 4)
        assertTrue(notice.potentiallyOverflowing(ids.filter { it in payload.capacityAccountIds(true) }).isEmpty())
        assertEquals(listOf("d"), notice.potentiallyOverflowing(ids.filter { it in payload.capacityAccountIds(false) }))
    }

    @Test fun legacyHostOptionsAndEmptyOptionsUseRendererFallbacks() {
        assertEquals(WidgetCapacityNotice(4, 4), widgetCapacityNotice(Bundle(), false))
        assertEquals(WidgetCapacityNotice(4, 4), widgetCapacityNotice(Bundle(), true))
        val options = Bundle().apply {
            putInt(AppWidgetManager.OPTION_APPWIDGET_MIN_WIDTH, 240)
            putInt(AppWidgetManager.OPTION_APPWIDGET_MAX_WIDTH, 240)
            putInt(AppWidgetManager.OPTION_APPWIDGET_MIN_HEIGHT, 240)
            putInt(AppWidgetManager.OPTION_APPWIDGET_MAX_HEIGHT, 240)
        }
        assertEquals(WidgetCapacityNotice(6, 6), widgetCapacityNotice(options, false))
    }
    @Test fun selectionStopsAtSixAndCanResumeAfterRemoval() {
        assertTrue(widgetCanSelectAccount(5))
        assertFalse(widgetCanSelectAccount(6))
        assertFalse(widgetCanSelectAccount(8))
        val hidden = widgetHiddenCardsWithinLimit(accounts, emptySet())
        assertEquals(accounts.drop(6).toSet(), hidden)
        assertEquals(hidden, widgetHiddenCardsWithinLimit(accounts, hidden))
        assertEquals(setOf("Claude", "Gemini"), widgetHiddenCardsWithinLimit(accounts, setOf("Claude")))
    }

    @Test fun batteryCaptionOnlyAppearsForRepeatedDisplayedProviders() {
        val a = WidgetProviderGauge("claude", 1f, "100%", null, accountId="a", accountLabel="Personal")
        val b = a.copy(accountId="b", accountLabel="Work")
        val c = a.copy(providerId="codex", accountId="c", accountLabel="Codex")
        assertNull(batteryAccountCaption(a, listOf(a,c)))
        assertEquals("Personal", batteryAccountCaption(a, listOf(a,b,c)))
        assertEquals("Work", batteryAccountCaption(b, listOf(a,b,c)))
        assertNull(batteryAccountCaption(c, listOf(a,b,c)))
    }
}
