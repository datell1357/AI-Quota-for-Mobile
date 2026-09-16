import AIQuotaCore
import CryptoKit
import Foundation

public enum GeminiSessionError: Error, Sendable { case primaryAccountRequired }
private enum GeminiRequestError: Error { case expiredBootstrap(Int) }
public struct GeminiWebAccount: Sendable { public let subject: String }

public struct GeminiWebClient: Sendable {
    public static let origin = URL(string: "https://gemini.google.com/")!
    private let transport: any HTTPTransport
    private let now: @Sendable () -> Date
    public init(transport: any HTTPTransport = NativeHTTPTransport(allowedHosts: ["gemini.google.com"], maximumBytes: 2_097_152),
                now: @escaping @Sendable () -> Date = { .now }) { self.transport = transport; self.now = now }

    /// Each local connection owns one isolated Google profile. Never collect the default
    /// account while the login sheet visibly selects a different Google account index.
    public static func validateLoginURL(_ url: URL?) throws {
        guard let url, url.scheme == "https", url.host == "gemini.google.com", url.user == nil, url.password == nil,
              url.port == nil || url.port == 443 else { throw CollectorError.authenticationRequired }
        let path = url.path
        if path.hasPrefix("/u/"), !path.hasPrefix("/u/0/") && path != "/u/0" { throw GeminiSessionError.primaryAccountRequired }
        let users = URLComponents(url: url, resolvingAgainstBaseURL: false)?.queryItems?.filter { $0.name == "authuser" } ?? []
        guard users.count <= 1, users.allSatisfy({ $0.value == "0" }) else { throw GeminiSessionError.primaryAccountRequired }
    }
    public func discover(cookieHeader: String) async throws -> GeminiWebAccount {
        let cookie = try cookie(cookieHeader)
        return try await GeminiWebAccount(subject: page(cookie).session.subject)
    }
    public func collect(cookieHeader: String, expected identity: RemoteIdentity) async throws -> CollectionOutput {
        try await run(cookieHeader: cookieHeader, expected: identity, cached: nil).output
    }
    struct Reading: Sendable {
        let output: CollectionOutput
        let session: GeminiWebData.Session
        let capturedAt: Date
    }
    func run(cookieHeader: String, expected identity: RemoteIdentity, cached: GeminiRPCCache.Entry?) async throws -> Reading {
        guard identity.product == "gemini-web-subscription", identity.workspace == nil else { throw CoreError.identityMismatch }
        let cookie = try cookie(cookieHeader)
        var bytes = 0
        if let cached {
            guard cached.session.subject == identity.subject else { throw CoreError.identityMismatch }
            do {
                let result = try await rpc(cookie, session: cached.session); bytes += result.body.count
                let report = try GeminiWebData.report(GeminiWebData.payload(result.body), identity: identity, fetchedAt: now())
                var session = cached.session, capturedAt = cached.capturedAt
                if result.headers["set-cookie"] != nil {
                    let after = try await page(cookie); bytes += after.bytes
                    guard after.session.subject == identity.subject else { throw CoreError.identityMismatch }
                    session = after.session; capturedAt = now()
                }
                try Task.checkCancellation()
                return Reading(output: CollectionOutput(report: report, transferredBytes: bytes), session: session, capturedAt: capturedAt)
            } catch GeminiRequestError.expiredBootstrap(let receivedBytes) {
                bytes += receivedBytes
                // One bootstrap refresh after HTTP 400, never an unbounded retry or RPC-ID probe.
            }
        }
        let before = try await page(cookie); bytes += before.bytes
        guard before.session.subject == identity.subject else { throw CoreError.identityMismatch }
        let response: HTTPResult
        do { response = try await rpc(cookie, session: before.session) }
        catch GeminiRequestError.expiredBootstrap(_) { throw CollectorError.invalidResponse }
        bytes += response.body.count
        let report = try GeminiWebData.report(GeminiWebData.payload(response.body), identity: identity, fetchedAt: now())
        let after = try await page(cookie); bytes += after.bytes
        guard after.session.subject == identity.subject else { throw CoreError.identityMismatch }
        try Task.checkCancellation()
        return Reading(output: CollectionOutput(report: report, transferredBytes: bytes), session: after.session, capturedAt: now())
    }
    private func page(_ cookie: String) async throws -> (session: GeminiWebData.Session, bytes: Int) {
        let url = URL(string: "https://gemini.google.com/usage?hl=en&authuser=0")!
        let response = try await transport.send(request(url, cookie: cookie, accept: "text/html")); try Task.checkCancellation()
        if (300..<400).contains(response.status), let target = response.headers["location"].flatMap(URL.init(string:)), target.scheme == "https", target.host == "accounts.google.com" {
            throw CollectorError.authenticationRequired
        }
        let data = try HTTPResponsePolicy.body(response, now: now())
        guard response.headers["content-type"]?.lowercased().hasPrefix("text/html") == true else { throw CollectorError.invalidResponse }
        return (try GeminiWebData.session(data), data.count)
    }
    private func rpc(_ cookie: String, session: GeminiWebData.Session) async throws -> HTTPResult {
        var url = URLComponents(string: "https://gemini.google.com/_/BardChatUi/data/batchexecute")!
        url.queryItems = [.init(name: "rpcids", value: GeminiWebData.rpcID), .init(name: "source-path", value: "/usage"),
                          .init(name: "bl", value: session.build), .init(name: "f.sid", value: session.sessionID),
                          .init(name: "hl", value: "en"), .init(name: "authuser", value: "0"), .init(name: "rt", value: "c")]
        var request = request(url.url!, cookie: cookie, accept: "*/*")
        request.httpMethod = "POST"
        let input = String(decoding: try JSONSerialization.data(withJSONObject: [[[GeminiWebData.rpcID, "[]", NSNull(), "usage-page"]]]), as: UTF8.self)
        let allowed = CharacterSet(charactersIn: "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-._~")
        guard let encoded = input.addingPercentEncoding(withAllowedCharacters: allowed), let token = session.token.addingPercentEncoding(withAllowedCharacters: allowed) else { throw CollectorError.invalidResponse }
        request.httpBody = Data("f.req=\(encoded)&at=\(token)&".utf8)
        request.setValue("application/x-www-form-urlencoded;charset=UTF-8", forHTTPHeaderField: "Content-Type")
        request.setValue("https://gemini.google.com", forHTTPHeaderField: "Origin")
        request.setValue("1", forHTTPHeaderField: "X-Same-Domain")
        let response = try await transport.send(request); try Task.checkCancellation()
        if response.status == 400 { throw GeminiRequestError.expiredBootstrap(response.body.count) }
        _ = try HTTPResponsePolicy.body(response, now: now())
        let contentType = response.headers["content-type"]?.split(separator: ";").first?.trimmingCharacters(in: .whitespaces).lowercased()
        guard contentType == "application/json" || contentType == "application/json+protobuf", response.body.count <= 524_288 else { throw CollectorError.invalidResponse }
        return response
    }
    private func request(_ url: URL, cookie: String, accept: String) -> URLRequest {
        var request = URLRequest(url: url, cachePolicy: .reloadIgnoringLocalCacheData, timeoutInterval: 30)
        for (name, value) in ["Cookie":cookie, "Accept":accept, "Accept-Language":"en-US,en;q=0.8", "User-Agent":"Mozilla/5.0", "Referer":"https://gemini.google.com/usage"] { request.setValue(value, forHTTPHeaderField: name) }
        return request
    }
    private func cookie(_ raw: String) throws -> String {
        let cookie = try AuthenticatedSession.headerValue(raw)
        guard cookie.split(separator: ";").contains(where: {
            let pair = $0.trimmingCharacters(in: .whitespaces).split(separator: "=", maxSplits: 1, omittingEmptySubsequences: false)
            return pair.count == 2 && ["SID","__Secure-1PSID","__Secure-3PSID"].contains(String(pair[0])) && !pair[1].isEmpty
        }) else { throw CollectorError.authenticationRequired }
        return cookie
    }
}

