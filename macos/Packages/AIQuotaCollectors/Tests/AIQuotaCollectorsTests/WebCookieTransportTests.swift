import AIQuotaAuth
import AIQuotaCore
import Foundation
import Testing
@testable import AIQuotaCollectors

private let cookieOrigin = URL(string: "https://chatgpt.com/")!
private let cookieName = "__Secure-next-auth.session-token"
private func transportCookie(_ value: String) throws -> HTTPCookie {
    try #require(HTTPCookie(properties: [.name: cookieName, .value: value, .domain: "chatgpt.com", .path: "/", .secure: "TRUE"]))
}
private actor TransportCookieStore: WebCookieStore {
    private var values: [UUID: [HTTPCookie]] = [:]
    private(set) var writes = 0
    func seed(_ value: String, profileID: UUID) throws { values[profileID] = [try transportCookie(value)] }
    func cookies(profileID: UUID) -> [HTTPCookie] { values[profileID] ?? [] }
    func write(_ cookie: HTTPCookie, profileID: UUID, now: Date) {
        writes += 1
        values[profileID, default: []].removeAll { ResponseCookiePolicy.sameKey($0, cookie) }
        if !ResponseCookiePolicy.isExpired(cookie, now: now) { values[profileID, default: []].append(cookie) }
    }
}
private actor TransportCookieVault: CredentialVault {
    var values: [UUID: CredentialRecord] = [:]
    func create(_ record: CredentialRecord, reference: UUID) { values[reference] = record }
    func read(_ reference: UUID) throws -> CredentialRecord {
        guard let record = values[reference] else { throw AuthenticationError.missingCredential }
        return record
    }
    func remove(_ reference: UUID) { values[reference] = nil }
}
private actor RotatingCodexHTTP: HTTPTransport {
    private(set) var requests: [URLRequest] = []
    func send(_ request: URLRequest) throws -> HTTPResult {
        requests.append(request)
        let cookie = try #require(request.value(forHTTPHeaderField: "Cookie"))
        let suffix = cookie.hasSuffix("-b") ? "b" : "a"
        var headers: [String: String] = [:]
        let body: String
        switch request.url?.path {
        case "/api/auth/session":
            #expect(cookie == "\(cookieName)=before-\(suffix)" || cookie == "\(cookieName)=after-\(suffix)")
            headers["Set-Cookie"] = "\(cookieName)=after-\(suffix); Path=/; Secure; HttpOnly; Max-Age=3600"
            body = "{\"user\":{\"id\":\"user-\(suffix)\"},\"accessToken\":\"fixture-access-\(suffix)\"}"
        case "/backend-api/accounts":
            #expect(cookie == "\(cookieName)=after-\(suffix)")
            #expect(request.value(forHTTPHeaderField: "Authorization") == "Bearer fixture-access-\(suffix)")
            body = "{\"items\":[{\"id\":\"workspace-\(suffix)\"}]}"
        case "/backend-api/wham/usage":
            #expect(cookie == "\(cookieName)=after-\(suffix)")
            #expect(request.value(forHTTPHeaderField: "ChatGPT-Account-Id") == "workspace-\(suffix)")
            body = "{\"account_id\":\"workspace-\(suffix)\",\"rate_limit\":{\"primary_window\":{\"used_percent\":\(suffix == "a" ? 25 : 75),\"limit_window_seconds\":18000,\"reset_at\":1800010000}}}"
        default: throw CollectorError.invalidResponse
        }
        return HTTPResult(status: 200, headers: headers, body: Data(body.utf8))
    }
}

@Test func twoProfileCookieRotationsFeedTheRealCodexCollectorAndNextRefresh() async throws {
    let repository = try AccountRepository(url: FileManager.default.temporaryDirectory.appendingPathComponent("AIQuotaCookies-\(UUID())/accounts.sqlite"))
    let login = LoginCoordinator(repository: repository, vault: TransportCookieVault())
    let store = TransportCookieStore(); let http = RotatingCodexHTTP()
    var ids: [UUID] = []; var profiles: [UUID] = []
    for suffix in ["a", "b"] {
        let account = try await repository.add(provider: .codex, alias: "Codex \(suffix)")
        let attempt = try await login.begin(account.id)
        let identity = try RemoteIdentity(subject: "user-\(suffix)", workspace: "workspace-\(suffix)", product: "codex-subscription")
        try await store.seed("before-\(suffix)", profileID: attempt.webProfileID)
        _ = try await login.complete(attempt, verified: CredentialRecord(accountID: account.id, provider: .codex,
                                                                         identity: identity, kind: .webSession, webProfileID: attempt.webProfileID))
        ids.append(account.id); profiles.append(attempt.webProfileID)
    }
    let source = StoredAccountSessionSource(login: login, webProfiles: store)
    let collector = CodexSubscriptionCollector(sessions: source, transport: http)
    let coordinator = RefreshCoordinator(repository: repository, collector: collector)
    try await coordinator.request(); await coordinator.waitUntilIdle()
    #expect(try await repository.usage(ids[0])?.metrics.first?.remainingFraction == 0.75)
    #expect(try await repository.usage(ids[1])?.metrics.first?.remainingFraction == 0.25)
    #expect(await store.cookies(profileID: profiles[0]).first?.value == "after-a")
    #expect(await store.cookies(profileID: profiles[1]).first?.value == "after-b")
    try await coordinator.request(); await coordinator.waitUntilIdle()
    #expect(await http.requests.count == 12)
    #expect(try await repository.accounts().allSatisfy { $0.state == .connected })
    let snapshot = String(decoding: try JSONEncoder().encode(await repository.displaySnapshot()), as: UTF8.self)
    #expect(!snapshot.contains(cookieName) && !snapshot.contains("fixture-access") && !snapshot.contains("after-a"))
}

