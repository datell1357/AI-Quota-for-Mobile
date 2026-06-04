import test from "node:test";
import assert from "node:assert/strict";
import { existsSync, readFileSync } from "node:fs";
import { join } from "node:path";

const root = process.cwd();

function source(path) {
  return readFileSync(join(root, path), "utf8");
}

test("iOS WebView login collector shell mirrors Android WebLoginActivity structure", () => {
  const sourcePath = "ios/AIQuotaMobile/Providers/ProviderWebLoginCollector.swift";
  assert.equal(existsSync(join(root, sourcePath)), true, `${sourcePath} should exist`);
  const webLogin = source(sourcePath);

  assert.match(webLogin, /import WebKit/);
  assert.match(webLogin, /final class ProviderWebLoginCollectorShell: NSObject/);
  assert.match(webLogin, /WKNavigationDelegate/);
  assert.match(webLogin, /WKScriptMessageHandler/);
  assert.match(webLogin, /static let bridgeName = "AIQuotaCollectorBridge"/);
  assert.match(webLogin, /ProviderDefinitionRegistry\.definition\(for:/);
  assert.match(webLogin, /ProviderWebSessionProfile\.profile\(for:/);
  assert.match(webLogin, /configuration\.websiteDataStore = .*makeWebsiteDataStore\(\)/);
  assert.match(webLogin, /allowsContentJavaScript = true/);
  assert.match(webLogin, /javaScriptCanOpenWindowsAutomatically = true/);
  assert.match(webLogin, /load\(URLRequest\(url: startURL\)\)/);
});

test("iOS WebView collector injects after allowed page/resource readiness and includes fetch/XHR hooks", () => {
  const webLogin = source("ios/AIQuotaMobile/Providers/ProviderWebLoginCollector.swift");

  assert.match(webLogin, /enum ProviderWebCollectorPolicy/);
  assert.match(webLogin, /static func shouldRunCollector\(providerId: ProviderId, pageURL: String, pageText: String\) -> Bool/);
  assert.match(webLogin, /static func shouldRunCollectorFromResource\(\s*providerId: ProviderId,\s*pageURL: String,\s*resourceURL: String\s*\) -> Bool/);
  assert.match(webLogin, /ProviderDefinitionRegistry\.isCollectorNavigationAllowed/);
  assert.match(webLogin, /func webView\(_ webView: WKWebView, didFinish navigation:/);
  assert.match(webLogin, /evaluateJavaScript\(Self\.pageCaptureScript/);
  assert.match(webLogin, /injectCollectorIfReady\(webView: webView, pageURL:/);
  assert.match(webLogin, /window\.fetch/);
  assert.match(webLogin, /XMLHttpRequest\.prototype\.open/);
  assert.match(webLogin, /messageHandlers\.AIQuotaCollectorBridge\.postMessage/);
  assert.match(webLogin, /resourceURL/);
});

test("iOS WebView bridge accepts trusted usage payloads and rejects mismatched providers", () => {
  const webLogin = source("ios/AIQuotaMobile/Providers/ProviderWebLoginCollector.swift");

  assert.match(webLogin, /struct ProviderWebCollectorMessage: Codable/);
  assert.match(webLogin, /enum ProviderWebCollectorBridgeEvent: Equatable/);
  assert.match(webLogin, /enum ProviderWebCollectorMessageProcessor/);
  assert.match(webLogin, /static func process\(\s*message: ProviderWebCollectorMessage,\s*expectedProviderId: ProviderId,\s*pageURL: String\s*\) -> ProviderWebCollectorBridgeEvent/);
  assert.match(webLogin, /ProviderWebCollectorPolicy\.shouldAcceptCollectorPayload/);
  assert.match(webLogin, /ProviderWebCollectorPolicy\.shouldAcceptCollectorError/);
  assert.match(webLogin, /case usagePayload\(String\)/);
  assert.match(webLogin, /case collectorError\(String\)/);
  assert.match(webLogin, /case ignored/);
});

test("iOS WebView collector local HTML fixture posts trusted payload and Swift tests cover update path", () => {
  const fixturePath = "test/fixtures/ios-web-collector/trusted-codex-collector.html";
  const testPath = "ios/AIQuotaMobileTests/ProviderWebLoginCollectorTests.swift";
  assert.equal(existsSync(join(root, fixturePath)), true, `${fixturePath} should exist`);
  assert.equal(existsSync(join(root, testPath)), true, `${testPath} should exist`);

  const fixture = source(fixturePath);
  const tests = source(testPath);
  const project = source("ios/AIQuotaMobile.xcodeproj/project.pbxproj");

  assert.match(fixture, /window\.webkit\.messageHandlers\.AIQuotaCollectorBridge\.postMessage/);
  assert.match(fixture, /"type": "usagePayload"/);
  assert.match(fixture, /"provider": "codex"/);
  assert.match(tests, /testLocalHtmlFixturePostsTrustedUsagePayload/);
  assert.match(tests, /testTrustedPayloadUpdatesProviderSnapshot/);
  assert.match(tests, /testMismatchedProviderPayloadIsIgnored/);
  assert.match(tests, /testCollectorErrorIsAcceptedOnAllowedProviderPage/);
  assert.match(project, /ProviderWebLoginCollector.swift in Sources/);
  assert.match(project, /ProviderWebLoginCollectorTests.swift in Sources/);
});
