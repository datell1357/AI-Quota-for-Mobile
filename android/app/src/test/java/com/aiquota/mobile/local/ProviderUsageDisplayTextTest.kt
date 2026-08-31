package com.aiquota.mobile.local

import java.util.Locale
import org.junit.Assert.assertEquals
import org.junit.Test

class ProviderUsageDisplayTextTest {
    @Test
    fun koreanLabelsTranslateSessionAndWeeklyWithoutProviderPrefixes() {
        val locale = Locale.KOREAN

        assertEquals("5시간 세션", displayUsageLabel("claude", "Claude Session", 0, locale))
        assertEquals("주간 세션", displayUsageLabel("claude", "Claude Weekly", 1, locale))
        assertEquals("5시간 세션", displayUsageLabel("codex", "Codex Session", 0, locale))
        assertEquals("주간 세션", displayUsageLabel("codex", "Codex Weekly", 1, locale))
    }

    @Test
    fun koreanLabelsTranslateGenericUsageWords() {
        val locale = Locale.KOREAN

        assertEquals("5시간 세션", displayUsageLabel("claude", "Session", 0, locale))
        assertEquals("주간 세션", displayUsageLabel("claude", "Weekly", 1, locale))
        assertEquals("5시간 세션", displayUsageLabel("codex", "5 hour", 0, locale))
        assertEquals("인라인 제안", displayUsageLabel("copilot", "Inline suggestions", 0, locale))
    }

    @Test
    fun koreanGeminiLabelsUseLimitNames() {
        val locale = Locale.KOREAN

        assertEquals("5시간 한도", displayUsageLabel("gemini", "5-hour limit", 0, locale))
        assertEquals("주간 한도", displayUsageLabel("gemini", "Weekly limit", 1, locale))
        assertEquals("5시간 한도", displayUsageLabel("gemini", "Gemini Pro", 0, locale))
    }

    @Test
    fun koreanOpenCodeLabelsUseLimitNames() {
        val locale = Locale.KOREAN

        assertEquals("5시간 한도", displayUsageLabel("opencode", "Go 5-Hour Limit", 0, locale))
        assertEquals("주간 한도", displayUsageLabel("opencode", "Go Weekly Limit", 1, locale))
        assertEquals("월간 한도", displayUsageLabel("opencode", "Go Monthly Limit", 2, locale))
    }

    @Test
    fun koreanGlmLabelsUseLimitNames() {
        val locale = Locale.KOREAN

        assertEquals("5시간 한도", displayUsageLabel("glm", "5-Hour Token Limit", 0, locale))
        assertEquals("주간 한도", displayUsageLabel("glm", "Weekly Token Limit", 1, locale))
        assertEquals("월간 한도", displayUsageLabel("glm", "MCP Monthly Quota", 2, locale))
    }

    @Test
    fun koreanCodexSparkLabelsUseDisplayOnlyShortNames() {
        val locale = Locale.KOREAN

        assertEquals("GPT-5.3-Spark 5H", displayUsageLabel("codex", "GPT-5.3-Codex-Spark 5h", 2, locale))
        assertEquals("GPT-5.3-Spark 주간", displayUsageLabel("codex", "GPT-5.3-Codex-Spark Weekly", 3, locale))
        assertEquals("GPT-5.3-Spark 5H", displayUsageLabel("codex", "ChatGPT-5.3-Codex-Spark 5h", 2, locale))
        assertEquals("GPT-5.3-Spark 주간", displayUsageLabel("codex", "ChatGPT-5.3-Codex-Spark Weekly", 3, locale))
        assertEquals(
            "GPT-5.3-Spark 5H",
            displayUsageLabel("codex", "GPT-5.3-Codex-Spark 5 hour usage limit", 2, locale)
        )
        assertEquals(
            "GPT-5.3-Spark 주간",
            displayUsageLabel("codex", "GPT-5.3-Codex-Spark Weekly usage limit", 3, locale)
        )
    }

    @Test
    fun englishCodexSparkLabelsUseWidgetFriendlyShortNames() {
        val locale = Locale.US

        assertEquals(
            "GPT-5.3-Spark 5H",
            displayUsageLabel("codex", "GPT-5.3-Codex-Spark 5 hour usage limit", 2, locale)
        )
        assertEquals(
            "GPT-5.3-Spark Week",
            displayUsageLabel("codex", "GPT-5.3-Codex-Spark Weekly usage limit", 3, locale)
        )
    }

