import Foundation
import Security

nonisolated enum DashboardDeepLink {
    static let url = URL(string: "aiquota://dashboard")!
    static func matches(_ value: URL) -> Bool { value.absoluteString == url.absoluteString }
}

nonisolated enum SharedPaths {
    static let groupID = "group.com.aiquota.macos"
    static let snapshotName = "usage-snapshot-v1.json"
    /// A path returned by FileManager alone does not prove access to an App Group.
    /// Unsigned/ad-hoc development builds must not touch a previous app's protected container.
    static var hasSignedGroupEntitlement: Bool {
        var code: SecCode?
        guard SecCodeCopySelf([], &code) == errSecSuccess, let code else { return false }
        var staticCode: SecStaticCode?
        guard SecCodeCopyStaticCode(code, [], &staticCode) == errSecSuccess, let staticCode else { return false }
        var raw: CFDictionary?
        guard SecCodeCopySigningInformation(staticCode, SecCSFlags(rawValue: kSecCSSigningInformation), &raw) == errSecSuccess,
              let info = raw as? [String: Any],
              let team = info[kSecCodeInfoTeamIdentifier as String] as? String, !team.isEmpty,
              let entitlements = info[kSecCodeInfoEntitlementsDict as String] as? [String: Any],
              let groups = entitlements["com.apple.security.application-groups"] as? [String] else { return false }
        return groups.contains(groupID)
    }
    static var snapshotURL: URL? {
        guard hasSignedGroupEntitlement else { return nil }
        return FileManager.default.containerURL(forSecurityApplicationGroupIdentifier: groupID)?.appendingPathComponent(snapshotName)
    }
}

nonisolated enum AccountDeepLink {
    static func url(_ id: UUID) -> URL { URL(string: "aiquota://account/\(id.uuidString)")! }
    static func accountID(_ url: URL) -> UUID? {
        guard url.scheme == "aiquota", url.host == "account", url.user == nil, url.password == nil,
              url.port == nil, url.query == nil, url.fragment == nil else { return nil }
        let components = url.path.split(separator: "/")
        guard components.count == 1, URLComponents(url: url, resolvingAgainstBaseURL: false)?.percentEncodedPath == "/" + components[0] else { return nil }
        return UUID(uuidString: String(components[0]))
    }
}
