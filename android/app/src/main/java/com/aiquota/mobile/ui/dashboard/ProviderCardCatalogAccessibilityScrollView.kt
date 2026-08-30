package com.aiquota.mobile.ui.dashboard

import android.content.Context
import android.os.Bundle
import android.view.MotionEvent
import android.view.View
import android.view.accessibility.AccessibilityNodeInfo
import android.widget.ScrollView

internal class ProviderCardCatalogAccessibilityScrollView(
    context: Context,
) : ScrollView(context) {
    var onAccessibilityScroll: (Int) -> Unit = {}

    init {
        isVerticalScrollBarEnabled = false
        overScrollMode = View.OVER_SCROLL_NEVER
        isFocusable = false
        isFocusableInTouchMode = false
        importantForAccessibility = View.IMPORTANT_FOR_ACCESSIBILITY_YES
        addView(View(context).apply {
            importantForAccessibility = View.IMPORTANT_FOR_ACCESSIBILITY_NO
            layoutParams = LayoutParams(
                LayoutParams.MATCH_PARENT,
                resources.displayMetrics.heightPixels * 2,
            )
        })
    }

    override fun onInterceptTouchEvent(event: MotionEvent): Boolean = false

    override fun onTouchEvent(event: MotionEvent): Boolean = false

    override fun onInitializeAccessibilityNodeInfo(info: AccessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(info)
        info.isScrollable = true
    }

    override fun performAccessibilityAction(action: Int, arguments: Bundle?): Boolean {
        if (action == AccessibilityNodeInfo.ACTION_SCROLL_FORWARD ||
            action == AccessibilityNodeInfo.ACTION_SCROLL_BACKWARD
        ) {
            onAccessibilityScroll(action)
            return true
        }
        return super.performAccessibilityAction(action, arguments)
    }
}
