import Foundation
import Testing
@testable import AIQuotaCore

private let widgetNow = Date(timeIntervalSince1970: 1_800_000_000)
private func widgetAccount(_ provider: ProviderID, state: ConnectionState = .connected, fetched: Date? = widgetNow,
                           metrics: [UsageMetric]? = nil) throws -> DisplayAccount {
    try DisplayAccount(id: UUID(), provider: provider, alias: provider.displayName + " 한국어 계정", isHidden: false,
                       state: state, plan: "Test", fetchedAt: fetched,
                       metrics: metrics ?? [UsageMetric(id: "session", label: "Session", period: "5h", remainingFraction: 0.4)])
}

@Test func widgetFamiliesEnforceEveryCapacityWithoutSilentlyTruncating() throws {
    for kind in WidgetKind.allCases {
        let ids = (0..<kind.capacity).map { _ in UUID().uuidString }
        for size in WidgetSize.allCases {
            if kind.sizes.contains(size) {
                let presentation = try WidgetPresentation(kind: kind, size: size, selectedIDs: ids, snapshot: nil)
                #expect(presentation.slots.map { $0.id.uuidString } == ids)
                #expect(presentation.slots.allSatisfy { $0.account == nil })
                #expect(throws: CoreError.widgetCapacity(kind.capacity)) {
                    try WidgetPresentation(kind: kind, size: size, selectedIDs: ids + [UUID().uuidString], snapshot: nil)
                }
            } else {
                #expect(throws: WidgetPresentationError.unsupportedSize) {
                    try WidgetPresentation(kind: kind, size: size, selectedIDs: ids, snapshot: nil)
                }
            }
        }
    }
}

@Test func widgetsKeepTwoClaudeAndTwoCodexAccountsAndIndependentOrderedSelections() throws {
    let accounts = try [.claude, .claude, .codex, .codex, .grok, .glm].map { try widgetAccount($0) }
    let snapshot = WidgetSnapshot(revision: 14, writtenAt: widgetNow, accounts: accounts)
    let chosen = [accounts[3], accounts[1], accounts[2], accounts[0]]
    let first = try WidgetSelection(kind: .dashboardFour, accountIDs: chosen.map(\.id))
    let second = try WidgetSelection(kind: .batterySix, accountIDs: accounts.reversed().map(\.id))
    let encoder = JSONEncoder(); let decoder = JSONDecoder()
    let firstRestored = try decoder.decode(WidgetSelection.self, from: encoder.encode(first))
    let secondRestored = try decoder.decode(WidgetSelection.self, from: encoder.encode(second))
    let one = try WidgetPresentation(kind: firstRestored.kind, size: .medium,
                                     selectedIDs: firstRestored.accountIDs.map(\.uuidString), snapshot: snapshot)
    let two = try WidgetPresentation(kind: secondRestored.kind, size: .large,
                                     selectedIDs: secondRestored.accountIDs.map(\.uuidString), snapshot: snapshot)
    #expect(one.slots.compactMap(\.account) == chosen)
    #expect(two.slots.compactMap(\.account) == Array(accounts.reversed()))
    #expect(one.revision == two.revision)
    #expect(firstRestored.instanceID != secondRestored.instanceID)
    for provider in ProviderID.allCases {
        let account = try widgetAccount(provider)
        let p = try WidgetPresentation(kind: .provider, size: .small, selectedIDs: [account.id.uuidString],
                                       snapshot: WidgetSnapshot(revision: 1, writtenAt: widgetNow, accounts: [account]))
        #expect(p.slots.first?.account?.provider == provider)
    }
}

