import test from "node:test";
import assert from "node:assert/strict";
import { existsSync, readFileSync } from "node:fs";
import { join } from "node:path";

const root = process.cwd();

function source(path) {
  return readFileSync(join(root, path), "utf8");
}

test("iOS design tokens mirror Android theme colors and app themes", () => {
  const tokenPath = "ios/AIQuotaMobile/Design/AIQuotaDesignTokens.swift";
  assert.equal(existsSync(join(root, tokenPath)), true, `${tokenPath} should exist`);

  const tokens = source(tokenPath);
  for (const required of [
    "enum AppTheme: String, CaseIterable, Codable",
    "struct AIQuotaThemeColors",
    "static let windows",
    "static let macOS",
    "static func colors(for theme: AppTheme) -> AIQuotaThemeColors",
    "0xFF1C293C",
    "0xFFFDC800",
    "0xFF432DD7",
    "0xFFFAF9F5",
    "0xFFCC785C",
    "0xFFFF5F57",
    "0xFFFFBD2E",
    "0xFF28C840"
  ]) {
    assert.match(tokens, new RegExp(required.replace(/[.*+?^${}()|[\]\\]/g, "\\$&")), `${required} should exist`);
  }
});

test("iOS Xcode project includes design token source and tests", () => {
  const project = source("ios/AIQuotaMobile.xcodeproj/project.pbxproj");

  assert.match(project, /path = Design;/);
  assert.match(project, /path = AIQuotaDesignTokens.swift;/);
  assert.match(project, /AIQuotaDesignTokens.swift in Sources/);
  assert.match(project, /AIQuotaDesignTokensTests.swift in Sources/);
});
