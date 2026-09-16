import Foundation
import Testing
@testable import AIQuotaAuth

private func cookie(_ name: String, value: String = "synthetic", domain: String, path: String = "/", expires: Date? = nil) throws -> HTTPCookie {
    var properties: [HTTPCookiePropertyKey: Any] = [.name: name, .value: value, .domain: domain, .path: path, .secure: "TRUE"]
    if let expires { properties[.expires] = expires }
    return try #require(HTTPCookie(properties: properties))
}
@Test func cookiesNeverCrossDomainOrPathBoundaries() throws {
    let now = Date()
    let cookies = try [cookie("session", domain: ".claude.ai"), cookie("other", domain: ".notclaude.ai"),
                       cookie("path", domain: "claude.ai", path: "/api"), cookie("wrongPath", domain: "claude.ai", path: "/apis"),
                       cookie("expired", domain: "claude.ai", expires: now.addingTimeInterval(-1))]
    let header = try IsolatedWebProfiles.cookieHeader(cookies, for: URL(string: "https://claude.ai/api/usage")!, now: now)
    #expect(header == "path=synthetic; session=synthetic")
    #expect(throws: (any Error).self) { try IsolatedWebProfiles.cookieHeader(cookies, for: URL(string: "https://evilclaude.ai/")!, now: now) }
    #expect(throws: (any Error).self) { try IsolatedWebProfiles.cookieHeader(cookies, for: URL(string: "http://claude.ai/")!, now: now) }
}

@MainActor @Test func nativeWebKitConfigurationsUseIndependentPersistentIdentifiers() throws {
    let profiles = IsolatedWebProfiles()
    let a = UUID(); let b = UUID()
    let first = try profiles.configuration(for: a)
    let again = try profiles.configuration(for: a)
    let second = try profiles.configuration(for: b)
    #expect(first.websiteDataStore.identifier == a)
    #expect(second.websiteDataStore.identifier == b)
    #expect(first.websiteDataStore === again.websiteDataStore)
    #expect(first.websiteDataStore !== second.websiteDataStore)
    #expect(first.websiteDataStore.isPersistent && second.websiteDataStore.isPersistent)
}