private actor DelayedCookieHTTP: HTTPTransport {
    private var pending: CheckedContinuation<HTTPResult, Never>?
    private var started: CheckedContinuation<Void, Never>?
    func send(_ request: URLRequest) async -> HTTPResult {
        await withCheckedContinuation { continuation in pending = continuation; started?.resume(); started = nil }
    }
    func waitUntilSent() async { if pending == nil { await withCheckedContinuation { started = $0 } } }
    func respond() {
        pending?.resume(returning: HTTPResult(status: 200, headers: ["set-cookie": "\(cookieName)=late; Path=/; Secure"], body: Data("{}".utf8)))
        pending = nil
    }
}
private enum CookieInvalidation: CaseIterable { case disconnect, reconnect, newerCollection, cancellation }

@Test(arguments: CookieInvalidation.allCases)
private func obsoleteHTTPResponsesCannotWriteCookies(_ reason: CookieInvalidation) async throws {
    let repository = try AccountRepository(url: FileManager.default.temporaryDirectory.appendingPathComponent("AIQuotaLateCookies-\(UUID())/accounts.sqlite"))
    let login = LoginCoordinator(repository: repository, vault: TransportCookieVault())
    let account = try await repository.add(provider: .codex, alias: "Cookie fixture")
    let identity = try RemoteIdentity(subject: "user-a", workspace: "workspace-a", product: "codex-subscription")
    let first = try await login.begin(account.id)
    _ = try await login.complete(first, verified: CredentialRecord(accountID: account.id, provider: .codex,
                                                                   identity: identity, kind: .webSession, webProfileID: first.webProfileID))
    let store = TransportCookieStore(); try await store.seed("before", profileID: first.webProfileID)
    let lease = try await repository.beginCollection(account.id)
    let cookies = WebCookieSession(profileID: first.webProfileID, origin: cookieOrigin, store: store,
                                    validate: { try await login.validateCollection(lease) })
    let http = DelayedCookieHTTP(); let transport = WebSessionHTTPTransport(base: http, cookies: cookies)
    let task = Task { try await transport.send(URLRequest(url: CodexWebClient.sessionURL)) }
    await http.waitUntilSent()
    switch reason {
    case .disconnect: try await repository.disconnect(account.id)
    case .newerCollection: _ = try await repository.beginCollection(account.id)
    case .cancellation: task.cancel()
    case .reconnect:
        let second = try await login.begin(account.id)
        try await store.seed("new-profile", profileID: second.webProfileID)
        _ = try await login.complete(second, verified: CredentialRecord(accountID: account.id, provider: .codex,
                                                                        identity: identity, kind: .webSession, webProfileID: second.webProfileID))
    }
    await http.respond()
    do { _ = try await task.value; Issue.record("Late cookie response was adopted") }
    catch is CancellationError { #expect(reason == .cancellation) }
    catch CoreError.staleAttempt { #expect(reason != .cancellation) }
    #expect(await store.writes == 0)
    #expect(await store.cookies(profileID: first.webProfileID).first?.value == "before")
}

@Test func cancelledLoginCannotAdoptAResponseCookie() async throws {
    let repository = try AccountRepository(url: FileManager.default.temporaryDirectory.appendingPathComponent("AIQuotaCancelledCookies-\(UUID())/accounts.sqlite"))
    let login = LoginCoordinator(repository: repository, vault: TransportCookieVault())
    let account = try await repository.add(provider: .codex, alias: "Login fixture")
    let attempt = try await login.begin(account.id)
    let store = TransportCookieStore(); try await store.seed("before", profileID: attempt.webProfileID)
    let cookies = WebCookieSession(profileID: attempt.webProfileID, origin: cookieOrigin, store: store,
                                    validate: { try await login.validateLogin(attempt) })
    let http = DelayedCookieHTTP(); let transport = WebSessionHTTPTransport(base: http, cookies: cookies)
    let task = Task { try await transport.send(URLRequest(url: CodexWebClient.sessionURL)) }
    await http.waitUntilSent(); await login.cancel(attempt); await http.respond()
    await #expect(throws: CoreError.staleAttempt) { try await task.value }
    #expect(await store.writes == 0)
    let retry = try await login.begin(account.id)
    #expect(retry.webProfileID != attempt.webProfileID)
    await login.cancel(retry)
}
