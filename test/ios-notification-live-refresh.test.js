import test from "node:test";
import assert from "node:assert/strict";
import { existsSync, readFileSync } from "node:fs";
import { join } from "node:path";

const root = process.cwd();

function source(path) {
  return readFileSync(join(root, path), "utf8");
}

test("iOS notification coordinator uses local notifications and passive widget/BG refresh surfaces", () => {
  const sourcePath = "ios/AIQuotaMobile/Notifications/ProviderNotificationCoordinator.swift";
  assert.equal(existsSync(join(root, sourcePath)), true, `${sourcePath} should exist`);
  const notifications = source(sourcePath);

  assert.match(notifications, /import UserNotifications/);
  assert.match(notifications, /import WidgetKit/);
  assert.match(notifications, /enum ProviderNotificationPermissionState: String/);
  assert.match(notifications, /protocol UserNotificationScheduling/);
  assert.match(notifications, /extension UNUserNotificationCenter: UserNotificationScheduling/);
  assert.match(notifications, /struct ProviderLocalNotificationContent/);
  assert.match(notifications, /final class ProviderNotificationSettingsStore/);
  assert.match(notifications, /final class ProviderNotificationCoordinator: ObservableObject/);
  assert.match(notifications, /func handleNotificationToggle/);
  assert.match(notifications, /requestLocalNotificationAuthorization/);
  assert.match(notifications, /UNMutableNotificationContent/);
  assert.match(notifications, /UNNotificationRequest/);
  assert.match(notifications, /WidgetCenter\.shared\.reloadAllTimelines/);
  assert.match(notifications, /submitBestEffortAppRefresh/);
  assert.doesNotMatch(notifications, /foreground service|pinned notification|status bar notification/i);
});

test("iOS settings explains local notifications, permission-denied path, and passive refresh", () => {
  const settings = source("ios/AIQuotaMobile/UI/Settings/SettingsView.swift");
  const shell = source("ios/AIQuotaMobile/UI/AIQuotaAppShell.swift");
  const en = source("ios/AIQuotaMobile/en.lproj/Localizable.strings");
  const ko = source("ios/AIQuotaMobile/ko.lproj/Localizable.strings");

  for (const key of [
    "settings_ios_notifications_title",
    "settings_local_notification_toggle",
    "settings_ios_notification_explanation",
    "settings_live_refresh_passive_surfaces",
    "settings_notification_permission_denied",
    "settings_notification_permission_granted"
  ]) {
    assert.match(settings, new RegExp(`L10n\\.text\\("${key}"\\)`), `${key} should be used in SettingsView`);
    assert.match(en, new RegExp(`"${key}"\\s*=`), `${key} should be localized in English`);
    assert.match(ko, new RegExp(`"${key}"\\s*=`), `${key} should be localized in Korean`);
  }

  assert.match(settings, /notificationPermissionStatusText/);
  assert.match(settings, /ProviderNotificationPermissionState/);
  assert.match(shell, /@StateObject private var notificationCoordinator/);
  assert.match(shell, /ProviderNotificationCoordinator/);
  assert.match(shell, /handleNotificationToggle/);
});

test("Swift notification tests cover granted, denied, disabled, and UI permission paths", () => {
  const unitTestPath = "ios/AIQuotaMobileTests/ProviderNotificationCoordinatorTests.swift";
  const uiTestPath = "ios/AIQuotaMobileUITests/NotificationLiveRefreshUITests.swift";
  assert.equal(existsSync(join(root, unitTestPath)), true, `${unitTestPath} should exist`);
  assert.equal(existsSync(join(root, uiTestPath)), true, `${uiTestPath} should exist`);
  const unitTests = source(unitTestPath);
  const uiTests = source(uiTestPath);
  const project = source("ios/AIQuotaMobile.xcodeproj/project.pbxproj");

  assert.match(unitTests, /final class ProviderNotificationCoordinatorTests: XCTestCase/);
  assert.match(unitTests, /MockUserNotificationScheduler/);
  assert.match(unitTests, /MockWidgetTimelineReloader/);
  assert.match(unitTests, /testPermissionGrantedSchedulesLocalNotificationAndPassiveSurfaces/);
  assert.match(unitTests, /testPermissionDeniedDisablesNotificationsAndCancelsPendingRequests/);
  assert.match(unitTests, /testDisablingNotificationsCancelsPendingRequestAndReloadsPassiveSurfaces/);
  assert.match(unitTests, /testNotificationContentUsesMostUrgentProviderWithoutSecrets/);
  assert.match(uiTests, /testNotificationPermissionDisabledPathShowsSettingsCopy/);
  assert.match(uiTests, /testNotificationPermissionAllowedPathShowsLocalNotificationCopy/);
  assert.match(project, /ProviderNotificationCoordinator.swift in Sources/);
  assert.match(project, /ProviderNotificationCoordinatorTests.swift in Sources/);
  assert.match(project, /NotificationLiveRefreshUITests.swift in Sources/);
});
