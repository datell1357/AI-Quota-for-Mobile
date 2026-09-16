import AIQuotaCore
import Foundation
import Testing
@testable import AIQuotaAuth

private let origin = URL(string: "https://claude.ai/")!
private func responseCookies(_ raw: String, path: String = "api/account") throws -> [HTTPCookie] {
    try ResponseCookiePolicy.cookies(headers: ["Set-Cookie": raw], responseURL: origin.appendingPathComponent(path), origin: origin)
}
private func seedCookie(_ value: String, name: String = "sessionKey", path: String = "/") throws -> HTTPCookie {
    try #require(HTTPCookie(properties: [.name: name, .value: value, .domain: "claude.ai", .path: path, .secure: "TRUE"]))
}

@Test func responseCookiesKeepRepeatedHeadersExpiresPathsAndSecurityFlags() throws {
    let cookies = try responseCookies("sessionKey=rotated; Path=/; Secure; HttpOnly; Expires=Wed, 21 Oct 2037 07:28:00 GMT, scoped=api-only; Path=/api; Secure")
    #expect(cookies.count == 2)
    let session = try #require(cookies.first { $0.name == "sessionKey" })
    #expect(session.value == "rotated" && session.isSecure && session.isHTTPOnly)
    #expect(session.expiresDate != nil)
    let time = Date(timeIntervalSince1970: 1_800_000_000)
    #expect(try IsolatedWebProfiles.cookieHeader(cookies, for: origin, now: time) == "sessionKey=rotated")
    #expect(try IsolatedWebProfiles.cookieHeader(cookies, for: origin.appendingPathComponent("api/usage"), now: time) == "scoped=api-only; sessionKey=rotated")
    #expect(try IsolatedWebProfiles.cookieHeader(cookies, for: origin.appendingPathComponent("apis"), now: time) == "sessionKey=rotated")
}

@Test func responseCookiesRejectForeignDomainsPublicSuffixesAndInvalidPrefixes() throws {
    for raw in ["other=x; Domain=evilclaude.ai; Path=/; Secure", "other=x; Domain=ai; Path=/; Secure",
                "other=x; Domain=..claude.ai; Path=/; Secure", "__Secure-token=x; Path=/",
                "__Host-token=x; Domain=claude.ai; Path=/; Secure", "__Host-token=x; Path=/api; Secure"] {
        #expect(try responseCookies(raw).isEmpty)
    }
    #expect(try responseCookies("__Host-token=x; Path=/; Secure").count == 1)
    for url in ["http://claude.ai/api", "https://claude.ai:8443/api", "https://evilclaude.ai/api", "https://user@claude.ai/api"] {
        #expect(throws: AuthenticationError.invalidCredential) {
            try ResponseCookiePolicy.cookies(headers: [:], responseURL: URL(string: url)!, origin: origin)
        }
    }
    #expect(throws: AuthenticationError.invalidCredential) { try responseCookies("token=x\r\nInjected: y") }
}

@Test func responseCookieDeletionHonorsMaxAgeAndPastExpiry() throws {
    let age = try #require(responseCookies("sessionKey=; Path=/; Secure; Max-Age=0; Expires=Wed, 21 Oct 2037 07:28:00 GMT").first)
    #expect(ResponseCookiePolicy.isExpired(age, now: .now))
    let past = try #require(responseCookies("sessionKey=; Path=/; Secure; Expires=Thu, 01 Jan 1970 00:00:00 GMT").first)
    #expect(ResponseCookiePolicy.isExpired(past, now: .now))
}

@Test func googleParentCookieAcceptanceKeepsTheExactOriginAndDomainBoundary() throws {
    let google = URL(string: "https://gemini.google.com/")!
    let good = "__Secure-1PSID=synthetic; Domain=.google.com; Path=/; Secure; HttpOnly"
    #expect(try ResponseCookiePolicy.cookies(headers: ["Set-Cookie":good], responseURL: google, origin: google).count == 1)
    for domain in ["com","evilgoogle.com","accounts.google.com","google.com.evil.invalid","..google.com"] {
        #expect(try ResponseCookiePolicy.cookies(headers: ["Set-Cookie":"SID=x; Domain=\(domain); Path=/; Secure"], responseURL: google, origin: google).isEmpty)
    }
    #expect(try responseCookies(good).isEmpty)
    #expect(throws: AuthenticationError.invalidCredential) {
        try ResponseCookiePolicy.cookies(headers: ["Set-Cookie":good], responseURL: URL(string: "https://accounts.google.com/")!, origin: google)
    }
}

