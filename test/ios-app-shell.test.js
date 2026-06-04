import test from "node:test";
import assert from "node:assert/strict";
import { existsSync, readFileSync } from "node:fs";
import { join } from "node:path";

const root = process.cwd();

function source(path) {
  return readFileSync(join(root, path), "utf8");
}

test("iOS app shell exposes home, settings, and provider-detail navigation", () => {
  const shellPath = "ios/AIQuotaMobile/UI/AIQuotaAppShell.swift";
  assert.equal(existsSync(join(root, shellPath)), true, `${shellPath} should exist`);

  const shell = source(shellPath);
  for (const required of [
    "enum AppRoute: Equatable",
    "case home",
    "case settings",
    "case providerDetail(ProviderId)",
    "struct AIQuotaAppShell: View",
    "struct AppTopBar: View",
    "struct AppNavigationBar: View",
    "struct RouteChip: View",
    "struct ProviderNavigationChip: View",
    "ProviderId.defaultOrder",
    "AIQuotaDesignTokens.colors(for:"
  ]) {
    assert.match(shell, new RegExp(required.replace(/[.*+?^${}()|[\]\\]/g, "\\$&")), `${required} should exist`);
  }
});

test("iOS ContentView routes signed-in users through the app shell", () => {
  const content = source("ios/AIQuotaMobile/ContentView.swift");

  assert.match(content, /AIQuotaAppShell\(/);
  assert.doesNotMatch(content, /SnapshotListView\(\)/);
});

test("iOS Xcode project includes app shell source and UI shell tests", () => {
  const project = source("ios/AIQuotaMobile.xcodeproj/project.pbxproj");

  assert.match(project, /path = UI;/);
  assert.match(project, /path = AIQuotaAppShell.swift;/);
  assert.match(project, /AIQuotaAppShell.swift in Sources/);
  assert.match(project, /AIQuotaAppShellTests.swift in Sources/);
});
