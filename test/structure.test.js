import test from "node:test";
import assert from "node:assert/strict";
import { existsSync, readFileSync } from "node:fs";
import { join } from "node:path";

const root = process.cwd();

test("mobile skeleton contains iOS app, iOS widget, Android app, and Android Glance widget", () => {
  const requiredPaths = [
    "ios/AIUsageMobile/AIUsageMobileApp.swift",
    "ios/AIUsageMobile/SnapshotCache.swift",
    "ios/AIUsageWidget/AIUsageWidget.swift",
    "android/app/src/main/java/com/aiusage/mobile/MainActivity.kt",
    "android/app/src/main/java/com/aiusage/mobile/sync/SnapshotRepository.kt",
    "android/app/src/main/java/com/aiusage/mobile/widget/AIUsageGlanceWidget.kt"
  ];

  for (const path of requiredPaths) {
    assert.equal(existsSync(join(root, path)), true, `${path} should exist`);
  }
});

test("mobile skeleton documents widget cache behavior and avoids provider credentials", () => {
  const iosCache = readFileSync(join(root, "ios/AIUsageMobile/SnapshotCache.swift"), "utf8");
  const androidRepo = readFileSync(
    join(root, "android/app/src/main/java/com/aiusage/mobile/sync/SnapshotRepository.kt"),
    "utf8"
  );
  const widget = readFileSync(
    join(root, "android/app/src/main/java/com/aiusage/mobile/widget/AIUsageGlanceWidget.kt"),
    "utf8"
  );

  assert.match(iosCache, /App Group cache/);
  assert.match(androidRepo, /display-only snapshot/);
  assert.match(widget, /local cache|cache/);
  assert.doesNotMatch(`${iosCache}\n${androidRepo}\n${widget}`, /accessToken|refreshToken|apiKey/);
});
