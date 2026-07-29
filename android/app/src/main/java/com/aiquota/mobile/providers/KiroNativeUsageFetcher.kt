package com.aiquota.mobile.providers

import android.webkit.CookieManager
import java.net.HttpURLConnection
import java.net.URI
import java.net.URL
import org.json.JSONObject

/**
 * app.kiro.dev의 웹 포털 BFF에서 사용량을 가져온다.
 *
 * 로그인된 세션 쿠키만으로 통과한다 — 웹 앱이 평소 붙이는 `Authorization: Bearer`와
 * `x-csrf-token`은 이 읽기 오퍼레이션에 필수가 아니다(실계정으로 확인).
 * 응답은 Smithy `rpc-v2-cbor`이므로 [CborJson]으로 디코딩해 다른 provider와 같은
 * JSON 래퍼로 되돌려준다.
 */
object KiroNativeUsageFetcher {
    fun fetchJson(url: String, body: String?): String {
        val endpoint = kiroEndpoint(url)
            ?: return JSONObject().put("ok", false).put("error", "blocked_kiro_endpoint").toString()
        val cookieHeader = kiroCookieHeader()
            ?: return JSONObject().put("ok", false).put("endpoint", endpoint).put("error", "missing_kiro_cookie").toString()
        return runCatching {
            val connection = (URL(url).openConnection() as HttpURLConnection).apply {
                connectTimeout = NETWORK_TIMEOUT_MS
                readTimeout = NETWORK_TIMEOUT_MS
                instanceFollowRedirects = false
                requestMethod = "POST"
                setRequestProperty("Accept", CBOR_CONTENT_TYPE)
                setRequestProperty("Content-Type", CBOR_CONTENT_TYPE)
                setRequestProperty("smithy-protocol", SMITHY_PROTOCOL)
                setRequestProperty("User-Agent", ProviderWebViewUserAgent.loginUserAgent())
                setRequestProperty("Origin", KIRO_ORIGIN)
                setRequestProperty("Referer", "$KIRO_ORIGIN/settings/account")
                setRequestProperty("Cookie", cookieHeader)
                doOutput = true
                outputStream.use { it.write(requestBody(body)) }
            }
            val status = connection.responseCode
            val stream = if (status in 200..299) connection.inputStream else connection.errorStream
            val raw = stream?.use { it.readBytes() } ?: ByteArray(0)
            connection.disconnect()
            val decoded = CborJson.decodeObject(raw)
            JSONObject()
                .put("ok", status in 200..299 && decoded != null)
                .put("status", status)
                .put("endpoint", endpoint)
                // 세션 만료(401/403/423)는 파싱 실패나 네트워크 오류와 구분해야 한다.
                // 만료 시에만 세션을 되살리는 폴백을 걸 수 있어야 하기 때문이다.
                .put("authFailed", status == 401 || status == 403 || status == 423)
                .put(
                    "json",
                    decoded ?: JSONObject().put("decodeFailed", true).put("byteCount", raw.size)
                )
                .toString()
        }.getOrElse { error ->
            JSONObject()
                .put("ok", false)
                .put("endpoint", endpoint)
                .put("error", error.javaClass.simpleName)
                .toString()
        }
    }

    /** 빈 CBOR 맵(0xA0)이 기본 요청 본문이다. 호출자가 hex를 주면 그대로 보낸다. */
    internal fun requestBody(body: String?): ByteArray {
        val trimmed = body?.trim().orEmpty()
        if (trimmed.isEmpty()) return EMPTY_CBOR_MAP
        if (!trimmed.matches(HEX_BODY)) return EMPTY_CBOR_MAP
        return ByteArray(trimmed.length / 2) { index ->
            trimmed.substring(index * 2, index * 2 + 2).toInt(16).toByte()
        }
    }

    private fun kiroCookieHeader(): String? {
        val values = listOf(
            CookieManager.getInstance().getCookie(KIRO_ORIGIN),
            CookieManager.getInstance().getCookie("https://kiro.dev")
        ).mapNotNull { it?.takeIf(String::isNotBlank) }
        val header = values.joinToString("; ").takeIf { it.isNotBlank() } ?: return null
        return header.takeIf { candidate ->
            AUTH_COOKIE_HINTS.any { hint -> candidate.contains(hint, ignoreCase = true) }
        }
    }

    private fun kiroEndpoint(url: String): String? {
        val uri = runCatching { URI(url) }.getOrNull() ?: return null
        val host = uri.host.orEmpty().lowercase()
        val path = uri.path.orEmpty()
        val allowed = when (host) {
            "app.kiro.dev" -> path == USAGE_OPERATION_PATH
            else -> false
        }
        return if (allowed) path else null
    }

    internal const val USAGE_OPERATION_PATH =
        "/service/KiroWebPortalService/operation/GetUserUsageAndLimits"
    private const val KIRO_ORIGIN = "https://app.kiro.dev"
    private const val CBOR_CONTENT_TYPE = "application/cbor"
    private const val SMITHY_PROTOCOL = "rpc-v2-cbor"
    private const val NETWORK_TIMEOUT_MS = 10_000
    private val EMPTY_CBOR_MAP = byteArrayOf(0xa0.toByte())
    private val HEX_BODY = Regex("^(?:[0-9a-fA-F]{2})+$")
    /**
     * Android WebView 세션에서 app.kiro.dev가 심는 인증 쿠키는 httpOnly·persistent인
     * `AccessToken`/`RefreshToken`이다(로그인 시각 기준 7일 만료). 데스크톱 브라우저에서
     * 관측된 `aws-token`/`awsd2c-token` 계열도 함께 받아들인다.
     */
    private val AUTH_COOKIE_HINTS = listOf("AccessToken", "RefreshToken", "aws-token", "awsd2c-token")
}
