package com.aiquota.mobile.local

import android.content.Context
import android.content.SharedPreferences
import com.aiquota.mobile.providers.GlmNoSubscriptionPolicy
import com.aiquota.mobile.providers.ProviderSnapshotCodec
import com.aiquota.mobile.providers.ProviderScopedStateRepository
import java.time.Duration
import java.time.Instant

class LocalUsageRepository(context: Context) {
    private val appContext = context.applicationContext
    private val preferences = context.getSharedPreferences(PREFERENCES_NAME, Context.MODE_PRIVATE)
    private val scopedStateRepository = ProviderScopedStateRepository(appContext)

    fun readSnapshots(): List<ProviderUsageSnapshot> {
        val stored = ProviderSnapshotCodec.decode(preferences.getString(KEY_SNAPSHOTS, "").orEmpty())
        val cleaned = stored
            .map(::normalizeGoogleUsagePendingMessage)
            .map(::recoverLegacyInteractiveAuthRequired)
            .map(::recoverSessionExpiredInteractiveAuthRequired)
            .map(::normalizeGeminiLegacyUsageLabels)
            .map(::normalizeGeminiLegacyPlanLabel)
            .map(::normalizeClaudePersistedPlanLabel)
            .map(::recoverStoppedBackgroundRefreshWithPreviousUsage)
            .map(::recoverGoogleCollectingWithoutTrustedUsage)
            .map(::recoverGoogleRecoverableUsageFailure)
            .map(::recoverGlmNoSubscriptionPlan)
            .map(::clearStaleRefreshing)
            .map(::clearExpiredProviderSpecificLines)
        if (cleaned != stored) {
            saveSnapshots(cleaned)
        } else {
            scopedStateRepository.saveSnapshots(cleaned)
        }
        return cleaned
    }

    private fun clearStaleRefreshing(snapshot: ProviderUsageSnapshot): ProviderUsageSnapshot {
        if (snapshot.refreshState != ProviderRefreshState.REFRESHING) return snapshot
        val statusUpdatedAt = runCatching { Instant.parse(snapshot.statusUpdatedAt) }.getOrNull() ?: return snapshot
        val staleTimeout = when {
            snapshot.providerId == ProviderId.GEMINI || snapshot.providerId == ProviderId.ANTIGRAVITY ->
                GOOGLE_STALE_REFRESH_TIMEOUT
            snapshot.providerId == ProviderId.OPENCODE -> OPENCODE_STALE_REFRESH_TIMEOUT
            snapshot.connectionState == ProviderConnectionState.CONNECTING -> STALE_CONNECTING_TIMEOUT
            snapshot.providerId == ProviderId.CODEX -> CODEX_STALE_REFRESH_TIMEOUT
            else -> STALE_REFRESH_TIMEOUT
        }
        val now = Instant.now()
        if (Duration.between(statusUpdatedAt, now) < staleTimeout) return snapshot
        val nextConnectionState = when (snapshot.connectionState) {
            ProviderConnectionState.CONNECTING,
            ProviderConnectionState.COLLECTING -> providerConnectionStateAfterPreviousUsageFailure(
                providerId = snapshot.providerId,
                hasPreviousUsage = snapshot.lines.isNotEmpty(),
                withoutPreviousUsage = ProviderConnectionState.DISCONNECTED
            )
            else -> snapshot.connectionState
        }
        return snapshot.copy(
            connectionState = nextConnectionState,
            refreshState = ProviderRefreshState.IDLE,
            statusUpdatedAt = now.toString(),
            message = "Previous collection did not finish."
        )
    }

    private fun clearExpiredProviderSpecificLines(snapshot: ProviderUsageSnapshot): ProviderUsageSnapshot {
        return ProviderVolatileUsagePolicy.removeExpiredLines(snapshot, Instant.now())
    }

    fun saveSnapshot(snapshot: ProviderUsageSnapshot) {
        val current = readSnapshots()
        val previous = current.firstOrNull { it.providerId == snapshot.providerId }
        val snapshotToSave = mergeFreshSnapshotWithPreviousLines(snapshot, previous)
        val next = current.filterNot { it.providerId == snapshot.providerId } + snapshotToSave
        saveSnapshots(next)
    }

