import Foundation

public enum ProviderID: String, Codable, CaseIterable, Sendable {
    case claude, codex, cursor, grok, kiro, opencode, glm, antigravity, gemini, copilot

    public var supportsMultipleAccounts: Bool { self == .claude || self == .codex }
    public var displayName: String {
        switch self {
        case .claude: "Claude"
        case .codex: "Codex"
        case .cursor: "Cursor"
        case .grok: "Grok"
        case .kiro: "Kiro"
        case .opencode: "OpenCode"
        case .glm: "GLM"
        case .antigravity: "Antigravity"
        case .gemini: "Gemini"
        case .copilot: "GitHub Copilot"
        }
    }
}

public enum CoreError: Error, Equatable, Sendable {
    case invalidIdentity, invalidMetric, invalidAlias, invalidThreshold
    case accountNotFound, singleAccountOnly, duplicateRemoteIdentity
    case identityMismatch, staleAttempt, invalidTimestamp, invalidOrder
    case unsupportedSchema(Int), invalidSnapshot, unsupportedSnapshot(Int)
    case widgetCapacity(Int), duplicateSelection, unavailableAccount
}

/// Stable provider subject and product scope; never use display names for identity.
public struct RemoteIdentity: Codable, Equatable, Hashable, Sendable {
    public let subject: String
    public let workspace: String?
    public let product: String

    public init(subject: String, workspace: String? = nil, product: String) throws {
        guard !subject.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty,
              !product.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty,
              workspace == nil || !workspace!.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty
        else { throw CoreError.invalidIdentity }
        self.subject = subject
        self.workspace = workspace
        self.product = product
    }

    enum CodingKeys: CodingKey { case subject, workspace, product }
    public init(from decoder: any Decoder) throws {
        let c = try decoder.container(keyedBy: CodingKeys.self)
        try self.init(subject: c.decode(String.self, forKey: .subject),
                      workspace: c.decodeIfPresent(String.self, forKey: .workspace),
                      product: c.decode(String.self, forKey: .product))
    }
}

public enum AuthenticationMethod: String, Codable, Sendable {
    case webSession, oauth, apiKey, localApplication, deviceFlow
}
public enum CredentialOwner: String, Codable, Sendable {
    case aiQuota, codexCLI, claudeCode, cursorApplication, browser
    public var mayRefreshInAIQuota: Bool { self == .aiQuota }
}
public enum ConnectionState: String, Codable, Sendable {
    case disconnected, connecting, connected, stale, authenticationRequired, unavailable, error
}

public struct NotificationPreferences: Codable, Equatable, Sendable {
    public var resetEnabled: Bool
    public let thresholdPercent: Int?

    public init(resetEnabled: Bool = false, thresholdPercent: Int? = nil) throws {
        if let thresholdPercent, !(0...100).contains(thresholdPercent) { throw CoreError.invalidThreshold }
        self.resetEnabled = resetEnabled
        self.thresholdPercent = thresholdPercent
    }

    enum CodingKeys: CodingKey { case resetEnabled, thresholdPercent }
    public init(from decoder: any Decoder) throws {
        let c = try decoder.container(keyedBy: CodingKeys.self)
        try self.init(resetEnabled: c.decode(Bool.self, forKey: .resetEnabled),
                      thresholdPercent: c.decodeIfPresent(Int.self, forKey: .thresholdPercent))
    }
}

/// Credential references are opaque Keychain/profile identifiers, never token or cookie values.
public struct Account: Codable, Equatable, Identifiable, Sendable {
    public let id: UUID
    public let provider: ProviderID
    public internal(set) var alias: String
    public internal(set) var order: Int
    public internal(set) var isHidden: Bool
    public internal(set) var generation: UUID
    public internal(set) var sessionRevision: UInt64
    public internal(set) var identity: RemoteIdentity?
    public internal(set) var authenticationMethod: AuthenticationMethod?
    public internal(set) var credentialOwner: CredentialOwner?
    public internal(set) var credentialReference: UUID?
    public internal(set) var state: ConnectionState
    public internal(set) var notifications: NotificationPreferences
    public internal(set) var statusChangedAt: Date

    public init(id: UUID = UUID(), provider: ProviderID, alias: String, order: Int = 0, now: Date = .now) throws {
        let trimmed = alias.trimmingCharacters(in: .whitespacesAndNewlines)
        guard !trimmed.isEmpty else { throw CoreError.invalidAlias }
        self.id = id; self.provider = provider; self.alias = trimmed; self.order = order
        self.isHidden = false; self.generation = UUID(); self.sessionRevision = 0
        self.state = .disconnected; self.notifications = try NotificationPreferences()
        self.statusChangedAt = now
    }
}

