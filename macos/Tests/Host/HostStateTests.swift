import Foundation

private enum Failure: Error { case assertion(String) }
private func expect(_ condition: @autoclosure () -> Bool, _ message: String) throws {
    guard condition() else { throw Failure.assertion(message) }
}
private func expectError(_ action: () throws -> Void) throws {
    do { try action() } catch { return }
    throw Failure.assertion("Expected a rejected state")
}

@main struct HostStateTests {
    static func main() throws {
        let directory = URL(fileURLWithPath: CommandLine.arguments[1], isDirectory: true).appendingPathComponent(UUID().uuidString)
        try FileManager.default.createDirectory(at: directory, withIntermediateDirectories: true)
        let file = directory.appendingPathComponent("preferences.json")
        var preferences = try DesktopPreferences.load(from: file)
        try expect(!preferences.onboardingComplete && preferences.automaticRefresh, "Missing file uses initial settings")
        preferences.language = .english; preferences.appearance = .light; preferences.cardStyle = .windows
        preferences.automaticRefresh = false; preferences.onboardingComplete = true
        preferences.pinnedAccountIDs = (0..<6).map { _ in UUID() }
        preferences.representativeAccountID = preferences.pinnedAccountIDs[2]
        try preferences.save(to: file)
        let restored = try DesktopPreferences.load(from: file)
        try expect(restored.language == .english && restored.appearance == .light && restored.cardStyle == .windows,
                   "Language, appearance and card style survive reopening")
        try expect(!restored.automaticRefresh && restored.onboardingComplete && restored.pinnedAccountIDs == preferences.pinnedAccountIDs && restored.representativeAccountID == preferences.representativeAccountID,
                   "Collection, onboarding, six ordered pins and representative survive reopening")
        let bytes = try Data(contentsOf: file)
        try expect(restored.panel == nil, "Existing schema 1 settings load with the panel disabled")
        var panelSettings = restored
        panelSettings.panel = DesktopPanelPreferences(visible: true, accountIDs: Array(preferences.pinnedAccountIDs.reversed()),
                                                     frame: DesktopPanelFrame(CGRect(x: -400, y: 120, width: 480, height: 500)))
        panelSettings.panelAlwaysOnTop = true; panelSettings.panelStyle = "battery"
        let panelFile = directory.appendingPathComponent("panel.json")
        try panelSettings.save(to: panelFile)
        let panelRestored = try DesktopPreferences.load(from: panelFile)
        try expect(panelRestored.panel?.visible == true && panelRestored.panel?.accountIDs == Array(preferences.pinnedAccountIDs.reversed()) &&
                   panelRestored.panelAlwaysOnTop && panelRestored.panelStyle == "battery" && panelRestored.panel?.frame == panelSettings.panel?.frame,
                   "Panel visibility, order, appearance, size and position survive reopening")
        panelSettings.panel?.accountIDs = []; try panelSettings.save(to: panelFile)
        try expect(tryPanelIDs(panelFile) == [], "Explicit empty panel selection does not become the menu fallback")
        let panelBytes = try Data(contentsOf: panelFile)
        panelSettings.panel?.accountIDs = (0..<7).map { _ in UUID() }
        try expectError { try panelSettings.save(to: panelFile) }
        try expect(tryData(panelFile) == panelBytes, "Panel overflow preserves the stored configuration")
        panelSettings.panel?.accountIDs = [idForDuplicate, idForDuplicate]
        try expectError { try panelSettings.save(to: panelFile) }
        panelSettings.panel?.accountIDs = []; panelSettings.panel?.frame?.width = .nan
        try expectError { try panelSettings.save(to: panelFile) }
        try expect(DashboardDeepLink.matches(DashboardDeepLink.url) && !DashboardDeepLink.matches(URL(string: "aiquota://dashboard?replace=true")!), "Dashboard routing accepts only its exact URL")
        var invalid = preferences; invalid.pinnedAccountIDs.append(UUID())
        try expectError { try invalid.save(to: file) }
        try expect(tryData(file) == bytes, "Capacity rejection preserves previous file")
        invalid = preferences; invalid.pinnedAccountIDs[1] = invalid.pinnedAccountIDs[0]
        try expectError { try invalid.save(to: file) }
        invalid = preferences; invalid.schemaVersion = 999
        try expectError { try invalid.save(to: file) }
        try expect(tryData(file) == bytes, "Invalid settings never overwrite previous file")
        let corrupt = directory.appendingPathComponent("future.json")
        var future = try JSONSerialization.jsonObject(with: bytes) as! [String: Any]
        future["schemaVersion"] = 999
        let futureBytes = try JSONSerialization.data(withJSONObject: future)
        try futureBytes.write(to: corrupt)
        try expectError { _ = try DesktopPreferences.load(from: corrupt) }
        try expect(tryData(corrupt) == futureBytes, "Future schema file is preserved")
        try expect(!SharedPaths.hasSignedGroupEntitlement && SharedPaths.snapshotURL == nil, "Unsigned test host cannot access production App Group")
        let id = UUID()
        try expect(AccountDeepLink.accountID(AccountDeepLink.url(id)) == id, "Account link retains exact UUID")
        for raw in ["https://account/\(id)", "aiquota://other/\(id)", "aiquota://user@account/\(id)",
                    "aiquota://account:80/\(id)", "aiquota://account/\(id)?replace=true", "aiquota://account/\(id)#x",
                    "aiquota://account/\(id)/other", "aiquota://account//\(id)", "aiquota://account/\(id)/", "aiquota://account/not-a-uuid"] {
            try expect(AccountDeepLink.accountID(URL(string: raw)!) == nil, "Reject unexpected account URL shape: \(raw)")
        }
        print("PASS: missing/default preferences; persisted settings; six-account capacity; duplicate pins; future schema preservation; account URL roundtrip and 10 invalid shapes")
        print("Retained fixtures: \(directory.path)")
    }
    private static func tryData(_ url: URL) -> Data? { try? Data(contentsOf: url) }
    private static let idForDuplicate = UUID()
    private static func tryPanelIDs(_ url: URL) -> [UUID]? { (try? DesktopPreferences.load(from: url))?.panel?.accountIDs }
}