    fun saveSnapshots(snapshots: List<ProviderUsageSnapshot>) {
        val sanitized = snapshots.map(::normalizeClaudePersistedPlanLabel)
        val ordered = ProviderId.defaultOrder().mapNotNull { provider ->
            sanitized.lastOrNull { it.providerId == provider }
        }
        scopedStateRepository.saveSnapshots(ordered)
        val encoded = ProviderSnapshotCodec.encode(ordered)
        if (preferences.getString(KEY_SNAPSHOTS, "") == encoded) return
        preferences.edit()
            .putString(KEY_SNAPSHOTS, encoded)
            .apply()
    }

    fun markConnecting(providerId: ProviderId) {
        val current = readSnapshots().firstOrNull { it.providerId == providerId }
        val base = if (providerId == ProviderId.GEMINI) current?.copy(lines = emptyList()) else current
        val now = Instant.now().toString()
        saveSnapshot(
            base?.copy(
                connectionState = ProviderConnectionState.CONNECTING,
                refreshState = ProviderRefreshState.REFRESHING,
                updatedAt = snapshotUpdatedAtForStatusTransition(base, now),
                statusUpdatedAt = now,
                message = "Opening provider login"
            ) ?: ProviderUsageSnapshot.connecting(providerId)
        )
    }

    fun markLoginCancelled(providerId: ProviderId, message: String) {
        val current = readSnapshots().firstOrNull { it.providerId == providerId } ?: return
        if (current.connectionState != ProviderConnectionState.CONNECTING ||
            current.refreshState != ProviderRefreshState.REFRESHING
        ) {
            return
        }
        val now = Instant.now().toString()
        saveSnapshot(
            current.copy(
                connectionState = providerConnectionStateAfterPreviousUsageFailure(
                    providerId = providerId,
                    hasPreviousUsage = current.lines.isNotEmpty(),
                    withoutPreviousUsage = ProviderConnectionState.DISCONNECTED
                ),
                refreshState = ProviderRefreshState.IDLE,
                updatedAt = snapshotUpdatedAtForStatusTransition(current, now),
                statusUpdatedAt = now,
                message = message
            )
        )
    }

    fun markCollecting(providerId: ProviderId) {
        val current = readSnapshots().firstOrNull { it.providerId == providerId }
            ?: ProviderUsageSnapshot.notConnected(providerId)
        saveSnapshot(ProviderUsageSnapshot.collecting(current))
    }

    fun markConnectedWithoutUsage(providerId: ProviderId, message: String) {
        saveSnapshot(
            ProviderUsageSnapshot.connectedWithoutUsage(
                providerId = providerId,
                previous = readSnapshots().firstOrNull { it.providerId == providerId },
                message = message
            )
        )
    }

    fun markConnectedWithoutPlan(providerId: ProviderId, planLabel: String, message: String) {
        saveSnapshot(
            ProviderUsageSnapshot.connectedWithoutPlan(
                providerId = providerId,
                previous = readSnapshots().firstOrNull { it.providerId == providerId },
                planLabel = planLabel,
                message = message
            )
        )
    }

    fun markGoogleUsagePending(providerId: ProviderId, message: String) {
        if (providerId != ProviderId.GEMINI && providerId != ProviderId.ANTIGRAVITY) {
            markConnectedWithoutUsage(providerId, message)
            return
        }
        val current = readSnapshots().firstOrNull { it.providerId == providerId }
        val base = current ?: ProviderUsageSnapshot.disconnected(providerId)
        val now = Instant.now().toString()
        saveSnapshot(
            base.copy(
                connectionState = if (base.lines.isEmpty()) {
                    ProviderConnectionState.UNAVAILABLE
                } else {
                    ProviderConnectionState.CONNECTED
                },
                refreshState = ProviderRefreshState.IDLE,
                updatedAt = snapshotUpdatedAtForStatusTransition(base, now),
                statusUpdatedAt = now,
                message = message
            )
        )
    }

