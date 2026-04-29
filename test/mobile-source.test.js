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
  const repo = source("android/app/src/main/java/com/aiusage/mobile/sync/SnapshotRepository.kt");
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
  assert.match(repo, /FirebaseFirestore/);
  assert.match(repo, /collection\("users"\)/);
  assert.match(repo, /collection\("devices"\)/);
  assert.match(repo, /collection\("snapshots"\)/);
  assert.match(repo, /resolveSnapshotStatus/);
  assert.match(repo, /saveForWidget/);
  assert.match(worker, /refreshLatestSnapshot/);
  assert.match(worker, /inputData\.getString\("uid"\)/);
  assert.doesNotMatch(worker, /write\("\{}"\)/);
  assert.match(cache, /updatedAt/);
  assert.match(cache, /status/);
  assert.doesNotMatch(cache, /"\{}"/);
});

test("Android main UI uses Firebase auth, pairing API, and Firestore-backed snapshot refresh", () => {
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
  assert.match(main, /refreshLatestSnapshot/);
  assert.match(main, /Latest Snapshot/);
  assert.match(main, /Refresh latest snapshot/);
  assert.match(main, /Linked device/);
  assert.match(main, /Snapshot status/);
  assert.match(main, /No PC linked/);
  assert.match(main, /Generate PC Link Code/);
  assert.match(main, /Signing in\.\.\./);
  assert.match(main, /Sign out/);
  assert.match(main, /providers\?\.forEach/);
  assert.doesNotMatch(main, /signedIn = true/);
  assert.doesNotMatch(main, /482 193/);
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
