import AIQuotaCore
import Foundation

public struct GLMWebScope: Equatable, Sendable {
    public let organization: String
    public let project: String
    public let team: Bool
    public init(organization: String, project: String, team: Bool) throws {
        try GLMWebClient.identifier(organization); try GLMWebClient.identifier(project)
        self.organization = organization; self.project = project; self.team = team
    }
    public var id: String { String(decoding: try! JSONEncoder().encode([organization, project, team ? "team" : "personal"]), as: UTF8.self) }
    public init(id: String) throws {
        guard id.utf8.count <= 1_024, let parts = try? JSONDecoder().decode([String].self, from: Data(id.utf8)),
              parts.count == 3, ["personal", "team"].contains(parts[2]) else { throw CoreError.identityMismatch }
        try self.init(organization: parts[0], project: parts[1], team: parts[2] == "team")
        guard self.id == id else { throw CoreError.identityMismatch }
    }
}
public struct GLMWebAccount: Sendable {
    public struct Workspace: Sendable { public let scope: GLMWebScope; public let name: String }
    public let subject: String
    public let workspaces: [Workspace]
}

/// The token comes from this connection's z.ai WebKit profile, never an API key,
/// browser import or a JWT claim used as an unverified account identity.
public struct GLMWebClient: Sendable {
    public static let origin = URL(string: "https://api.z.ai/")!
    public static let loginURL = URL(string: "https://z.ai/manage-apikey/coding-plan/personal/usage")!
    public static let product = "glm-web-subscription:global"
    public static let tokenStorageKey = "z-ai-open-platform-token-production"
    private let transport: any HTTPTransport
    private let now: @Sendable () -> Date
    public init(transport: any HTTPTransport = NativeHTTPTransport(allowedHosts: ["api.z.ai"], maximumBytes: 1_048_576),
                now: @escaping @Sendable () -> Date = { .now }) { self.transport = transport; self.now = now }

