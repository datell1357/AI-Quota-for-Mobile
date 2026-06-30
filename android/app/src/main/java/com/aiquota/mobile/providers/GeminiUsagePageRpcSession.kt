package com.aiquota.mobile.providers

object GeminiUsagePageRpcSession {
    data class Params(
        val at: String,
        val fSid: String,
        val bl: String,
        val hl: String,
        val capturedAtMillis: Long
    )
}
