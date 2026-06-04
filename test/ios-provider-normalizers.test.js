import test from "node:test";
import assert from "node:assert/strict";
import { existsSync, readdirSync, readFileSync } from "node:fs";
import { join } from "node:path";

const root = process.cwd();
const fixtureDir = "test/fixtures/provider-normalizers";
const fixtureNames = [
  "claude-usage-api.json",
  "codex-wham-rate-limits.json",
  "gemini-code-assist-buckets.json",
  "copilot-quota-snapshots.json",
  "cursor-combined-plan-requests.json",
  "antigravity-collected-quota.json",
];

function source(path) {
  return readFileSync(join(root, path), "utf8");
}

function fixture(name) {
  return JSON.parse(source(join(fixtureDir, name)));
}

test("iOS provider normalizer has shared Android parity fixtures for every provider", () => {
  assert.equal(existsSync(join(root, fixtureDir)), true, `${fixtureDir} should exist`);
  const actual = readdirSync(join(root, fixtureDir)).filter((name) => name.endsWith(".json")).sort();
  assert.deepEqual(actual, [...fixtureNames].sort());

  const providers = new Set();
  for (const name of fixtureNames) {
    const item = fixture(name);
    assert.equal(typeof item.providerId, "string", `${name} should declare providerId`);
    assert.equal(typeof item.source, "string", `${name} should declare payload source`);
    assert.equal(typeof item.rawPayload, "object", `${name} should keep Android raw payload shape`);
    assert.equal(typeof item.expected, "object", `${name} should declare expected Android output`);
    assert.ok(Array.isArray(item.expected.lines), `${name} should declare expected lines`);
    assert.ok(item.expected.lines.length > 0, `${name} should cover trusted usage lines`);
    providers.add(item.providerId);
  }

  assert.deepEqual(
    [...providers].sort(),
    ["antigravity", "claude", "codex", "copilot", "cursor", "gemini"]
  );
});

test("iOS ProviderUsageNormalizer mirrors Android source policy and provider dispatch", () => {
  const sourcePath = "ios/AIQuotaMobile/Providers/ProviderUsageNormalizer.swift";
  assert.equal(existsSync(join(root, sourcePath)), true, `${sourcePath} should exist`);
  const normalizer = source(sourcePath);

  assert.match(normalizer, /enum ProviderPayloadSource: String/);
  assert.match(normalizer, /case providerApi = "PROVIDER_API"/);
  assert.match(normalizer, /case networkResponse = "NETWORK_RESPONSE"/);
  assert.match(normalizer, /case appState = "APP_STATE"/);
  assert.match(normalizer, /case visibleDom = "VISIBLE_DOM"/);
  assert.match(normalizer, /case structuredScript = "STRUCTURED_SCRIPT"/);
  assert.match(normalizer, /case domText = "DOM_TEXT"/);
  assert.match(normalizer, /var label: String/);
  assert.match(normalizer, /var confidence: Float/);
  assert.match(normalizer, /static func normalize\(/);
  assert.match(normalizer, /guard source != \.domText/);

  for (const provider of ["Claude", "Codex", "Gemini", "Copilot", "Cursor", "Antigravity"]) {
    assert.match(normalizer, new RegExp(`normalize${provider}\\(`), `${provider} normalizer should exist`);
  }
});

test("Swift tests compare normalizer output against the shared parity fixtures", () => {
  const testPath = "ios/AIQuotaMobileTests/ProviderUsageNormalizerTests.swift";
  assert.equal(existsSync(join(root, testPath)), true, `${testPath} should exist`);
  const tests = source(testPath);
  const project = source("ios/AIQuotaMobile.xcodeproj/project.pbxproj");

  assert.match(tests, /ProviderUsageNormalizerTests/);
  assert.match(tests, /testAndroidParityFixturesNormalizeAllProviders/);
  for (const name of fixtureNames) {
    assert.match(tests, new RegExp(name.replace(/[.*+?^${}()|[\]\\]/g, "\\$&")));
  }

  assert.match(project, /ProviderUsageNormalizer.swift in Sources/);
  assert.match(project, /ProviderUsageNormalizerTests.swift in Sources/);
});