    fun failKeepingPrevious(providerId: ProviderId, message: String) {
        if (providerId == ProviderId.GEMINI && message.isGeminiBackgroundRefreshLoginPageMessage()) {
            markGoogleUsagePending(providerId, GOOGLE_USAGE_PENDING_MESSAGE)
            return
        }
        if (providerId == ProviderId.GEMINI && message.isGeminiInteractiveAuthRequiredMessage()) {
            saveSnapshot(
                ProviderUsageSnapshot.interactiveAuthRequiredKeepingPrevious(
                    providerId = providerId,
                    previous = readSnapshots().firstOrNull { it.providerId == providerId },
                    message = message
                )
            )
            return
        }
        if (providerId == ProviderId.GEMINI && message.isGeminiUsageRpcUnavailableMessage()) {
            saveSnapshot(ProviderUsageSnapshot.unavailable(providerId, message))
            return
        }
        if (providerId.isGoogleProvider() && message.isRecoverableGoogleUsageFailureMessage()) {
            markGoogleUsagePending(providerId, GOOGLE_USAGE_PENDING_MESSAGE)
            return
        }
        saveSnapshot(
            ProviderUsageSnapshot.failedKeepingPrevious(
                providerId = providerId,
                previous = readSnapshots().firstOrNull { it.providerId == providerId },
                message = message
            )
        )
    }

    fun markInteractiveAuthRequired(providerId: ProviderId, message: String) {
        markSessionExpired(providerId, message)
    }

    fun markSessionExpired(providerId: ProviderId, message: String) {
        val now = Instant.now().toString()
        saveSnapshot(
            ProviderUsageSnapshot.disconnected(providerId).copy(
                updatedAt = now,
                statusUpdatedAt = now,
                message = message
            )
        )
    }

    fun exportDisplayJson(): String = ProviderSnapshotCodec.encode(readSnapshots())

    fun exportDisplayOnlyCache(
        order: List<ProviderId>,
        hidden: Set<ProviderId>,
        updatedAt: String
    ): String {
        return WidgetCacheSanitizer.toDisplayOnlyJson(
            snapshots = readSnapshots(),
            order = order,
            hidden = hidden,
            updatedAt = updatedAt,
            gaugeColors = ProviderPreferencesRepository(appContext).providerGaugeColors()
        )
    }

    fun removeProviderSnapshot(providerId: ProviderId) {
        saveSnapshots(readSnapshots().filterNot { it.providerId == providerId })
    }

    fun registerSnapshotListener(onChanged: () -> Unit): SharedPreferences.OnSharedPreferenceChangeListener {
        val listener = SharedPreferences.OnSharedPreferenceChangeListener { _, key ->
            if (key == KEY_SNAPSHOTS) onChanged()
        }
        preferences.registerOnSharedPreferenceChangeListener(listener)
        return listener
    }

    fun unregisterSnapshotListener(listener: SharedPreferences.OnSharedPreferenceChangeListener) {
        preferences.unregisterOnSharedPreferenceChangeListener(listener)
    }

    private companion object {
        const val PREFERENCES_NAME = "ai_quota_local_usage"
        const val KEY_SNAPSHOTS = "provider_snapshots"
        const val GOOGLE_USAGE_PENDING_MESSAGE = "Provider session reached, but trusted usage payload was not available yet."
        val STALE_CONNECTING_TIMEOUT: Duration = Duration.ofMinutes(15)
        val STALE_REFRESH_TIMEOUT: Duration = Duration.ofSeconds(10)
        val OPENCODE_STALE_REFRESH_TIMEOUT: Duration = Duration.ofSeconds(30)
        val CODEX_STALE_REFRESH_TIMEOUT: Duration = Duration.ofSeconds(45)
        val GOOGLE_STALE_REFRESH_TIMEOUT: Duration = Duration.ofSeconds(90)
    }
}

private fun recoverGoogleRecoverableUsageFailure(snapshot: ProviderUsageSnapshot): ProviderUsageSnapshot {
    if (!snapshot.providerId.isGoogleProvider()) return snapshot
    if (snapshot.connectionState != ProviderConnectionState.ERROR &&
        snapshot.connectionState != ProviderConnectionState.UNAVAILABLE
    ) {
        return snapshot
    }
    if (!snapshot.message.orEmpty().isRecoverableGoogleUsageFailureMessage()) return snapshot
    if (
        snapshot.message == GOOGLE_USAGE_PENDING_MESSAGE &&
        snapshot.refreshState == ProviderRefreshState.IDLE
    ) {
        return snapshot
    }
    val now = Instant.now().toString()
    return snapshot.copy(
        connectionState = if (snapshot.lines.isEmpty()) {
            ProviderConnectionState.UNAVAILABLE
        } else {
            ProviderConnectionState.CONNECTED
        },
        refreshState = ProviderRefreshState.IDLE,
        updatedAt = snapshotUpdatedAtForStatusTransition(snapshot, now),
        statusUpdatedAt = now,
        message = "Provider session reached, but trusted usage payload was not available yet."
    )
}

