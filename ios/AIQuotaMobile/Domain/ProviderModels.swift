import Foundation

enum ProviderId: String, CaseIterable, Codable, Identifiable {
    case claude
    case codex
    case gemini
    case copilot
    case antigravity
    case cursor

    var id: String { rawValue }
    var storageId: String { rawValue }

    var displayName: String {
        switch self {
        case .claude: return "Claude"
        case .codex: return "Codex"
        case .gemini: return "Gemini"
        case .copilot: return "Copilot"
        case .antigravity: return "Antigravity"
        case .cursor: return "Cursor"
        }
    }

    static let defaultOrder: [ProviderId] = [.claude, .codex, .gemini, .copilot, .antigravity, .cursor]

    static func fromStorageId(_ value: String?) -> ProviderId? {
        let normalized = value?.trimmingCharacters(in: .whitespacesAndNewlines).lowercased() ?? ""
        return allCases.first { $0.storageId == normalized }
    }
}

enum ProviderConnectionState: String, Codable {
    case disconnected = "DISCONNECTED"
    case notConnected = "NOT_CONNECTED"
    case connecting = "CONNECTING"
    case connected = "CONNECTED"
    case collecting = "COLLECTING"
    case stale = "STALE"
    case interactiveAuthRequired = "INTERACTIVE_AUTH_REQUIRED"
    case unavailable = "UNAVAILABLE"
    case error = "ERROR"
}

enum ProviderRefreshState: String, Codable {
    case idle = "IDLE"
    case refreshing = "REFRESHING"
}

enum ProviderConnectionAction: String, Codable {
    case connect = "CONNECT"
    case disconnect = "DISCONNECT"
    case none = "NONE"
}

enum UsageSeverity: String, Codable {
    case normal = "NORMAL"
    case warning = "WARNING"
    case danger = "DANGER"
    case unknown = "UNKNOWN"
}

struct ProviderUsageLine: Codable, Equatable, Identifiable {
    var id: String { key }

    let label: String
    let remainingPercent: Float?
    let remainingText: String
    let resetText: String?
    let detailText: String?
    let severity: UsageSeverity
    let usedAmount: Double?
    let limitAmount: Double?
    let remainingAmount: Double?
    let unit: String?
    let category: String?
    let windowText: String?
    let startsAt: String?
    let resetsAt: String?
    let sourceLabel: String?
    let confidence: Float?
    let key: String

    var usedPercent: Int? {
        remainingPercent.map { value in
            let clamped = min(max(value, 0), 1)
            return min(max(Int((100 - clamped * 100).rounded()), 0), 100)
        }
    }

    var source: String {
        sourceLabel ?? ""
    }

    init(
        label: String,
        remainingPercent: Float? = nil,
        remainingText: String? = nil,
        resetText: String? = nil,
        detailText: String? = nil,
        severity: UsageSeverity = .unknown,
        usedAmount: Double? = nil,
        limitAmount: Double? = nil,
        remainingAmount: Double? = nil,
        unit: String? = "percent",
        category: String? = nil,
        windowText: String? = nil,
        startsAt: String? = nil,
        resetsAt: String? = nil,
        sourceLabel: String? = nil,
        confidence: Float? = nil,
        key: String? = nil
    ) {
        self.label = label
        self.remainingPercent = remainingPercent
        self.remainingText = remainingText ?? Self.defaultRemainingText(remainingPercent)
        self.resetText = resetText
        self.detailText = detailText
        self.severity = severity
        self.usedAmount = usedAmount
        self.limitAmount = limitAmount
        self.remainingAmount = remainingAmount
        self.unit = unit
        self.category = category
        self.windowText = windowText
        self.startsAt = startsAt
        self.resetsAt = resetsAt
        self.sourceLabel = sourceLabel
        self.confidence = confidence
        self.key = key ?? Self.normalizedLineKey(label)
    }

    private static func defaultRemainingText(_ remainingPercent: Float?) -> String {
        guard let remainingPercent else { return "" }
        let clamped = min(max(remainingPercent, 0), 1)
        return "\(Int((clamped * 100).rounded()))% left"
    }