    @Test
    fun koreanLabelTranslatesGrokWeeklySuperGrokLimit() {
        val locale = Locale.KOREAN

        assertEquals("주간 한도", displayUsageLabel("grok", "SuperGrok weekly", 0, locale))
        // 카드형에서는 꼬리말까지 떼고 "주간"만 남는다.
        assertEquals("주간", compactUsageLabel(displayUsageLabel("grok", "SuperGrok weekly", 0, locale)))
        // 영문 UI는 원문 라벨을 그대로 쓴다.
        assertEquals("SuperGrok weekly", displayUsageLabel("grok", "SuperGrok weekly", 0, Locale.US))
    }

    @Test
    fun englishLabelTranslatesKoreanWindowLabelsFromNormalizer() {
        // GLM은 정규화 단계에서 한국어 라벨을 만든다. 영문 UI에 그대로 새면 안 된다.
        assertEquals("5-hour limit", displayUsageLabel("glm", "5시간 한도", 0, Locale.US))
        assertEquals("Weekly limit", displayUsageLabel("glm", "주간 한도", 1, Locale.US))
        assertEquals("Monthly limit", displayUsageLabel("glm", "월간 한도", 2, Locale.US))
        // 카드형에서는 꼬리말까지 떼고 짧게 쓴다.
        assertEquals("5-hour", compactUsageLabel(displayUsageLabel("glm", "5시간 한도", 0, Locale.US)))
        assertEquals("Weekly", compactUsageLabel(displayUsageLabel("glm", "주간 한도", 1, Locale.US)))
        // 한국어 UI는 그대로 유지된다.
        assertEquals("5시간 한도", displayUsageLabel("glm", "5시간 한도", 0, Locale.KOREAN))
    }

    @Test
    fun compactLabelDropsKoreanWindowSuffix() {
        assertEquals("5시간", compactUsageLabel("5시간 세션"))
        assertEquals("주간", compactUsageLabel("주간 세션"))
        assertEquals("5시간", compactUsageLabel("5시간 한도"))
        assertEquals("Spark 주간", compactUsageLabel("Spark 주간 세션"))
        assertEquals("전체", compactUsageLabel("전체 사용량"))
        assertEquals("자동", compactUsageLabel("자동 사용량"))
        assertEquals("API", compactUsageLabel("API 사용량"))
        assertEquals("크레딧", compactUsageLabel("크레딧"))
        assertEquals("사용량", compactUsageLabel("사용량"))
    }

    @Test
    fun compactLabelDropsProductNameAndFillerWords() {
        assertEquals("Session", compactUsageLabel("Codex Session"))
        assertEquals("Weekly", compactUsageLabel("Codex Weekly"))
        assertEquals("Weekly", compactUsageLabel("SuperGrok weekly"))
        assertEquals("Total", compactUsageLabel("Total Usage"))
        assertEquals("Auto", compactUsageLabel("Auto Usage"))
        assertEquals("Usage", compactUsageLabel("Usage"))
    }

    @Test
    fun compactLabelShortensAntigravityModelNames() {
        assertEquals("3.5 F(H)", compactUsageLabel("Gemini 3.5 Flash(High)"))
        assertEquals("3.5 F(M)", compactUsageLabel("Gemini 3.5 Flash(Medium)"))
        assertEquals("3.1 P(H)", compactUsageLabel("Gemini 3.1 Pro(High)"))
        assertEquals("3 F", compactUsageLabel("Gemini 3 Flash"))
        // Gemini 패턴이 아닌 모델은 벤더 이름만 떼고 나머지는 그대로 둔다.
        assertEquals("Sonnet 4.6 Thinking", compactUsageLabel("Claude Sonnet 4.6 Thinking"))
    }

    @Test
    fun koreanResetTextTranslatesCodexRelativeDurations() {
        val locale = Locale.KOREAN

        assertEquals("4일 3시간 후 초기화", displayResetTextForLocale("Resets in 4d 3h", locale))
        assertEquals("3시간 15분 후 초기화", displayResetTextForLocale("Resets in 3h 15m", locale))
        assertEquals("월요일 초기화", displayResetTextForLocale("Resets Monday", locale))
        assertEquals("일요일 초기화", displayResetTextForLocale("Resets Sunday", locale))
    }
}
