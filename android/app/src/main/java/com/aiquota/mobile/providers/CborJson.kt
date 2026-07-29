package com.aiquota.mobile.providers

import org.json.JSONArray
import org.json.JSONObject

/**
 * Smithy `rpc-v2-cbor` 응답을 org.json 값으로 옮기는 최소 CBOR 디코더.
 *
 * app.kiro.dev의 KiroWebPortalService는 JSON 프로토콜을 받지 않고 CBOR만 응답한다.
 * 앱의 다른 provider는 전부 JSON을 쓰므로, 그 파이프라인에 그대로 흘려보내기 위해
 * 필요한 major type만 지원한다.
 *
 * 지원: unsigned/negative integer, byte string(hex 문자열로 변환), text string,
 * array, map, tag(내부 값만 남긴다 — tag 1 epoch timestamp가 이 경로로 들어온다),
 * false/true/null/undefined, half/single/double float, indefinite-length 컨테이너와 문자열.
 *
 * 미지원 입력이나 손상된 바이트를 만나면 예외 대신 null을 돌려준다.
 */
internal object CborJson {
    fun decodeObject(bytes: ByteArray?): JSONObject? {
        return decode(bytes) as? JSONObject
    }

    fun decode(bytes: ByteArray?): Any? {
        if (bytes == null || bytes.isEmpty() || bytes.size > MAX_INPUT_BYTES) return null
        val reader = Reader(bytes)
        val value = runCatching { reader.readValue(0) }.getOrNull() ?: return null
        return value.takeUnless { it === BREAK }
    }

    private class Reader(private val bytes: ByteArray) {
        private var pos = 0

        fun readValue(depth: Int): Any? {
            if (depth > MAX_DEPTH) throw IllegalStateException("cbor_depth_exceeded")
            val initial = readByte()
            val major = (initial shr 5) and 0x07
            val minor = initial and 0x1f
            return when (major) {
                0 -> numberOf(readUnsigned(minor) ?: throw indefinite())
                1 -> {
                    val raw = readUnsigned(minor) ?: throw indefinite()
                    numberOf(-1L - raw)
                }
                2 -> readByteString(minor)
                3 -> readTextString(minor)
                4 -> readArray(minor, depth)
                5 -> readMap(minor, depth)
                6 -> {
                    readUnsigned(minor) ?: throw indefinite()
                    // tag는 의미만 버리고 내부 값을 그대로 노출한다.
                    readValue(depth + 1)
                }
                else -> readSimple(minor)
            }
        }

        private fun readArray(minor: Int, depth: Int): JSONArray {
            val array = JSONArray()
            val declared = readUnsigned(minor)
            if (declared == null) {
                while (true) {
                    val item = readValue(depth + 1)
                    if (item === BREAK) break
                    array.put(item ?: JSONObject.NULL)
                    guardItemCount(array.length())
                }
                return array
            }
            guardItemCount(declared)
            for (index in 0 until declared) {
                val item = readValue(depth + 1)
                if (item === BREAK) throw IllegalStateException("cbor_unexpected_break")
                array.put(item ?: JSONObject.NULL)
            }
            return array
        }

        private fun readMap(minor: Int, depth: Int): JSONObject {
            val map = JSONObject()
            val declared = readUnsigned(minor)
            if (declared == null) {
                while (true) {
                    val key = readValue(depth + 1)
                    if (key === BREAK) break
                    val value = readValue(depth + 1)
                    if (value === BREAK) throw IllegalStateException("cbor_unexpected_break")
                    map.put(keyOf(key), value ?: JSONObject.NULL)
                    guardItemCount(map.length())
                }
                return map
            }
            guardItemCount(declared)
            for (index in 0 until declared) {
                val key = readValue(depth + 1)
                val value = readValue(depth + 1)
                if (key === BREAK || value === BREAK) throw IllegalStateException("cbor_unexpected_break")
                map.put(keyOf(key), value ?: JSONObject.NULL)
            }
            return map
        }

