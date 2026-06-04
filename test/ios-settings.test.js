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

test("iOS settings mirrors notification, theme, connection, hide, and support sections", () => {
  const settingsPath = "ios/AIQuotaMobile/UI/Settings/SettingsView.swift";
  assert.equal(existsSync(join(root, settingsPath)), true, `${settingsPath} should exist`);

  const settings = source(settingsPath);
  for (const required of [
    "struct SettingsView: View",
    "struct SettingsSection<Content: View>: View",
    "struct NotificationSettingsSection: View",
    "struct ThemeSettingsSection: View",
    "struct ConnectionManagementSection: View",
    "struct ProviderConnectionSettingsRow: View",
    "struct SupportSettingsSection: View",
    "settings_status_bar_gauges",
    "settings_live_refresh_title",
    "settings_theme_title",
    "settings_connection_management_title",
    "settings_disconnect_all_providers",
    "settings_provider_hidden",
    "settings_bug_report_send",
    "Picker(L10n.text(\"settings_theme_title\")",
    "Toggle(",
    "onProviderHiddenChanged",
    "settings-provider-"
  ]) {
    assertContains(settings, required);
  }
});

test("iOS settings helper tests cover live-refresh, ordering, action, hide persistence codec, and bug report", () => {
  const testsPath = "ios/AIQuotaMobileTests/SettingsViewTests.swift";
  assert.equal(existsSync(join(root, testsPath)), true, `${testsPath} should exist`);

  const tests = source(testsPath);
  for (const required of [
    "testSettingsLiveRefreshStateRequiresNotificationPermissionAndFreshHeartbeat",
    "testSettingsConnectionRowsFollowProviderOrderAndHiddenSet",
    "testSettingsConnectionActionDisconnectsNonDisconnectedSnapshots",
    "testSettingsProviderSetCodecDropsUnknownAndDuplicateValues",
    "testBugReportDraftKeepsCategoryProviderDescriptionAndDiagnosticsFlag",
    "XCTAssertEqual(settingsConnectionAction(",
    "XCTAssertEqual(encodeProviderSet(",
    "XCTAssertEqual(draft.category"
  ]) {
    assertContains(tests, required);
  }
});

test("iOS settings is wired into app shell and Xcode target", () => {
  const shell = source("ios/AIQuotaMobile/UI/AIQuotaAppShell.swift");
  const project = source("ios/AIQuotaMobile.xcodeproj/project.pbxproj");

  assertContains(shell, "SettingsView(");
  assert.doesNotMatch(shell, /SettingsShellView/);
  assertContains(shell, "@AppStorage(\"settings.hiddenProviders\")");
  assertContains(shell, "visibleProviderOrder");

  for (const required of [
    "path = Settings;",
    "path = SettingsView.swift;",
    "SettingsView.swift in Sources",
    "SettingsViewTests.swift in Sources"
  ]) {
    assertContains(project, required);
  }
});
