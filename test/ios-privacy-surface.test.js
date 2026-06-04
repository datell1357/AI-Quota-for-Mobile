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

test("iOS app bundles a valid privacy manifest with no tracking and UserDefaults reason", () => {
  const manifestPath = "ios/AIQuotaMobile/PrivacyInfo.xcprivacy";
  assertExists(manifestPath);
  const manifest = source(manifestPath);
  const project = source("ios/AIQuotaMobile.xcodeproj/project.pbxproj");

  assert.match(manifest, /<key>NSPrivacyTracking<\/key>\s*<false\/>/);
  assert.match(manifest, /<key>NSPrivacyTrackingDomains<\/key>\s*<array>\s*<\/array>/);
  assert.match(manifest, /<key>NSPrivacyCollectedDataTypes<\/key>\s*<array>\s*<\/array>/);
  assert.match(manifest, /<key>NSPrivacyAccessedAPITypes<\/key>/);
  assert.match(manifest, /NSPrivacyAccessedAPICategoryUserDefaults/);
  assert.match(manifest, /CA92\.1/);
  assert.match(project, /PrivacyInfo\.xcprivacy in Resources/);
});

test("iOS privacy docs state local provider sessions and sanitized App Group widget cache", () => {
  const iosPrivacyPath = "docs/ios-privacy.md";
  assertExists(iosPrivacyPath);
  const iosPrivacy = source(iosPrivacyPath);
  const policy = source("docs/privacy-policy.md");
  const policyHtml = source("docs/privacy-policy.html");

  for (const text of [iosPrivacy, policy, policyHtml]) {
    assert.match(text, /iOS/);
    assert.match(text, /Keychain/);
    assert.match(text, /WKWebsiteDataStore/);
    assert.match(text, /App Group/);
    assert.match(text, /sanitized/i);
    assert.match(text, /provider secrets? (are )?not uploaded/i);
  }
});

test("App Store privacy checklist avoids token cookie and server-relay claims", () => {
  const checklistPath = "store-assets/app-store/privacy-checklist.md";
  const metadataPath = "store-assets/app-store/app-privacy-details.md";
  assertExists(checklistPath);
  assertExists(metadataPath);
  const checklist = source(checklistPath);
  const metadata = source(metadataPath);

  for (const text of [checklist, metadata]) {
    assert.match(text, /Tracking:\s*No/i);
    assert.match(text, /Data Used to Track You:\s*None/i);
    assert.match(text, /Data Linked to You:\s*None/i);
    assert.match(text, /Provider sessions stay on device/i);
    assert.match(text, /No provider secrets uploaded/i);
    assert.match(text, /App Group sanitized widget cache/i);
    assert.doesNotMatch(text, /\btoken\b/i);
    assert.doesNotMatch(text, /\bcookie\b/i);
    assert.doesNotMatch(text, /server[- ]relay/i);
    assert.doesNotMatch(text, /token gateway/i);
  }
});