    private static func normalizedLineKey(_ label: String) -> String {
        let lowercased = label.lowercased()
        let scalars = lowercased.unicodeScalars.map { scalar -> String in
            CharacterSet.alphanumerics.contains(scalar) ? String(scalar) : "_"
        }
        return scalars.joined()
            .replacingOccurrences(of: "_+", with: "_", options: .regularExpression)
            .trimmingCharacters(in: CharacterSet(charactersIn: "_"))
    }
}

struct ProviderUsageSnapshot: Codable, Equatable, Identifiable {
    var id: String { providerId.storageId }

    let providerId: ProviderId
    let displayName: String
    let connectionState: ProviderConnectionState
    let refreshState: ProviderRefreshState
    let planLabel: String?
    let account: String?
    let updatedAt: String
    let message: String?
    let lines: [ProviderUsageLine]

    var plan: String? { planLabel }
    var fetchedAt: String { updatedAt }

    init(
        providerId: ProviderId,
        displayName: String? = nil,
        connectionState: ProviderConnectionState,
        refreshState: ProviderRefreshState = .idle,
        planLabel: String? = nil,
        account: String? = nil,
        updatedAt: String = ProviderUsageSnapshot.nowString(),
        message: String? = nil,
        lines: [ProviderUsageLine] = []
    ) {
        self.providerId = providerId
        self.displayName = displayName ?? providerId.displayName
        self.connectionState = connectionState
        self.refreshState = refreshState
        self.planLabel = planLabel
        self.account = account
        self.updatedAt = updatedAt
        self.message = message
        self.lines = lines
    }

    func primaryConnectionAction() -> ProviderConnectionAction {
        switch connectionState {
        case .disconnected, .notConnected, .unavailable, .error, .interactiveAuthRequired:
            return .connect
        case .stale:
            return lines.isEmpty ? .connect : .disconnect
        case .connected, .connecting, .collecting:
            return .disconnect
        }
    }

    func shouldShowDashboardConnectAction() -> Bool {
        switch connectionState {
        case .disconnected, .notConnected:
            return true
        case .stale, .interactiveAuthRequired, .unavailable, .error:
            return lines.isEmpty
        case .connecting, .connected, .collecting:
            return false
        }
    }

    static func disconnected(_ providerId: ProviderId) -> ProviderUsageSnapshot {
        ProviderUsageSnapshot(
            providerId: providerId,
            connectionState: .disconnected,
            message: "Sign in required"
        )
    }

    static func notConnected(_ providerId: ProviderId) -> ProviderUsageSnapshot {
        disconnected(providerId)
    }

    static func unavailable(_ providerId: ProviderId, message: String) -> ProviderUsageSnapshot {
        ProviderUsageSnapshot(
            providerId: providerId,
            connectionState: .unavailable,
            message: message
        )
    }

    static func connecting(_ providerId: ProviderId) -> ProviderUsageSnapshot {
        disconnected(providerId).copy(
            connectionState: .connecting,
            refreshState: .refreshing,
            message: "Opening provider login"
        )
    }

    static func collecting(_ previous: ProviderUsageSnapshot) -> ProviderUsageSnapshot {
        previous.copy(
            connectionState: .collecting,
            refreshState: .refreshing,
            updatedAt: nowString(),
            message: "Collecting usage"
        )
    }

    static func connectedWithoutUsage(_ providerId: ProviderId, message: String) -> ProviderUsageSnapshot {
        ProviderUsageSnapshot(
            providerId: providerId,
            connectionState: .unavailable,
            refreshState: .idle,
            message: message
        )
    }

