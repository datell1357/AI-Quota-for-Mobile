import AIQuotaCore
import CryptoKit
import Foundation

public enum GLMAPIError: Error, Equatable, Sendable {
    case invalidConfiguration, invalidKey, noSubscription
}

/// The quota API has no user subject. This is an authenticated credential binding,
/// not a claim that a remote user ID or email was discovered.
public struct GLMAPIConfiguration: Equatable, Sendable {
    public enum Region: String, CaseIterable, Sendable { case global, china = "bigmodel-cn" }
    public enum Scope: String, CaseIterable, Sendable { case personal, team }
    public let region: Region
    public let scope: Scope
    public let organization: String?
    public let project: String?

    public init(region: Region = .global, scope: Scope = .personal,
                organization: String? = nil, project: String? = nil) throws {
        if scope == .team {
            guard let organization, let project, Self.validSelector(organization), Self.validSelector(project)
            else { throw GLMAPIError.invalidConfiguration }
        } else if organization != nil || project != nil { throw GLMAPIError.invalidConfiguration }
        self.region = region; self.scope = scope; self.organization = organization; self.project = project
    }

    public var host: String { region == .global ? "api.z.ai" : "open.bigmodel.cn" }
    public var endpoint: URL {
        URL(string: "https://\(host)/api/monitor/usage/quota/limit\(scope == .team ? "?type=2" : "")")!
    }
    public func binding(apiKey: String) throws -> RemoteIdentity {
        let key = try Self.normalizedKey(apiKey)
        let fingerprint = SHA256.hash(data: Data(key.utf8)).map { String(format: "%02x", $0) }.joined()
        let workspace = try organization.map { organization in
            String(decoding: try JSONEncoder().encode([organization, project!]), as: UTF8.self)
        }
        return try RemoteIdentity(subject: "api-key-sha256:\(fingerprint)", workspace: workspace,
                                  product: "glm-api-key-v1:\(region.rawValue):\(scope.rawValue)")
    }
    public init(binding: RemoteIdentity) throws {
        let parts = binding.product.split(separator: ":", omittingEmptySubsequences: false)
        guard parts.count == 3, parts[0] == "glm-api-key-v1", let region = Region(rawValue: String(parts[1])),
              let scope = Scope(rawValue: String(parts[2])), binding.subject.hasPrefix("api-key-sha256:"),
              binding.subject.dropFirst(15).count == 64,
              binding.subject.dropFirst(15).allSatisfy({ "0123456789abcdef".contains($0) })
        else { throw CoreError.identityMismatch }
        var selectors: [String] = []
        if let workspace = binding.workspace {
            guard let values = try? JSONDecoder().decode([String].self, from: Data(workspace.utf8)), values.count == 2
            else { throw CoreError.identityMismatch }
            selectors = values
        }
        guard (scope == .team && selectors.count == 2) || (scope == .personal && binding.workspace == nil)
        else { throw CoreError.identityMismatch }
        try self.init(region: region, scope: scope, organization: selectors.first, project: selectors.last)
    }
    public static func normalizedKey(_ value: String) throws -> String {
        let key = value.trimmingCharacters(in: .whitespacesAndNewlines)
        guard !key.isEmpty, key.utf8.count <= 8192,
              key.unicodeScalars.allSatisfy({ (33...126).contains($0.value) })
        else { throw GLMAPIError.invalidKey }
        return key
    }
    private static func validSelector(_ value: String) -> Bool {
        !value.isEmpty && value.utf8.count <= 256 && value.unicodeScalars.allSatisfy({ (33...126).contains($0.value) })
    }
}
