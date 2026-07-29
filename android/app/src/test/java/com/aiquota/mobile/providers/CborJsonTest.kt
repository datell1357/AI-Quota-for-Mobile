package com.aiquota.mobile.providers

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

class CborJsonTest {
    @Test
    fun decodesKiroUsageResponseCapturedFromLoggedInSession() {
        val decoded = CborJson.decodeObject(hexToBytes(KIRO_USAGE_RESPONSE_HEX))
        assertNotNull(decoded)
        val json = decoded!!

        // Smithy rpc-v2-cbor는 indefinite-length 맵(0xbf ... 0xff)을 쓴다.
        val subscription = json.getJSONObject("subscriptionInfo")
        assertEquals("KIRO PRO MAX", subscription.getString("subscriptionTitle"))
        assertEquals("Q_DEVELOPER_STANDALONE_PRO_MAX", subscription.getString("type"))
        assertEquals("OVERAGE_CAPABLE", subscription.getString("overageCapability"))

        // tag(1) epoch는 내부 숫자만 남는다.
        assertEquals(1785542400.0, json.getDouble("nextDateReset"), 0.5)

        val breakdown = json.getJSONArray("usageBreakdownList").getJSONObject(0)
        assertEquals("CREDIT", breakdown.getString("resourceType"))
        assertEquals("Credits", breakdown.getString("displayNamePlural"))
        assertEquals(66, breakdown.getInt("currentUsage"))
        assertEquals(66.05, breakdown.getDouble("currentUsageWithPrecision"), 0.001)
        assertEquals(5000, breakdown.getInt("usageLimit"))
        assertEquals(5000.0, breakdown.getDouble("usageLimitWithPrecision"), 0.001)
        assertEquals(10000, breakdown.getInt("overageCap"))
        assertEquals(0.04, breakdown.getDouble("overageRate"), 0.0001)
        assertEquals(0, breakdown.getJSONArray("overageCredits").length())
        assertFalse(json.getJSONObject("overageConfiguration").getBoolean("overageEnabled"))
    }

    @Test
    fun decodesDefiniteLengthContainersNumbersAndSimpleValues() {
        // {"a": 1, "b": [true, false, null], "c": "hi", "d": -2, "e": 1.5}
        val hex = "a5" +
            "6161" + "01" +
            "6162" + "83" + "f5f4f6" +
            "6163" + "62" + "6869" +
            "6164" + "21" +
            "6165" + "fb3ff8000000000000"
        val json = CborJson.decodeObject(hexToBytes(hex))
        assertNotNull(json)
        assertEquals(1, json!!.getInt("a"))
        assertEquals(true, json.getJSONArray("b").getBoolean(0))
        assertEquals(false, json.getJSONArray("b").getBoolean(1))
        assertTrue(json.getJSONArray("b").isNull(2))
        assertEquals("hi", json.getString("c"))
        assertEquals(-2, json.getInt("d"))
        assertEquals(1.5, json.getDouble("e"), 0.0001)
    }

    @Test
    fun decodesIndefiniteLengthArraysTextChunksAndHalfFloats() {
        // {"list": [_ 1, 2], "text": (_ "ab", "cd"), "half": 1.5_f16}
        val hex = "a3" +
            "646c697374" + "9f0102ff" +
            "6474657874" + "7f" + "62" + "6162" + "62" + "6364" + "ff" +
            "6468616c66" + "f93e00"
        val json = CborJson.decodeObject(hexToBytes(hex))
        assertNotNull(json)
        assertEquals(2, json!!.getJSONArray("list").length())
        assertEquals("abcd", json.getString("text"))
        assertEquals(1.5, json.getDouble("half"), 0.0001)
    }

    @Test
    fun returnsNullForTruncatedEmptyOrNonMapPayloads() {
        assertNull(CborJson.decodeObject(hexToBytes("bf6d6e657874")))
        assertNull(CborJson.decodeObject(ByteArray(0)))
        assertNull(CborJson.decodeObject(null))
        // 최상위가 맵이 아니면 decodeObject는 null이지만 decode는 값을 돌려준다.
        assertNull(CborJson.decodeObject(hexToBytes("83010203")))
        assertEquals(3, (CborJson.decode(hexToBytes("83010203")) as org.json.JSONArray).length())
    }

    @Test
    fun mapsByteStringsToHexSoPayloadStaysJsonSafe() {
        // {"b": h'0aff'}
        val json = CborJson.decodeObject(hexToBytes("a1" + "6162" + "42" + "0aff"))
        assertEquals("0aff", json?.getString("b"))
    }

    private fun hexToBytes(hex: String): ByteArray {
        return ByteArray(hex.length / 2) { index ->
            hex.substring(index * 2, index * 2 + 2).toInt(16).toByte()
        }
    }

    companion object {
        /**
         * 2026-07-29에 로그인된 app.kiro.dev 세션에서 실제로 받은
         * GetUserUsageAndLimits 응답(743바이트). userId만 더미로 바꿨고 길이는 같다.
         */
        const val KIRO_USAGE_RESPONSE_HEX: String =
            "bf6d6e657874446174655265736574c1fb41da9b4dc0000000746f766572616765436f6e66696775726174696f6ebf6e" +
                "6f766572616765456e61626c6564f4ff70737562736372697074696f6e496e666fbf716f766572616765436170616269" +
                "6c6974796f4f5645524147455f43415041424c45781c737562736372697074696f6e4d616e6167656d656e7454617267" +
                "6574664d414e41474571737562736372697074696f6e5469746c656c4b49524f2050524f204d41586474797065781e51" +
                "5f444556454c4f5045525f5354414e44414c4f4e455f50524f5f4d415871757067726164654361706162696c69747971" +
                "555047524144455f494e43415041424c45ff727573616765427265616b646f776e4c6973749fbf67626f6e757365739f" +
                "ff6863757272656e6379635553446f63757272656e744f7665726167657300781c63757272656e744f76657261676573" +
                "57697468507265636973696f6efb00000000000000006c63757272656e7455736167651842781963757272656e745573" +
                "61676557697468507265636973696f6efb40508333333333336b646973706c61794e616d656643726564697471646973" +
                "706c61794e616d65506c7572616c67437265646974736d6e657874446174655265736574c1fb41da9b4dc00000006a6f" +
                "766572616765436170192710776f76657261676543617057697468507265636973696f6efb40c38800000000006e6f76" +
                "657261676543686172676573fb00000000000000006e6f766572616765437265646974739fff6b6f7665726167655261" +
                "7465fb3fa47ae147ae147b6c7265736f75726365547970656643524544495464756e69746b494e564f434154494f4e53" +
                "6a75736167654c696d69741913887775736167654c696d697457697468507265636973696f6efb40b3880000000000ff" +
                "ff6875736572496e666fbf667573657249647831642d303030303030303030302e30303030303030302d303030302d30" +
                "3030302d303030302d303030303030303030303030ffff"
    }
}
