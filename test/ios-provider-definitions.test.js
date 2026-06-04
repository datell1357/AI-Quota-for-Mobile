import test from "node:test";
import assert from "node:assert/strict";
import { existsSync, readFileSync } from "node:fs";
import { join } from "node:path";

const root = process.cwd();

function source(path) {
  return readFileSync(join(root, path), "utf8");
}

const providerCases = [
  {
    id: "claude",
    loginStartUrl: "https://claude.ai/login",
    preferredUsageEndpoint: "https://claude.ai/api/organizations/{organizationId}/usage",
    sessionProbeUrl: "https://claude.ai/",
    authStoreKind: "webviewProfile",
    collectionKind: "webviewCollector",
    loginHost: "accounts.google.com",
    collectorHost: "claude.ai"
  },
  {
    id: "codex",
    loginStartUrl: "https://chatgpt.com/auth/login",
    preferredUsageEndpoint: "https://chatgpt.com/",
    sessionProbeUrl: "https://chatgpt.com/api/auth/session",
    authStoreKind: "webviewProfile",
    collectionKind: "webviewCollector",
    loginHost: "auth.openai.com",
    collectorHost: "chatgpt.com"
  },
  {
    id: "gemini",
    loginStartUrl: "https://gemini.google.com/usage",
    preferredUsageEndpoint: "https://cloudcode-pa.googleapis.com/v1internal:retrieveUserQuota",
    sessionProbeUrl: "https://gemini.google.com/app",
    authStoreKind: "nativeToken",
    collectionKind: "nativeAPI",
    loginHost: "accounts.google.com",
    collectorHost: "gemini.google.com"
  },
  {
    id: "copilot",
    loginStartUrl: "https://github.com/settings/copilot/features",
    preferredUsageEndpoint: "https://github.com/github-copilot/chat/entitlement",
    sessionProbeUrl: "https://github.com/settings/copilot/features",
    authStoreKind: "webviewProfile",
    collectionKind: "webviewCollector",
    loginHost: "api.github.com",
    collectorHost: "github.com"
  },
  {
    id: "antigravity",
    loginStartUrl: "https://antigravity.google/",
    preferredUsageEndpoint: "https://daily-cloudcode-pa.googleapis.com/v1internal:fetchAvailableModels",
    sessionProbeUrl: "https://antigravity.google/",
    authStoreKind: "nativeToken",
    collectionKind: "nativeAPI",
    loginHost: "accounts.google.com",
    collectorHost: "antigravity.google"
  },
  {
    id: "cursor",
    loginStartUrl: "https://cursor.com/dashboard",
    preferredUsageEndpoint: "https://api2.cursor.sh/auth/poll",
    sessionProbeUrl: "https://cursor.com/dashboard",
    authStoreKind: "tokenOrWebViewFallback",
    collectionKind: "nativeAPIWithWebViewFallback",
    loginHost: "api.workos.com",
    collectorHost: "cursor.com"
  }
];

