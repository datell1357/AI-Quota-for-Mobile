package com.aiquota.mobile.providers

import android.content.Context
import android.content.Intent
import android.content.res.ColorStateList
import android.os.Bundle
import android.text.InputType
import android.view.Gravity
import android.view.View
import android.view.ViewGroup
import android.widget.EditText
import android.widget.ImageView
import android.widget.LinearLayout
import android.widget.ScrollView
import android.widget.TextView
import androidx.activity.ComponentActivity
import androidx.activity.result.contract.ActivityResultContracts
import androidx.lifecycle.lifecycleScope
import com.aiquota.mobile.BuildConfig
import com.aiquota.mobile.R
import com.aiquota.mobile.accounts.AccountKey
import com.aiquota.mobile.accounts.ProviderAccountId
import com.aiquota.mobile.accounts.ProviderAccountIdStorageCodec
import com.aiquota.mobile.local.ThemePreferencesRepository
import com.aiquota.mobile.local.LocalUsageRepository
import com.aiquota.mobile.local.ProviderId
import com.aiquota.mobile.local.ProviderUsageSnapshot
import com.aiquota.mobile.localization.withAppLanguageForDeviceLanguage
import com.aiquota.mobile.ui.appLayoutMetrics
import com.aiquota.mobile.ui.provider.providerIconRes
import com.aiquota.mobile.widget.WidgetConfigureStyle
import com.aiquota.mobile.widget.applyWidgetConfigureText
import com.aiquota.mobile.widget.applyWidgetConfigureWindow
import com.aiquota.mobile.widget.widgetConfigureDp
import com.aiquota.mobile.widget.widgetConfigureRoundedBackground
import com.aiquota.mobile.widget.widgetConfigureStatusBarInsetPx
import com.aiquota.mobile.widget.widgetConfigureStyle
import kotlinx.coroutines.launch
import android.widget.FrameLayout
import com.aiquota.mobile.ui.ads.ActivityTopBanner
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.CancellationException
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.SupervisorJob
import kotlinx.coroutines.cancel
import kotlinx.coroutines.withContext
import java.util.UUID

internal suspend fun runGlmWebOAuthStartSequence(
    clearStaleSession: suspend () -> Unit,
    selectWebOAuthMode: () -> Unit,
    openLogin: () -> Unit
) {
    clearStaleSession()
    selectWebOAuthMode()
    openLogin()
}

class GlmApiKeyActivity : ComponentActivity() {
    private lateinit var apiKeyInput: EditText
    private lateinit var statusText: TextView
    private lateinit var saveButton: TextView
    private lateinit var webOAuthButton: TextView
    private lateinit var topBanner: ActivityTopBanner
    private val activityScope = CoroutineScope(SupervisorJob() + Dispatchers.Main.immediate)
    private var exactLogin: ExactSingleAccountLogin? = null
    private var finished = false
    private var webLoginNonce: String? = null
    private val webLoginLauncher = registerForActivityResult(ActivityResultContracts.StartActivityForResult()) { result ->
        val session = exactLogin ?: return@registerForActivityResult
        val nonce = webLoginNonce ?: return@registerForActivityResult
        webLoginNonce = null
        if (!session.isCurrent()) {
            finish()
            return@registerForActivityResult
        }
        val loginResult = if (result.resultCode == RESULT_OK) {
            GlmExactLoginRelay.consumeResult(result.data, session.binding.accountId, nonce)
        } else null
        if (loginResult == null) {
            statusText.text = getString(R.string.glm_connection_status_choose)
            setActionControlsEnabled(true)
            return@registerForActivityResult
        }
        completeExactLogin(loginResult.snapshot) {
            GlmUsageRepository(applicationContext).saveAuthenticatedWebSession(
                loginResult.cookieHeader, loginResult.requestHeaders,
            )
        }
    }

    override fun attachBaseContext(newBase: Context) {
        super.attachBaseContext(newBase.withAppLanguageForDeviceLanguage())
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        if (BuildConfig.MULTI_ACCOUNT_ENABLED) {
            exactLogin = ExactSingleAccountLogin.open(this, intent, savedInstanceState)
            if (exactLogin?.binding?.accountId?.providerId != ProviderId.GLM) {
                finish()
                return
            }
            webLoginNonce = savedInstanceState?.getString(STATE_WEB_LOGIN_NONCE)
        }
        title = getString(R.string.glm_connection_title)
        // 이 화면도 전면을 덮으므로 상단 배너를 유지한다.
        topBanner = ActivityTopBanner(this)
        setContentView(createContentView())
        if (webLoginNonce != null) setActionControlsEnabled(false)
    }

