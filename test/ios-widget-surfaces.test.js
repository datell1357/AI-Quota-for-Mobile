import test from "node:test";
import assert from "node:assert/strict";
import { existsSync, readFileSync } from "node:fs";
import { join } from "node:path";

const root = process.cwd();

function source(path) {
  return readFileSync(join(root, path), "utf8");
}

test("iOS WidgetKit surfaces read only sanitized App Group provider cache", () => {
  const widgetPath = "ios/AIQuotaWidget/AIQuotaWidget.swift";
  assert.equal(existsSync(join(root, widgetPath)), true, `${widgetPath} should exist`);
  const widget = source(widgetPath);

  assert.match(widget, /import WidgetKit/);
  assert.match(widget, /struct AIQuotaWidgetCacheReader/);
  assert.match(widget, /containerURL\(\s*forSecurityApplicationGroupIdentifier:/);
  assert.match(widget, /group\.com\.aiquota\.mobile/);
  assert.match(widget, /provider-widget-cache\.json/);
  assert.match(widget, /struct WidgetCacheEnvelope: Decodable/);
  assert.match(widget, /struct WidgetProviderSnapshot: Decodable, Identifiable/);
  assert.match(widget, /struct WidgetUsageLine: Decodable, Identifiable/);
  assert.doesNotMatch(widget, /SnapshotCache\.shared/);
  assert.doesNotMatch(widget, /UsageSnapshot/);
  assert.doesNotMatch(widget, /ProviderSecret|Keychain|WKWebsiteDataStore|token|cookie|rawPayload|html/i);
});

test("iOS WidgetKit supports dashboard and provider-focused small medium large families", () => {
  const widget = source("ios/AIQuotaWidget/AIQuotaWidget.swift");

  assert.match(widget, /@main\s+struct AIQuotaWidgets: WidgetBundle/);
  assert.match(widget, /struct AIQuotaDashboardWidget: Widget/);
  assert.match(widget, /struct AIQuotaProviderWidget: Widget/);
  assert.match(widget, /struct DashboardWidgetProvider: TimelineProvider/);
  assert.match(widget, /struct ProviderFocusedWidgetProvider: TimelineProvider/);
  assert.match(widget, /struct DashboardWidgetView: View/);
  assert.match(widget, /struct ProviderFocusedWidgetView: View/);
  assert.match(widget, /@Environment\(\\\.widgetFamily\)/);
  assert.match(widget, /\.systemSmall/);
  assert.match(widget, /\.systemMedium/);
  assert.match(widget, /\.systemLarge/);
  assert.match(widget, /dashboardVisibleProviders/);
  assert.match(widget, /providerFocusedSnapshot/);
});

test("iOS WidgetKit previews cover empty connected stale and error states", () => {
  const widget = source("ios/AIQuotaWidget/AIQuotaWidget.swift");

  assert.match(widget, /enum AIQuotaWidgetPreviewFixtures/);
  assert.match(widget, /static let empty/);
  assert.match(widget, /static let connected/);
  assert.match(widget, /static let stale/);
  assert.match(widget, /static let error/);
  assert.match(widget, /#Preview\("Dashboard Empty"/);
  assert.match(widget, /#Preview\("Dashboard Connected"/);
  assert.match(widget, /#Preview\("Provider Stale"/);
  assert.match(widget, /#Preview\("Provider Error"/);
});

test("Swift widget surface tests document sanitized-cache rendering rules and Xcode membership", () => {
  const testPath = "ios/AIQuotaMobileTests/WidgetSurfaceTests.swift";
  assert.equal(existsSync(join(root, testPath)), true, `${testPath} should exist`);
  const tests = source(testPath);
  const project = source("ios/AIQuotaMobile.xcodeproj/project.pbxproj");

  assert.match(tests, /final class WidgetSurfaceTests: XCTestCase/);
  assert.match(tests, /testDashboardEntryUsesSanitizedCacheOnly/);
  assert.match(tests, /testDashboardProviderLimitMatchesSmallMediumLargeFamilies/);
  assert.match(tests, /testProviderFocusedSnapshotPrefersMostUrgentProvider/);
  assert.match(tests, /testWidgetPreviewFixturesCoverEmptyConnectedStaleAndError/);
  assert.match(tests, /ProviderWidgetCacheEnvelope/);
  assert.match(tests, /SanitizedWidgetProviderSnapshot/);
  assert.match(project, /AIQuotaWidget.swift in Sources/);
  assert.match(project, /WidgetSurfaceTests.swift in Sources/);
});
