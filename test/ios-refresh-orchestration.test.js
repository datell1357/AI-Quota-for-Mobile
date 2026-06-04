import test from "node:test";
import assert from "node:assert/strict";
import { existsSync, readFileSync } from "node:fs";
import { join } from "node:path";

const root = process.cwd();

function source(path) {
  return readFileSync(join(root, path), "utf8");
}

test("iOS refresh orchestration defines manual, app-active, and best-effort background paths", () => {
  const sourcePath = "ios/AIQuotaMobile/Providers/ProviderRefreshOrchestrator.swift";
  assert.equal(existsSync(join(root, sourcePath)), true, `${sourcePath} should exist`);
  const orchestrator = source(sourcePath);

  assert.match(orchestrator, /import BackgroundTasks/);
  assert.match(orchestrator, /enum ProviderRefreshTrigger: String/);
  assert.match(orchestrator, /case manual/);
  assert.match(orchestrator, /case appActive/);
  assert.match(orchestrator, /case backgroundAppRefresh/);
  assert.match(orchestrator, /protocol NativeProviderCollecting/);
  assert.match(orchestrator, /extension NativeProviderCollector: NativeProviderCollecting/);
  assert.match(orchestrator, /protocol ProviderRefreshSnapshotWriting/);
  assert.match(orchestrator, /extension SnapshotStore: ProviderRefreshSnapshotWriting/);
  assert.match(orchestrator, /final class ProviderRefreshOrchestrator: ObservableObject/);
  assert.match(orchestrator, /func refreshNow\(/);
  assert.match(orchestrator, /func refreshOnAppActive\(/);
  assert.match(orchestrator, /func handleBackgroundRefresh/);
  assert.match(orchestrator, /BGAppRefreshTask/);
  assert.match(orchestrator, /setTaskCompleted/);
  assert.match(orchestrator, /submitBestEffortAppRefresh/);
  assert.match(orchestrator, /ProviderUsageSnapshot\.collecting/);
  assert.match(orchestrator, /snapshotWriter\.applyProviderRefreshResult/);
});

test("iOS app shell wires pull-to-refresh and scenePhase active refresh", () => {
  const shell = source("ios/AIQuotaMobile/UI/AIQuotaAppShell.swift");

  assert.match(shell, /@Environment\(\\\.scenePhase\)/);
  assert.match(shell, /ProviderRefreshOrchestrator/);
  assert.match(shell, /\.refreshable\s*\{/);
  assert.match(shell, /refreshOrchestrator\.refreshNow/);
  assert.match(shell, /refreshOrchestrator\.refreshOnAppActive/);
  assert.match(shell, /scenePhase == \.active/);
  assert.match(shell, /Task\s*\{/);
});

test("iOS Info.plist declares best-effort BG app refresh without promising polling", () => {
  const plist = source("ios/AIQuotaMobile/Info.plist");

  assert.match(plist, /BGTaskSchedulerPermittedIdentifiers/);
  assert.match(plist, /com\.aiquota\.mobile\.provider-refresh/);
  assert.match(plist, /UIBackgroundModes/);
  assert.match(plist, /fetch/);
});

test("Swift refresh orchestration tests cover manual, active throttle, and background test double", () => {
  const testPath = "ios/AIQuotaMobileTests/ProviderRefreshOrchestratorTests.swift";
  assert.equal(existsSync(join(root, testPath)), true, `${testPath} should exist`);
  const tests = source(testPath);
  const project = source("ios/AIQuotaMobile.xcodeproj/project.pbxproj");

  assert.match(tests, /final class ProviderRefreshOrchestratorTests: XCTestCase/);
  assert.match(tests, /MockNativeProviderCollector/);
  assert.match(tests, /InMemoryRefreshSnapshotWriter/);
  assert.match(tests, /TestBackgroundRefreshTask/);
  assert.match(tests, /testManualRefreshCollectsProvidersAndStoresSnapshots/);
  assert.match(tests, /testAppActiveRefreshIsThrottledUntilMinimumIntervalElapses/);
  assert.match(tests, /testBackgroundRefreshCompletesTestDoubleTaskAndSchedulesNextAttempt/);
  assert.match(tests, /ProviderRefreshTrigger\.manual/);
  assert.match(tests, /ProviderRefreshTrigger\.appActive/);
  assert.match(tests, /ProviderRefreshTrigger\.backgroundAppRefresh/);

  assert.match(project, /ProviderRefreshOrchestrator.swift in Sources/);
  assert.match(project, /ProviderRefreshOrchestratorTests.swift in Sources/);
});
