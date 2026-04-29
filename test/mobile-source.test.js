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
