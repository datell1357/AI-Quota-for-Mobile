import test from "node:test";
import assert from "node:assert/strict";
import { existsSync, readFileSync } from "node:fs";
import { join } from "node:path";

const root = process.cwd();
const fixtureDir = "test/fixtures/provider-snapshots";
const requiredFixtures = [
  "connected-codex.json",
  "disconnected-claude.json",
  "stale-gemini-with-previous-usage.json",
  "interactive-auth-copilot-with-previous-usage.json",
  "collector-error-cursor.json",
  "empty-antigravity.json",
  "malformed-provider-payload.json"
];

function fixture(path) {
  return JSON.parse(readFileSync(join(root, fixtureDir, path), "utf8"));
}

test("shared provider snapshot fixtures cover required connection states", () => {
  for (const name of requiredFixtures) {
    assert.equal(existsSync(join(root, fixtureDir, name)), true, `${name} fixture should exist`);
  }

  const states = new Set(requiredFixtures.map((name) => fixture(name).connectionState));
  for (const state of ["CONNECTED", "DISCONNECTED", "STALE", "INTERACTIVE_AUTH_REQUIRED", "ERROR"]) {
    assert.equal(states.has(state), true, `${state} fixture should exist`);
  }
});

test("shared provider snapshot fixtures use iOS and Android-compatible snapshot keys", () => {
  for (const name of requiredFixtures.filter((name) => name !== "malformed-provider-payload.json")) {
    const snapshot = fixture(name);
    assert.equal(typeof snapshot.providerId, "string", `${name} providerId`);
    assert.equal(typeof snapshot.displayName, "string", `${name} displayName`);
    assert.equal(typeof snapshot.connectionState, "string", `${name} connectionState`);
    assert.equal(typeof snapshot.refreshState, "string", `${name} refreshState`);
    assert.equal(typeof snapshot.updatedAt, "string", `${name} updatedAt`);
    assert.equal(Array.isArray(snapshot.lines), true, `${name} lines`);
    for (const line of snapshot.lines) {
      assert.equal(typeof line.label, "string", `${name} line label`);
      assert.equal(typeof line.remainingText, "string", `${name} line remainingText`);
      assert.equal(typeof line.severity, "string", `${name} line severity`);
      assert.equal(typeof line.key, "string", `${name} line key`);
    }
  }
});

test("Swift provider model tests reference the shared fixture names", () => {
  const swiftTest = readFileSync(join(root, "ios/AIQuotaMobileTests/ProviderModelsTests.swift"), "utf8");
  for (const name of requiredFixtures.filter((name) => name !== "malformed-provider-payload.json")) {
    assert.match(swiftTest, new RegExp(name.replace(/[.*+?^${}()|[\]\\]/g, "\\$&")), `${name} should be decoded by Swift tests`);
  }
});
