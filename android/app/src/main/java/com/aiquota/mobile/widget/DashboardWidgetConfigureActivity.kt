package com.aiquota.mobile.widget

import android.animation.ValueAnimator
import android.app.Activity
import android.appwidget.AppWidgetManager
import android.content.Context
import android.content.Intent
import android.content.res.ColorStateList
import android.os.Bundle
import android.view.Gravity
import android.view.MotionEvent
import android.view.View
import android.view.ViewConfiguration
import android.view.ViewGroup
import android.widget.ImageView
import android.widget.LinearLayout
import android.widget.ScrollView
import android.widget.TextView
import androidx.activity.ComponentActivity
import com.aiquota.mobile.accounts.ProviderAccountId
import com.aiquota.mobile.local.ProviderCardPreferencesRepository
import com.aiquota.mobile.R
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.local.ProviderPreferencesCodec
import com.aiquota.mobile.local.ProviderPreferencesRepository
import com.aiquota.mobile.local.ThemePreferencesRepository
import com.aiquota.mobile.localization.withAppLanguageForDeviceLanguage
import com.aiquota.mobile.ui.appLayoutMetrics
import com.aiquota.mobile.ui.dashboard.ProviderCardOrder
import com.aiquota.mobile.ui.provider.providerIconRes

private const val WIDGET_CONFIGURE_VISIBILITY_BUTTON_SIZE_DP = 48
private const val WIDGET_CONFIGURE_VISIBILITY_BUTTON_TEXT_SIZE_SP = 16f
private const val WIDGET_CONFIGURE_DRAG_HANDLE_SIZE_DP = 48

class DashboardWidgetConfigureActivity : ComponentActivity() {
    private var appWidgetId: Int = AppWidgetManager.INVALID_APPWIDGET_ID
    private lateinit var preferencesRepository: ProviderPreferencesRepository
    private lateinit var visibleSectionTitle: TextView
    private lateinit var listContainer: LinearLayout
    private lateinit var hiddenSectionTitle: TextView
    private lateinit var hiddenListContainer: LinearLayout
    private lateinit var capacityNotice: TextView
    private var providerOrder: List<ProviderId> = emptyList()
    private var previewProviderOrder: List<ProviderId> = emptyList()
    private var hiddenProviders: Set<ProviderId> = emptySet()
    private var draggedRow: View? = null
    private lateinit var cardPreferencesRepository: ProviderCardPreferencesRepository
    private var cardOrder: List<ProviderAccountId> = emptyList()
    private var hiddenCards: Set<ProviderAccountId> = emptySet()
    private var activeWidgetCards: List<ProviderWidgetCardSelection> = emptyList()
    private var previewCardOrder: List<ProviderAccountId> = emptyList()
    private val rowTranslationAnimators = mutableMapOf<View, ValueAnimator>()
    private val rowTranslationTargets = mutableMapOf<View, Float>()

    override fun attachBaseContext(newBase: Context) {
        super.attachBaseContext(newBase.withAppLanguageForDeviceLanguage())
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setResult(Activity.RESULT_CANCELED)

        appWidgetId = intent?.extras?.getInt(
            AppWidgetManager.EXTRA_APPWIDGET_ID,
            AppWidgetManager.INVALID_APPWIDGET_ID
        ) ?: AppWidgetManager.INVALID_APPWIDGET_ID

        if (appWidgetId == AppWidgetManager.INVALID_APPWIDGET_ID) {
            finish()
            return
        }

        preferencesRepository = ProviderPreferencesRepository(this)
        cardPreferencesRepository = ProviderCardPreferencesRepository(this)
        cardOrder = cardPreferencesRepository.dashboardWidgetCardOrder(appWidgetId)
        hiddenCards = cardPreferencesRepository.dashboardWidgetHiddenCards(appWidgetId)
        providerOrder = ProviderCardOrder.normalizedOrder(
            preferencesRepository.dashboardWidgetProviderOrder(appWidgetId)
        )
        hiddenProviders = preferencesRepository.dashboardWidgetHiddenProviders(appWidgetId)
        previewProviderOrder = visibleProviderOrder()
        showProviderOrder()
    }

