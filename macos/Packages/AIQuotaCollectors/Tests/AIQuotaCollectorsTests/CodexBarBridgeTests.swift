import AIQuotaCore
import CodexBarCore
import Foundation
import Testing
@testable import AIQuotaCollectors

@Test func codexBarResponseFlowsThroughDatabaseIntoDisplaySnapshot() async throws {
    let data = Data(#"{"account_id":"workspace-a","plan_type":"prolite","rate_limit":{"primary_window":{"used_percent":1,"reset_at":1900000000,"limit_window_seconds":604800}},"credits":{"has_credits":true,"unlimited":false,"balance":"4.5"}}"#.utf8)
    let response = try JSONDecoder().decode(CodexUsageResponse.self, from: data)
    let now = Date(timeIntervalSince1970: 1_800_000_000)
    let repository = try AccountRepository(url: FileManager.default.temporaryDirectory.appendingPathComponent("AIQuotaBridge-\(UUID())/accounts.sqlite"))
    let account = try await repository.add(provider: .codex, alias: "Personal", now: now)
    let identity = try RemoteIdentity(subject: "user-a", workspace: "workspace-a", product: "codex-subscription")
    try await repository.connect(account.id, expectedGeneration: account.generation, expectedSessionRevision: 0,
                                 identity: identity, method: .oauth, owner: .aiQuota, credentialReference: UUID(), now: now)
    let lease = try await repository.beginCollection(account.id, now: now)
    let report = try CodexBarBridge.codex(response, identity: identity, fetchedAt: now)
    _ = try await repository.accept(report, for: lease, now: now)
    let display = try await repository.displaySnapshot(now: now)
    #expect(display.accounts.first?.metrics.first?.remainingFraction == 0.99)
    #expect(display.accounts.first?.metrics.first?.period == "604800s")
    #expect(display.accounts.first?.metrics.last?.remaining == 4.5)
    #expect(display.accounts.first?.metrics.last?.remainingFraction == nil)
    #expect(display.accounts.first?.plan == "prolite")
    let other = try RemoteIdentity(subject: "user-a", workspace: "workspace-b", product: "codex-subscription")
    #expect(throws: CoreError.identityMismatch) { try CodexBarBridge.codex(response, identity: other, fetchedAt: now) }
}

@Test func syntheticOrUnknownCodexBarWindowsNeverBecomeFullQuota() throws {
    let synthetic = RateWindow(usedPercent: 0, windowMinutes: 300, resetsAt: nil, resetDescription: nil, isSyntheticPlaceholder: true)
    #expect(try CodexBarBridge.metric(synthetic, id: "session", label: "Session", period: "5h") == nil)
    let unknown = RateWindow(usedPercent: 0, windowMinutes: 300, resetsAt: nil, resetDescription: nil)
    let metric = try CodexBarBridge.metric(unknown, id: "weekly", label: "Weekly", period: "week", usageKnown: false)
    #expect(metric?.remainingFraction == nil)
    #expect(metric?.status == .unknown)
    for invalid in [Double.nan, .infinity, -1] {
        let window = RateWindow(usedPercent: invalid, windowMinutes: nil, resetsAt: nil, resetDescription: nil)
        #expect(throws: (any Error).self) { try CodexBarBridge.metric(window, id: "usage", label: "Usage", period: "month") }
    }
}

@Test func bundledGLMPluginLoadsItsRealResourcesAndJavaScriptRuntime() throws {
    // macOS XCTest is hosted by Xcode's xctest executable, outside our product directory.
    // Launch the real SwiftPM executable beside its bundles to validate the shipping host layout.
    let probe = Bundle.module.bundleURL.deletingLastPathComponent().appendingPathComponent("AIQuotaResourceProbe")
    let process = Process(); process.executableURL = probe
    let output = Pipe(); process.standardOutput = output; process.standardError = output
    try process.run(); process.waitUntilExit()
    let result = String(decoding: output.fileHandleForReading.readDataToEndOfFile(), as: UTF8.self)
    #expect(process.terminationStatus == 0, "\(result)")
    #expect(result.contains("GLM bundled resource and JavaScript runtime verified"))
}