    static func connectedWithoutUsage(
        _ providerId: ProviderId,
        previous: ProviderUsageSnapshot?,
        message: String
    ) -> ProviderUsageSnapshot {
        guard let previous else {
            return connectedWithoutUsage(providerId, message: message)
        }
        return previous.copy(
            connectionState: providerConnectionStateAfterPreviousUsageFailure(
                providerId: providerId,
                hasPreviousUsage: !previous.lines.isEmpty,
                withoutPreviousUsage: .unavailable
            ),
            refreshState: .idle,
            updatedAt: nowString(),
            message: message
        )
    }

    static func failedKeepingPrevious(
        _ providerId: ProviderId,
        previous: ProviderUsageSnapshot?,
        message: String
    ) -> ProviderUsageSnapshot {
        guard let previous else {
            return ProviderUsageSnapshot(
                providerId: providerId,
                connectionState: .error,
                message: message
            )
        }
        return previous.copy(
            connectionState: providerConnectionStateAfterPreviousUsageFailure(
                providerId: providerId,
                hasPreviousUsage: !previous.lines.isEmpty,
                withoutPreviousUsage: .error
            ),
            refreshState: .idle,
            updatedAt: nowString(),
            message: message
        )
    }

    static func interactiveAuthRequiredKeepingPrevious(
        _ providerId: ProviderId,
        previous: ProviderUsageSnapshot?,
        message: String
    ) -> ProviderUsageSnapshot {
        let now = nowString()
        return previous?.copy(
            connectionState: .interactiveAuthRequired,
            refreshState: .idle,
            updatedAt: now,
            message: message
        ) ?? ProviderUsageSnapshot(
            providerId: providerId,
            connectionState: .interactiveAuthRequired,
            refreshState: .idle,
            updatedAt: now,
            message: message
        )
    }

    func copy(
        displayName: String? = nil,
        connectionState: ProviderConnectionState? = nil,
        refreshState: ProviderRefreshState? = nil,
        planLabel: String? = nil,
        account: String? = nil,
        updatedAt: String? = nil,
        message: String? = nil,
        clearsMessage: Bool = false,
        lines: [ProviderUsageLine]? = nil
    ) -> ProviderUsageSnapshot {
        ProviderUsageSnapshot(
            providerId: providerId,
            displayName: displayName ?? self.displayName,
            connectionState: connectionState ?? self.connectionState,
            refreshState: refreshState ?? self.refreshState,
            planLabel: planLabel ?? self.planLabel,
            account: account ?? self.account,
            updatedAt: updatedAt ?? self.updatedAt,
            message: clearsMessage ? nil : (message ?? self.message),
            lines: lines ?? self.lines
        )
    }

    private static func nowString() -> String {
        ISO8601DateFormatter().string(from: Date())
    }
}

func providerConnectionStateAfterPreviousUsageFailure(
    providerId: ProviderId,
    hasPreviousUsage: Bool,
    withoutPreviousUsage: ProviderConnectionState
) -> ProviderConnectionState {
    _ = providerId
    return hasPreviousUsage ? .connected : withoutPreviousUsage
}

func recoverLegacyInteractiveAuthRequired(_ snapshot: ProviderUsageSnapshot) -> ProviderUsageSnapshot {
    guard snapshot.connectionState == .interactiveAuthRequired else { return snapshot }
    guard !snapshot.lines.isEmpty else { return snapshot }
    guard isLegacyRecoverableAuthMessage(snapshot.message) else { return snapshot }
    return snapshot.copy(connectionState: .connected, clearsMessage: true)
}

private func isLegacyRecoverableAuthMessage(_ message: String?) -> Bool {
    let normalized = message?.trimmingCharacters(in: .whitespacesAndNewlines).lowercased() ?? ""
    return legacyRecoverableAuthMessages.contains(normalized)
}

private let legacyRecoverableAuthMessages: Set<String> = [
    "connection needs attention",
    "connection needs attention.",
    "previous collection did not finish.",
    "background collector ran. no trusted usage payload found.",
    "collector ran. no trusted cursor usage payload found yet.",
    "no trusted provider usage payload was collected.",
    "background refresh page failed to load.",
    "\u{c5f0}\u{acb0} \u{d655}\u{c778} \u{d544}\u{c694}"
]
