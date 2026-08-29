package com.aiquota.mobile.widget

import org.junit.Assert.assertEquals
import org.junit.Test

class WidgetStatusTextTest {
    @Test
    fun providerWidgetStatusLabelsAreKorean() {
        assertEquals("연결됨", providerWidgetStatusLabel("CONNECTED"))
        assertEquals("연결 중", providerWidgetStatusLabel("CONNECTING"))
        assertEquals("연결 안 됨", providerWidgetStatusLabel("DISCONNECTED"))
        assertEquals("데이터 수집 중", providerWidgetStatusLabel("COLLECTING"))
        assertEquals("연결됨", providerWidgetStatusLabel("STALE"))
        assertEquals("연결 확인 필요", providerWidgetStatusLabel("INTERACTIVE_AUTH_REQUIRED"))
        assertEquals("사용할 수 없음", providerWidgetStatusLabel("UNAVAILABLE"))
        assertEquals("오류", providerWidgetStatusLabel("ERROR"))
        assertEquals("주의", providerWidgetStatusLabel("WARNING"))
        assertEquals("정상", providerWidgetStatusLabel("NORMAL"))
        assertEquals("상태 없음", providerWidgetStatusLabel(""))
    }

}
