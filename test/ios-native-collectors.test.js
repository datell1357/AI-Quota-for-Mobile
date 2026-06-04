import test from "node:test";
import assert from "node:assert/strict";
import { existsSync, readFileSync } from "node:fs";
import { join } from "node:path";

const root = process.cwd();

function source(path) {
  return readFileSync(join(root, path), "utf8");
}

test("iOS native collectors define OAuth configuration, token storage, and provider API paths", () => {
  const sourcePath = "ios/AIQuotaMobile/Providers/NativeProviderCollectors.swift";
  assert.equal(existsSync(join(root, sourcePath)), true, `${sourcePath} should exist`);
  const nativeCollectors = source(sourcePath);

  assert.match(nativeCollectors, /struct NativeOAuthConfiguration: Equatable/);
  assert.match(nativeCollectors, /AIQuotaGeminiIOSClientId/);
  assert.match(nativeCollectors, /AIQuotaAntigravityIOSClientId/);
  assert.match(nativeCollectors, /aiquota-gemini/);
  assert.match(nativeCollectors, /aiquota-antigravity/);
  assert.match(nativeCollectors, /ProviderSecretStore/);
  assert.match(nativeCollectors, /ProviderSecretKind\.refreshToken/);
  assert.match(nativeCollectors, /ProviderSecretKind\.accessToken/);
  assert.match(nativeCollectors, /ProviderSecretKind\.pkceVerifier/);
  assert.match(nativeCollectors, /protocol NativeProviderHTTPClient/);
  assert.match(nativeCollectors, /final class URLSessionNativeProviderHTTPClient/);
  assert.match(nativeCollectors, /func refreshAccessToken/);
  assert.match(nativeCollectors, /func collectGemini/);
  assert.match(nativeCollectors, /cloudcode-pa\.googleapis\.com\/v1internal:retrieveUserQuota/);
  assert.match(nativeCollectors, /func collectAntigravity/);
  assert.match(nativeCollectors, /daily-cloudcode-pa\.googleapis\.com\/v1internal:fetchAvailableModels/);
  assert.match(nativeCollectors, /func collectCursor/);
  assert.match(nativeCollectors, /requiresWebViewFallback/);
  assert.match(nativeCollectors, /BACKEND_API_FORBIDDEN/);
  assert.match(nativeCollectors, /ProviderUsageNormalizer\.normalize/);
});

test("iOS app declares native OAuth redirect schemes and client-id Info.plist slots", () => {
  const plist = source("ios/AIQuotaMobile/Info.plist");

  assert.match(plist, /CFBundleURLTypes/);
  assert.match(plist, /aiquota-gemini/);
  assert.match(plist, /aiquota-antigravity/);
  assert.match(plist, /AIQuotaGeminiIOSClientId/);
  assert.match(plist, /AIQuotaAntigravityIOSClientId/);
});

test("Swift mocked collector tests cover refresh, forbidden, trusted payload, and fallback", () => {
  const testPath = "ios/AIQuotaMobileTests/NativeProviderCollectorsTests.swift";
  assert.equal(existsSync(join(root, testPath)), true, `${testPath} should exist`);
  const tests = source(testPath);
  const project = source("ios/AIQuotaMobile.xcodeproj/project.pbxproj");

  assert.match(tests, /final class NativeProviderCollectorsTests: XCTestCase/);
  assert.match(tests, /MockNativeProviderHTTPClient/);
  assert.match(tests, /InMemoryProviderSecretStore/);
  assert.match(tests, /testGeminiRefreshesTokenAndNormalizesTrustedPayload/);
  assert.match(tests, /testAntigravityPrivateApiForbiddenMapsWithoutReloginLoop/);
  assert.match(tests, /testCursorNativeFailureRequestsWebViewFallback/);
  assert.match(tests, /testOAuthConfigurationUsesIOSClientIdsAndRedirectSchemes/);
  assert.match(tests, /BACKEND_API_FORBIDDEN/);
  assert.match(tests, /ProviderUsageNormalizer/);

  assert.match(project, /NativeProviderCollectors.swift in Sources/);
  assert.match(project, /NativeProviderCollectorsTests.swift in Sources/);
});