/// Process-local XSRF/bootstrap cache. An entry cannot cross an account, generation,
/// session revision, subject or cookie snapshot; cache hits never extend its 15-minute TTL.
actor GeminiRPCCache {
    struct Key: Hashable, Sendable {
        let account: UUID, generation: UUID
        let revision: UInt64
        let identity: RemoteIdentity
        let cookieDigest: Data
        init(_ lease: CollectionLease, cookie: String) {
            account = lease.accountID; generation = lease.generation; revision = lease.sessionRevision; identity = lease.identity
            cookieDigest = Data(SHA256.hash(data: Data(cookie.utf8)))
        }
    }
    struct Entry: Sendable { let session: GeminiWebData.Session; let capturedAt: Date; let sequence: Int64 }
    private var entries: [Key: Entry] = [:]
    func get(_ key: Key, now: Date) -> Entry? {
        entries = entries.filter { now >= $0.value.capturedAt && now.timeIntervalSince($0.value.capturedAt) < 900 }
        return entries[key]
    }
    func put(_ reading: GeminiWebClient.Reading, key: Key, sequence: Int64) throws {
        try Task.checkCancellation()
        guard entries[key].map({ $0.sequence <= sequence }) != false else { return }
        // A late result from an older generation/revision cannot evict its replacement.
        entries = entries.filter { $0.key.account != key.account || $0.key.generation != key.generation || $0.key.revision > key.revision || $0.key == key }
        if entries.count >= 32, entries[key] == nil, let oldest = entries.min(by: { $0.value.capturedAt < $1.value.capturedAt })?.key { entries[oldest] = nil }
        entries[key] = Entry(session: reading.session, capturedAt: reading.capturedAt, sequence: sequence)
    }
    func remove(_ key: Key) { entries[key] = nil }
}

public struct GeminiWebCollector: UsageCollector {
    private let sessions: any AccountSessionSource
    private let transport: any HTTPTransport
    private let now: @Sendable () -> Date
    private let cache = GeminiRPCCache()
    public init(sessions: any AccountSessionSource, transport: any HTTPTransport = NativeHTTPTransport(allowedHosts: ["gemini.google.com"], maximumBytes: 2_097_152),
                now: @escaping @Sendable () -> Date = { .now }) { self.sessions = sessions; self.transport = transport; self.now = now }
    public func collect(account: Account, lease: CollectionLease) async throws -> CollectionOutput {
        guard account.provider == .gemini, lease.provider == .gemini else { throw CoreError.identityMismatch }
        let session = try await sessions.session(for: account, lease: lease); try session.validate(lease)
        let cookie = try AuthenticatedSession.headerValue(session.cookieHeader), key = GeminiRPCCache.Key(lease, cookie: cookie)
        do {
            let reading = try await GeminiWebClient(transport: profileTransport(transport, cookies: session.webCookies), now: now)
                .run(cookieHeader: cookie, expected: session.identity, cached: cache.get(key, now: now()))
            try await cache.put(reading, key: key, sequence: lease.sequence)
            return reading.output
        } catch {
            await cache.remove(key)
            if error is GeminiSessionError { throw CollectorError.authenticationRequired }
            throw error
        }
    }
}
