import test from "node:test";
import assert from "node:assert/strict";
import { existsSync, readFileSync } from "node:fs";
import { join } from "node:path";

const root = process.cwd();

function source(path) {
  return readFileSync(join(root, path), "utf8");
}

test("iOS secure provider state uses Keychain for provider secrets", () => {
  const sourcePath = "ios/AIQuotaMobile/Security/ProviderSecureState.swift";
  assert.equal(existsSync(join(root, sourcePath)), true, `${sourcePath} should exist`);
  const secureState = source(sourcePath);

  assert.match(secureState, /import Security/);
  assert.match(secureState, /enum ProviderSecretKind: String/);
  assert.match(secureState, /struct ProviderSecretDescriptor: Equatable/);
  assert.match(secureState, /final class KeychainProviderSecretStore/);
  assert.match(secureState, /kSecClassGenericPassword/);
  assert.match(secureState, /kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly/);
  assert.match(secureState, /SecItemAdd/);
  assert.match(secureState, /SecItemCopyMatching/);
  assert.match(secureState, /SecItemDelete/);
  assert.doesNotMatch(secureState, /UserDefaults[\s\S]{0,120}(token|secret|cookie|verifier)/i);
});

test("iOS WebView provider sessions use provider-partitioned WKWebsiteDataStore profiles", () => {
  const secureState = source("ios/AIQuotaMobile/Security/ProviderSecureState.swift");

  assert.match(secureState, /import WebKit/);
  assert.match(secureState, /struct ProviderWebSessionProfile: Equatable/);
  assert.match(secureState, /static func profile\(for providerId: ProviderId\) -> ProviderWebSessionProfile/);
  assert.match(secureState, /WKWebsiteDataStore\(forIdentifier: identifier\)/);
  assert.match(secureState, /WKWebsiteDataStore\.remove\(forIdentifier: identifier/);
  for (const provider of ["claude", "codex", "gemini", "copilot", "antigravity", "cursor"]) {
    assert.match(secureState, new RegExp(`\\.${provider}: UUID\\(uuidString:`), `${provider} should have a stable profile UUID`);
  }
});

test("iOS widget App Group cache exposes only sanitized provider snapshot schema", () => {
  const secureState = source("ios/AIQuotaMobile/Security/ProviderSecureState.swift");

  assert.match(secureState, /struct ProviderWidgetCacheEnvelope: Codable, Equatable/);
  assert.match(secureState, /struct SanitizedWidgetProviderSnapshot: Codable, Equatable/);
  assert.match(secureState, /enum ProviderWidgetSnapshotSanitizer/);
  assert.match(secureState, /final class AppGroupWidgetSnapshotStore/);
  assert.match(secureState, /containerURL\(\s*forSecurityApplicationGroupIdentifier:/);
  assert.match(secureState, /ProviderWidgetSnapshotSanitizer\.sanitize/);

  const sanitizedSchema = structBlock(secureState, "SanitizedWidgetProviderSnapshot");
  for (const forbidden of ["token", "cookie", "session", "secret", "auth", "authorization", "verifier", "rawPayload", "html"]) {
    assert.doesNotMatch(sanitizedSchema, new RegExp(forbidden, "i"), `widget schema should not expose ${forbidden}`);
  }
});

test("iOS secure provider state has Swift unit-test coverage and Xcode membership", () => {
  const testPath = "ios/AIQuotaMobileTests/ProviderSecureStateTests.swift";
  assert.equal(existsSync(join(root, testPath)), true, `${testPath} should exist`);
  const tests = source(testPath);
  const project = source("ios/AIQuotaMobile.xcodeproj/project.pbxproj");

  assert.match(tests, /testKeychainDescriptorScopesSecretsByProviderAndKind/);
  assert.match(tests, /testWebSessionProfilesUseStableUniqueIdentifiers/);
  assert.match(tests, /testWidgetSnapshotSanitizerDropsProviderSecretsAndRawArtifacts/);
  assert.match(tests, /testWidgetCacheEnvelopeUsesSanitizedSchemaVersion/);
  assert.match(project, /ProviderSecureState.swift in Sources/);
  assert.match(project, /ProviderSecureStateTests.swift in Sources/);
});

function structBlock(file, structName) {
  const start = file.indexOf(`struct ${structName}`);
  assert.notEqual(start, -1, `${structName} should exist`);
  const end = file.indexOf("\n}\n", start);
  assert.notEqual(end, -1, `${structName} should have a closing brace`);
  return file.slice(start, end);
}
