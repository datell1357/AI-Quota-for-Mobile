package com.aiquota.mobile.providers

import com.aiquota.mobile.local.ProviderId
import java.net.URI
import java.util.Locale
import java.util.concurrent.ConcurrentHashMap

/**
 * 세션이 만료된 provider를 되살리는 정책.
 *
 * about:blank 네이티브 수집은 provider 페이지를 열지 않으므로 토큰 쿠키가 만료되면
 * 스스로 회복하지 못한다. Copilot이 매 갱신마다 github.com을 먼저 로드하는 것과 같은
 * 흐름을 쓰되, **만료를 감지한 다음 한 번만** provider 페이지를 로드해 웹 앱이 자체
 * 토큰 갱신 로직으로 쿠키를 새로 쓰게 한 뒤 다시 about:blank 수집으로 돌아온다.
 *
 * 매 갱신마다 페이지를 로드하지 않으므로 배터리·데이터 비용은 만료 시점에만 발생한다.
 */
object ProviderSessionRevivePolicy {
    /** 이 진단이면 자격 증명이 만료된 것으로 보고 provider 페이지 재로드로 회복을 시도한다. */
    fun isSessionExpired(providerId: ProviderId, errorKind: String?): Boolean {
        val kind = errorKind?.trim().orEmpty()
        if (kind.isEmpty()) return false
        return kind == expiredDiagnosticFor(providerId)
    }

    fun expiredDiagnosticFor(providerId: ProviderId): String? {
        return when (providerId) {
            ProviderId.KIRO -> "kiro_session_expired"
            else -> null
        }
    }

    /** 세션을 되살릴 때 히든 WebView가 한 번 로드할 provider 페이지. */
    fun reviveUrl(providerId: ProviderId): String? {
        return when (providerId) {
            ProviderId.KIRO -> "https://app.kiro.dev/settings/account"
            else -> null
        }
    }

    fun isReviveUrl(providerId: ProviderId, url: String): Boolean {
        val target = reviveUrl(providerId) ?: return false
        val expected = runCatching { URI(target) }.getOrNull() ?: return false
        val actual = runCatching { URI(url) }.getOrNull() ?: return false
        val sameHost = expected.host.orEmpty().lowercase(Locale.US) ==
            actual.host.orEmpty().lowercase(Locale.US)
        return sameHost && expected.path.orEmpty() == actual.path.orEmpty()
    }
}

/**
 * 재활성 대기 상태 저장소. 수집 경로가 서비스(백그라운드)와 컴포저블(전경)로 나뉘어
 * 있어 두 곳이 같은 상태를 봐야 한다.
 */
object ProviderSessionReviveStore {
    private val pending = ConcurrentHashMap.newKeySet<ProviderId>()

    /** 만료 진단을 받았을 때 호출한다. 되살릴 URL이 없는 provider는 무시한다. */
    fun arm(providerId: ProviderId, errorKind: String?): Boolean {
        if (!ProviderSessionRevivePolicy.isSessionExpired(providerId, errorKind)) return false
        if (ProviderSessionRevivePolicy.reviveUrl(providerId) == null) return false
        pending.add(providerId)
        return true
    }

    fun isPending(providerId: ProviderId): Boolean = pending.contains(providerId)

    /**
     * 대기 중이면 되살릴 URL을 돌려주되 대기 상태는 유지한다. 이 값을 여러 번 조회하는
     * 호출부(타임아웃 예산 계산과 잡 생성)가 있어 조회와 소비를 분리해 둔다.
     */
    fun pendingReviveUrl(providerId: ProviderId): String? {
        if (!pending.contains(providerId)) return null
        return ProviderSessionRevivePolicy.reviveUrl(providerId)
    }

    /**
     * 대기 중이면 되살릴 URL을 돌려주고 대기 상태를 해제한다. 해제해 두므로 회복에
     * 실패해도 매 주기마다 페이지를 다시 로드하지 않고, 다음 만료 진단에서 재무장된다.
     */
    fun consumeReviveUrl(providerId: ProviderId): String? {
        if (!pending.remove(providerId)) return null
        return ProviderSessionRevivePolicy.reviveUrl(providerId)
    }

    fun clear(providerId: ProviderId) {
        pending.remove(providerId)
    }

    internal fun clearAllForTest() {
        pending.clear()
    }
}
