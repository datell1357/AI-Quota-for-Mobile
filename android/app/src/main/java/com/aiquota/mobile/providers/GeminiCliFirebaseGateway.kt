package com.aiquota.mobile.providers

import android.content.Context
import com.google.firebase.appcheck.FirebaseAppCheck
import com.google.firebase.auth.FirebaseAuth
import com.google.firebase.functions.FirebaseFunctions
// import kotlinx.coroutines.tasks.await // 주석 처리된 ensureSignedIn()에서만 쓰임
import org.json.JSONObject

// Gemini CLI 게이트웨이는 비활성 상태다.
//
// 백엔드 Cloud Functions 3개(startGeminiCliOAuth / completeGeminiCliOAuth /
// refreshGeminiCliAccessToken)를 2026-07-28에 삭제했으므로, 이 클래스에서 Functions를
// 호출하는 코드를 전부 주석 처리하고 각 함수는 GATEWAY_DISABLED로 즉시 실패시킨다.
// 앱에서 Gemini provider의 실제 수집은 gemini.google.com/usage WebView 경로를 쓰므로
// 이 게이트웨이가 죽어도 수집에는 영향이 없다. 호출부(GeminiCliLoopbackOAuthActivity,
// GeminiCliOAuthRepository.freshAccessToken)는 모두 runCatching으로 감싸져 있어
// 예외가 사용자 경험을 깨지 않고 실패 진단으로 흡수된다.
//
// 파일과 호출부는 되돌리기 쉽도록 남겨 둔다. 되살리려면 Functions를 다시 배포하고
// 아래 주석만 해제하면 된다.
@Suppress("unused", "UNUSED_PARAMETER")
class GeminiCliFirebaseGateway(
    context: Context,
    private val auth: FirebaseAuth = FirebaseAuth.getInstance(),
    private val appCheck: FirebaseAppCheck = FirebaseAppCheck.getInstance(),
    private val functions: FirebaseFunctions = FirebaseFunctions.getInstance()
) {
    private val appContext = context.applicationContext

    suspend fun startOAuth(): String {
        error(GATEWAY_DISABLED)
        // ensureSignedIn()
        // val result = functions
        //     .callWithAppCheckRetry(appCheck, "startGeminiCliOAuth", emptyMap<String, Any>())
        // val data = result.getData() as? Map<*, *> ?: error("gemini_cli_oauth_response_invalid")
        // return data["authorizationUrl"]?.toString()?.takeIf { it.isNotBlank() }
        //     ?: error("gemini_cli_oauth_url_missing")
    }

    suspend fun completeOAuth(callbackUrl: String): GeminiCliTokenExchangeResult {
        error(GATEWAY_DISABLED)
        // ensureSignedIn()
        // val result = functions
        //     .callWithAppCheckRetry(appCheck, "completeGeminiCliOAuth", mapOf("callbackUrl" to callbackUrl))
        // return GeminiCliTokenExchangeResult.from(result.getData())
    }

    suspend fun refreshAccessToken(refreshToken: String): GeminiCliTokenExchangeResult {
        error(GATEWAY_DISABLED)
        // ensureSignedIn()
        // val result = functions
        //     .callWithAppCheckRetry(
        //         appCheck,
        //         "refreshGeminiCliAccessToken",
        //         mapOf("refreshToken" to refreshToken)
        //     )
        // return GeminiCliTokenExchangeResult.from(result.getData())
    }

    fun applicationContext(): Context = appContext

    // private suspend fun ensureSignedIn() {
    //     if (auth.currentUser != null) return
    //     auth.signInAnonymously().await()
    //     if (auth.currentUser == null) error("firebase_auth_missing")
    // }

    private companion object {
        const val GATEWAY_DISABLED = "gemini_cli_gateway_disabled"
    }
}

data class GeminiCliTokenExchangeResult(
    val ok: Boolean,
    val accessToken: String?,
    val refreshToken: String?,
    val expiresInSeconds: Long?,
    val idToken: String?,
    val scope: String?,
    val tokenType: String?
) {
    fun toJsonObject(): JSONObject {
        return JSONObject()
            .put("access_token", accessToken ?: JSONObject.NULL)
            .put("refresh_token", refreshToken ?: JSONObject.NULL)
            .put("expires_in", expiresInSeconds ?: JSONObject.NULL)
            .put("id_token", idToken ?: JSONObject.NULL)
            .put("scope", scope ?: JSONObject.NULL)
            .put("token_type", tokenType ?: JSONObject.NULL)
    }

    companion object {
        fun from(value: Any?): GeminiCliTokenExchangeResult {
            val data = value as? Map<*, *> ?: error("gemini_cli_oauth_response_invalid")
            return GeminiCliTokenExchangeResult(
                ok = data["ok"] == true,
                accessToken = data["accessToken"]?.toString(),
                refreshToken = data["refreshToken"]?.toString(),
                expiresInSeconds = (data["expiresIn"] as? Number)?.toLong(),
                idToken = data["idToken"]?.toString(),
                scope = data["scope"]?.toString(),
                tokenType = data["tokenType"]?.toString()
            )
        }
    }
}