    public static func token(_ value: String?) throws -> String {
        guard let value, !value.isEmpty, value.utf8.count <= 16_384,
              value.unicodeScalars.allSatisfy({ (33...126).contains($0.value) }) else { throw CollectorError.authenticationRequired }
        return value
    }
    public func discover(accessToken: String) async throws -> GLMWebAccount { try await customer(Self.token(accessToken)).account }
    public func collect(accessToken: String, expected identity: RemoteIdentity) async throws -> CollectionOutput {
        guard identity.product == Self.product, let workspace = identity.workspace else { throw CoreError.identityMismatch }
        let scope = try GLMWebScope(id: workspace), token = try Self.token(accessToken)
        let before = try await customer(token)
        try match(before.account, identity: identity, scope: scope)
        let quotaResponse = try await get("/monitor/usage/quota/limit" + (scope.team ? "?type=2" : ""), token: token, scope: scope)
        var plan: String?, metrics: [UsageMetric]
        var bytes = before.bytes + quotaResponse.count
        do {
            let quota = try GLMQuotaDecoder.decode(quotaResponse, fetchedAt: now())
            plan = quota.plan; metrics = quota.metrics
            // Personal subscription metadata is optional. Never query a personal
            // subscription list to label a selected team quota.
            if !scope.team && plan == nil {
                do {
                    let data = try await get("/biz/subscription/list", token: token, scope: scope)
                    bytes += data.count
                    plan = plan ?? Self.plan(data)
                } catch CollectorError.authenticationRequired { throw CollectorError.authenticationRequired }
                catch CollectorError.rateLimited(let until) { throw CollectorError.rateLimited(until: until) }
                catch is CancellationError { throw CancellationError() }
                catch { /* Optional plan failure does not discard independently verified quota. */ }
            }
        } catch GLMAPIError.noSubscription { plan = "No subscription"; metrics = [] }
        let after = try await customer(token)
        try match(after.account, identity: identity, scope: scope)
        try Task.checkCancellation()
        return CollectionOutput(report: UsageReport(identity: identity, fetchedAt: now(), plan: plan, metrics: metrics),
                                transferredBytes: bytes + after.bytes)
    }
    private func match(_ account: GLMWebAccount, identity: RemoteIdentity, scope: GLMWebScope) throws {
        guard account.subject == identity.subject, account.workspaces.contains(where: { $0.scope == scope }) else { throw CoreError.identityMismatch }
    }
    private func customer(_ token: String) async throws -> (account: GLMWebAccount, bytes: Int) {
        let data = try await get("/biz/customer/getCustomerInfo", token: token)
        let envelope: CustomerEnvelope
        do { envelope = try JSONDecoder().decode(CustomerEnvelope.self, from: data) }
        catch { throw CollectorError.invalidResponse }
        guard envelope.code == 200, envelope.success != false, let customer = envelope.data,
              !customer.organizations.isEmpty, customer.organizations.count <= 64 else { throw CollectorError.invalidResponse }
        let subject = customer.customerNumber.value; try Self.identifier(subject)
        var workspaces: [GLMWebAccount.Workspace] = [], seen = Set<String>(), organizations = Set<String>()
        for organization in customer.organizations {
            let orgID = organization.organizationId.value; try Self.identifier(orgID)
            guard organizations.insert(orgID).inserted, organization.projects.count <= 64 else { throw CollectorError.invalidResponse }
            let orgName = try Self.label(organization.organizationName ?? orgID)
            for project in organization.projects {
                guard (0...2).contains(project.projectType) else { throw CollectorError.invalidResponse }
                let scope = try GLMWebScope(organization: orgID, project: project.projectId.value, team: project.projectType == 2)
                // A changed type is a changed scope; duplicate project IDs are ambiguous.
                guard seen.insert(orgID + "/" + scope.project).inserted else { throw CollectorError.invalidResponse }
                let name = try Self.label(project.projectName ?? scope.project)
                workspaces.append(.init(scope: scope, name: orgName + " / " + name + (scope.team ? " · Team" : " · Personal")))
            }
        }
        guard !workspaces.isEmpty, workspaces.count <= 128 else { throw CollectorError.invalidResponse }
        return (GLMWebAccount(subject: subject, workspaces: workspaces), data.count)
    }
    private func get(_ path: String, token: String, scope: GLMWebScope? = nil) async throws -> Data {
        var request = URLRequest(url: URL(string: "https://api.z.ai/api" + path)!, cachePolicy: .reloadIgnoringLocalCacheData, timeoutInterval: 30)
        request.setValue("Bearer " + token, forHTTPHeaderField: "Authorization")
        request.setValue("application/json", forHTTPHeaderField: "Accept")
        request.setValue("https://z.ai", forHTTPHeaderField: "Origin")
        request.setValue(Self.loginURL.absoluteString, forHTTPHeaderField: "Referer")
        request.setValue(Self.loginURL.absoluteString, forHTTPHeaderField: "refer")
        request.setValue("AIQuota-macOS", forHTTPHeaderField: "User-Agent")
        if let scope {
            request.setValue(scope.organization, forHTTPHeaderField: "Bigmodel-Organization")
            request.setValue(scope.project, forHTTPHeaderField: "Bigmodel-Project")
        }
        try Task.checkCancellation()
        let response = try await transport.send(request); try Task.checkCancellation()
        let data = try HTTPResponsePolicy.body(response, now: now())
        let contentType = response.headers["content-type"]?.split(separator: ";").first?.trimmingCharacters(in: .whitespaces).lowercased()
        guard response.status == 200, data.count <= 1_048_576, contentType == "application/json" else { throw CollectorError.invalidResponse }
        struct Status: Decodable { let code: Int?; let success: Bool? }
        guard let status = try? JSONDecoder().decode(Status.self, from: data) else { throw CollectorError.invalidResponse }
        if let code = status.code, [401, 403, 1001, 1002].contains(code) { throw CollectorError.authenticationRequired }
        guard status.code == 200 || (status.code == nil && path == "/biz/subscription/list") else { throw CollectorError.invalidResponse }
        return data
    }
    static func identifier(_ value: String) throws {
        guard (1...128).contains(value.utf8.count), value.unicodeScalars.allSatisfy({ scalar in
            (48...57).contains(scalar.value) || (65...90).contains(scalar.value) || (97...122).contains(scalar.value) || "._:-".unicodeScalars.contains(scalar)
        }) else { throw CollectorError.invalidResponse }
    }
    private static func label(_ value: String) throws -> String {
        guard !value.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty, value.utf8.count <= 256,
              !value.unicodeScalars.contains(where: { CharacterSet.controlCharacters.contains($0) }) else { throw CollectorError.invalidResponse }
        return value
    }
    private static func plan(_ data: Data) -> String? {
        struct Subscription: Decodable {
            struct Name: Decodable { let name: String? }
            let productName: String?, planName: String?, subscription: Name?
        }
        struct Envelope: Decodable { let success: Bool?; let data: [Subscription] }
        guard let envelope = try? JSONDecoder().decode(Envelope.self, from: data), envelope.success != false,
              envelope.data.count <= 32 else { return nil }
        let items = envelope.data
        let labels = Set(items.compactMap { item -> String? in
            guard let value = item.productName ?? item.planName ?? item.subscription?.name,
                  let value = try? label(value), value.range(of: #"(?i)\b(lite|pro|max)\b"#, options: .regularExpression) != nil else { return nil }
            return value
        })
        return labels.count == 1 ? labels.first : nil // Do not pick an arbitrary tier from several subscriptions.
    }
    private struct ID: Decodable {
        let value: String
        init(from decoder: any Decoder) throws {
            let c = try decoder.singleValueContainer()
            if let string = try? c.decode(String.self) { value = string }
            else { let integer = try c.decode(Int64.self); guard integer > 0 else { throw CollectorError.invalidResponse }; value = String(integer) }
        }
    }
    private struct CustomerEnvelope: Decodable { let code: Int, success: Bool?, data: Customer? }
    private struct Customer: Decodable { let customerNumber: ID, organizations: [Organization] }
    private struct Organization: Decodable { let organizationId: ID, organizationName: String?, projects: [Project] }
    private struct Project: Decodable { let projectId: ID, projectName: String?, projectType: Int }
}

public struct GLMWebCollector: UsageCollector {
    private let sessions: any AccountSessionSource
    private let transport: any HTTPTransport
    private let now: @Sendable () -> Date
    public init(sessions: any AccountSessionSource, transport: any HTTPTransport = NativeHTTPTransport(allowedHosts: ["api.z.ai"], maximumBytes: 1_048_576),
                now: @escaping @Sendable () -> Date = { .now }) { self.sessions = sessions; self.transport = transport; self.now = now }
    public func collect(account: Account, lease: CollectionLease) async throws -> CollectionOutput {
        guard account.provider == .glm, lease.provider == .glm else { throw CoreError.identityMismatch }
        let session = try await sessions.session(for: account, lease: lease); try session.validate(lease)
        guard let cookies = session.webCookies else { throw CollectorError.unsupported }
        return try await GLMWebClient(transport: WebSessionHTTPTransport(base: transport, cookies: cookies, requiresCookies: false), now: now)
            .collect(accessToken: GLMWebClient.token(session.accessToken), expected: session.identity)
    }
}

public struct GLMSubscriptionCollector: UsageCollector {
    private let api: GLMAPICollector
    private let web: GLMWebCollector
    public init(sessions: any AccountSessionSource) { api = GLMAPICollector(sessions: sessions); web = GLMWebCollector(sessions: sessions) }
    public func collect(account: Account, lease: CollectionLease) async throws -> CollectionOutput {
        switch account.authenticationMethod {
        case .apiKey: try await api.collect(account: account, lease: lease)
        case .webSession: try await web.collect(account: account, lease: lease)
        default: throw CollectorError.unsupported
        }
    }
}