private actor CookieMemoryStore: WebCookieStore {
    var profiles: [UUID: [HTTPCookie]] = [:]
    private(set) var writes = 0
    func seed(_ values: [HTTPCookie], id: UUID) { profiles[id] = values }
    func cookies(profileID: UUID) -> [HTTPCookie] { profiles[profileID] ?? [] }
    func write(_ cookie: HTTPCookie, profileID: UUID, now: Date) {
        writes += 1
        profiles[profileID, default: []].removeAll { ResponseCookiePolicy.sameKey($0, cookie) }
        if !ResponseCookiePolicy.isExpired(cookie, now: now) { profiles[profileID, default: []].append(cookie) }
    }
}
private actor CookieLease {
    var valid = true
    func invalidate() { valid = false }
    func check() throws { guard valid else { throw CoreError.staleAttempt } }
}

@Test func optionalCookiesAllowTokenAuthenticationWithoutSkippingOriginOrLeaseChecks() async throws {
    let store = CookieMemoryStore(), id = UUID(), lease = CookieLease(), api = URL(string: "https://api.z.ai/")!
    let session = WebCookieSession(profileID: id, origin: api, store: store, validate: { try await lease.check() })
    await #expect(throws: AuthenticationError.missingCredential) { try await session.header(for: api) }
    #expect(try await session.header(for: api, allowingEmpty: true).isEmpty)
    try await session.receive(headers: ["Set-Cookie":"session=rotated; Domain=.z.ai; Path=/; Secure; HttpOnly"], from: api)
    #expect(try await session.header(for: api) == "session=rotated")
    await #expect(throws: AuthenticationError.invalidCredential) { try await session.header(for: URL(string: "https://z.ai/")!, allowingEmpty: true) }
    await lease.invalidate()
    await #expect(throws: CoreError.staleAttempt) { try await session.header(for: api, allowingEmpty: true) }
}

@Test func zaiParentCookieIsAcceptedOnlyByItsExplicitAPIOrigin() throws {
    let api = URL(string: "https://api.z.ai/")!
    let header = "session=fixture; Domain=.z.ai; Path=/; Secure; HttpOnly"
    #expect(try ResponseCookiePolicy.cookies(headers: ["Set-Cookie":header], responseURL: api, origin: api).count == 1)
    for domain in ["ai", "evilz.ai", "chat.z.ai", "z.ai.evil.invalid", "..z.ai"] {
        #expect(try ResponseCookiePolicy.cookies(headers: ["Set-Cookie":"session=x; Domain=\(domain); Path=/; Secure"], responseURL: api, origin: api).isEmpty)
    }
    #expect(try ResponseCookiePolicy.cookies(headers: ["Set-Cookie":header], responseURL: origin, origin: origin).isEmpty)
    #expect(throws: AuthenticationError.invalidCredential) {
        try ResponseCookiePolicy.cookies(headers: ["Set-Cookie":header], responseURL: URL(string: "https://chat.z.ai/")!, origin: api)
    }
}

@Test func googleParentCookieRotationStaysInsideItsProfileAndSurvivesSessionRecreation() async throws {
    let google = URL(string: "https://gemini.google.com/")!, store = CookieMemoryStore(), a = UUID(), b = UUID()
    let cookie = try #require(HTTPCookie(properties: [.name:"SID",.value:"synthetic-before",.domain:".google.com",.path:"/",.secure:"TRUE"]))
    await store.seed([cookie], id: a); await store.seed([cookie], id: b)
    let session = WebCookieSession(profileID: a, origin: google, store: store, validate: {})
    #expect(try await session.header(for: google) == "SID=synthetic-before")
    try await session.receive(headers: ["Set-Cookie":"SID=synthetic-after; Domain=.google.com; Path=/; Secure; HttpOnly"], from: google)
    let reopened = WebCookieSession(profileID: a, origin: google, store: store, validate: {})
    #expect(try await reopened.header(for: google) == "SID=synthetic-after")
    #expect(await store.cookies(profileID: b).first?.value == "synthetic-before")
    await #expect(throws: AuthenticationError.invalidCredential) { try await reopened.header(for: URL(string: "https://accounts.google.com/")!) }
}

