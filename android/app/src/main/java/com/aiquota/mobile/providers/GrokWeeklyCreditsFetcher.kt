package com.aiquota.mobile.providers

import android.webkit.CookieManager
import java.io.DataOutputStream
import java.net.HttpURLConnection
import java.net.URL
import java.nio.ByteBuffer
import java.nio.ByteOrder
import java.time.Instant
import org.json.JSONObject

/**
 * Grok "매주 SuperGrok 한도" 수집.
 *
 * grok.com 설정 → 사용량 화면이 보여주는 주간 소진율은 `/rest/rate-limits`와 다른 경로로 온다.
 * `/rest/rate-limits`는 windowSizeSeconds=7200, 즉 2시간 롤링 한도라 주간 사용량과 무관하다.
 *
 * 이 API는 REST가 아니라 gRPC-Web이다. 2026-08-04 실측으로 확인한 호출 규약은 다음과 같다.
 *   POST https://grok.com/grok_api_v2.GrokBuildBilling/GetGrokCreditsConfig
 *   content-type: application/grpc-web+proto, x-grpc-web: 1
 *   body: 5바이트 빈 프레임(압축 플래그 0 + 길이 0). JSON·Connect 형식은 모두 거부된다.
 *
 * 응답은 protobuf 바이너리다. 필요한 필드만 뽑는다.
 *   f1.f1 (float)      소진율 퍼센트. 화면 표시값과 1:1로 일치함을 실측 확인했다.
 *   f1.f5 (Timestamp)  주기 종료 시각. 구독 시작 시각에 앵커돼 7일마다 리셋된다.
 */
object GrokWeeklyCreditsFetcher {
    const val URL_PATH = "https://grok.com/grok_api_v2.GrokBuildBilling/GetGrokCreditsConfig"

    /** 수집 결과. 실패하면 null을 돌려 기존 수집을 방해하지 않는다. */
    data class WeeklyUsage(val usedPercent: Float, val resetsAt: String?)

    fun fetch(): WeeklyUsage? {
        val body = runCatching { requestBytes() }.getOrNull() ?: return null
        return parse(body)
    }

    private fun requestBytes(): ByteArray? {
        val cookie = CookieManager.getInstance().getCookie(GROK_ORIGIN)?.takeIf { it.isNotBlank() } ?: return null
        val connection = (URL(URL_PATH).openConnection() as HttpURLConnection).apply {
            connectTimeout = NETWORK_TIMEOUT_MS
            readTimeout = NETWORK_TIMEOUT_MS
            requestMethod = "POST"
            setRequestProperty("content-type", "application/grpc-web+proto")
            setRequestProperty("x-grpc-web", "1")
            setRequestProperty("Origin", GROK_ORIGIN)
            setRequestProperty("Referer", "$GROK_ORIGIN/")
            setRequestProperty("User-Agent", ProviderWebViewUserAgent.loginUserAgent())
            setRequestProperty("Cookie", cookie)
            doOutput = true
        }
        // 인자 없는 요청이라 길이 0짜리 빈 프레임만 보낸다.
        DataOutputStream(connection.outputStream).use { it.write(ByteArray(GRPC_FRAME_HEADER_SIZE)) }
        val status = connection.responseCode
        val stream = if (status in 200..299) connection.inputStream else connection.errorStream
        val bytes = stream?.readBytes()
        connection.disconnect()
        return bytes?.takeIf { status in 200..299 && it.size > GRPC_FRAME_HEADER_SIZE }
    }

    /** 테스트에서 실제 응답 바이트를 그대로 넣어 검증할 수 있도록 분리해 둔다. */
    internal fun parse(response: ByteArray): WeeklyUsage? {
        val message = response.copyOfRange(
            GRPC_FRAME_HEADER_SIZE.coerceAtMost(response.size),
            response.size
        )
        val root = firstLengthDelimited(message, FIELD_CONFIG) ?: return null
        val used = floatField(root, FIELD_USED_PERCENT)
        val resetsAt = firstLengthDelimited(root, FIELD_PERIOD_END)
            ?.let { varintField(it, FIELD_TIMESTAMP_SECONDS) }
            ?.let { seconds -> runCatching { Instant.ofEpochSecond(seconds).toString() }.getOrNull() }
        // proto3는 기본값을 직렬화하지 않는다. 소진율이 정확히 0%면 f1.f1이 통째로 빠진 채 온다.
        // 이걸 실패로 보면 주간 한도가 리셋된 직후부터 사용량이 붙을 때까지 "사용할 수 없음"이
        // 된다(2026-08-17 실측: 8/15 리셋 후 필드 없음, 8/4에는 32%로 존재).
        //
        // 다만 아무 정보도 없는 응답까지 0%로 읽으면 구독이 없는 계정을 0% 사용 중으로 잘못
        // 표시한다. 그래서 주기 종료 시각이 함께 있을 때만 0%로 인정한다.
        if (used == null && resetsAt == null) return null
        return WeeklyUsage(usedPercent = used ?: 0f, resetsAt = resetsAt)
    }

