import AIQuotaCollectors
import AIQuotaCore
import Foundation

struct WebLoginDiscovery: Sendable {
    struct Choice: Identifiable, Sendable { let id: String; let name: String }
    let subject: String
    let email: String?
    let choices: [Choice]
}

/// Shared sheet behavior with explicit provider-specific identity and usage verification.
enum WebLoginService: Sendable {
    case claude, codex
    init?(provider: ProviderID) {
        switch provider { case .claude: self = .claude; case .codex: self = .codex; default: return nil }
    }
    var provider: ProviderID { self == .claude ? .claude : .codex }
    var product: String { self == .claude ? "claude-subscription" : "codex-subscription" }
    var origin: URL { URL(string: self == .claude ? "https://claude.ai/" : "https://chatgpt.com/")! }
    var loginURL: URL { URL(string: self == .claude ? "https://claude.ai/login" : "https://chatgpt.com/auth/login")! }
    func discover(cookieHeader: String, transport: any HTTPTransport) async throws -> WebLoginDiscovery {
        switch self {
        case .claude:
            let found = try await ClaudeWebClient(transport: transport).discover(cookieHeader: cookieHeader)
            return WebLoginDiscovery(subject: found.subject, email: found.email,
                                     choices: found.organizations.map { .init(id: $0.id, name: $0.name) })
        case .codex:
            let found = try await CodexWebClient(transport: transport).discover(cookieHeader: cookieHeader)
            return WebLoginDiscovery(subject: found.subject, email: found.email,
                                     choices: found.workspaces.map { .init(id: $0.id, name: $0.name) })
        }
    }
    func verify(cookieHeader: String, identity: RemoteIdentity, transport: any HTTPTransport) async throws {
        switch self {
        case .claude: _ = try await ClaudeWebClient(transport: transport).collect(cookieHeader: cookieHeader, expected: identity)
        case .codex: _ = try await CodexWebClient(transport: transport).collect(cookieHeader: cookieHeader, expected: identity)
        }
    }
}
