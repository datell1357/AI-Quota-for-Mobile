import test from "node:test";
import assert from "node:assert/strict";
import { existsSync, readFileSync } from "node:fs";
import { join } from "node:path";

const root = process.cwd();

function source(path) {
  return readFileSync(join(root, path), "utf8");
}

function assertExists(path) {
  assert.equal(existsSync(join(root, path)), true, `${path} should exist`);
}

test("iOS TestFlight archive script captures the required Xcode archive/export flow", () => {
  const scriptPath = "scripts/ios/archive-testflight.sh";
  assertExists(scriptPath);
  const script = source(scriptPath);

  assert.match(script, /set -euo pipefail/);
  assert.match(script, /xcodebuild -list -project ios\/AIQuotaMobile\.xcodeproj/);
  assert.match(script, /xcodebuild archive/);
  assert.match(script, /-project ios\/AIQuotaMobile\.xcodeproj/);
  assert.match(script, /-scheme AIQuotaMobile/);
  assert.match(script, /-configuration Release/);
  assert.match(script, /generic\/platform=iOS/);
  assert.match(script, /-archivePath/);
  assert.match(script, /xcodebuild -exportArchive/);
  assert.match(script, /ios\/ExportOptions\.plist/);
  assert.doesNotMatch(script, /APP_STORE_CONNECT_API_KEY|PRIVATE_KEY|ISSUER_ID/);
});

test("iOS export options are App Store Connect ready without embedded credentials", () => {
  const exportOptionsPath = "ios/ExportOptions.plist";
  assertExists(exportOptionsPath);
  const exportOptions = source(exportOptionsPath);

  assert.match(exportOptions, /<key>method<\/key>\s*<string>app-store-connect<\/string>/);
  assert.match(exportOptions, /<key>signingStyle<\/key>\s*<string>automatic<\/string>/);
  assert.match(exportOptions, /<key>destination<\/key>\s*<string>export<\/string>/);
  assert.match(exportOptions, /<key>stripSwiftSymbols<\/key>\s*<true\/>/);
  assert.match(exportOptions, /<key>uploadSymbols<\/key>\s*<true\/>/);
  assert.doesNotMatch(exportOptions, /password|apiKey|issuer|private/i);
});

test("TestFlight packaging checklist records signing and upload gates", () => {
  const checklistPath = "store-assets/app-store/testflight-packaging.md";
  assertExists(checklistPath);
  const checklist = source(checklistPath);

  for (const required of [
    "Apple Developer Program",
    "Bundle ID: com.aiquota.mobile",
    "Widget Bundle ID: com.aiquota.mobile.widget",
    "DEVELOPMENT_TEAM must be configured on Mac",
    "xcodebuild archive",
    "xcodebuild -exportArchive",
    "Transporter or Xcode Organizer",
    "App Store Connect processing starts",
    "Do not commit signing certificates",
    "Do not commit provisioning profiles",
    "Task 19 device QA evidence must exist before upload"
  ]) {
    assert.match(checklist, new RegExp(required.replace(/[.*+?^${}()|[\]\\]/g, "\\$&")));
  }
});