public enum QuotaStatus: String, Codable, Sendable { case limited, unlimited, balance, unknown, unsupported }
public enum MetricAccuracy: String, Codable, Sendable { case measured, estimated, unknown }
public enum MetricSource: String, Codable, Sendable { case webAPI, oauthAPI, webPage, cli, localEstimate }

/// Percentages are normalized ONLY by a provider adapter with known input units.
public struct UsageMetric: Codable, Equatable, Identifiable, Sendable {
    public let id: String
    public let label: String
    public let period: String
    public let unit: String
    public let status: QuotaStatus
    public let remainingFraction: Double?
    public let used: Double?
    public let remaining: Double?
    public let limit: Double?
    public let resetsAt: Date?
    public let startsAt: Date?
    public let source: MetricSource
    public let accuracy: MetricAccuracy

    public init(id: String, label: String, period: String, unit: String = "percent",
                status: QuotaStatus = .limited, remainingFraction: Double? = nil,
                used: Double? = nil, remaining: Double? = nil, limit: Double? = nil,
                resetsAt: Date? = nil, startsAt: Date? = nil,
                source: MetricSource = .webAPI, accuracy: MetricAccuracy = .measured) throws {
        guard [id, label, period, unit].allSatisfy({ !$0.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty }),
              [used, remaining, limit].compactMap({ $0 }).allSatisfy({ $0.isFinite && $0 >= 0 }),
              [resetsAt, startsAt].compactMap({ $0 }).allSatisfy({ (-62_135_596_800...253_402_300_799).contains($0.timeIntervalSince1970) })
        else { throw CoreError.invalidMetric }
        if let startsAt, let resetsAt, startsAt >= resetsAt { throw CoreError.invalidMetric }
        switch status {
        case .limited:
            guard let remainingFraction, remainingFraction.isFinite, (0...1).contains(remainingFraction),
                  limit == nil || limit! > 0 else { throw CoreError.invalidMetric }
        case .balance:
            guard remaining != nil, remainingFraction == nil, limit == nil else { throw CoreError.invalidMetric }
        case .unlimited:
            guard remainingFraction == nil, limit == nil, remaining == nil else { throw CoreError.invalidMetric }
        case .unknown, .unsupported:
            guard remainingFraction == nil, used == nil, remaining == nil, limit == nil else { throw CoreError.invalidMetric }
        }
        self.id = id; self.label = label; self.period = period; self.unit = unit
        self.status = status; self.remainingFraction = remainingFraction
        self.used = used; self.remaining = remaining; self.limit = limit
        self.resetsAt = resetsAt; self.startsAt = startsAt; self.source = source; self.accuracy = accuracy
    }

    enum CodingKeys: CodingKey {
        case id, label, period, unit, status, remainingFraction, used, remaining, limit, resetsAt, startsAt, source, accuracy
    }
    public init(from decoder: any Decoder) throws {
        let c = try decoder.container(keyedBy: CodingKeys.self)
        try self.init(id: c.decode(String.self, forKey: .id), label: c.decode(String.self, forKey: .label),
                      period: c.decode(String.self, forKey: .period), unit: c.decode(String.self, forKey: .unit),
                      status: c.decode(QuotaStatus.self, forKey: .status),
                      remainingFraction: c.decodeIfPresent(Double.self, forKey: .remainingFraction),
                      used: c.decodeIfPresent(Double.self, forKey: .used),
                      remaining: c.decodeIfPresent(Double.self, forKey: .remaining),
                      limit: c.decodeIfPresent(Double.self, forKey: .limit),
                      resetsAt: c.decodeIfPresent(Date.self, forKey: .resetsAt),
                      startsAt: c.decodeIfPresent(Date.self, forKey: .startsAt),
                      source: c.decode(MetricSource.self, forKey: .source),
                      accuracy: c.decode(MetricAccuracy.self, forKey: .accuracy))
    }
}

public struct UsageReport: Codable, Equatable, Sendable {
    public let identity: RemoteIdentity
    public let fetchedAt: Date
    public let plan: String?
    public let metrics: [UsageMetric]

    public init(identity: RemoteIdentity, fetchedAt: Date, plan: String? = nil, metrics: [UsageMetric]) {
        self.identity = identity; self.fetchedAt = fetchedAt; self.plan = plan; self.metrics = metrics
    }
}

/// This lease is minted by the authority, not by a UI surface or collector.
public struct CollectionLease: Equatable, Sendable {
    public let accountID: UUID
    public let provider: ProviderID
    public let generation: UUID
    public let sessionRevision: UInt64
    public let sequence: Int64
    public let identity: RemoteIdentity
    public let startedAt: Date
}
