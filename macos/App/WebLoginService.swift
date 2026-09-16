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
    case claude, codex, grok, cursor, opencode
    init?(provider: ProviderID) {
        switch provider { case .claude: self = .claude; case .codex: self = .codex; case .grok: self = .grok; case .cursor: self = .cursor; case .opencode: self = .opencode; default: return nil }
    }
    var provider: ProviderID { switch self { case .claude: .claude; case .codex: .codex; case .grok: .grok; case .cursor: .cursor; case .opencode: .opencode } }
    var product: String { switch self { case .claude: "claude-subscription"; case .codex: "codex-subscription"; case .grok: "grok-weekly"; case .cursor: "cursor-subscription"; case .opencode: "opencode-workspace" } }
    var requiresWorkspace: Bool { self == .claude || self == .codex || self == .opencode }
    var origin: URL {
        let value = switch self { case .claude: "https://claude.ai/"; case .codex: "https://chatgpt.com/"; case .grok: "https://grok.com/"; case .cursor: "https://cursor.com/"; case .opencode: "https://opencode.ai/" }
        return URL(string: value)!
    }
    var loginURL: URL {
        let value = switch self { case .claude: "https://claude.ai/login"; case .codex: "https://chatgpt.com/auth/login"; case .grok: "https://grok.com/sign-in?return_to=%2F"; case .cursor: "https://cursor.com/dashboard"; case .opencode: "https://opencode.ai/auth" }
        return URL(string: value)!
    }
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
        case .grok:
            let found = try await GrokWebClient(transport: transport).discover(cookieHeader: cookieHeader)
            return WebLoginDiscovery(subject: found.subject, email: found.email, choices: [])
        case .cursor:
            let found = try await CursorWebClient(transport: transport).discover(cookieHeader: cookieHeader)
            return WebLoginDiscovery(subject: found.subject, email: found.email, choices: [])
        case .opencode:
            let found = try await OpenCodeWebClient(transport: transport).discover(cookieHeader: cookieHeader)
            return WebLoginDiscovery(subject: found.subject, email: found.email, choices: found.workspaces.map { .init(id: $0.id, name: $0.name) })
        }
    }
    func verify(cookieHeader: String, identity: RemoteIdentity, transport: any HTTPTransport) async throws {
        switch self {
        case .claude: _ = try await ClaudeWebClient(transport: transport).collect(cookieHeader: cookieHeader, expected: identity)
        case .codex: _ = try await CodexWebClient(transport: transport).collect(cookieHeader: cookieHeader, expected: identity)
        case .grok: _ = try await GrokWebClient(transport: transport).collect(cookieHeader: cookieHeader, expected: identity)
        case .cursor: _ = try await CursorWebClient(transport: transport).collect(cookieHeader: cookieHeader, expected: identity)
        case .opencode: _ = try await OpenCodeWebClient(transport: transport).collect(cookieHeader: cookieHeader, expected: identity)
        }
    }
}