internal fun recoverGlmNoSubscriptionPlan(snapshot: ProviderUsageSnapshot): ProviderUsageSnapshot {
    if (!GlmNoSubscriptionPolicy.isNoSubscriptionSnapshot(snapshot)) return snapshot
    return snapshot.copy(
        connectionState = ProviderConnectionState.CONNECTED,
        refreshState = ProviderRefreshState.IDLE,
        planLabel = GlmNoSubscriptionPolicy.PLAN_LABEL,
        message = GlmNoSubscriptionPolicy.MESSAGE,
        lines = emptyList()
    )
}

internal fun mergeFreshSnapshotWithPreviousLines(
    snapshot: ProviderUsageSnapshot,
    previous: ProviderUsageSnapshot?
): ProviderUsageSnapshot {
    if (previous == null) return snapshot
    if (previous.providerId != snapshot.providerId) return snapshot
    if (snapshot.connectionState != ProviderConnectionState.CONNECTED) return snapshot
    if (snapshot.lines.isEmpty() || previous.lines.isEmpty()) return snapshot
    val planLabel = snapshot.planLabel ?: previousPlanLabelForFreshSnapshot(snapshot, previous)
    if (snapshot.providerId == ProviderId.GEMINI && snapshot.lines.hasTrustedGeminiUsagePageQuotaLine()) {
        return if (planLabel == snapshot.planLabel) snapshot else snapshot.copy(planLabel = planLabel)
    }

    // 키 스키마가 바뀌면 옛 키가 병합으로 계속 살아남아 화면에 유령 라인이 남는다.
    val previousLines = previous.lines.filterNot {
        isRetiredUsageLineKey(snapshot.providerId, it.mergeKey())
    }
    if (previousLines.isEmpty()) {
        return if (planLabel == snapshot.planLabel) snapshot else snapshot.copy(planLabel = planLabel)
    }
    val incomingByKey = snapshot.lines.associateBy { it.mergeKey() }
    val previousKeys = previousLines.map { it.mergeKey() }.toSet()
    val mergedLines = if (snapshot.providerId == ProviderId.GLM) {
        val incomingKeys = snapshot.lines.map { it.mergeKey() }.toSet()
        snapshot.lines + previousLines.filter { it.mergeKey() !in incomingKeys }
    } else {
        previousLines.map { line ->
            incomingByKey[line.mergeKey()] ?: line
        } + snapshot.lines.filter { it.mergeKey() !in previousKeys }
    }

    val orderedLines = pinPrimaryLinesFirst(snapshot.providerId, mergedLines)
    if (orderedLines == snapshot.lines && planLabel == snapshot.planLabel) return snapshot
    return snapshot.copy(lines = orderedLines, planLabel = planLabel)
}

/**
 * provider마다 "가장 먼저 보여야 하는" 라인을 앞으로 끌어올린다.
 *
 * 병합은 이전 순서를 유지한다. 부분 갱신 때 목록이 뒤바뀌지 않게 하려는 의도라 그대로 두되,
 * 나중에 추가된 대표 지표가 목록 끝에 붙는 문제만 바로잡는다. Grok은 2시간 한도보다 주간
 * SuperGrok 한도가 사용자가 실제로 신경 쓰는 값이다.
 */
internal fun pinPrimaryLinesFirst(
    providerId: ProviderId,
    lines: List<ProviderUsageLine>
): List<ProviderUsageLine> {
    val pinned = primaryLineKeys(providerId)
    if (pinned.isEmpty()) return lines
    // sortedBy는 안정 정렬이라 고정 대상 외의 상대 순서는 그대로 유지된다.
    return lines.sortedBy { line ->
        pinned.indexOf(line.key).takeIf { it >= 0 } ?: pinned.size
    }
}