    private fun firstLengthDelimited(buffer: ByteArray, fieldNumber: Int): ByteArray? {
        forEachField(buffer) { number, wireType, reader ->
            if (number == fieldNumber && wireType == WIRE_LENGTH_DELIMITED) return reader() as ByteArray
        }
        return null
    }

    private fun floatField(buffer: ByteArray, fieldNumber: Int): Float? {
        forEachField(buffer) { number, wireType, reader ->
            if (number == fieldNumber && wireType == WIRE_FIXED32) return reader() as Float
        }
        return null
    }

    private fun varintField(buffer: ByteArray, fieldNumber: Int): Long? {
        forEachField(buffer) { number, wireType, reader ->
            if (number == fieldNumber && wireType == WIRE_VARINT) return reader() as Long
        }
        return null
    }

    /**
     * protobuf 필드를 순회한다. [onField]는 값이 필요할 때만 [reader]를 호출하면 되고,
     * 호출하지 않으면 순회가 알아서 건너뛴다.
     */
    private inline fun forEachField(
        buffer: ByteArray,
        onField: (number: Int, wireType: Int, reader: () -> Any) -> Unit
    ) {
        var index = 0
        while (index < buffer.size) {
            val (key, afterKey) = readVarint(buffer, index) ?: return
            if (key == 0L) return
            val number = (key ushr 3).toInt()
            val wireType = (key and 7L).toInt()
            var cursor = afterKey
            when (wireType) {
                WIRE_VARINT -> {
                    val (value, next) = readVarint(buffer, cursor) ?: return
                    cursor = next
                    onField(number, wireType) { value }
                }
                WIRE_FIXED64 -> {
                    if (cursor + 8 > buffer.size) return
                    val start = cursor
                    cursor += 8
                    onField(number, wireType) {
                        ByteBuffer.wrap(buffer, start, 8).order(ByteOrder.LITTLE_ENDIAN).double
                    }
                }
                WIRE_LENGTH_DELIMITED -> {
                    val (length, afterLength) = readVarint(buffer, cursor) ?: return
                    val start = afterLength
                    val end = start + length.toInt()
                    if (length < 0 || end > buffer.size) return
                    cursor = end
                    onField(number, wireType) { buffer.copyOfRange(start, end) }
                }
                WIRE_FIXED32 -> {
                    if (cursor + 4 > buffer.size) return
                    val start = cursor
                    cursor += 4
                    onField(number, wireType) {
                        ByteBuffer.wrap(buffer, start, 4).order(ByteOrder.LITTLE_ENDIAN).float
                    }
                }
                else -> return
            }
            index = cursor
        }
    }

    private fun readVarint(buffer: ByteArray, offset: Int): Pair<Long, Int>? {
        var result = 0L
        var shift = 0
        var index = offset
        while (index < buffer.size) {
            val byte = buffer[index].toInt() and 0xFF
            result = result or ((byte and 0x7F).toLong() shl shift)
            index++
            if (byte and 0x80 == 0) return result to index
            shift += 7
            if (shift > 63) return null
        }
        return null
    }

    private const val GROK_ORIGIN = "https://grok.com"
    private const val NETWORK_TIMEOUT_MS = 10_000
    private const val GRPC_FRAME_HEADER_SIZE = 5
    private const val WIRE_VARINT = 0
    private const val WIRE_FIXED64 = 1
    private const val WIRE_LENGTH_DELIMITED = 2
    private const val WIRE_FIXED32 = 5
    private const val FIELD_CONFIG = 1
    private const val FIELD_USED_PERCENT = 1
    private const val FIELD_PERIOD_END = 5
    private const val FIELD_TIMESTAMP_SECONDS = 1
}
