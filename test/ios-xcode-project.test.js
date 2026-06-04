import test from "node:test";
import assert from "node:assert/strict";
import { existsSync, readFileSync } from "node:fs";
import { join } from "node:path";

const root = process.cwd();

function source(path) {
  return readFileSync(join(root, path), "utf8");
}

test("iOS Xcode project declares app, widget, unit-test, and UI-test targets", () => {
  const projectPath = "ios/AIQuotaMobile.xcodeproj/project.pbxproj";
  assert.equal(existsSync(join(root, projectPath)), true, `${projectPath} should exist`);

  const project = source(projectPath);
  const expectedTargets = [
    "AIQuotaMobile",
    "AIQuotaWidgetExtension",
    "AIQuotaMobileTests",
    "AIQuotaMobileUITests"
  ];

  for (const target of expectedTargets) {
    assert.match(project, new RegExp(`name = ${target};`), `${target} target should be declared`);
  }

  assert.match(project, /PRODUCT_BUNDLE_IDENTIFIER = com\.aiquota\.mobile;/);
  assert.match(project, /PRODUCT_BUNDLE_IDENTIFIER = com\.aiquota\.mobile\.widget;/);
  assert.match(project, new RegExp("INFOPLIST_FILE = ios/AIQuotaMobile/Info.plist;"));
  assert.match(project, new RegExp("INFOPLIST_FILE = ios/AIQuotaWidget/Info.plist;"));
});

test("iOS Xcode project includes existing app and widget Swift sources", () => {
  const project = source("ios/AIQuotaMobile.xcodeproj/project.pbxproj");
  const appSources = [
    "AIQuotaMobileApp.swift",
    "ContentView.swift",
    "Models.swift",
    "SessionViewModel.swift",
    "SnapshotStore.swift",
    "SnapshotCache.swift"
  ];
  const widgetSources = ["AIQuotaWidget.swift"];

  for (const file of [...appSources, ...widgetSources]) {
    assert.match(project, new RegExp(`path = ${file};`), `${file} should be referenced`);
  }
});
