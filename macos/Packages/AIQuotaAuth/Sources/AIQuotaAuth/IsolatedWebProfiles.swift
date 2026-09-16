import Foundation
import WebKit

@MainActor public final class IsolatedWebProfiles: WebCookieStore {
    private var stores: [UUID: WKWebsiteDataStore] = [:]
    private var preparation: [UUID: Task<Void, Never>] = [:]
    public init() {}
    public func store(for profileID: UUID) -> WKWebsiteDataStore {
        if let store = stores[profileID] { return store }
        let store = WKWebsiteDataStore(forIdentifier: profileID)
        stores[profileID] = store
        return store
    }
    public func configuration(for profileID: UUID) -> WKWebViewConfiguration {
        let configuration = WKWebViewConfiguration()
        configuration.websiteDataStore = store(for: profileID)
        return configuration
    }
    public func cookieHeader(for url: URL, profileID: UUID, now: Date = .now) async throws -> String {
        let cookies = try await cookies(profileID: profileID)
        return try Self.cookieHeader(cookies, for: url, now: now)
    }
    public func cookies(profileID: UUID) async throws -> [HTTPCookie] {
        let store = try await readyStore(for: profileID)
        return await store.httpCookieStore.allCookies()
    }
    public func write(_ cookie: HTTPCookie, profileID: UUID, now: Date = .now) async throws {
        let cookieStore = try await readyStore(for: profileID).httpCookieStore
        if ResponseCookiePolicy.isExpired(cookie, now: now) {
            // A host-only and Domain cookie with the same canonical host have the same cookie key.
            for existing in await cookieStore.allCookies() where ResponseCookiePolicy.sameKey(existing, cookie) {
                try Task.checkCancellation()
                await cookieStore.deleteCookie(existing)
            }
        } else {
            try Task.checkCancellation()
            await cookieStore.setCookie(cookie)
        }
    }
    private func readyStore(for profileID: UUID) async throws -> WKWebsiteDataStore {
        let store = store(for: profileID)
        // In the native restart probe, allCookies alone returned an empty jar until the persistent
        // store was opened. A public data-record query opens it without a web view or a network load.
        // Coalesce the first read/write for this profile; a cancelled caller cannot cancel other users.
        let task: Task<Void, Never>
        if let existing = preparation[profileID] { task = existing }
        else {
            task = Task { _ = await store.dataRecords(ofTypes: [WKWebsiteDataTypeCookies]) }
            preparation[profileID] = task
        }
        await task.value
        try Task.checkCancellation()
        return store
    }
    public nonisolated static func cookieHeader(_ cookies: [HTTPCookie], for url: URL, now: Date = .now) throws -> String {
        guard url.scheme == "https", let host = url.host?.lowercased(), url.user == nil, url.password == nil else {
            throw AuthenticationError.invalidCredential
        }
        let path = url.path.isEmpty ? "/" : url.path
        let matches = cookies.filter { cookie in
            let domain = cookie.domain.lowercased()
            let root = domain.hasPrefix(".") ? String(domain.dropFirst()) : domain
            let domainMatches = host == root || (domain.hasPrefix(".") && host.hasSuffix("." + root))
            let cookiePath = cookie.path.isEmpty ? "/" : cookie.path
            let pathMatches = path == cookiePath || (path.hasPrefix(cookiePath) &&
                (cookiePath.hasSuffix("/") || path.dropFirst(cookiePath.count).first == "/"))
            return domainMatches && pathMatches && cookie.expiresDate.map { $0 > now } != false
        }.sorted { $0.path.count == $1.path.count ? $0.name < $1.name : $0.path.count > $1.path.count }
        guard !matches.isEmpty else { throw AuthenticationError.missingCredential }
        for cookie in matches {
            guard !cookie.name.isEmpty, !cookie.name.contains("="),
                  ![cookie.name, cookie.value].contains(where: { value in
                      value.contains(";") || value.unicodeScalars.contains { CharacterSet.controlCharacters.contains($0) }
                  }) else { throw AuthenticationError.invalidCredential }
        }
        return matches.map { "\($0.name)=\($0.value)" }.joined(separator: "; ")
    }
}