@Test func responseRotationPersistsOnlyToItsProfileAndFeedsTheNextRequest() async throws {
    let store = CookieMemoryStore(); let a = UUID(); let b = UUID(); let lease = CookieLease()
    await store.seed([try seedCookie("first")], id: a)
    await store.seed([try seedCookie("other")], id: b)
    let session = WebCookieSession(profileID: a, origin: origin, store: store, validate: { try await lease.check() })
    #expect(try await session.header(for: origin) == "sessionKey=first")
    // Browser-side changes during this request chain must not silently switch the captured identity.
    await store.seed([try seedCookie("browser-changed")], id: a)
    #expect(try await session.header(for: origin) == "sessionKey=first")
    try await session.receive(headers: ["set-cookie": "sessionKey=rotated; Path=/; Secure; HttpOnly"], from: origin)
    #expect(try await session.header(for: origin) == "sessionKey=rotated")
    #expect(await store.cookies(profileID: a).first?.value == "rotated")
    #expect(await store.cookies(profileID: b).first?.value == "other")
    let reloaded = WebCookieSession(profileID: a, origin: origin, store: store, validate: { try await lease.check() })
    #expect(try await reloaded.header(for: origin) == "sessionKey=rotated")
    await lease.invalidate()
    await #expect(throws: CoreError.staleAttempt) {
        try await session.receive(headers: ["set-cookie": "sessionKey=late; Path=/; Secure"], from: origin)
    }
    #expect(await store.writes == 1)
}

@Test func cookieDeletionRemovesOnlyTheMatchingProfileAndPath() async throws {
    let store = CookieMemoryStore(); let id = UUID()
    await store.seed([try seedCookie("root"), try seedCookie("api", path: "/api"), try seedCookie("keep", name: "preference")], id: id)
    let session = WebCookieSession(profileID: id, origin: origin, store: store, validate: {})
    _ = try await session.header(for: origin)
    try await session.receive(headers: ["set-cookie": "sessionKey=; Path=/; Secure; Max-Age=0"], from: origin)
    #expect(try await session.header(for: origin) == "preference=keep")
    #expect(try await session.header(for: origin.appendingPathComponent("api/usage")) == "sessionKey=api; preference=keep")
}

@MainActor @Test func actualWebKitCookieRotationSurvivesStoreReopeningAndKeepsTwoProfilesIsolated() async throws {
    let profiles = IsolatedWebProfiles(); let a = UUID(); let b = UUID()
    try await profiles.write(seedCookie("native-first"), profileID: a)
    try await profiles.write(seedCookie("native-other"), profileID: b)
    let session = WebCookieSession(profileID: a, origin: origin, store: profiles, validate: {})
    #expect(try await session.header(for: origin) == "sessionKey=native-first")
    try await session.receive(headers: ["set-cookie": "sessionKey=native-rotated; Path=/; Secure; HttpOnly; Max-Age=3600"], from: origin)
    let reopened = IsolatedWebProfiles()
    #expect(try await reopened.cookieHeader(for: origin, profileID: a) == "sessionKey=native-rotated")
    #expect(try await reopened.cookieHeader(for: origin, profileID: b) == "sessionKey=native-other")
    try await session.receive(headers: ["set-cookie": "sessionKey=; Path=/; Secure; Max-Age=0"], from: origin)
    await #expect(throws: AuthenticationError.missingCredential) { try await reopened.cookieHeader(for: origin, profileID: a) }
    #expect(try await reopened.cookieHeader(for: origin, profileID: b) == "sessionKey=native-other")
}
