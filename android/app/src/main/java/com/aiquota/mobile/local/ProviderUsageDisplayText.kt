package com.aiquota.mobile.local

import java.util.Locale

fun ProviderUsageLine.displayUsageLabel(
    providerId: ProviderId,
    lineIndex: Int,
    locale: Locale = Locale.getDefault()
): String {
    return displayUsageLabel(providerId.storageId, label, lineIndex, locale)
}

fun displayUsageLabel(
    providerId: String,
    rawLabel: String,
    lineIndex: Int,
    locale: Locale = Locale.getDefault()
): String {
    val label = rawLabel.trim().ifBlank { "Usage" }
    val normalized = label
        .replace('_', ' ')
        .replace('-', ' ')
        .replace(Regex("""\s+"""), " ")
        .trim()
        .lowercase(Locale.US)

    codexSparkDisplayLabel(providerId, normalized, locale)?.let { return it }

    if (!locale.isKoreanLanguage()) {
        return englishUsageLabel(providerId, label, normalized, lineIndex)
    }

    if (providerId.equals(ProviderId.CLAUDE.storageId, ignoreCase = true) && normalized == "rate limit") {
        return if (lineIndex == 0) "5시간 세션" else "주간 세션"
    }

    if (providerId.equals(ProviderId.GROK.storageId, ignoreCase = true)) {
        // Grok은 주간 SuperGrok 한도 한 줄만 수집한다. 원문 라벨이 그대로 나오면
        // 알림 문구까지 "Grok SuperGrok weekly 5% 이하!"처럼 섞여 버린다.
        when (normalized) {
            "supergrok weekly", "supergrok week", "weekly limit", "weekly" -> return "주간 한도"
        }
    }

    if (providerId.equals(ProviderId.OPENCODE.storageId, ignoreCase = true)) {
        when (normalized) {
            "go 5 hour limit", "go 5h limit", "go rolling usage" -> return "5시간 한도"
            "go weekly limit", "go weekly usage" -> return "주간 한도"
            "go monthly limit", "go monthly usage" -> return "월간 한도"
        }
    }

    if (providerId.equals(ProviderId.GEMINI.storageId, ignoreCase = true)) {
        when (normalized) {
            "gemini pro", "5 hour limit", "five hour limit" -> return "5시간 한도"
            "gemini weekly", "weekly limit", "seven day limit" -> return "주간 한도"
        }
    }

    if (providerId.equals(ProviderId.GLM.storageId, ignoreCase = true)) {
        when (normalized) {
            "5 hour token limit", "5 hour limit", "five hour token limit" -> return "5시간 한도"
            "weekly token limit", "weekly limit", "seven day token limit" -> return "주간 한도"
            "mcp monthly quota", "monthly quota", "monthly limit" -> return "월간 한도"
        }
    }

    return when (normalized) {
        "claude session",
        "codex session",
        "codex 5 hour limit",
        "five hour",
        "five hour limit" -> "5시간 세션"
        "claude weekly",
        "codex weekly",
        "codex weekly limit",
        "seven day",
        "seven day limit" -> "주간 세션"
        "spark weekly" -> "Spark 주간 세션"
        "seven day omelette", "claude design" -> "Claude Design"
        "session" -> "5시간 세션"
        "weekly", "weekly limit" -> "주간 세션"
        "credits" -> "크레딧"
        "chat" -> "채팅"
        "completions", "code completions", "inline suggestions" -> "인라인 제안"
        "total usage" -> "전체 사용량"
        "auto usage" -> "자동 사용량"
        "api usage" -> "API 사용량"
        "on demand", "on demand usage" -> "온디맨드 사용량"
        "included usage" -> "포함 사용량"
        "premium requests" -> "프리미엄 요청"
        "fast requests" -> "빠른 요청"
        "messages" -> "메시지"
        "weekly messages" -> "주간 메시지"
        "usage" -> "사용량"
        else -> {
            when {
                normalized.endsWith(" messages") -> {
                    label.replace(Regex("""(?i)\bmessages\b"""), "메시지")
                }
                normalized.endsWith(" requests") -> {
                    label.replace(Regex("""(?i)\brequests\b"""), "요청")
                }
                else -> label
            }
        }
    }
}

