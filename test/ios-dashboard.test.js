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

test("iOS dashboard exposes provider cards, chrome, empty state, and actions", () => {
  const dashboardPath = "ios/AIQuotaMobile/UI/Dashboard/ProviderDashboardView.swift";
  assert.equal(existsSync(join(root, dashboardPath)), true, `${dashboardPath} should exist`);

  const dashboard = source(dashboardPath);
  for (const required of [
    "struct ProviderDashboardView: View",
    "struct ProviderUsageCard: View",
    "struct DashboardDragOverlay: View",
    "struct DashboardCardCenter: Equatable",
    "trafficRed",
    "trafficYellow",
    "trafficGreen",
    "dashboard_empty_title",
    "provider_connect",
    "provider_add_widget",
    "shouldShowDashboardConnectAction()",
    "dashboard-card-",
    "dashboard-order-",
    "onConnectProvider",
    "onAddWidget",
    "onReorderProvider"
  ]) {
    assertContains(dashboard, required);
  }
});

test("iOS dashboard implements Android-equivalent drag slot and target helpers", () => {
  const dashboard = source("ios/AIQuotaMobile/UI/Dashboard/ProviderDashboardView.swift");

  for (const required of [
    "func dragInsertionSlotFromCenter(",
    "func insertionSlotCenter(",
    "func targetIndexFromInsertionSlot(",
    "func dragTargetIndexFromCenter(",
    "func previewVisibleProviderOrder(",
    "LongPressGesture",
    "DragGesture",
    "currentVisibleIndex",
    "boundedSlot > currentVisibleIndex ? boundedSlot - 1 : boundedSlot"
  ]) {
    assertContains(dashboard, required);
  }
});

test("iOS dashboard is wired into app shell and Xcode targets", () => {
  const shell = source("ios/AIQuotaMobile/UI/AIQuotaAppShell.swift");
  const project = source("ios/AIQuotaMobile.xcodeproj/project.pbxproj");

  assertContains(shell, "ProviderDashboardView(");
  assert.doesNotMatch(shell, /DashboardShellView/);
  assertContains(shell, "@AppStorage(\"dashboard.providerOrder\")");

  for (const required of [
    "path = Dashboard;",
    "path = ProviderDashboardView.swift;",
    "ProviderDashboardView.swift in Sources",
    "DashboardReorderTests.swift in Sources",
    "DashboardReorderUITests.swift in Sources"
  ]) {
    assertContains(project, required);
  }
});

test("iOS dashboard Swift tests cover adjacent reorder, grid slots, and duplicate order input", () => {
  const testsPath = "ios/AIQuotaMobileTests/DashboardReorderTests.swift";
  assert.equal(existsSync(join(root, testsPath)), true, `${testsPath} should exist`);

  const tests = source(testsPath);
  for (const required of [
    "testDraggingFirstCardAfterAdjacentCardsTargetsInsertedPosition",
    "testDraggingLastCardBeforeAdjacentProviderTargetsBeforeProvider",
    "testGridInsertionUsesNearestSlotCenter",
    "testPreviewVisibleProviderOrderMovesProvider",
    "testPreviewVisibleProviderOrderDropsDuplicateInput",
    "XCTAssertEqual(slot, 3)",
    "XCTAssertEqual(target, 2)",
    "XCTAssertEqual(target, 1)"
  ]) {
    assertContains(tests, required);
  }
});

test("iOS dashboard UI tests document persistent adjacent-card drag acceptance", () => {
  const uiTestsPath = "ios/AIQuotaMobileUITests/DashboardReorderUITests.swift";
  assert.equal(existsSync(join(root, uiTestsPath)), true, `${uiTestsPath} should exist`);

  const uiTests = source(uiTestsPath);
  for (const required of [
    "testDragMiddleProviderBeforeAndAfterAdjacentProviderPersists",
    "press(forDuration:",
    "thenDragTo:",
    "dashboard-card-codex",
    "dashboard-card-gemini",
    "dashboard-order-"
  ]) {
    assertContains(uiTests, required);
  }
});