private fun primaryLineKeys(providerId: ProviderId): List<String> = when (providerId) {
    ProviderId.GROK -> listOf("grok:weekly")
    else -> emptyList()
}

/**
 * 더 이상 수집하지 않는 옛 키 스키마인지 판단한다.
 *
 * Grok은 2026-08-04까지 requestKind를 키에 넣었다(grok:DEFAULT:grok-4). 그런데 서버 응답이
 * requestKind와 무관하다는 것이 확인돼 grok:grok-4 형태로 바뀌었다. 이전 스냅샷에 남은 옛
 * 키를 걸러내지 않으면 같은 값이 중복 표시된 채 영원히 남는다.
 */
internal fun isRetiredUsageLineKey(providerId: ProviderId, key: String): Boolean {
    if (providerId != ProviderId.GROK) return false
    val parts = key.split(":")
    if (parts.size < 3 || parts[0] != "grok") return false
    val second = parts[1]
    return second.isNotEmpty() && second.all { it.isUpperCase() || it == '_' }
}

private fun ProviderUsageLine.mergeKey(): String {
    return key.ifBlank { label }
}

private fun previousPlanLabelForFreshSnapshot(
    snapshot: ProviderUsageSnapshot,
    previous: ProviderUsageSnapshot
): String? {
    if (!sameOrUnknownAccount(snapshot.account, previous.account)) return null
    val plan = previous.planLabel?.trim()?.takeIf { it.isNotBlank() && it != "null" } ?: return null
    if (snapshot.providerId == ProviderId.GLM && plan == GlmNoSubscriptionPolicy.PLAN_LABEL) return null
    if (plan.equals("unknown", ignoreCase = true)) return null
    return if (snapshot.providerId == ProviderId.CLAUDE) {
        normalizeClaudePersistedPlanLabel(previous).planLabel
    } else {
        plan
    }
}

private fun sameOrUnknownAccount(incoming: String?, previous: String?): Boolean {
    val incomingAccount = incoming?.trim().orEmpty()
    val previousAccount = previous?.trim().orEmpty()
    return incomingAccount.isBlank() || previousAccount.isBlank() || incomingAccount == previousAccount
}

internal fun recoverGoogleCollectingWithoutTrustedUsage(snapshot: ProviderUsageSnapshot): ProviderUsageSnapshot {
    if (!snapshot.providerId.isGoogleProvider()) return snapshot
    if (snapshot.lines.isNotEmpty()) return snapshot
    if (snapshot.connectionState == ProviderConnectionState.CONNECTING) return snapshot
    if (snapshot.connectionState != ProviderConnectionState.COLLECTING &&
        snapshot.refreshState != ProviderRefreshState.REFRESHING
    ) {
        return snapshot
    }
    val now = Instant.now().toString()
    return snapshot.copy(
        connectionState = ProviderConnectionState.UNAVAILABLE,
        refreshState = ProviderRefreshState.IDLE,
        updatedAt = now,
        statusUpdatedAt = now,
        message = GOOGLE_USAGE_PENDING_MESSAGE
    )
}

internal fun recoverStoppedBackgroundRefreshWithPreviousUsage(snapshot: ProviderUsageSnapshot): ProviderUsageSnapshot {
    if (snapshot.connectionState != ProviderConnectionState.STALE) return snapshot
    if (snapshot.lines.isEmpty()) return snapshot
    if (snapshot.message != BACKGROUND_REFRESH_STOPPED_MESSAGE) return snapshot
    return snapshot.copy(
        connectionState = ProviderConnectionState.CONNECTED,
        refreshState = ProviderRefreshState.IDLE,
        message = null
    )
}

internal fun normalizeGeminiLegacyUsageLabels(snapshot: ProviderUsageSnapshot): ProviderUsageSnapshot {
    if (snapshot.providerId != ProviderId.GEMINI) return snapshot
    val lines = snapshot.lines.filterNot { it.isLegacyGeminiCollapsedLine() }
    if (lines.isEmpty()) return snapshot
    if (lines == snapshot.lines) return snapshot
    return snapshot.copy(lines = lines)
}

