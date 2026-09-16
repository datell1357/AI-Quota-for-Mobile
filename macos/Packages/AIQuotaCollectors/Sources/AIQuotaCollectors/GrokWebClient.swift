import AIQuotaCore
import Foundation

public struct GrokAccountDiscovery: Sendable {
    public let subject: String
    public let email: String?
}

/// Personal grok.com credits only. A browser/CLI account is never substituted for this profile.
public struct GrokWebClient: Sendable {
    public static let accountURL = URL(string: "https://grok.com/rest/auth/get-user")!
    private let transport: any HTTPTransport
    private let now: @Sendable () -> Date
    public init(transport: any HTTPTransport = NativeHTTPTransport(allowedHosts: ["grok.com"]),
                now: @escaping @Sendable () -> Date = { .now }) {
        self.transport = transport; self.now = now
    }
    public func discover(cookieHeader: String) async throws -> GrokAccountDiscovery {
        try await profile(cookieHeader: cookieHeader).0
    }
    public func collect(cookieHeader: String, expected identity: RemoteIdentity) async throws -> CollectionOutput {
        guard identity.product == "grok-weekly", identity.workspace == nil else { throw CoreError.identityMismatch }
        let (before, beforeBytes) = try await profile(cookieHeader: cookieHeader)
        guard before.subject == identity.subject else { throw CoreError.identityMismatch }
        var request = URLRequest(url: GrokWeeklyDecoder.endpoint, cachePolicy: .reloadIgnoringLocalCacheData, timeoutInterval: 30)
        request.httpMethod = "POST"; request.httpBody = Data(repeating: 0, count: 5)
        request.setValue("application/grpc-web+proto", forHTTPHeaderField: "Content-Type")
        request.setValue("1", forHTTPHeaderField: "x-grpc-web")
        request.setValue("https://grok.com", forHTTPHeaderField: "Origin")
        request.setValue("https://grok.com/", forHTTPHeaderField: "Referer")
        request.setValue(try Self.authenticatedCookie(cookieHeader), forHTTPHeaderField: "Cookie")
        let result = try await transport.send(request)
        try Task.checkCancellation()
        let collectedAt = now()
        let body = try HTTPResponsePolicy.body(result, now: collectedAt)
        let report = try GrokWeeklyDecoder.decode(body, identity: identity, fetchedAt: collectedAt, headers: result.headers)
        // A response cookie rotation must not silently move a verified request chain to another user.
        let (after, afterBytes) = try await profile(cookieHeader: cookieHeader)
        guard after.subject == identity.subject else { throw CoreError.identityMismatch }
        return CollectionOutput(report: report, transferredBytes: beforeBytes + body.count + afterBytes)
    }
    private func profile(cookieHeader: String) async throws -> (GrokAccountDiscovery, Int) {
        var request = URLRequest(url: Self.accountURL, cachePolicy: .reloadIgnoringLocalCacheData, timeoutInterval: 30)
        request.setValue(try Self.authenticatedCookie(cookieHeader), forHTTPHeaderField: "Cookie")
        request.setValue("application/json", forHTTPHeaderField: "Accept")
        request.setValue("https://grok.com/", forHTTPHeaderField: "Referer")
        let result = try await transport.send(request)
        try Task.checkCancellation()
        let body = try HTTPResponsePolicy.body(result, now: now())
        struct Profile: Decodable { let userId: String; let email: String? }
        do {
            let user = try JSONDecoder().decode(Profile.self, from: body)
            let subject = user.userId.trimmingCharacters(in: .whitespacesAndNewlines)
            guard !subject.isEmpty, subject == user.userId, subject.utf8.count <= 512,
                  !subject.unicodeScalars.contains(where: { CharacterSet.controlCharacters.contains($0) })
            else { throw CollectorError.invalidResponse }
            return (GrokAccountDiscovery(subject: subject, email: user.email), body.count)
        } catch let error as CollectorError { throw error }
        catch { throw CollectorError.invalidResponse }
    }
    private static func authenticatedCookie(_ cookieHeader: String) throws -> String {
        let header = try AuthenticatedSession.headerValue(cookieHeader)
        guard header.split(separator: ";").contains(where: { pair in
            let parts = pair.trimmingCharacters(in: .whitespaces).split(separator: "=", maxSplits: 1, omittingEmptySubsequences: false)
            return parts.count == 2 && ["sso", "sso-rw"].contains(String(parts[0])) && !parts[1].isEmpty
        }) else { throw CollectorError.authenticationRequired }
        return header
    }
}
