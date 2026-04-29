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

test("Android app has API client, typed UI state, and non-placeholder widget sync", () => {
  const requiredPaths = [
    "android/app/src/main/java/com/aiusage/mobile/sync/AIUsageApiClient.kt",
    "android/app/src/main/java/com/aiusage/mobile/sync/PairingCodeViewModel.kt",
    "android/app/src/main/java/com/aiusage/mobile/sync/SnapshotStatus.kt"
  ];

  for (const path of requiredPaths) {
    assert.equal(existsSync(join(root, path)), true, `${path} should exist`);
  }

  const api = source("android/app/src/main/java/com/aiusage/mobile/sync/AIUsageApiClient.kt");
  const pairing = source("android/app/src/main/java/com/aiusage/mobile/sync/PairingCodeViewModel.kt");
  const status = source("android/app/src/main/java/com/aiusage/mobile/sync/SnapshotStatus.kt");
  const worker = source("android/app/src/main/java/com/aiusage/mobile/sync/SnapshotSyncWorker.kt");
  const cache = source("android/app/src/main/java/com/aiusage/mobile/widget/WidgetSnapshotCache.kt");

  assert.match(api, /suspend fun createPairingCode/);
  assert.match(api, /suspend fun fetchLatestSnapshot/);
  assert.match(api, /HttpURLConnection/);
  assert.match(pairing, /sealed interface PairingCodeUiState/);
  assert.match(pairing, /Expires in/);
  assert.match(status, /Fresh/);
  assert.match(status, /Stale/);
  assert.match(status, /Offline/);
  assert.match(status, /15 \* 60/);
  assert.match(status, /24 \* 60 \* 60/);
  assert.doesNotMatch(worker, /write\("\{}"\)/);
  assert.doesNotMatch(cache, /"\{}"/);
});

test("Android main UI uses Firebase auth and pairing API instead of local placeholder state", () => {
  const main = source("android/app/src/main/java/com/aiusage/mobile/MainActivity.kt");
  const manifest = source("android/app/src/main/AndroidManifest.xml");
  const styles = source("android/app/src/main/res/values/styles.xml");
  const gradle = source("android/app/build.gradle.kts");

  assert.match(manifest, /android:theme="@style\/Theme\.AIUsage"/);
  assert.match(manifest, /uses-permission android:name="android\.permission\.INTERNET"/);
  assert.match(styles, /windowActionBar">false/);
  assert.match(styles, /windowNoTitle">true/);
  assert.match(main, /Continue with Google/);
  assert.match(main, /Continue with GitHub/);
  assert.match(main, /FirebaseAuth/);
  assert.match(main, /GoogleSignInOptions/);
  assert.match(main, /GoogleAuthProvider/);
  assert.match(main, /OAuthProvider\.newBuilder\("github\.com"\)/);
  assert.match(main, /auth\.currentUser/);
  assert.match(main, /getIdToken\(false\)/);
  assert.match(main, /createPairingCode/);
  assert.match(main, /No PC linked/);
  assert.match(main, /Generate PC Link Code/);
  assert.match(main, /Signing in\.\.\./);
  assert.match(main, /Sign out/);
  assert.match(main, /Codex/);
  assert.match(main, /Claude/);
  assert.match(main, /Save sample snapshot/);
  assert.doesNotMatch(main, /signedIn = true/);
  assert.doesNotMatch(main, /482 193/);
  assert.match(gradle, /play-services-auth/);
  assert.match(gradle, /lifecycle-runtime-ktx/);
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