    private fun createContentView(): View {
        val style = widgetConfigureStyle(ThemePreferencesRepository(this).currentTheme())
        applyWidgetConfigureWindow(style)
        val layoutMetrics = appLayoutMetrics(
            screenWidthDp = resources.configuration.screenWidthDp,
            screenHeightDp = resources.configuration.screenHeightDp
        )
        val horizontalPadding = layoutMetrics.contentHorizontalPaddingDp.dp()
        val verticalPadding = layoutMetrics.contentVerticalPaddingDp.dp()

        apiKeyInput = EditText(this).apply {
            hint = getString(R.string.glm_connection_api_key_hint)
            inputType = InputType.TYPE_CLASS_TEXT or InputType.TYPE_TEXT_VARIATION_PASSWORD
            setSingleLine(true)
            textSize = 15f
            setTextColor(style.textColor)
            setHintTextColor(style.mutedTextColor)
            background = widgetConfigureRoundedBackground(
                fillColor = style.backgroundColor,
                strokeColor = style.borderColor,
                cornerRadiusDp = style.rowCornerRadiusDp
            )
            backgroundTintList = ColorStateList.valueOf(style.backgroundColor)
            setPadding(14.dp(), 0, 14.dp(), 0)
        }
        apiKeyInput.visibility = View.GONE
        statusText = TextView(this).apply {
            text = getString(R.string.glm_connection_status_choose)
            applyWidgetConfigureText(style, textSizeSp = 13f, muted = true)
        }
        webOAuthButton = themedAction(
            text = getString(R.string.glm_connection_web_oauth),
            style = style,
            primary = true,
            onClick = ::openWebOAuth
        )
        saveButton = themedAction(
            text = getString(R.string.glm_connection_api_key_action),
            style = style,
            primary = false,
            onClick = ::showApiKeyEntry
        )
        val cancelButton = themedAction(
            text = getString(R.string.glm_connection_cancel),
            style = style,
            primary = false,
            onClick = ::finish
        )

        val card = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            background = widgetConfigureRoundedBackground(
                fillColor = style.cardColor,
                strokeColor = style.borderColor,
                cornerRadiusDp = style.rowCornerRadiusDp
            )
            setPadding(18.dp(), 18.dp(), 18.dp(), 18.dp())
            addView(header(style), matchWrapParams())
            addView(statusText, matchWrapParams(topMarginDp = 14))
            addView(webOAuthButton, matchWrapParams(topMarginDp = 10))
            addView(apiKeyInput, matchFixedHeightParams(heightDp = 52, topMarginDp = 14))
            addView(saveButton, matchWrapParams(topMarginDp = 10))
            addView(cancelButton, matchWrapParams(topMarginDp = 10))
        }

