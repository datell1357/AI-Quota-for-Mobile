import test from "node:test";
import assert from "node:assert/strict";
import { existsSync, readFileSync } from "node:fs";
import { join } from "node:path";

const root = process.cwd();

function source(path) {
  return readFileSync(join(root, path), "utf8");
}

function assertContains(sourceText, required, label = required) {
  assert.match(
    sourceText,
    new RegExp(required.replace(/[.*+?^${}()|[\]\\]/g, "\\$&")),
    `${label} should exist`
  );
}

function parseStrings(path) {
  const text = source(path);
  const entries = new Map();
  const pattern = /"([^"]+)"\s*=\s*"((?:\\"|[^"])*)";/g;
  for (const match of text.matchAll(pattern)) {
    entries.set(match[1], match[2]);
  }
  return entries;
}

test("iOS app and widget provide English and Korean Localizable.strings with matching keys", () => {
  const paths = [
    "ios/AIQuotaMobile/en.lproj/Localizable.strings",
    "ios/AIQuotaMobile/ko.lproj/Localizable.strings",
    "ios/AIQuotaWidget/en.lproj/Localizable.strings",
    "ios/AIQuotaWidget/ko.lproj/Localizable.strings"
  ];
  for (const path of paths) {
    assert.equal(existsSync(join(root, path)), true, `${path} should exist`);
  }

  const appEn = parseStrings(paths[0]);
  const appKo = parseStrings(paths[1]);
  const widgetEn = parseStrings(paths[2]);
  const widgetKo = parseStrings(paths[3]);

  for (const required of [
    "nav_home",
    "nav_settings",
    "dashboard_empty_title",
    "dashboard_empty_body",
    "provider_connect",
    "provider_disconnect",
    "provider_add_widget",
    "provider_usage_title",
    "provider_analysis_title",
    "settings_status_bar_gauges",
    "settings_connection_management_title",
    "settings_disconnect_all_providers",
    "settings_bug_report_send",
    "widget_no_data",
    "widget_description"
  ]) {
    assert.equal(appEn.has(required), true, `app en key ${required}`);
    assert.equal(appKo.has(required), true, `app ko key ${required}`);
  }

  assert.deepEqual([...widgetEn.keys()].sort(), [...widgetKo.keys()].sort());
  assert.equal(appKo.get("nav_settings"), "설정");
  assert.equal(appKo.get("provider_connect"), "연결");
  assert.equal(appKo.get("dashboard_empty_title"), "아직 사용량 데이터가 없습니다");
});

test("iOS Swift views use localized keys for visible labels", () => {
  const l10n = source("ios/AIQuotaMobile/Localization/L10n.swift");
  const shell = source("ios/AIQuotaMobile/UI/AIQuotaAppShell.swift");
  const dashboard = source("ios/AIQuotaMobile/UI/Dashboard/ProviderDashboardView.swift");
  const detail = source("ios/AIQuotaMobile/UI/ProviderDetail/ProviderDetailView.swift");
  const settings = source("ios/AIQuotaMobile/UI/Settings/SettingsView.swift");
  const widget = source("ios/AIQuotaWidget/AIQuotaWidget.swift");

  for (const required of [
    "enum L10n",
    "static func text(_ key: String) -> String",
    "String(localized:"
  ]) {
    assertContains(l10n, required);
  }

  for (const [sourceText, required] of [
    [shell, "L10n.text(\"nav_home\")"],
    [shell, "L10n.text(\"nav_settings\")"],
    [dashboard, "L10n.text(\"dashboard_empty_title\")"],
    [dashboard, "L10n.text(\"provider_connect\")"],
    [detail, "L10n.text(\"provider_usage_title\")"],
    [detail, "L10n.text(\"provider_analysis_title\")"],
    [settings, "L10n.text(\"settings_status_bar_gauges\")"],
    [settings, "L10n.text(\"settings_disconnect_all_providers\")"],
    [widget, "String(localized: \"widget_description\")"]
  ]) {
    assertContains(sourceText, required);
  }
});

test("iOS localization UI tests cover Korean and English launch languages", () => {
  const uiTestsPath = "ios/AIQuotaMobileUITests/LocalizationUITests.swift";
  assert.equal(existsSync(join(root, uiTestsPath)), true, `${uiTestsPath} should exist`);

  const uiTests = source(uiTestsPath);
  for (const required of [
    "testKoreanLaunchShowsKoreanNavigationLabels",
    "testEnglishLaunchShowsEnglishNavigationLabels",
    "-AppleLanguages",
    "(ko)",
    "(en)",
    "홈",
    "설정",
    "Home",
    "Settings"
  ]) {
    assertContains(uiTests, required);
  }
});

test("iOS Xcode project includes localization sources and resources for app and widget", () => {
  const project = source("ios/AIQuotaMobile.xcodeproj/project.pbxproj");
  for (const required of [
    "path = Localization;",
    "path = L10n.swift;",
    "L10n.swift in Sources",
    "Localizable.strings in Resources",
    "LocalizationUITests.swift in Sources",
    "en.lproj",
    "ko.lproj"
  ]) {
    assertContains(project, required);
  }
});