/**
 * 카드형처럼 폭이 좁은 자리에서 쓰는 짧은 라벨. 카드 안에서는 provider가 이미 아이콘·제목으로
 * 드러나 있으므로 제품 이름과 군더더기 낱말을 떼고 창 종류만 남긴다.
 *
 *   "5시간 세션" → "5시간", "Codex Weekly" → "Weekly", "SuperGrok weekly" → "Weekly",
 *   "Total Usage" → "Total", "Gemini 3.5 Flash(High)" → "3.5 F(H)"
 */
fun compactUsageLabel(label: String): String {
    val trimmed = label.trim()
    if (trimmed.isEmpty()) return label

    // 한국어는 창 종류를 나타내는 꼬리말만 뗀다. "사용량"도 카드 안에서는 군더더기다.
    val withoutKoreanSuffix = trimmed
        .removeSuffix(" 세션")
        .removeSuffix(" 한도")
        .removeSuffix(" 사용량")
        .trim()
    if (withoutKoreanSuffix != trimmed) return withoutKoreanSuffix.ifBlank { trimmed }

    compactGeminiModelLabel(trimmed)?.let { return it }

    val withoutUsage = Regex("""\s+(usage|limit)$""", RegexOption.IGNORE_CASE).replace(withoutKoreanSuffix, "")
    val withoutProduct = COMPACT_LABEL_PRODUCT_PREFIXES
        .firstOrNull { withoutUsage.startsWith("$it ", ignoreCase = true) }
        ?.let { withoutUsage.substring(it.length + 1) }
        ?: withoutUsage

    val shortened = withoutProduct.trim()
    if (shortened.isBlank()) return trimmed
    return shortened.replaceFirstChar { if (it.isLowerCase()) it.titlecase(Locale.US) else it.toString() }
}

/** "Gemini 3.5 Flash(High)" → "3.5 F(H)". 등급이 없으면 "3 Flash" → "3 F". */
private fun compactGeminiModelLabel(label: String): String? {
    Regex("""^Gemini\s+([0-9.]+)\s+([A-Za-z])[A-Za-z-]*\s*\(\s*([A-Za-z])[A-Za-z]*\s*\)$""", RegexOption.IGNORE_CASE)
        .matchEntire(label)
        ?.let { match ->
            val (version, model, tier) = match.destructured
            return "$version ${model.uppercase(Locale.US)}(${tier.uppercase(Locale.US)})"
        }
    Regex("""^Gemini\s+([0-9.]+)\s+([A-Za-z])[A-Za-z-]*$""", RegexOption.IGNORE_CASE)
        .matchEntire(label)
        ?.let { match ->
            val (version, model) = match.destructured
            return "$version ${model.uppercase(Locale.US)}"
        }
    return null
}

/** 카드 안에서는 이미 provider를 알 수 있으므로 라벨 앞의 제품 이름은 뗀다. */
private val COMPACT_LABEL_PRODUCT_PREFIXES = listOf(
    "SuperGrok",
    "Codex",
    "Claude",
    "Cursor",
    "Copilot",
    "OpenCode",
    "Grok",
    "Kimi",
    "Kiro"
)

fun displayRemainingText(text: String, locale: Locale = Locale.getDefault()): String {
    if (!locale.isKoreanLanguage()) return text
    val value = text.trim()
    if (value.isBlank()) return value

    Regex("""^(.+?)\s+credits?\s+left$""", RegexOption.IGNORE_CASE)
        .matchEntire(value)
        ?.let { return "${it.groupValues[1]} 크레딧 남음" }

    Regex("""^(.+?)\s+left$""", RegexOption.IGNORE_CASE)
        .matchEntire(value)
        ?.let { return "${it.groupValues[1]} 남음" }

    Regex("""^(.+?)\s+remaining$""", RegexOption.IGNORE_CASE)
        .matchEntire(value)
        ?.let { return "${it.groupValues[1]} 남음" }

    return value
}