@Test func missingHiddenAndDisconnectedWidgetAccountsNeverBorrowOtherUsage() throws {
    let connected = try widgetAccount(.claude)
    let disconnected = try widgetAccount(.codex, state: .disconnected)
    let hidden = DisplayAccount(id: UUID(), provider: .claude, alias: "Hidden", isHidden: true, state: .connected,
                                plan: nil, fetchedAt: widgetNow, metrics: connected.metrics)
    let missing = UUID()
    let snapshot = WidgetSnapshot(revision: 2, writtenAt: widgetNow, accounts: [connected, disconnected, hidden])
    let p = try WidgetPresentation(kind: .dashboardFour, size: .medium,
                                   selectedIDs: [missing, disconnected.id, hidden.id, connected.id].map(\.uuidString), snapshot: snapshot)
    #expect(p.slots[0].id == missing && p.slots[0].account == nil && p.slots[0].metrics.isEmpty)
    #expect(p.slots[1].metrics.isEmpty && p.slots[1].representative == nil)
    #expect(p.slots[2].account?.id == hidden.id)
    #expect(p.slots[3].representative?.remainingFraction == 0.4)
    #expect(throws: CoreError.duplicateSelection) {
        try WidgetPresentation(kind: .batteryTwo, size: .small, selectedIDs: [connected.id.uuidString, connected.id.uuidString], snapshot: snapshot)
    }
    #expect(throws: WidgetPresentationError.invalidAccountID) {
        try WidgetPresentation(kind: .batteryTwo, size: .small, selectedIDs: [connected.id.uuidString, "bad-id"], snapshot: snapshot)
    }
}

@Test func widgetAgeNeverAdvancesFetchedAtOrFillsMissingQuota() throws {
    let unknown = try UsageMetric(id: "first", label: "Unknown", period: "week", status: .unknown)
    let later = try UsageMetric(id: "second", label: "Known", period: "5h", remainingFraction: 0.9)
    let account = try widgetAccount(.claude, metrics: [unknown, later])
    let snapshot = WidgetSnapshot(revision: 4, writtenAt: widgetNow.addingTimeInterval(900), accounts: [account])
    let p = try WidgetPresentation(kind: .provider, size: .large, selectedIDs: [account.id.uuidString], snapshot: snapshot)
    let slot = try #require(p.slots.first)
    #expect(!slot.isStale(at: widgetNow.addingTimeInterval(299)))
    #expect(slot.isStale(at: widgetNow.addingTimeInterval(300)))
    #expect(slot.account?.fetchedAt == widgetNow)
    #expect(slot.representative?.status == .unknown && slot.representative?.remainingFraction == nil)
    for state in [ConnectionState.stale, .authenticationRequired, .unavailable] {
        let a = try widgetAccount(.codex, state: state)
        let value = try WidgetPresentation(kind: .provider, size: .small, selectedIDs: [a.id.uuidString],
                                           snapshot: WidgetSnapshot(revision: 1, writtenAt: widgetNow, accounts: [a]))
        #expect(value.slots[0].isStale(at: widgetNow))
        #expect(value.slots[0].account?.fetchedAt == widgetNow)
    }
}

@Test func onlyInstalledWidgetKindsUsingChangedAccountsRequestReload() throws {
    let claude = try widgetAccount(.claude)
    let codex = try widgetAccount(.codex)
    let grok = try widgetAccount(.grok)
    let old = WidgetSnapshot(revision: 1, writtenAt: widgetNow, accounts: [claude, codex, grok])
    let configurations = [WidgetReloadConfiguration(kind: .dashboardFour, selectedIDs: [claude.id.uuidString]),
                          WidgetReloadConfiguration(kind: .batteryTwo, selectedIDs: [codex.id.uuidString]),
                          WidgetReloadConfiguration(kind: .provider, selectedIDs: [grok.id.uuidString])]
    #expect(try WidgetReloadPlanner.kinds(previous: nil, current: old, configurations: configurations) == [.dashboardFour, .batteryTwo, .provider])
    let reordered = WidgetSnapshot(revision: 2, writtenAt: widgetNow, accounts: [codex, claude, grok])
    #expect(try WidgetReloadPlanner.kinds(previous: old, current: reordered, configurations: configurations).isEmpty)
    let deleted = WidgetSnapshot(revision: 3, writtenAt: widgetNow, accounts: [claude, grok])
    #expect(try WidgetReloadPlanner.kinds(previous: reordered, current: deleted, configurations: configurations) == [.batteryTwo])
    #expect(try WidgetReloadPlanner.kinds(previous: old, current: deleted,
        configurations: [WidgetReloadConfiguration(kind: .batterySix, selectedIDs: nil)]) == [.batterySix])
    #expect(try WidgetReloadPlanner.kinds(previous: old, current: deleted, configurations: []).isEmpty)
}
