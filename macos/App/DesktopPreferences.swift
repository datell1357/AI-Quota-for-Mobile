import Foundation
import SwiftUI

struct DesktopPreferences: Codable {
    enum Language: String, Codable, CaseIterable { case system, korean, english }
    enum Appearance: String, Codable, CaseIterable { case system, light, dark }
    enum CardStyle: String, Codable, CaseIterable { case macOS, windows }
    var schemaVersion = 1
    var language: Language = .system
    var appearance: Appearance = .system
    var cardStyle: CardStyle = .macOS
    var automaticRefresh = true
    var onboardingComplete = false
    var pinnedAccountIDs: [UUID] = []
    var representativeAccountID: UUID?
    var panelAlwaysOnTop = false
    var panelStyle = "list"
    var panel: DesktopPanelPreferences?

    var usesKorean: Bool {
        language == .korean || (language == .system && Locale.preferredLanguages.first?.hasPrefix("ko") == true)
    }
    var colorScheme: ColorScheme? {
        switch appearance { case .system: nil; case .light: .light; case .dark: .dark }
    }
    func validate() throws {
        guard schemaVersion == 1, pinnedAccountIDs.count <= 6,
              Set(pinnedAccountIDs).count == pinnedAccountIDs.count,
              ["list", "battery"].contains(panelStyle) else { throw CocoaError(.coderReadCorrupt) }
        try panel?.validate()
    }
    static func load(from url: URL) throws -> Self {
        guard FileManager.default.fileExists(atPath: url.path) else { return Self() }
        let value = try JSONDecoder().decode(Self.self, from: Data(contentsOf: url))
        try value.validate()
        return value
    }
    func save(to url: URL) throws {
        try validate()
        try FileManager.default.createDirectory(at: url.deletingLastPathComponent(), withIntermediateDirectories: true)
        let encoder = JSONEncoder(); encoder.outputFormatting = [.sortedKeys]
        try encoder.encode(self).write(to: url, options: .atomic)
    }
}