test("iOS provider definitions mirror Android provider URLs and collection strategies", () => {
  const definitionPath = "ios/AIQuotaMobile/Domain/ProviderDefinitions.swift";
  assert.equal(existsSync(join(root, definitionPath)), true, `${definitionPath} should exist`);
  const definitions = source(definitionPath);

  assert.match(definitions, /struct ProviderDefinition: Equatable/);
  assert.match(definitions, /enum ProviderAuthStoreKind: String/);
  assert.match(definitions, /enum ProviderCollectionKind: String/);
  assert.match(definitions, /static let all: \[ProviderDefinition\] = \[/);

  for (const provider of providerCases) {
    assert.match(definitions, new RegExp(`providerId: \\.${provider.id}`), `${provider.id} definition should exist`);
    assert.match(definitions, new RegExp(escapeRegExp(`loginStartUrl: "${provider.loginStartUrl}"`)));
    assert.match(definitions, new RegExp(escapeRegExp(`preferredUsageEndpoint: "${provider.preferredUsageEndpoint}"`)));
    assert.match(definitions, new RegExp(escapeRegExp(`sessionProbeUrl: "${provider.sessionProbeUrl}"`)));
    assert.match(definitions, new RegExp(`authStoreKind: \\.${provider.authStoreKind}`));
    assert.match(definitions, new RegExp(`collectionKind: \\.${provider.collectionKind}`));
  }
});

test("iOS provider definitions keep login and collector allowlists separate", () => {
  const definitions = source("ios/AIQuotaMobile/Domain/ProviderDefinitions.swift");

  assert.match(definitions, /let loginAllowedHosts: Set<String>/);
  assert.match(definitions, /let collectorAllowedHosts: Set<String>/);
  assert.match(definitions, /func isLoginNavigationAllowed\(providerId: ProviderId, url: String\) -> Bool/);
  assert.match(definitions, /func isCollectorNavigationAllowed\(providerId: ProviderId, url: String\) -> Bool/);
  assert.match(definitions, /func isAllowed\(providerId: ProviderId, url: String\) -> Bool/);
  assert.match(definitions, /accounts\\.google\\.\(\?:com\|\[a-z\]\{2\}\|co\\\.\[a-z\]\{2\}\|com\\\.\[a-z\]\{2\}\)/);

  for (const provider of providerCases) {
    assert.match(definitions, new RegExp(escapeRegExp(`"${provider.loginHost}"`)), `${provider.id} login host should be listed`);
    assert.match(definitions, new RegExp(escapeRegExp(`"${provider.collectorHost}"`)), `${provider.id} collector host should be listed`);
  }

  for (const provider of providerCases.filter((item) => item.loginHost !== item.collectorHost)) {
    const collectorHosts = collectorHostBlockFor(definitions, provider.id);
    assert.doesNotMatch(
      collectorHosts,
      new RegExp(escapeRegExp(`"${provider.loginHost}"`)),
      `${provider.id} collector allowlist should not include login-only host ${provider.loginHost}`
    );
  }
});

test("iOS provider allowlists have Swift unit-test coverage and Xcode membership", () => {
  const testPath = "ios/AIQuotaMobileTests/ProviderDefinitionsTests.swift";
  assert.equal(existsSync(join(root, testPath)), true, `${testPath} should exist`);
  const tests = source(testPath);
  const project = source("ios/AIQuotaMobile.xcodeproj/project.pbxproj");

  assert.match(tests, /testRegistryMirrorsAndroidProviderDefinitions/);
  assert.match(tests, /testLoginAllowedHostsAcceptOAuthAndProviderHosts/);
  assert.match(tests, /testCollectorAllowedHostsRejectLoginOnlyHosts/);
  assert.match(tests, /testRegionalGoogleAccountHostsAreAcceptedForGoogleLoginProviders/);
  assert.match(tests, /testUnrelatedHostsAndMalformedUrlsAreRejected/);
  assert.match(project, /ProviderDefinitions.swift in Sources/);
  assert.match(project, /ProviderDefinitionsTests.swift in Sources/);
});

function escapeRegExp(value) {
  return value.replace(/[.*+?^${}()|[\]\\]/g, "\\$&");
}

function collectorHostBlockFor(definitions, providerId) {
  const providerStart = definitions.indexOf(`providerId: .${providerId}`);
  assert.notEqual(providerStart, -1, `${providerId} provider block should exist`);
  const collectorStart = definitions.indexOf("collectorAllowedHosts: Set([", providerStart);
  assert.notEqual(collectorStart, -1, `${providerId} collector block should exist`);
  const collectorEnd = definitions.indexOf("preferredUsageEndpoint:", collectorStart);
  assert.notEqual(collectorEnd, -1, `${providerId} endpoint should follow collector block`);
  return definitions.slice(collectorStart, collectorEnd);
}
