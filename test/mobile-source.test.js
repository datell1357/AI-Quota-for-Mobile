import test from "node:test";
import assert from "node:assert/strict";
import { existsSync, readFileSync } from "node:fs";
import { join } from "node:path";

const root = process.cwd();

function source(path) {
  return readFileSync(join(root, path), "utf8");
}

test("iOS app has a real sync API client and typed UI state model", () => {
  const requiredPaths = [
    "ios/AIUsageMobile/AIUsageAPIClient.swift",
    "ios/AIUsageMobile/PairingCodeViewModel.swift",
    "ios/AIUsageMobile/SnapshotStatus.swift"
  ];

  for (const path of requiredPaths) {
    assert.equal(existsSync(join(root, path)), true, `${path} should exist`);
  }

  const api = source("ios/AIUsageMobile/AIUsageAPIClient.swift");
  const pairing = source("ios/AIUsageMobile/PairingCodeViewModel.swift");
  const status = source("ios/AIUsageMobile/SnapshotStatus.swift");

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

test("Android app has device-list snapshot sync and non-placeholder widget cache", () => {
  const requiredPaths = [
    "android/app/src/main/java/com/aiusage/mobile/sync/Models.kt",
    "android/app/src/main/java/com/aiusage/mobile/sync/SnapshotStatus.kt"
  ];

  for (const path of requiredPaths) {
    assert.equal(existsSync(join(root, path)), true, `${path} should exist`);
  }

  const models = source("android/app/src/main/java/com/aiusage/mobile/sync/Models.kt");
  const status = source("android/app/src/main/java/com/aiusage/mobile/sync/SnapshotStatus.kt");
  const repo = source("android/app/src/main/java/com/aiusage/mobile/sync/SnapshotRepository.kt");
  const worker = source("android/app/src/main/java/com/aiusage/mobile/sync/SnapshotSyncWorker.kt");
  const cache = source("android/app/src/main/java/com/aiusage/mobile/widget/WidgetSnapshotCache.kt");
  const notificationController = source("android/app/src/main/java/com/aiusage/mobile/notification/UsageLimitNotificationController.kt");
  const compactNotificationLayout = source("android/app/src/main/res/layout/notification_usage_compact.xml");

  assert.match(models, /data class SnapshotRefreshResult/);
  assert.match(models, /data class SnapshotDevice/);
  assert.match(models, /data class SnapshotProviderUsage/);
  assert.match(models, /data class SnapshotUsageLimitLine/);
  assert.match(models, /remainingText/);
  assert.match(models, /remainingRatio/);
  assert.match(status, /Fresh/);
  assert.match(status, /Stale/);
  assert.match(status, /Offline/);
  assert.match(status, /15 \* 60/);
  assert.match(status, /24 \* 60 \* 60/);
  assert.match(repo, /FirebaseFirestore/);
  assert.match(repo, /collection\("users"\)/);
  assert.match(repo, /collection\("devices"\)/);
  assert.match(repo, /collection\("snapshots"\)/);
  assert.match(repo, /resolveSnapshotStatus/);
  assert.match(repo, /saveForWidget/);
  assert.match(repo, /updateDeviceName/);
  assert.match(repo, /listDevices/);
  assert.match(repo, /rememberSignedInUser/);
  assert.match(repo, /scheduleWidgetRefresh/);
  assert.match(repo, /5, TimeUnit\.MINUTES/);
  assert.match(worker, /refreshLatestSnapshot/);
  assert.match(worker, /inputData\.getString\("uid"\)/);
  assert.match(worker, /storedUid/);
  assert.match(worker, /scheduleWidgetRefresh/);
  assert.doesNotMatch(worker, /write\("\{}"\)/);
  assert.match(cache, /updatedAt/);
  assert.match(cache, /status/);
  assert.doesNotMatch(cache, /"\{}"/);
  assert.match(notificationController, /getBoolean\(KEY_ENABLED,\s*true\)/);
  assert.match(notificationController, /setCustomContentView\(compactRemoteViews/);
  assert.match(compactNotificationLayout, /notification_compact_summary/);
  assert.match(compactNotificationLayout, /android:maxLines="2"/);
});

test("Android main UI uses Firebase auth with device list, rename flow, and snapshot refresh", () => {
  const main = source("android/app/src/main/java/com/aiusage/mobile/MainActivity.kt");
  const manifest = source("android/app/src/main/AndroidManifest.xml");
  const styles = source("android/app/src/main/res/values/styles.xml");
  const strings = source("android/app/src/main/res/values/strings.xml");
  const koreanStrings = source("android/app/src/main/res/values-ko/strings.xml");
  const gradle = source("android/app/build.gradle.kts");

  assert.match(manifest, /android:theme="@style\/Theme\.AIUsage"/);
  assert.match(manifest, /uses-permission android:name="android\.permission\.INTERNET"/);
  assert.match(styles, /windowActionBar">false/);
  assert.match(styles, /windowNoTitle">true/);
  assert.match(main, /Continue with Google/);
  assert.match(main, /FirebaseAuth/);
  assert.match(main, /GoogleSignInOptions/);
  assert.match(main, /GoogleAuthProvider/);
  assert.match(main, /auth\.currentUser/);
  assert.match(main, /refreshLatestSnapshot/);
  assert.match(main, /deviceList/);
  assert.match(main, /LimitDashboard/);
  assert.match(main, /ProviderLimitCard/);
  assert.match(main, /ProviderLimitLine/);
  assert.match(main, /SettingsPanel/);
  assert.match(main, /stringResource\(R\.string\.settings_rename_selected_device\)/);
  assert.match(main, /stringResource\(R\.string\.settings_save_device_name\)/);
  assert.match(main, /stringResource\(R\.string\.settings_selected_device\)/);
  assert.match(main, /stringResource\(R\.string\.settings_connected_devices\)/);
  assert.match(main, /Usage Limits/);
  assert.match(main, /stringResource\(R\.string\.settings_refreshing_snapshot\)/);
  assert.match(main, /stringResource\(R\.string\.settings_snapshot_status\)/);
  assert.match(main, /stringResource\(R\.string\.settings_no_pc_linked\)/);
  assert.match(main, /remainingRatio/);
  assert.match(main, /delay\(60_000\)/);
  assert.match(main, /isActive/);
  assert.match(main, /rememberSignedInUser/);
  assert.match(main, /scheduleWidgetRefresh/);
  assert.match(main, /Signing in\.\.\./);
  assert.match(main, /stringResource\(R\.string\.settings_sign_out\)/);
  assert.match(strings, /name="settings_connected_devices">Connected devices/);
  assert.match(koreanStrings, /name="settings_connected_devices">연결된 장치/);
  assert.match(main, /providers\.forEach/);
  assert.doesNotMatch(main, /Continue with GitHub/);
  assert.doesNotMatch(main, /OAuthProvider\.newBuilder\("github\.com"\)/);
  assert.doesNotMatch(main, /signedIn = true/);
  assert.doesNotMatch(main, /482 193/);
  assert.doesNotMatch(main, /Generate PC Link Code/);
  assert.doesNotMatch(main, /Latest Snapshot/);
  assert.doesNotMatch(main, /Save sample snapshot/);
  assert.match(gradle, /play-services-auth/);
  assert.match(gradle, /lifecycle-runtime-ktx/);
  assert.match(gradle, /kotlinx-coroutines-play-services/);
  assert.match(gradle, /buildConfig = true/);
});

test("iOS main UI exposes pre-production mobile flow up to snapshot display", () => {
  const content = source("ios/AIUsageMobile/ContentView.swift");
  const store = source("ios/AIUsageMobile/SnapshotStore.swift");

  assert.match(content, /Continue with Google/);
  assert.match(content, /Continue with GitHub/);
  assert.match(content, /No PC linked/);
  assert.match(content, /Generate PC Link Code/);
  assert.match(content, /Save sample snapshot/);
  assert.match(store, /Codex/);
  assert.match(store, /Claude/);
});