        private fun readTextString(minor: Int): String {
            val declared = readUnsigned(minor)
            if (declared != null) return String(readBytes(declared.toInt()), Charsets.UTF_8)
            val builder = StringBuilder()
            while (true) {
                val chunkInitial = readByte()
                if (chunkInitial == BREAK_BYTE) break
                if ((chunkInitial shr 5) and 0x07 != 3) throw IllegalStateException("cbor_bad_text_chunk")
                val chunkLength = readUnsigned(chunkInitial and 0x1f) ?: throw indefinite()
                builder.append(String(readBytes(chunkLength.toInt()), Charsets.UTF_8))
                guardItemCount(builder.length.toLong())
            }
            return builder.toString()
        }

        private fun readByteString(minor: Int): String {
            val declared = readUnsigned(minor)
            if (declared != null) return readBytes(declared.toInt()).toHex()
            val builder = StringBuilder()
            while (true) {
                val chunkInitial = readByte()
                if (chunkInitial == BREAK_BYTE) break
                if ((chunkInitial shr 5) and 0x07 != 2) throw IllegalStateException("cbor_bad_bytes_chunk")
                val chunkLength = readUnsigned(chunkInitial and 0x1f) ?: throw indefinite()
                builder.append(readBytes(chunkLength.toInt()).toHex())
                guardItemCount(builder.length.toLong())
            }
            return builder.toString()
        }

        private fun readSimple(minor: Int): Any? {
            return when (minor) {
                20 -> false
                21 -> true
                22, 23 -> null
                25 -> halfFloat(readBytes(2))
                26 -> Float.fromBits(readUnsignedBits(4).toInt()).toDouble()
                27 -> Double.fromBits(readUnsignedBits(8))
                31 -> BREAK
                else -> null
            }
        }

        private fun readUnsigned(minor: Int): Long? {
            return when {
                minor < 24 -> minor.toLong()
                minor == 24 -> readUnsignedBits(1)
                minor == 25 -> readUnsignedBits(2)
                minor == 26 -> readUnsignedBits(4)
                minor == 27 -> readUnsignedBits(8)
                minor == 31 -> null
                else -> throw IllegalStateException("cbor_reserved_minor")
            }
        }

        private fun readUnsignedBits(count: Int): Long {
            var value = 0L
            repeat(count) { value = (value shl 8) or readByte().toLong() }
            return value
        }

        private fun readByte(): Int {
            if (pos >= bytes.size) throw IllegalStateException("cbor_truncated")
            return bytes[pos++].toInt() and 0xff
        }

        private fun readBytes(count: Int): ByteArray {
            if (count < 0 || pos + count > bytes.size) throw IllegalStateException("cbor_truncated")
            val slice = bytes.copyOfRange(pos, pos + count)
            pos += count
            return slice
        }

        private fun indefinite(): IllegalStateException =
            IllegalStateException("cbor_unexpected_indefinite_length")
    }

    private fun guardItemCount(count: Long) {
        if (count > MAX_ITEMS) throw IllegalStateException("cbor_too_many_items")
    }

    private fun guardItemCount(count: Int) = guardItemCount(count.toLong())

    private fun keyOf(value: Any?): String {
        return when (value) {
            null -> "null"
            is String -> value
            else -> value.toString()
        }
    }

    private fun numberOf(value: Long): Any {
        return if (value in Int.MIN_VALUE.toLong()..Int.MAX_VALUE.toLong()) value.toInt() else value
    }

    private fun halfFloat(raw: ByteArray): Double {
        val bits = ((raw[0].toInt() and 0xff) shl 8) or (raw[1].toInt() and 0xff)
        val sign = if (bits and 0x8000 != 0) -1.0 else 1.0
        val exponent = (bits shr 10) and 0x1f
        val mantissa = bits and 0x03ff
        return when (exponent) {
            0 -> sign * mantissa * TWO_POW_MINUS_24
            0x1f -> if (mantissa == 0) sign * Double.POSITIVE_INFINITY else Double.NaN
            else -> sign * Math.pow(2.0, (exponent - 15).toDouble()) * (1.0 + mantissa / 1024.0)
        }
    }

    private fun ByteArray.toHex(): String {
        val builder = StringBuilder(size * 2)
        forEach { builder.append(String.format("%02x", it)) }
        return builder.toString()
    }

    private val BREAK = Any()
    private const val BREAK_BYTE = 0xff
    private const val MAX_DEPTH = 32
    private const val MAX_ITEMS = 4_096L
    private const val MAX_INPUT_BYTES = 512 * 1024
    private const val TWO_POW_MINUS_24 = 5.9604644775390625E-8
}
