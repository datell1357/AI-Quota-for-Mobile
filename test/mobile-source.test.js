import test from "node:test";
import assert from "node:assert/strict";
import { existsSync, readFileSync, readdirSync } from "node:fs";
import { join } from "node:path";

const root = process.cwd();

function source(path) {
  return readFileSync(join(root, path), "utf8");
}

function assertPathsExist(paths) {
  for (const path of paths) {
    assert.equal(existsSync(join(root, path)), true, `${path} should exist`);
  }
}

function assertContains(sourceText, expected, label) {
  assert.ok(sourceText.includes(expected), `${label} should contain ${expected}`);
}

test("iOS app has a real sync API client and typed UI state model", () => {
  const requiredPaths = [
    "ios/AIQuotaMobile/AIQuotaAPIClient.swift",
    "ios/AIQuotaMobile/PairingCodeViewModel.swift",
    "ios/AIQuotaMobile/SnapshotStatus.swift"
  ];

  assertPathsExist(requiredPaths);

  const api = source("ios/AIQuotaMobile/AIQuotaAPIClient.swift");
  const pairing = source("ios/AIQuotaMobile/PairingCodeViewModel.swift");
  const status = source("ios/AIQuotaMobile/SnapshotStatus.swift");

  assert.match(api, /func createPairingCode\(idToken:/);
  assert.match(api, /func fetchLatestSnapshot\(uid: String, deviceId: String, idToken: String\)/);
  assert.match(api, /URLSession\.shared\.data/);
  assert.match(pairing, /enum PairingCodeState/);
  assert.match(pairing, /Expires in/);
  assert.match(status, /case fresh/);
  assert.match(status, /case stale/);
  assert.match(status, /case offline/);
  assert.match(status, /15 \* 60/);
  assert.match(status, /24 \* 60 \* 60/);
});

test("Android live monitoring foreground service uses specialUse usage monitor", () => {
  const manifest = source("android/app/src/main/AndroidManifest.xml");
  const refreshService = source("android/app/src/main/java/com/aiquota/mobile/providers/ProviderBackgroundRefreshService.kt");

  assert.match(manifest, /android\.permission\.FOREGROUND_SERVICE_SPECIAL_USE/);
  assert.doesNotMatch(manifest, /android\.permission\.FOREGROUND_SERVICE_DATA_SYNC/);
  assert.match(manifest, /android:foregroundServiceType="specialUse"/);
  assert.match(manifest, /android\.app\.PROPERTY_SPECIAL_USE_FGS_SUBTYPE/);
  assert.match(manifest, /android:value="usage_monitor"/);
  assert.match(refreshService, /ServiceInfo\.FOREGROUND_SERVICE_TYPE_SPECIAL_USE/);
  assert.doesNotMatch(refreshService, /ServiceInfo\.FOREGROUND_SERVICE_TYPE_DATA_SYNC/);
});

test("Android local-first shell keeps provider snapshots in local display cache", () => {
  const requiredPaths = [
    "android/app/src/main/java/com/aiquota/mobile/MainActivity.kt",
    "android/app/src/main/java/com/aiquota/mobile/ui/AIQuotaAppShell.kt",
    "android/app/src/main/java/com/aiquota/mobile/local/LocalUsageRepository.kt",
    "android/app/src/main/java/com/aiquota/mobile/local/WidgetCacheSanitizer.kt",
    "android/app/src/main/java/com/aiquota/mobile/widget/WidgetSnapshotCache.kt",
    "android/app/src/main/java/com/aiquota/mobile/widget/AIQuotaGlanceWidget.kt",
    "android/app/src/main/java/com/aiquota/mobile/providers/ProviderBackgroundRefreshService.kt",
    "android/app/src/main/java/com/aiquota/mobile/sync/ForegroundRefreshController.kt",
    "android/app/src/main/java/com/aiquota/mobile/sync/ForegroundRefreshPolicy.kt",
    "android/app/src/main/res/xml/ai_quota_widget_large.xml",
    "android/app/src/main/res/xml/ai_quota_widget_provider.xml"
  ];

  assertPathsExist(requiredPaths);

  const main = source("android/app/src/main/java/com/aiquota/mobile/MainActivity.kt");
  const appShell = source("android/app/src/main/java/com/aiquota/mobile/ui/AIQuotaAppShell.kt");
  const localRepo = source("android/app/src/main/java/com/aiquota/mobile/local/LocalUsageRepository.kt");
  const sanitizer = source("android/app/src/main/java/com/aiquota/mobile/local/WidgetCacheSanitizer.kt");
  const widgetCache = source("android/app/src/main/java/com/aiquota/mobile/widget/WidgetSnapshotCache.kt");
  const widget = source("android/app/src/main/java/com/aiquota/mobile/widget/AIQuotaGlanceWidget.kt");
  const refreshService = source("android/app/src/main/java/com/aiquota/mobile/providers/ProviderBackgroundRefreshService.kt");
  const foregroundController = source("android/app/src/main/java/com/aiquota/mobile/sync/ForegroundRefreshController.kt");
  const foregroundPolicy = source("android/app/src/main/java/com/aiquota/mobile/sync/ForegroundRefreshPolicy.kt");
  const manifest = source("android/app/src/main/AndroidManifest.xml");

  // AIQuotaAppShell 호출은 인자가 늘어 여러 줄로 쓰여 있다. 한 줄 표기를 강제하지 않고
  // 컴포저블 진입과 필수 인자만 확인한다.
  assert.match(main, /AIQuotaAppShell\(\s*\n?\s*context = this/);
  assert.match(appShell, /UsageLimitNotificationController\.canPostNotifications/);
  assert.match(appShell, /rememberLauncherForActivityResult/);
  assert.match(main, /ForegroundRefreshController/);
  assert.match(appShell, /LocalUsageRepository\(appContext\)/);
  assert.match(appShell, /ProviderConnectorRegistry\.default\(appContext\)/);
  assert.match(localRepo, /getSharedPreferences\(PREFERENCES_NAME/);
  assert.match(localRepo, /fun readSnapshots\(\): List<ProviderUsageSnapshot>/);
  assert.match(localRepo, /fun saveSnapshot\(snapshot: ProviderUsageSnapshot\)/);
  assert.match(localRepo, /fun exportDisplayOnlyCache/);
  assert.match(localRepo, /WidgetCacheSanitizer\.toDisplayOnlyJson/);
  assert.match(localRepo, /fun removeProviderSnapshot\(providerId: ProviderId\)/);
  assert.match(localRepo, /GOOGLE_STALE_REFRESH_TIMEOUT/);
  assert.match(sanitizer, /sanitizeDisplayOnlyJson/);
  assert.match(widgetCache, /fun writeLocalDisplaySnapshot/);
  assert.match(widgetCache, /WidgetCacheSanitizer\.sanitizeDisplayOnlyJson/);
  assert.match(widgetCache, /readLocalDisplaySnapshot\(\)\.ifBlank/);
  assert.match(widget, /WidgetSnapshotCache\(context\)\.read\(\)/);
  assert.match(refreshService, /class ProviderBackgroundRefreshService : Service\(\)/);
  assert.match(refreshService, /startForeground/);
  assert.match(refreshService, /ProviderRefreshPlan\.nextAutoRefreshDelayMillis/);
  assert.match(foregroundController, /ContextCompat\.startForegroundService/);
  assert.match(foregroundPolicy, /ProviderConnectionState\.CONNECTED/);
  assert.match(foregroundPolicy, /ProviderConnectionState\.UNAVAILABLE/);
  assert.match(manifest, /android\.permission\.FOREGROUND_SERVICE_SPECIAL_USE/);
  assert.doesNotMatch(manifest, /android\.permission\.FOREGROUND_SERVICE_DATA_SYNC/);
  assert.match(manifest, /android:foregroundServiceType="specialUse"/);
  assert.match(manifest, /android\.app\.PROPERTY_SPECIAL_USE_FGS_SUBTYPE/);
  assert.match(manifest, /android:value="usage_monitor"/);
  assert.match(manifest, /ProviderBackgroundRefreshService/);
  assert.match(manifest, /AIQuotaUnifiedGlanceWidgetReceiver/);
  assert.match(manifest, /ProviderUsageWidgetProvider/);
});

test("Android web collectors remain for visible-session providers", () => {
  const webLogin = source("android/app/src/main/java/com/aiquota/mobile/providers/WebLoginActivity.kt");
  const backgroundRefreshService = source("android/app/src/main/java/com/aiquota/mobile/providers/ProviderBackgroundRefreshService.kt");
  const collectionService = source("android/app/src/main/java/com/aiquota/mobile/providers/ProviderUsageCollectionService.kt");
  const scriptProviders = source("android/app/src/main/java/com/aiquota/mobile/providers/ProviderScriptProviders.kt");
  const definitions = source("android/app/src/main/java/com/aiquota/mobile/providers/ProviderDefinitions.kt");

  assert.match(webLogin, /settings\.javaScriptEnabled = true/);
  assert.match(webLogin, /addJavascriptInterface\(UsageBridge\(\), BRIDGE_NAME\)/);
  assert.match(webLogin, /ProviderWebCollectorScripts\.build/);
  assert.match(webLogin, /finishSuccessfulLogin\(rawPayload\)/);
  assert.match(collectionService, /class ProviderUsageCollectionService : Service\(\)/);
  assert.match(collectionService, /ProviderUsageNormalizer\.normalize\(providerId, effectivePayload, source\)/);
  assert.match(backgroundRefreshService, /ProviderWebCollectorScripts\.build/);
  // provider별 ScriptProvider 클래스는 provider id 기반 메타데이터 조회로 통합됐다.
  assert.match(scriptProviders, /fun metadataFor\(providerId: ProviderId\): ProviderScriptMetadata/);
  assert.match(scriptProviders, /fun storeNamesFor\(providerId: ProviderId\): ProviderStoreNames/);
  assert.match(scriptProviders, /ProviderId\.GEMINI -> "[a-z0-9]+"/);
  assert.match(scriptProviders, /ProviderId\.ANTIGRAVITY -> "[a-z0-9]+"/);
  assert.match(definitions, /providerId = ProviderId\.COPILOT,[\s\S]*?collectionKind = ProviderCollectionKind\.WEBVIEW_COLLECTOR/);
});

test("Google native OAuth routes through Firebase token exchange without client secret", () => {
  const gradle = source("android/app/build.gradle.kts");
  const main = source("android/app/src/main/java/com/aiquota/mobile/MainActivity.kt");
  const debugBootstrap = source("android/app/src/debug/java/com/aiquota/mobile/FirebaseGatewayBootstrap.kt");
  const releaseBootstrap = source("android/app/src/release/java/com/aiquota/mobile/FirebaseGatewayBootstrap.kt");
  const geminiGateway = source("android/app/src/main/java/com/aiquota/mobile/providers/GeminiCliFirebaseGateway.kt");
  const antigravityGateway = source("android/app/src/main/java/com/aiquota/mobile/providers/AntigravityFirebaseGateway.kt");
  const appCheckCallable = source("android/app/src/main/java/com/aiquota/mobile/providers/FirebaseAppCheckCallable.kt");
  const geminiActivity = source("android/app/src/main/java/com/aiquota/mobile/providers/GeminiCliLoopbackOAuthActivity.kt");
  const antigravityActivity = source("android/app/src/main/java/com/aiquota/mobile/providers/AntigravityLoopbackOAuthActivity.kt");
  const geminiRepository = source("android/app/src/main/java/com/aiquota/mobile/providers/GeminiCliOAuthRepository.kt");
  const antigravityRepository = source("android/app/src/main/java/com/aiquota/mobile/providers/AntigravityOAuthRepository.kt");
  const definitions = source("android/app/src/main/java/com/aiquota/mobile/providers/ProviderDefinitions.kt");
  const refreshPlan = source("android/app/src/main/java/com/aiquota/mobile/providers/ProviderRefreshPlan.kt");
  const appShell = source("android/app/src/main/java/com/aiquota/mobile/ui/AIQuotaAppShell.kt");
  const refreshService = source("android/app/src/main/java/com/aiquota/mobile/providers/ProviderBackgroundRefreshService.kt");

  const geminiBlock = definitions
    .split("providerId = ProviderId.GEMINI,")[1]
    .split("ProviderDefinition(")[0];
  const antigravityBlock = definitions
    .split("providerId = ProviderId.ANTIGRAVITY,")[1]
    .split("ProviderDefinition(")[0];

  assert.match(gradle, /com\.google\.gms\.google-services/);
  assert.match(gradle, /com\.google\.firebase:firebase-auth/);
  assert.match(gradle, /com\.google\.firebase:firebase-functions/);
  assert.match(gradle, /com\.google\.firebase:firebase-appcheck-playintegrity/);
  assert.match(gradle, /com\.google\.firebase:firebase-appcheck-debug/);
  assert.match(main, /FirebaseGatewayBootstrap\.install\(\)/);
  assert.match(debugBootstrap, /DebugAppCheckProviderFactory/);
  assert.match(releaseBootstrap, /PlayIntegrityAppCheckProviderFactory/);
  // 앱에서 쓰지 않는 Google OAuth client id는 secu/remove-oauth-client-ids에서 제거했다.
  // 빌드 설정에 다시 들어오면 회귀이므로, 존재가 아니라 부재를 확인한다.
  assert.doesNotMatch(gradle, /681255809395-oo8ft2oprdrnp9e3aqf6av3hmdib135j\.apps\.googleusercontent\.com/);
  assert.doesNotMatch(gradle, /1071006060591-tmhssin2h21lcre235vtolojh4g403ep\.apps\.googleusercontent\.com/);
  assert.match(geminiGateway, /FirebaseAuth/);
  assert.match(geminiGateway, /callWithAppCheckRetry\(appCheck, "startGeminiCliOAuth"/);
  assert.match(geminiGateway, /callWithAppCheckRetry\(appCheck, "completeGeminiCliOAuth"/);
  assert.match(geminiGateway, /"refreshGeminiCliAccessToken"/);
  assert.match(antigravityGateway, /FirebaseAuth/);
  assert.match(antigravityGateway, /callWithAppCheckRetry\(appCheck, "startAntigravityOAuth"/);
  assert.match(antigravityGateway, /callWithAppCheckRetry\(appCheck, "completeAntigravityOAuth"/);
  assert.match(antigravityGateway, /"refreshAntigravityAccessToken"/);
  assert.match(appCheckCallable, /getAppCheckToken\(false\)\.await\(\)/);
  assert.match(appCheckCallable, /getAppCheckToken\(true\)\.await\(\)/);
  assert.match(appCheckCallable, /FirebaseFunctionsException\.Code\.UNAUTHENTICATED/);
  assert.match(geminiActivity, /WebView/);
  assert.match(geminiActivity, /GeminiCliFirebaseGateway\(applicationContext\)\.startOAuth\(\)/);
  assert.match(geminiActivity, /completeOAuth\(url\)/);
  assert.match(geminiActivity, /fetchUsagePayloadFromGatewayTokenResult/);
  assert.match(antigravityActivity, /WebView/);
  assert.match(antigravityActivity, /AntigravityFirebaseGateway\(applicationContext\)\.startOAuth\(\)/);
  assert.match(antigravityActivity, /completeOAuth\(url\)/);
  assert.match(antigravityActivity, /fetchUsagePayloadFromGatewayTokenResult/);
  assert.match(geminiRepository, /GeminiCliFirebaseGateway\(appContext\)\.refreshAccessToken\(refreshToken\)/);
  assert.match(antigravityRepository, /AntigravityFirebaseGateway\(appContext\)\.refreshAccessToken\(refreshToken\)/);
  // Gemini는 CLI 게이트웨이 대신 gemini.google.com/usage WebView 세션으로 수집한다.
  assert.match(geminiBlock, /authStoreKind = ProviderAuthStoreKind\.WEBVIEW_PROFILE/);
  assert.match(geminiBlock, /collectionKind = ProviderCollectionKind\.WEBVIEW_COLLECTOR/);
  assert.match(antigravityBlock, /authStoreKind = ProviderAuthStoreKind\.NATIVE_TOKEN/);
  assert.match(antigravityBlock, /collectionKind = ProviderCollectionKind\.NATIVE_API/);
  assert.match(refreshPlan, /ProviderCollectionKind\.NATIVE_API -> ProviderRefreshMode\.NATIVE_API/);
  // Gemini CLI 로그인·저장 자격 증명 경로는 도달 불가로 남겨 두었다. 되살아나면 회귀다.
  assert.doesNotMatch(appShell, /GeminiCliLoopbackOAuthActivity\.createIntent/);
  assert.match(appShell, /AntigravityLoopbackOAuthActivity\.createIntent/);
  assert.doesNotMatch(appShell, /GeminiCliOAuthRepository\(appContext\)\.fetchUsagePayloadFromStoredCredential\(\)/);
  assert.doesNotMatch(appShell, /AntigravityOAuthRepository\(appContext\)\.fetchUsagePayloadFromStoredCredential\(\)/);
  assert.doesNotMatch(refreshService, /GeminiCliOAuthRepository\(applicationContext\)/);
  assert.match(refreshService, /AntigravityOAuthRepository\(applicationContext\)\.fetchUsagePayloadFromStoredCredential\(\)/);
  assert.doesNotMatch(
    `${geminiGateway}\n${antigravityGateway}\n${geminiActivity}\n${antigravityActivity}\n${geminiRepository}\n${antigravityRepository}\n${gradle}`,
    /GEMINI_CLI_GOOGLE_OAUTH_CLIENT_SECRET|ANTIGRAVITY_GOOGLE_OAUTH_CLIENT_SECRET|client_secret|clientSecret/
  );
});

test("Android release builds fail before packaging placeholder Firebase resources", () => {
  const gradle = source("android/app/build.gradle.kts");
  const googleServices = source("android/app/google-services.json");

  assert.match(googleServices, /"project_number":\s*"550123003638"/);
  assert.match(googleServices, /"mobilesdk_app_id":\s*"1:550123003638:android:b77771790177d817eb56d7"/);
  assert.doesNotMatch(googleServices, /123456789012|0000000000000000000000/);
  assert.match(gradle, /tasks\.register\("verifyReleaseFirebaseResources"/);
  assert.match(gradle, /google-services\.json/);
  assert.match(gradle, /1:550123003638:android:b77771790177d817eb56d7/);
  assert.match(gradle, /123456789012|0000000000000000000000/);
  assert.match(gradle, /matching \{ task -> task\.name == "processReleaseGoogleServices" \}\.configureEach[\s\S]*dependsOn\(verifyReleaseFirebaseResources\)/);
  assert.match(gradle, /matching \{ task -> task\.name in setOf\("bundleRelease", "assembleRelease"\) \}[\s\S]*dependsOn\(verifyReleaseFirebaseResources\)/);
});

test("release R8 keeps shrink and optimize disabled while narrowing Android entrypoint keep rules", () => {
  const rules = source("android/app/proguard-rules.pro");

  assertContains(rules, "-dontshrink", "release R8 rules");
  assertContains(rules, "-dontoptimize", "release R8 rules");
  assert.doesNotMatch(rules, /-keep class com\.aiquota\.mobile\.\*\* extends android\.app\.Activity/);
  assert.doesNotMatch(rules, /-keep class com\.aiquota\.mobile\.\*\* extends android\.app\.Service/);
  assert.doesNotMatch(rules, /-keep class com\.aiquota\.mobile\.\*\* extends android\.content\.BroadcastReceiver/);
  assert.doesNotMatch(rules, /-keep class com\.aiquota\.mobile\.\*\* extends android\.appwidget\.AppWidgetProvider/);
  assert.doesNotMatch(rules, /-keep class com\.aiquota\.mobile\.\*\* extends androidx\.glance\.appwidget\.GlanceAppWidgetReceiver/);

  const explicitEntrypoints = [
    "com.aiquota.mobile.AIQuotaApplication",
    "com.aiquota.mobile.MainActivity",
    "com.aiquota.mobile.providers.WebLoginActivity",
    "com.aiquota.mobile.providers.GeminiCliLoopbackOAuthActivity",
    "com.aiquota.mobile.providers.AntigravityLoopbackOAuthActivity",
    "com.aiquota.mobile.providers.GoogleAuthorizationActivity",
    "net.openid.appauth.RedirectUriReceiverActivity",
    "com.aiquota.mobile.widget.ProviderWidgetConfigureActivity",
    "com.aiquota.mobile.widget.DashboardWidgetConfigureActivity",
    "com.aiquota.mobile.providers.ProviderUsageCollectionService",
    "com.aiquota.mobile.providers.ProviderBackgroundRefreshService",
    "com.aiquota.mobile.widget.WidgetManualRefreshReceiver",
    "com.aiquota.mobile.providers.ProviderRefreshReceiver",
    "com.aiquota.mobile.widget.AIQuotaUnifiedGlanceWidgetReceiver",
    "com.aiquota.mobile.widget.AIQuotaCircularWidgetProvider",
    "com.aiquota.mobile.widget.ProviderUsageWidgetProvider",
    "com.aiquota.mobile.debug.LiveRefreshIssueDebugReceiver"
  ];

  for (const entrypoint of explicitEntrypoints) {
    assertContains(rules, entrypoint, "release R8 entrypoint rules");
  }

  assert.match(
    rules,
    /-keep class com\.aiquota\.mobile\.sync\.ForegroundRefreshHealthWorker \{\s+public <init>\(android\.content\.Context, androidx\.work\.WorkerParameters\);\s+\}/
  );
});

test("release R8 preserves JavaScript bridge method names used by collector scripts", () => {
  const rules = source("android/app/proguard-rules.pro");
  const scripts = source("android/app/src/main/java/com/aiquota/mobile/providers/ProviderWebCollectorScripts.kt");
  const refreshService = source("android/app/src/main/java/com/aiquota/mobile/providers/ProviderBackgroundRefreshService.kt");

  assert.match(rules, /@android\.webkit\.JavascriptInterface <methods>;/);
  assertContains(scripts, "window.AIQuotaCollectorBridge.postUsagePayload", "collector scripts");
  assertContains(scripts, "window.AIQuotaCollectorBridge.postCollectorError", "collector scripts");
  // provider별 fetch 브리지는 범용 두 개로 통합됐다. 네이티브 쪽 @JavascriptInterface는
  // 그대로 남아 R8 keep 규칙의 대상이 된다.
  assertContains(scripts, "window.AIQuotaCollectorBridge.fetchProviderJson", "collector scripts");
  assertContains(scripts, "window.AIQuotaCollectorBridge.fetchProviderUsagePayload", "collector scripts");
  assertContains(refreshService, "fun fetchProviderJson", "background refresh bridge");
  assertContains(refreshService, "fun fetchProviderUsagePayload", "background refresh bridge");
  assertContains(refreshService, "fun fetchCopilotJson", "background refresh bridge");
  assertContains(refreshService, "fun fetchCursorJson", "background refresh bridge");
});

test("release obfuscation phase does not transform provider asset JavaScript", () => {
  // Gemini 수집은 JS 에셋에서 네이티브 batchexecute fetcher로 옮겨갔고, 남은 JS 에셋은
  // Antigravity 하나다.
  assertPathsExist([
    "android/app/src/main/assets/antigravity_collector.js",
    "android/app/src/main/java/com/aiquota/mobile/providers/GeminiUsagePageNativeFetcher.kt"
  ]);

  const gradle = source("android/app/build.gradle.kts");
  const packageJson = source("package.json");
  const scripts = source("android/app/src/main/java/com/aiquota/mobile/providers/ProviderScriptProviders.kt");
  const combinedBuildConfig = `${gradle}\n${packageJson}`;

  assert.doesNotMatch(combinedBuildConfig, /terser|uglify|javascript-obfuscator|js-minify|minifyJs|encode.*collector/i);
  assert.match(scripts, /fun metadataFor\(providerId: ProviderId\): ProviderScriptMetadata/);
});

test("Antigravity backend Functions expose Secret Manager and AES-GCM-backed gateway only", () => {
  const index = source("functions/src/index.js");
  const gateway = source("functions/src/antigravityGateway.js");
  const core = source("functions/src/core.js");
  const functionsPackage = source("functions/package.json");
  const firebase = source("firebase.json");
  const rules = source("firestore.rules");

  assert.match(index, /defineSecret\("ANTIGRAVITY_GOOGLE_OAUTH_CLIENT_ID"\)/);
  assert.match(index, /defineSecret\("ANTIGRAVITY_GOOGLE_OAUTH_CLIENT_SECRET"\)/);
  assert.match(index, /defineSecret\("ANTIGRAVITY_GOOGLE_OAUTH_REDIRECT_URI"\)/);
  assert.match(index, /defineSecret\("ANTIGRAVITY_TOKEN_MASTER_KEY"\)/);
  assert.match(index, /startAntigravityOAuth/);
  assert.match(index, /completeAntigravityOAuth/);
  assert.match(index, /refreshAntigravityAccessToken/);
  assert.match(index, /collectAntigravityUsage/);
  assert.match(index, /disconnectAntigravity/);
  assert.match(gateway, /encryptRefreshToken/);
  assert.match(gateway, /decryptRefreshToken/);
  assert.match(gateway, /createCipheriv\("aes-256-gcm"/);
  assert.match(gateway, /tokenEncryptionProvider/);
  assert.match(gateway, /BACKEND_API_FORBIDDEN/);
  assert.match(gateway, /access_type", "offline"/);
  assert.match(gateway, /prompt", "consent"/);
  assert.match(core, /assertNoPlaintextProviderSecret/);
  assert.doesNotMatch(functionsPackage, /@google-cloud\/kms/);
  assert.match(firebase, /"functions"/);
  assert.match(rules, /providerSecrets/);
  assert.match(rules, /antigravityOAuthStates/);
});

test("iOS main UI exposes pre-production mobile flow up to snapshot display", () => {
  const content = source("ios/AIQuotaMobile/ContentView.swift");
  const store = source("ios/AIQuotaMobile/SnapshotStore.swift");

  assert.match(content, /Continue with Google/);
  assert.match(content, /Continue with GitHub/);
  assert.match(content, /No PC linked/);
  assert.match(content, /Generate PC Link Code/);
  assert.match(content, /Save sample snapshot/);
  assert.match(store, /Codex/);
  assert.match(store, /Claude/);
});

function extractGradleBlock(text, name) {
  const match = text.match(new RegExp(`\\b${name}\\s*\\{`));
  assert.ok(match, `Gradle block ${name} should exist`);
  let depth = 1;
  for (let index = match.index + match[0].length; index < text.length; index += 1) {
    if (text[index] === "{") depth += 1;
    if (text[index] === "}") depth -= 1;
    if (depth === 0) return text.slice(match.index, index + 1);
  }
  assert.fail(`Gradle block ${name} should be balanced`);
}

function filesUnder(relativePath) {
  const absolutePath = join(root, relativePath);
  if (!existsSync(absolutePath)) return [];
  return readdirSync(absolutePath, { withFileTypes: true }).flatMap((entry) => {
    const child = join(relativePath, entry.name);
    return entry.isDirectory() ? filesUnder(child) : [child];
  });
}

test("Android multi-account WebKit and release gate are source-verified", () => {
  const gradle = source("android/app/build.gradle.kts");
  const buildTypes = extractGradleBlock(gradle, "buildTypes");
  const debug = extractGradleBlock(buildTypes, "debug");
  const release = extractGradleBlock(buildTypes, "release");
  const parseFlag = (block, buildType) => {
    const match = block.match(/buildConfigField\(\s*[\"']boolean[\"']\s*,\s*[\"']MULTI_ACCOUNT_ENABLED[\"']\s*,\s*[\"'](true|false)[\"']\s*\)/);
    assert.ok(match, `${buildType} should assign MULTI_ACCOUNT_ENABLED as a boolean`);
    return match[1];
  };

  assert.equal(parseFlag(debug, "debug"), "true");
  assert.equal(parseFlag(release, "release"), "false");

  const webkitPins = gradle.match(/implementation\(\s*[\"']androidx\.webkit:webkit:[^\"']+[\"']\s*\)/g) ?? [];
  assert.deepEqual(webkitPins, ['implementation("androidx.webkit:webkit:1.17.0")']);

  const releaseManifest = source("android/app/src/main/AndroidManifest.xml");
  assert.doesNotMatch(releaseManifest, /MultiAccount.*Receiver/);
  for (const path of filesUnder("android/app/src").filter((candidate) => candidate.endsWith(".kt"))) {
    const content = source(path);
    if (/class\s+\w*(?:MultiAccount|AccountFixture)\w*Receiver\s*:\s*BroadcastReceiver/.test(content)) {
      assert.match(path, /^android\/app\/src\/debug\//, `${path} fixture receiver must be debug-only`);
    }
  }
});
