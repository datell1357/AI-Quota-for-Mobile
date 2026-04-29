package com.aiusage.mobile.sync

import java.io.BufferedReader
import java.io.InputStreamReader
import java.net.HttpURLConnection
import java.net.URL

data class PairingCodeResponse(
    val code: String,
    val expiresAt: String
) {
    val displayCode: String
        get() = code.filter { it.isDigit() }.chunked(3).joinToString(" ")
}

class AIUsageApiClient(private val baseUrl: String) {
    suspend fun createPairingCode(idToken: String): PairingCodeResponse {
        val body = request("createPairingCode", idToken, "POST")
        val code = Regex("\"code\"\\s*:\\s*\"([0-9]{6})\"").find(body)?.groupValues?.get(1)
            ?: error("PAIRING_CODE_MISSING")
        val expiresAt = Regex("\"expiresAt\"\\s*:\\s*\"([^\"]+)\"").find(body)?.groupValues?.get(1)
            ?: error("PAIRING_EXPIRY_MISSING")
        return PairingCodeResponse(code, expiresAt)
    }

    suspend fun fetchLatestSnapshot(uid: String, deviceId: String, idToken: String): String {
        return request("users/$uid/devices/$deviceId/snapshots/latest", idToken, "GET")
    }

    private fun request(path: String, idToken: String, method: String): String {
        val connection = URL("$baseUrl/$path").openConnection() as HttpURLConnection
        connection.requestMethod = method
        connection.setRequestProperty("Authorization", "Bearer $idToken")
        connection.setRequestProperty("Content-Type", "application/json")
        connection.connectTimeout = 10_000
        connection.readTimeout = 10_000

        val stream = if (connection.responseCode in 200..299) {
            connection.inputStream
        } else {
            connection.errorStream ?: error("HTTP_${connection.responseCode}")
        }

        return BufferedReader(InputStreamReader(stream)).use { it.readText() }
    }
}

