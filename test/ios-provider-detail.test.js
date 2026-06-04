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

test("iOS provider detail mirrors summary, usage rows, analysis, metadata, and actions", () => {
  const detailPath = "ios/AIQuotaMobile/UI/ProviderDetail/ProviderDetailView.swift";
  assert.equal(existsSync(join(root, detailPath)), true, `${detailPath} should exist`);

  const detail = source(detailPath);
  for (const required of [
    "struct ProviderDetailView: View",
    "struct ProviderDetailWindow: View",
    "struct ProviderDetailSummaryBlock: View",
    "struct ProviderDetailUsageLineRow: View",
    "struct ProviderDetailAnalysisSection: View",
    "struct ProviderDetailMetadataView: View",
    "provider_detail_status",
    "provider_detail_plan",
    "provider_detail_updated",
    "provider_usage_title",
    "provider_analysis_title",
    "metadata_title",
    "provider_connect",
    "provider_disconnect",
    "provider_add_widget",
    "primaryConnectionAction()",
    "ProgressView",
    "remainingPercent",
    "metadataText",
    "provider-detail-"
  ]) {
    assertContains(detail, required);
  }
});

test("iOS provider detail helper tests cover status, action policy, analysis, and metadata", () => {
  const testsPath = "ios/AIQuotaMobileTests/ProviderDetailTests.swift";
  assert.equal(existsSync(join(root, testsPath)), true, `${testsPath} should exist`);

  const tests = source(testsPath);
  for (const required of [
    "testProviderStatusShowsBusyBeforeConnectionState",
    "testProviderStatusKeepsStaleWithLinesConnected",
    "testAnalysisFindsLowestRemainingLine",
    "testMetadataTextIncludesCategoryUnitWindowSourceConfidence",
    "testConnectAndDisconnectActionsFollowSnapshotPolicy",
    "XCTAssertEqual(providerDetailStatus(",
    "XCTAssertEqual(analysis.lowestLabel",
    "category: chat",
    "confidence: 64%"
  ]) {
    assertContains(tests, required);
  }
});

test("iOS provider detail is wired into app shell and Xcode target", () => {
  const shell = source("ios/AIQuotaMobile/UI/AIQuotaAppShell.swift");
  const project = source("ios/AIQuotaMobile.xcodeproj/project.pbxproj");

  assertContains(shell, "ProviderDetailView(");
  assert.doesNotMatch(shell, /ProviderDetailShellView/);
  assertContains(shell, "providerDetailSnapshot(for:");

  for (const required of [
    "path = ProviderDetail;",
    "path = ProviderDetailView.swift;",
    "ProviderDetailView.swift in Sources",
    "ProviderDetailTests.swift in Sources"
  ]) {
    assertContains(project, required);
  }
});
