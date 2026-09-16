import AIQuotaCore
import Foundation

public enum KiroSessionError: Error, Sendable { case profileSelectionRequired, unsupportedIdentityProvider, accountRestricted }
public struct KiroAccountDiscovery: Sendable {
    public let subject: String
    public let email: String?
    let identityProvider: String
}
public struct KiroWebClient: Sendable {
    public static let origin = URL(string: "https://app.kiro.dev/")!
    static let operationPrefix = "https://app.kiro.dev/service/KiroWebPortalService/operation/"
    private let transport: any HTTPTransport
    private let now: @Sendable () -> Date
    public init(transport: any HTTPTransport = NativeHTTPTransport(allowedHosts: ["app.kiro.dev"]),
                now: @escaping @Sendable () -> Date = { .now }) { self.transport = transport; self.now = now }
    public func discover(cookieHeader: String) async throws -> KiroAccountDiscovery {
        try await profile(cookieHeader).account
    }
    public func collect(cookieHeader: String, expected identity: RemoteIdentity) async throws -> CollectionOutput {
        guard identity.product == "kiro-web-subscription", identity.workspace == nil else { throw CoreError.identityMismatch }
        let before = try await profile(cookieHeader)
        guard before.account.subject == identity.subject else { throw CoreError.identityMismatch }
        let usage = try await request("GetUserUsageAndLimits", cookie: cookieHeader)
        let report = try KiroUsageDecoder.decode(usage, identity: identity, fetchedAt: now())
        let after = try await profile(cookieHeader)
        guard after.account.subject == identity.subject, before.account.identityProvider == after.account.identityProvider else {
            throw CoreError.identityMismatch
        }
        return CollectionOutput(report: report, transferredBytes: before.bytes + usage.count + after.bytes)
    }
    private func profile(_ cookie: String) async throws -> (account: KiroAccountDiscovery, bytes: Int) {
        let data = try await request("GetUserInfo", cookie: cookie), value = try KiroCBOR.object(data)
        switch try KiroUsageDecoder.text(value, "status") {
        case "Active": break
        case "Stale": throw CollectorError.authenticationRequired
        case "PendingProfileSelection": throw KiroSessionError.profileSelectionRequired
        case "FeatureNotSupported": throw CollectorError.unsupported
        default: throw CollectorError.invalidResponse
        }
        guard let id = try KiroUsageDecoder.text(value, "userId"), let idp = try KiroUsageDecoder.text(value, "idp") else {
            throw CollectorError.invalidResponse
        }
        // Enterprise requires explicit profile ARN / regional binding. Do not silently choose
        // a profile or reuse the personal subscription's scope for an organization identity.
        guard ["Github", "Google", "BuilderId"].contains(idp) else { throw KiroSessionError.unsupportedIdentityProvider }
        return (KiroAccountDiscovery(subject: id, email: try KiroUsageDecoder.text(value, "email"), identityProvider: idp), data.count)
    }
    private func request(_ operation: String, cookie: String) async throws -> Data {
        let cookie = try AuthenticatedSession.headerValue(cookie)
        guard cookie.split(separator: ";").contains(where: { item in
            let pair = item.trimmingCharacters(in: .whitespaces).split(separator: "=", maxSplits: 1, omittingEmptySubsequences: false)
            return pair.count == 2 && ["AccessToken", "RefreshToken", "aws-token", "awsd2c-token"].contains(String(pair[0])) && !pair[1].isEmpty
        }) else { throw CollectorError.authenticationRequired }
        var url = URLComponents(string: Self.operationPrefix + operation)!
        url.queryItems = [URLQueryItem(name: "origin", value: "KIRO_IDE")]
        if operation == "GetUserUsageAndLimits" { url.queryItems?.append(URLQueryItem(name: "isEmailRequired", value: "true")) }
        var request = URLRequest(url: url.url!, cachePolicy: .reloadIgnoringLocalCacheData, timeoutInterval: 30)
        request.httpMethod = "POST"; request.httpBody = Data([0xa0]) // Empty CBOR map; read operations only.
        for (key, value) in ["Cookie":cookie, "Accept":"application/cbor", "Content-Type":"application/cbor",
                             "smithy-protocol":"rpc-v2-cbor", "Origin":"https://app.kiro.dev", "Referer":"https://app.kiro.dev/settings/account"] {
            request.setValue(value, forHTTPHeaderField: key)
        }
        let response = try await transport.send(request)
        try Task.checkCancellation()
        if response.status == 423 { throw KiroSessionError.accountRestricted }
        let body = try HTTPResponsePolicy.body(response, now: now())
        guard response.headers["content-type"]?.split(separator: ";").first?.trimmingCharacters(in: .whitespaces).lowercased() == "application/cbor" else {
            throw CollectorError.invalidResponse
        }
        return body
    }
}

public struct KiroWebCollector: UsageCollector {
    private let sessions: any AccountSessionSource
    private let transport: any HTTPTransport
    private let now: @Sendable () -> Date
    public init(sessions: any AccountSessionSource, transport: any HTTPTransport = NativeHTTPTransport(allowedHosts: ["app.kiro.dev"]),
                now: @escaping @Sendable () -> Date = { .now }) { self.sessions = sessions; self.transport = transport; self.now = now }
    public func collect(account: Account, lease: CollectionLease) async throws -> CollectionOutput {
        guard account.provider == .kiro, lease.provider == .kiro else { throw CoreError.identityMismatch }
        let session = try await sessions.session(for: account, lease: lease); try session.validate(lease)
        do {
            return try await KiroWebClient(transport: profileTransport(transport, cookies: session.webCookies), now: now)
                .collect(cookieHeader: AuthenticatedSession.headerValue(session.cookieHeader), expected: session.identity)
        } catch is KiroSessionError { throw CollectorError.authenticationRequired }
    }
}