private fun ProviderUsageLine.isLegacyGeminiCollapsedLine(): Boolean {
    if (isTrustedGeminiUsagePageQuotaLine()) return false
    val normalized = label.trim()
        .replace('_', ' ')
        .replace('-', ' ')
        .replace(Regex("\\s+"), " ")
        .lowercase()
    val normalizedKey = key.trim()
        .replace('_', ' ')
        .replace('-', ' ')
        .replace(Regex("\\s+"), " ")
        .lowercase()
    return normalized in LegacyGeminiCollapsedLabels ||
        normalizedKey in LegacyGeminiCollapsedKeys
}

private val LegacyGeminiCollapsedLabels = setOf(
    "deep research",
    "5 hour limit",
    "five hour limit",
    "gemini pro",
    "gemini deep research",
    "gemini flash",
    "gemini weekly",
    "weekly limit",
    "seven day limit"
)

private val LegacyGeminiCollapsedKeys = setOf(
    "gemini deep research",
    "gemini 5 hour limit",
    "gemini gemini deep research",
    "gemini gemini pro",
    "gemini gemini flash",
    "gemini weekly limit",
    "gemini gemini weekly"
)

private fun List<ProviderUsageLine>.hasTrustedGeminiUsagePageQuotaLine(): Boolean {
    return any { it.isTrustedGeminiUsagePageQuotaLine() }
}

private fun ProviderUsageLine.isTrustedGeminiUsagePageQuotaLine(): Boolean {
    val normalized = normalizedGeminiUsageText(label)
    val normalizedKey = normalizedGeminiUsageText(key).replace(':', ' ')
    val isUsagePageQuota = normalized in GeminiUsagePageQuotaLabels ||
        normalizedKey.endsWith(" 5 hour limit") ||
        normalizedKey.endsWith(" weekly limit")
    if (!isUsagePageQuota) return false
    return unit == "requests" ||
        usedAmount != null ||
        limitAmount != null ||
        remainingAmount != null ||
        resetsAt != null
}

private fun normalizedGeminiUsageText(value: String): String {
    return value.trim()
        .replace('_', ' ')
        .replace('-', ' ')
        .replace(Regex("\\s+"), " ")
        .lowercase()
}

private val GeminiUsagePageQuotaLabels = setOf(
    "5 hour limit",
    "weekly limit"
)

internal fun normalizeGeminiLegacyPlanLabel(snapshot: ProviderUsageSnapshot): ProviderUsageSnapshot {
    if (snapshot.providerId != ProviderId.GEMINI) return snapshot
    val plan = when (snapshot.planLabel?.trim()?.lowercase()) {
        "gemini plus" -> "Plus"
        "gemini pro" -> "Pro"
        "gemini ultra" -> "Ultra"
        "gemini free" -> "Free"
        else -> return snapshot
    }
    return snapshot.copy(planLabel = plan)
}

internal fun normalizeClaudePersistedPlanLabel(snapshot: ProviderUsageSnapshot): ProviderUsageSnapshot {
    if (snapshot.providerId != ProviderId.CLAUDE) return snapshot
    val trimmed = snapshot.planLabel?.trim()?.takeIf { it.isNotBlank() && it != "null" } ?: return snapshot
    if (trimmed.matches(CLAUDE_NUMERIC_DATE_PLAN_PATTERN)) return snapshot.copy(planLabel = null)
    if (CLAUDE_NATURAL_DATE_PLAN_PATTERN.containsMatchIn(trimmed)) return snapshot.copy(planLabel = null)
    if (CLAUDE_PLAN_WINDOW_LABEL_PATTERN.containsMatchIn(trimmed)) return snapshot.copy(planLabel = null)
    val compact = trimmed.lowercase().replace(Regex("[^a-z0-9]+"), "")
    val plan = when (compact) {
        "claudefree", "free" -> "Free"
        "claudepro", "pro" -> "Pro"
        "claudemax", "max" -> "Max"
        "claudeteam", "team" -> "Team"
        "claudeenterprise", "enterprise" -> "Enterprise"
        "claudeunknown", "unknown" -> null
        else -> trimmed.replace(Regex("^Claude\\s+", RegexOption.IGNORE_CASE), "").trim()
    }
    return snapshot.copy(planLabel = plan)
}