        val root = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            gravity = Gravity.CENTER_VERTICAL
            setBackgroundColor(style.backgroundColor)
            setPadding(
                horizontalPadding,
                verticalPadding + widgetConfigureStatusBarInsetPx(),
                horizontalPadding,
                verticalPadding
            )
            addView(card, matchWrapParams())
        }

        val scroller = ScrollView(this).apply {
            setBackgroundColor(style.backgroundColor)
            isFillViewport = true
            addView(
                root,
                ViewGroup.LayoutParams(
                    ViewGroup.LayoutParams.MATCH_PARENT,
                    ViewGroup.LayoutParams.MATCH_PARENT
                )
            )
        }
        return FrameLayout(this).apply {
            setBackgroundColor(style.backgroundColor)
            addView(
                scroller,
                FrameLayout.LayoutParams(
                    ViewGroup.LayoutParams.MATCH_PARENT,
                    ViewGroup.LayoutParams.MATCH_PARENT
                ).apply { topMargin = topBanner.heightPx }
            )
            topBanner.attachTo(this, activityScope)
        }
    }

    override fun onResume() {
        super.onResume()
        if (::topBanner.isInitialized) topBanner.resume()
    }

    override fun onPause() {
        if (::topBanner.isInitialized) topBanner.pause()
        super.onPause()
    }

    override fun onDestroy() {
        if (::topBanner.isInitialized) topBanner.destroy()
        activityScope.cancel()
        if (!finished && !isChangingConfigurations) exactLogin?.cancel()
        exactLogin?.close()
        super.onDestroy()
    }

    override fun onSaveInstanceState(outState: Bundle) {
        exactLogin?.saveState(outState)
        webLoginNonce?.let { outState.putString(STATE_WEB_LOGIN_NONCE, it) }
        super.onSaveInstanceState(outState)
    }

    private fun header(style: WidgetConfigureStyle): LinearLayout {
        return LinearLayout(this).apply {
            orientation = LinearLayout.HORIZONTAL
            gravity = Gravity.CENTER_VERTICAL
            addView(
                ImageView(this@GlmApiKeyActivity).apply {
                    setImageResource(providerIconRes(ProviderId.GLM))
                    scaleType = ImageView.ScaleType.FIT_CENTER
                    contentDescription = getString(R.string.glm_connection_title)
                },
                LinearLayout.LayoutParams(48.dp(), 48.dp())
            )
            addView(
                LinearLayout(this@GlmApiKeyActivity).apply {
                    orientation = LinearLayout.VERTICAL
                    addView(
                        TextView(this@GlmApiKeyActivity).apply {
                            text = getString(R.string.glm_connection_title)
                            applyWidgetConfigureText(style, textSizeSp = 22f, bold = true)
                        },
                        matchWrapParams()
                    )
                    addView(
                        TextView(this@GlmApiKeyActivity).apply {
                            text = getString(R.string.glm_connection_subtitle)
                            applyWidgetConfigureText(style, textSizeSp = 13f, muted = true)
                        },
                        matchWrapParams(topMarginDp = 4)
                    )
                },
                LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f).apply {
                    marginStart = 14.dp()
                }
            )
        }
    }

    private fun themedAction(
        text: String,
        style: WidgetConfigureStyle,
        primary: Boolean,
        onClick: () -> Unit
    ): TextView {
        return TextView(this).apply {
            this.text = text
            gravity = Gravity.CENTER
            isClickable = true
            isFocusable = true
            minHeight = 52.dp()
            setPadding(16.dp(), 14.dp(), 16.dp(), 14.dp())
            applyWidgetConfigureText(style, textSizeSp = 15f, bold = true)
            if (primary) {
                setTextColor(style.primaryButtonTextColor)
                background = widgetConfigureRoundedBackground(
                    fillColor = style.accentColor,
                    strokeColor = style.accentColor,
                    cornerRadiusDp = style.buttonCornerRadiusDp
                )
            } else {
                setTextColor(style.textColor)
                background = widgetConfigureRoundedBackground(
                    fillColor = style.backgroundColor,
                    strokeColor = style.borderColor,
                    cornerRadiusDp = style.buttonCornerRadiusDp
                )
            }
            setOnClickListener { onClick() }
        }
    }

    private fun openWebOAuth() {
        setActionControlsEnabled(false)
        statusText.text = getString(R.string.glm_connection_status_opening)
        lifecycleScope.launch {
            val result = runCatching {
                runGlmWebOAuthStartSequence(
                    clearStaleSession = {
                        ProviderWebSessionCleaner.clearProviderWebSessionAndWait(applicationContext, ProviderId.GLM)
                    },
                    selectWebOAuthMode = {
                        check(exactLogin?.isCurrent() != false)
                        GlmUsageRepository(applicationContext).useWebOAuth()
                    },
                    openLogin = {
                        val session = exactLogin
                        if (session != null) {
                            val nonce = UUID.randomUUID().toString()
                            webLoginNonce = nonce
                            webLoginLauncher.launch(
                                GlmExactLoginRelay.launchIntent(this@GlmApiKeyActivity, session.binding.accountId, nonce)
                            )
                        } else {
                            startActivity(WebLoginActivity.createIntent(
                                this@GlmApiKeyActivity, ProviderId.GLM, GlmProviderUrls.WEB_LOGIN_URL
                            ))
                        }
                    }
                )
            }
            result.onSuccess {
                if (exactLogin == null) finish()
            }.onFailure { error ->
                if (error is CancellationException) throw error
                if (isFinishing || isDestroyed) return@onFailure
                webLoginNonce = null
                if (exactLogin?.isCurrent() == false) {
                    finish()
                    return@onFailure
                }
                val repository = LocalUsageRepository(applicationContext)
                repository.failKeepingPrevious(
                    ProviderId.GLM,
                    getString(R.string.glm_connection_status_open_failed)
                )
                UsageSurfaceRefresher.refresh(applicationContext, repository)
                statusText.text = getString(R.string.glm_connection_status_open_failed)
                setActionControlsEnabled(true)
            }
        }
    }

    private fun showApiKeyEntry() {
        apiKeyInput.visibility = View.VISIBLE
        statusText.text = getString(R.string.glm_connection_status_api_key_prompt)
        saveButton.setOnClickListener { saveAndCollect() }
        apiKeyInput.requestFocus()
    }

    private fun saveAndCollect() {
        val apiKey = apiKeyInput.text?.toString()?.trim().orEmpty()
        if (apiKey.isBlank()) {
            statusText.text = getString(R.string.glm_connection_status_api_key_required)
            return
        }
        setActionControlsEnabled(false)
        statusText.text = getString(R.string.glm_connection_status_collecting)
        val appContext = applicationContext
        if (exactLogin == null) {
            Thread {
                val glmRepository = GlmUsageRepository(appContext)
                glmRepository.saveApiKey(apiKey)
                LocalUsageRepository(appContext).markCollecting(ProviderId.GLM)
                UsageSurfaceRefresher.refresh(appContext, LocalUsageRepository(appContext))
                val result = glmRepository.fetchUsagePayloadFromStoredCredential()
                runOnUiThread { handleResult(result) }
            }.start()
            return
        }
        lifecycleScope.launch {
            val glmRepository = GlmUsageRepository(appContext)
            val result = withContext(Dispatchers.IO) {
                GlmUsageFetcher.fetchUsagePayload(apiKey)
            }
            if (exactLogin?.isCurrent() == false) {
                finish()
                return@launch
            }
            if (exactLogin != null && result.payload != null) {
                val snapshot = ProviderUsageNormalizer.normalize(
                    ProviderId.GLM, result.payload, ProviderPayloadSource.PROVIDER_API
                ) ?: ProviderUsageSnapshot.connectedWithoutUsage(
                    ProviderId.GLM, getString(R.string.glm_connection_status_payload_unavailable, result.diagnostic)
                )
                completeExactLogin(snapshot) { glmRepository.saveApiKey(apiKey); true }
            } else {
                handleResult(result)
            }
        }
    }

    private fun completeExactLogin(snapshot: ProviderUsageSnapshot, persistCredential: () -> Boolean) {
        if (exactLogin?.complete(snapshot, persistCredential) == true) {
            finished = true
            val repository = LocalUsageRepository(applicationContext)
            repository.saveSnapshot(snapshot)
            UsageSurfaceRefresher.refresh(applicationContext, repository)
        }
        finish()
    }

    private fun handleResult(result: GlmUsageResult) {
        val appContext = applicationContext
        when {
            result.payload != null -> {
                ProviderUsageCollectionService.start(
                    appContext,
                    ProviderId.GLM,
                    ProviderUsageCollectionService.SOURCE_PAYLOAD,
                    result.payload
                )
                finish()
            }
            result.requiresAuth -> {
                if (exactLogin == null) GlmUsageRepository(appContext).clear()
                LocalUsageRepository(appContext).markSessionExpired(
                    ProviderId.GLM,
                    getString(R.string.glm_connection_status_invalid_key)
                )
                UsageSurfaceRefresher.refresh(appContext, LocalUsageRepository(appContext))
                if (!isFinishing && !isDestroyed) {
                    statusText.text = getString(R.string.glm_connection_status_invalid_key)
                    setActionControlsEnabled(true)
                }
            }
            else -> {
                val message = getString(
                    R.string.glm_connection_status_payload_unavailable,
                    result.diagnostic
                )
                LocalUsageRepository(appContext).failKeepingPrevious(
                    ProviderId.GLM,
                    message
                )
                UsageSurfaceRefresher.refresh(appContext, LocalUsageRepository(appContext))
                if (!isFinishing && !isDestroyed) {
                    statusText.text = message
                    setActionControlsEnabled(true)
                }
            }
        }
    }

    private fun setActionControlsEnabled(enabled: Boolean) {
        webOAuthButton.isEnabled = enabled
        saveButton.isEnabled = enabled
        apiKeyInput.isEnabled = enabled
        webOAuthButton.alpha = if (enabled) 1f else 0.55f
        saveButton.alpha = if (enabled) 1f else 0.55f
        apiKeyInput.alpha = if (enabled) 1f else 0.55f
    }

    private fun matchWrapParams(topMarginDp: Int = 0): LinearLayout.LayoutParams {
        return LinearLayout.LayoutParams(
            ViewGroup.LayoutParams.MATCH_PARENT,
            ViewGroup.LayoutParams.WRAP_CONTENT
        ).apply {
            topMargin = topMarginDp.dp()
        }
    }

    private fun matchFixedHeightParams(
        heightDp: Int,
        topMarginDp: Int = 0
    ): LinearLayout.LayoutParams {
        return LinearLayout.LayoutParams(
            ViewGroup.LayoutParams.MATCH_PARENT,
            heightDp.dp()
        ).apply {
            topMargin = topMarginDp.dp()
        }
    }

    private fun Int.dp(): Int {
        return widgetConfigureDp(this@GlmApiKeyActivity)
    }

    companion object {
        private const val STATE_WEB_LOGIN_NONCE = "glm.webLoginNonce"

        fun createIntent(
            context: Context,
            accountId: ProviderAccountId = ProviderAccountId(ProviderId.GLM, AccountKey.reservedDefault()),
        ): Intent {
            require(accountId.providerId == ProviderId.GLM)
            return Intent(context, GlmApiKeyActivity::class.java)
                .putExtra(WebLoginActivity.EXTRA_PROVIDER_ACCOUNT_ID, ProviderAccountIdStorageCodec.encode(accountId))
        }
    }
}
