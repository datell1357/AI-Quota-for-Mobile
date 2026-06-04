import test from "node:test";
import assert from "node:assert/strict";
import { existsSync, readFileSync } from "node:fs";
import { join } from "node:path";

const root = process.cwd();

function source(path) {
  return readFileSync(join(root, path), "utf8");
}

test("iOS provider domain mirrors Android provider identity and state contracts", () => {
  const domainPath = "ios/AIQuotaMobile/Domain/ProviderModels.swift";
  assert.equal(existsSync(join(root, domainPath)), true, `${domainPath} should exist`);

  const domain = source(domainPath);
  const providers = ["claude", "codex", "gemini", "copilot", "antigravity", "cursor"];
  const states = [
    "disconnected",
    "notConnected",
    "connecting",
    "connected",
    "collecting",
    "stale",
    "interactiveAuthRequired",
    "unavailable",
    "error"
  ];

  assert.match(domain, /enum ProviderId: String, CaseIterable, Codable/);
  assert.match(domain, /static let defaultOrder: \[ProviderId\] = \[\.claude, \.codex, \.gemini, \.copilot, \.antigravity, \.cursor\]/);
  for (const provider of providers) {
    assert.match(domain, new RegExp(`case ${provider}`), `${provider} provider should exist`);
  }
  for (const state of states) {
    assert.match(domain, new RegExp(`case ${state}`), `${state} connection state should exist`);
  }
});

test("iOS provider snapshot preserves trusted-payload and previous-usage policies", () => {
  const domain = source("ios/AIQuotaMobile/Domain/ProviderModels.swift");

  assert.match(domain, /func primaryConnectionAction\(\) -> ProviderConnectionAction/);
  assert.match(domain, /func shouldShowDashboardConnectAction\(\) -> Bool/);
  assert.match(domain, /static func disconnected\(_ providerId: ProviderId\) -> ProviderUsageSnapshot/);
  assert.match(domain, /static func connectedWithoutUsage\([\s\S]*?previous: ProviderUsageSnapshot\?[\s\S]*?message: String[\s\S]*?\) -> ProviderUsageSnapshot/);
  assert.match(domain, /static func failedKeepingPrevious\([\s\S]*?previous: ProviderUsageSnapshot\?[\s\S]*?message: String[\s\S]*?\) -> ProviderUsageSnapshot/);
  assert.match(domain, /static func interactiveAuthRequiredKeepingPrevious/);
  assert.match(domain, /providerConnectionStateAfterPreviousUsageFailure/);
  assert.match(domain, /hasPreviousUsage \? \.connected : withoutPreviousUsage/);
  assert.match(domain, /recoverLegacyInteractiveAuthRequired/);
});

test("iOS Xcode project includes provider domain source and contract tests", () => {
  const project = source("ios/AIQuotaMobile.xcodeproj/project.pbxproj");

  assert.match(project, /path = Domain;/);
  assert.match(project, /path = ProviderModels.swift;/);
  assert.match(project, /ProviderModels.swift in Sources/);
  assert.match(project, /ProviderModelsTests.swift in Sources/);
});