fun displayResetTextForLocale(text: String?, locale: Locale = Locale.getDefault()): String? {
    val value = text?.trim()?.takeIf { it.isNotBlank() } ?: return null
    if (!locale.isKoreanLanguage()) return value

    if (value.equals("Starts when a message is sent", ignoreCase = true)) {
        return "메시지를 보내면 시작"
    }

    Regex("""^Resets in\s+(.+)$""", RegexOption.IGNORE_CASE)
        .matchEntire(value)
        ?.let { return "${durationTextToKorean(it.groupValues[1])} 후 초기화" }

    Regex("""^Runs out in\s+(.+)$""", RegexOption.IGNORE_CASE)
        .matchEntire(value)
        ?.let { return "${durationTextToKorean(it.groupValues[1])} 후 소진" }

    return value
}

fun isKoreanLocale(locale: Locale = Locale.getDefault()): Boolean {
    return locale.isKoreanLanguage()
}

private fun englishUsageLabel(
    providerId: String,
    label: String,
    normalized: String,
    lineIndex: Int
): String {
    if (providerId.equals(ProviderId.CLAUDE.storageId, ignoreCase = true) && normalized == "rate limit") {
        return if (lineIndex == 0) "Session" else "Weekly"
    }
    // GLM처럼 정규화 단계에서 한국어 라벨을 만들어 두는 provider가 있다. 영문 UI에서
    // 원문이 그대로 나오지 않도록 창 종류 라벨을 영어로 돌려준다.
    KOREAN_WINDOW_LABELS[label.trim()]?.let { return it }

    return when (normalized) {
        "five hour", "five hour limit" -> "Claude 5-hour limit"
        "seven day", "seven day limit" -> "Claude weekly limit"
        "seven day omelette" -> "Claude Design"
        else -> label
    }
}

private val KOREAN_WINDOW_LABELS = mapOf(
    "5시간 한도" to "5-hour limit",
    "주간 한도" to "Weekly limit",
    "월간 한도" to "Monthly limit",
    "5시간 세션" to "Session",
    "주간 세션" to "Weekly"
)

private fun codexSparkDisplayLabel(providerId: String, normalized: String, locale: Locale): String? {
    if (!providerId.equals(ProviderId.CODEX.storageId, ignoreCase = true)) return null
    val compact = normalized.replace(" ", "")
    if (!compact.contains("spark")) return null
    val window = when {
        compact.contains("5h") || compact.contains("5hour") || compact.contains("5시간") -> "5H"
        compact.contains("weekly") || compact.contains("주간") -> if (locale.isKoreanLanguage()) "주간" else "Week"
        else -> return null
    }
    val version = Regex("""\b(?:chat\s*)?gpt\s+([0-9]+(?:\.[0-9]+)*)\b""")
        .find(normalized)
        ?.groupValues
        ?.get(1)
    val prefix = version?.let { "GPT-$it-Spark" } ?: "Spark"
    return "$prefix $window"
}

private fun Locale.isKoreanLanguage(): Boolean {
    return language.equals("ko", ignoreCase = true)
}

private fun durationTextToKorean(value: String): String {
    val parts = Regex("""(\d+)\s*([dhm])""", RegexOption.IGNORE_CASE)
        .findAll(value)
        .map { match ->
            val amount = match.groupValues[1]
            when (match.groupValues[2].lowercase(Locale.US)) {
                "d" -> "${amount}일"
                "h" -> "${amount}시간"
                else -> "${amount}분"
            }
        }
        .toList()
    return parts.takeIf { it.isNotEmpty() }?.joinToString(" ") ?: value
}