private val CLAUDE_NUMERIC_DATE_PLAN_PATTERN = Regex("""\d{4}[-/]\d{1,2}[-/]\d{1,2}([T\s].*)?""")
private val CLAUDE_NATURAL_DATE_PLAN_PATTERN = Regex(
    """\b(jan(uary)?|feb(ruary)?|mar(ch)?|apr(il)?|may|jun(e)?|jul(y)?|aug(ust)?|sep(t|tember)?|oct(ober)?|nov(ember)?|dec(ember)?)\.?\s+\d{1,2},?\s+\d{4}\b""",
    RegexOption.IGNORE_CASE
)
private val CLAUDE_PLAN_WINDOW_LABEL_PATTERN = Regex(
    """\b(reset|resets|renew|renews|renewal|billing\s*(window|period|cycle))\b""",
    RegexOption.IGNORE_CASE
)

private fun normalizeGoogleUsagePendingMessage(snapshot: ProviderUsageSnapshot): ProviderUsageSnapshot {
    if (!snapshot.providerId.isGoogleProvider()) return snapshot
    if (snapshot.message != LEGACY_GOOGLE_USAGE_PENDING_MESSAGE) return snapshot
    return snapshot.copy(message = GOOGLE_USAGE_PENDING_MESSAGE)
}

internal fun recoverSessionExpiredInteractiveAuthRequired(snapshot: ProviderUsageSnapshot): ProviderUsageSnapshot {
    if (snapshot.connectionState != ProviderConnectionState.INTERACTIVE_AUTH_REQUIRED) return snapshot
    if (snapshot.providerId == ProviderId.GEMINI &&
        snapshot.message.orEmpty().isGeminiBackgroundRefreshLoginPageMessage()
    ) {
        val now = Instant.now().toString()
        return snapshot.copy(
            connectionState = providerConnectionStateAfterPreviousUsageFailure(
                providerId = snapshot.providerId,
                hasPreviousUsage = snapshot.lines.isNotEmpty(),
                withoutPreviousUsage = ProviderConnectionState.UNAVAILABLE
            ),
            refreshState = ProviderRefreshState.IDLE,
            updatedAt = snapshotUpdatedAtForStatusTransition(snapshot, now),
            statusUpdatedAt = now,
            message = GOOGLE_USAGE_PENDING_MESSAGE
        )
    }
    return ProviderUsageSnapshot.disconnected(snapshot.providerId).copy(
        updatedAt = snapshot.updatedAt,
        message = snapshot.message ?: "Provider session requires sign-in."
    )
}

private fun ProviderId.isGoogleProvider(): Boolean {
    return this == ProviderId.GEMINI || this == ProviderId.ANTIGRAVITY
}

private fun String.isRecoverableGoogleUsageFailureMessage(): Boolean {
    val normalized = trim().lowercase()
    if (normalized == "google authorization succeeded. usage collection will retry.") return true
    if (normalized == "provider session reached, but trusted usage payload was not available yet.") return true
    if (normalized == "previous collection did not finish.") return true
    return listOf(
        "provider login page failed to load",
        "provider login returned http",
        "trusted usage payload",
        "usage payload was not available",
        "quota payload was not available",
        "loadcodeassist returned http",
        "retrieveuserquota returned http",
        "fetchavailablemodels returned http",
        "no trusted quota",
        "missing_google_web_session_cookie",
        "background refresh page failed to load",
        "background refresh stopped",
        "collection failed"
    ).any { normalized.contains(it) }
}

private fun String.isGeminiInteractiveAuthRequiredMessage(): Boolean {
    val normalized = trim().lowercase()
    return normalized == "gemini login is required." ||
        normalized == "sign in required" ||
        normalized == "provider session requires sign-in."
}

private fun String.isGeminiBackgroundRefreshLoginPageMessage(): Boolean {
    return trim().lowercase() == "background refresh reached a provider login page."
}

private fun String.isGeminiUsageRpcUnavailableMessage(): Boolean {
    return trim().lowercase().contains("gemini_usage_page_rpc_unavailable")
}

private const val GOOGLE_USAGE_PENDING_MESSAGE =
    "Provider session reached, but trusted usage payload was not available yet."
private const val LEGACY_GOOGLE_USAGE_PENDING_MESSAGE =
    "Google authorization succeeded. Usage collection will retry."
private const val BACKGROUND_REFRESH_STOPPED_MESSAGE = "Background refresh stopped."