    private fun showProviderOrder() {
        val style = widgetConfigureStyle(ThemePreferencesRepository(this).currentTheme())
        applyWidgetConfigureWindow(style)
        val layoutMetrics = appLayoutMetrics(
            screenWidthDp = resources.configuration.screenWidthDp,
            screenHeightDp = resources.configuration.screenHeightDp
        )
        title = getString(R.string.widget_configure_order_title)

        val root = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            gravity = Gravity.CENTER_VERTICAL
            setBackgroundColor(style.backgroundColor)
            setPadding(
                layoutMetrics.contentHorizontalPaddingDp.dp(),
                layoutMetrics.contentVerticalPaddingDp.dp() + widgetConfigureStatusBarInsetPx(),
                layoutMetrics.contentHorizontalPaddingDp.dp(),
                layoutMetrics.contentVerticalPaddingDp.dp()
            )
        }
        root.addView(
            TextView(this).apply {
                text = getString(R.string.widget_configure_order_title)
                applyWidgetConfigureText(
                    style = style,
                    textSizeSp = if (resources.configuration.screenWidthDp >= 600) 20f else 18f,
                    bold = true
                )
            },
            LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.WRAP_CONTENT
            )
        )
        root.addView(
            TextView(this).apply {
                text = getString(R.string.provider_drag_hint)
                applyWidgetConfigureText(style, textSizeSp = 13f, muted = true)
            },
            LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.WRAP_CONTENT
            ).apply {
                topMargin = 8.dp()
            }
        )
        capacityNotice = TextView(this).apply {
            applyWidgetConfigureText(style, textSizeSp = 13f, muted = true)
            text = getString(R.string.widget_select_max_six)
        }
        root.addView(capacityNotice, LinearLayout.LayoutParams(
            ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT
        ).apply { topMargin = 12.dp() })
        visibleSectionTitle = TextView(this).apply {
            text = getString(R.string.widget_configure_accounts_title)
            applyWidgetConfigureText(style, textSizeSp = 13f, bold = true, muted = true)
        }
        root.addView(
            visibleSectionTitle,
            LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.WRAP_CONTENT
            ).apply {
                topMargin = layoutMetrics.cardSpacingDp.dp()
            }
        )

        listContainer = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
        }
        root.addView(
            listContainer,
            LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.WRAP_CONTENT
            ).apply {
                topMargin = 8.dp()
            }
        )
        hiddenSectionTitle = TextView(this).apply {
            text = getString(R.string.widget_configure_hidden_title)
            applyWidgetConfigureText(style, textSizeSp = 13f, bold = true, muted = true)
        }
        root.addView(
            hiddenSectionTitle,
            LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.WRAP_CONTENT
            ).apply {
                topMargin = layoutMetrics.cardSpacingDp.dp()
            }
        )
        hiddenListContainer = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
        }
        root.addView(
            hiddenListContainer,
            LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.WRAP_CONTENT
            ).apply {
                topMargin = 8.dp()
            }
        )
        renderUnifiedCardRows(style)

        root.addView(
            TextView(this).apply {
                text = getString(R.string.widget_configure_done)
                gravity = Gravity.CENTER
                isClickable = true
                isFocusable = true
                setPadding(16.dp(), 12.dp(), 16.dp(), 12.dp())
                applyWidgetConfigureText(style, textSizeSp = 15f, bold = true)
                setTextColor(style.primaryButtonTextColor)
                background = context.widgetConfigureRoundedBackground(
                    fillColor = style.accentColor,
                    strokeColor = style.accentColor,
                    cornerRadiusDp = style.buttonCornerRadiusDp
                )
                setOnClickListener { finishConfigured() }
            },
            LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.WRAP_CONTENT
            ).apply {
                topMargin = layoutMetrics.cardSpacingDp.dp()
            }
        )
        setContentView(
            ScrollView(this).apply {
                setBackgroundColor(style.backgroundColor)
                isFillViewport = true
                addView(
                    root,
                    ViewGroup.LayoutParams(
                        ViewGroup.LayoutParams.MATCH_PARENT,
                        ViewGroup.LayoutParams.MATCH_PARENT
                    )
                )
            }
        )
    }

    private fun rowLayout() = LinearLayout.LayoutParams(
        ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT
    ).apply { bottomMargin = 8.dp() }

    private fun renderUnifiedCardRows(style: WidgetConfigureStyle) {
        cancelProviderRowAnimations()
        activeWidgetCards = ProviderWidgetCardCatalog.activeSelections(this)
        val byId = activeWidgetCards.associateBy { it.accountId }
        val initial = cardOrder.isEmpty()
        val legacyOrder = if (initial) providerOrder.flatMap { provider ->
            activeWidgetCards.filter { it.providerId == provider }.map { it.accountId }
        } else cardOrder
        val normalized = (legacyOrder + activeWidgetCards.map { it.accountId }.filterNot { it in cardOrder })
            .distinct().filter { it in byId }
        if (initial) hiddenCards = hiddenCards + activeWidgetCards.filter { it.providerId in hiddenProviders }.map { it.accountId }
        cardOrder = normalized
        val limitedHidden = widgetHiddenCardsWithinLimit(cardOrder, hiddenCards)
        if (limitedHidden != hiddenCards) {
            hiddenCards = limitedHidden
            saveCardPreferences()
            refreshConfiguredWidgets()
        }
        previewCardOrder = cardOrder.filterNot { it in hiddenCards }
        listContainer.removeAllViews()
        hiddenListContainer.removeAllViews()
        previewCardOrder.forEach { listContainer.addView(unifiedCardRow(byId.getValue(it), style, false), rowLayout()) }
        val hidden = cardOrder.filter { it in hiddenCards }
        hidden.forEach { hiddenListContainer.addView(unifiedCardRow(byId.getValue(it), style, true), rowLayout()) }
        val visibility = if (hidden.isEmpty()) View.GONE else View.VISIBLE
        hiddenSectionTitle.visibility = visibility
        hiddenListContainer.visibility = visibility
    }

    private fun cancelProviderRowAnimations() {
        rowTranslationAnimators.values.forEach { it.cancel() }
        rowTranslationAnimators.clear()
        rowTranslationTargets.clear()
        for (index in 0 until listContainer.childCount) {
            listContainer.getChildAt(index)?.apply {
                animate().cancel(); clearAnimation(); translationY = 0f
                alpha = 1f; scaleX = 1f; scaleY = 1f; elevation = 0f
            }
        }
    }

    private fun unifiedCardRow(card: ProviderWidgetCardSelection, style: WidgetConfigureStyle, hidden: Boolean): LinearLayout =
        LinearLayout(this).apply {
            tag = card.accountId
            orientation = LinearLayout.HORIZONTAL
            gravity = Gravity.CENTER_VERTICAL
            applyWidgetConfigureRowBackground(style)
            setPadding(14.dp(), 12.dp(), 10.dp(), 12.dp())
            addView(ImageView(this@DashboardWidgetConfigureActivity).apply {
                setImageResource(providerIconRes(card.providerId))
                scaleType = ImageView.ScaleType.FIT_CENTER
                alpha = if (hidden) 0.72f else 1f
                contentDescription = card.alias
            }, LinearLayout.LayoutParams(30.dp(), 30.dp()))
            addView(TextView(this@DashboardWidgetConfigureActivity).apply {
                text = card.alias
                applyWidgetConfigureText(style, textSizeSp = 16f, muted = hidden)
                gravity = Gravity.CENTER_VERTICAL
            }, LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f).apply { marginStart = 12.dp() })
            addView(providerVisibilityButton(
                if (hidden) "+" else "−",
                getString(if (hidden) R.string.widget_configure_add_provider else R.string.widget_configure_remove_provider, card.alias),
                style,
            ) {
                if (hidden && !widgetCanSelectAccount(previewCardOrder.size)) return@providerVisibilityButton
                hiddenCards = if (hidden) hiddenCards - card.accountId else hiddenCards + card.accountId
                saveCardPreferences()
                renderUnifiedCardRows(style)
                refreshConfiguredWidgets()
            }.apply {
                isEnabled = !hidden || widgetCanSelectAccount(previewCardOrder.size)
                alpha = if (isEnabled) 1f else 0.3f
            }, LinearLayout.LayoutParams(48.dp(), 48.dp()).apply { marginStart = 8.dp() })
            if (!hidden) addView(ImageView(this@DashboardWidgetConfigureActivity).apply {
                setImageResource(R.drawable.ic_drag_handle)
                imageTintList = ColorStateList.valueOf(style.mutedTextColor)
                scaleType = ImageView.ScaleType.CENTER
                contentDescription = getString(R.string.provider_reorder_handle)
                isClickable = true; isFocusable = true
                setPadding(6.dp(), 6.dp(), 6.dp(), 6.dp())
                setOnTouchListener(cardDragTouchListener(card.accountId))
            }, LinearLayout.LayoutParams(48.dp(), 48.dp()))
        }

    private fun providerVisibilityButton(
        symbol: String,
        contentDescription: String,
        style: WidgetConfigureStyle,
        onClick: () -> Unit
    ): TextView {
        return TextView(this).apply {
            text = symbol
            this.contentDescription = contentDescription
            gravity = Gravity.CENTER
            isClickable = true
            isFocusable = true
            setPadding(0, 0, 0, 1.dp())
            applyWidgetConfigureText(
                style = style,
                textSizeSp = WIDGET_CONFIGURE_VISIBILITY_BUTTON_TEXT_SIZE_SP,
                bold = true
            )
            setTextColor(style.accentColor)
            background = context.widgetConfigureRoundedBackground(
                fillColor = style.backgroundColor,
                strokeColor = style.borderColor,
                cornerRadiusDp = style.buttonCornerRadiusDp
            )
            setOnClickListener { onClick() }
        }
    }

    private fun cardDragTouchListener(accountId: ProviderAccountId): View.OnTouchListener {
        var startRawY = 0f
        var dragging = false
        var pending: Runnable? = null
        return View.OnTouchListener { view, event ->
            when (event.actionMasked) {
                MotionEvent.ACTION_DOWN -> {
                    startRawY = event.rawY
                    pending = Runnable {
                        dragging = true
                        draggedRow = view.parent as? View
                        draggedRow?.apply { alpha = 0.82f; scaleX = 1.02f; scaleY = 1.02f; elevation = 8.dp().toFloat() }
                        listContainer.parent?.requestDisallowInterceptTouchEvent(true)
                    }.also { view.postDelayed(it, ViewConfiguration.getLongPressTimeout().toLong()) }
                    true
                }
                MotionEvent.ACTION_MOVE -> {
                    if (dragging) handleCardDragMove(accountId, event.rawY, startRawY)
                    true
                }
                MotionEvent.ACTION_UP, MotionEvent.ACTION_CANCEL -> {
                    pending?.let(view::removeCallbacks)
                    if (dragging) finishCardDrag(event.actionMasked == MotionEvent.ACTION_UP)
                    dragging = false
                    true
                }
                else -> false
            }
        }
    }

    private fun cardDragTargetIndex(rawY: Float): Int {
        if (listContainer.childCount == 0) return -1
        val location = IntArray(2)
        listContainer.getLocationOnScreen(location)
        val localY = rawY - location[1]
        for (index in 0 until listContainer.childCount) {
            val child = listContainer.getChildAt(index)
            if (localY < child.top + child.height / 2f) return index
        }
        return listContainer.childCount - 1
    }

    private fun handleCardDragMove(accountId: ProviderAccountId, rawY: Float, startRawY: Float) {
        val target = cardDragTargetIndex(rawY)
        val current = previewCardOrder.indexOf(accountId)
        if (target >= 0 && current >= 0 && target != current) {
            previewCardOrder = ProviderCardOrder.moveExactToTargetIndex(previewCardOrder, accountId, target)
        }
        draggedRow?.translationY = rawY - startRawY
    }

    private fun finishCardDrag(commitDrop: Boolean) {
        draggedRow?.apply { alpha = 1f; scaleX = 1f; scaleY = 1f; elevation = 0f; translationY = 0f }
        draggedRow = null
        if (commitDrop && previewCardOrder != cardOrder.filterNot { it in hiddenCards }) {
            val visible = ArrayDeque(previewCardOrder)
            cardOrder = cardOrder.map { if (it in hiddenCards) it else visible.removeFirst() }
            saveCardPreferences()
            refreshConfiguredWidgets()
        }
        previewCardOrder = cardOrder.filterNot { it in hiddenCards }
        listContainer.parent?.requestDisallowInterceptTouchEvent(false)
        renderUnifiedCardRows(widgetConfigureStyle(ThemePreferencesRepository(this).currentTheme()))
    }

    private fun saveCardPreferences() {
        cardPreferencesRepository.saveDashboardWidgetCardOrder(appWidgetId, cardOrder)
        cardPreferencesRepository.saveDashboardWidgetHiddenCards(appWidgetId, hiddenCards)
    }

    private fun visibleProviderOrder(): List<ProviderId> =
        ProviderPreferencesCodec.visibleProviders(providerOrder, hiddenProviders)

    private fun refreshConfiguredWidgets() {
        val providerClassName = AppWidgetManager.getInstance(applicationContext)
            .getAppWidgetInfo(appWidgetId)
            ?.provider
            ?.className
        when (providerClassName) {
            AIQuotaUnifiedGlanceWidgetReceiver::class.java.name -> {
                DashboardWidgetImmediateUpdater.schedule(applicationContext, appWidgetId)
            }
            AIQuotaCircularWidgetProvider::class.java.name -> {
                AIQuotaCircularWidgetProvider.update(applicationContext, appWidgetId)
            }
        }
    }

    private fun finishConfigured() {
        preferencesRepository.saveDashboardWidgetProviderOrder(appWidgetId, providerOrder)
        preferencesRepository.saveDashboardWidgetHiddenProviders(appWidgetId, hiddenProviders)
        saveCardPreferences()
        refreshConfiguredWidgets()
        setResult(
            Activity.RESULT_OK,
            Intent().putExtra(AppWidgetManager.EXTRA_APPWIDGET_ID, appWidgetId)
        )
        returnHomeIfLaunchedFromPinCallback()
        finish()
    }

    private fun returnHomeIfLaunchedFromPinCallback() {
        if (intent?.action == null) {
            startActivity(
                Intent(Intent.ACTION_MAIN).apply {
                    addCategory(Intent.CATEGORY_HOME)
                    flags = Intent.FLAG_ACTIVITY_NEW_TASK
                }
            )
        }
    }

    private fun Int.dp(): Int {
        return widgetConfigureDp(this@DashboardWidgetConfigureActivity)
    }
}
