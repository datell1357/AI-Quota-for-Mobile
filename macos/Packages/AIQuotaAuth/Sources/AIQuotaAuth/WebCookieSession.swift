import Foundation

public protocol WebCookieStore: Sendable {
    func cookies(profileID: UUID) async throws -> [HTTPCookie]
    func write(_ cookie: HTTPCookie, profileID: UUID, now: Date) async throws
}

/// A request chain owns its cookie snapshot. Browser activity and other profiles cannot replace it
/// halfway through identity/workspace/usage verification; only responses to this chain update it.
public actor WebCookieSession {
    private let profileID: UUID
    private let origin: URL
    private let store: any WebCookieStore
    private let validate: @Sendable () async throws -> Void
    private let now: @Sendable () -> Date
    private var jar: [HTTPCookie]?
    public init(profileID: UUID, origin: URL, store: any WebCookieStore,
                now: @escaping @Sendable () -> Date = { .now },
                validate: @escaping @Sendable () async throws -> Void) {
        self.profileID = profileID; self.origin = origin; self.store = store
        self.now = now; self.validate = validate
    }
    public func header(for url: URL, allowingEmpty: Bool = false) async throws -> String {
        try ResponseCookiePolicy.validateOrigin(url, origin: origin)
        try Task.checkCancellation(); try await validate()
        if jar == nil {
            let loaded = try await store.cookies(profileID: profileID)
            try Task.checkCancellation(); try await validate()
            jar = loaded
        }
        do { return try IsolatedWebProfiles.cookieHeader(jar ?? [], for: url, now: now()) }
        catch AuthenticationError.missingCredential where allowingEmpty { return "" }
    }
    public func receive(headers: [String: String], from url: URL) async throws {
        try ResponseCookiePolicy.validateOrigin(url, origin: origin)
        try Task.checkCancellation(); try await validate()
        let incoming = try ResponseCookiePolicy.cookies(headers: headers, responseURL: url, origin: origin)
        guard !incoming.isEmpty else { return }
        if jar == nil { _ = try await header(for: url, allowingEmpty: true) }
        for cookie in incoming {
            try Task.checkCancellation(); try await validate()
            let time = now()
            try await store.write(cookie, profileID: profileID, now: time)
            try Task.checkCancellation(); try await validate()
            jar?.removeAll { ResponseCookiePolicy.sameKey($0, cookie) }
            if !ResponseCookiePolicy.isExpired(cookie, now: time) { jar?.append(cookie) }
        }
    }
}

public enum ResponseCookiePolicy {
    public static func validateOrigin(_ url: URL, origin: URL) throws {
        guard url.scheme == "https", origin.scheme == "https", let host = url.host?.lowercased(),
              host == origin.host?.lowercased(), url.user == nil, url.password == nil,
              origin.user == nil, origin.password == nil, (url.port ?? 443) == 443, (origin.port ?? 443) == 443
        else { throw AuthenticationError.invalidCredential }
    }
    public static func cookies(headers: [String: String], responseURL: URL, origin: URL) throws -> [HTTPCookie] {
        try validateOrigin(responseURL, origin: origin)
        guard let raw = headers.first(where: { $0.key.lowercased() == "set-cookie" })?.value else { return [] }
        guard raw.utf8.count <= 65_536, !raw.unicodeScalars.contains(where: { CharacterSet.controlCharacters.contains($0) })
        else { throw AuthenticationError.invalidCredential }
        // HTTPURLResponse can combine repeated Set-Cookie fields. Expires' weekday comma is not a separator.
        let separator = try NSRegularExpression(pattern: #",\s*(?=[!#$%&'*+.^_`|~0-9A-Za-z-]+=)"#)
        let separated = separator.stringByReplacingMatches(in: raw, range: NSRange(raw.startIndex..., in: raw), withTemplate: "\n")
        let host = origin.host!.lowercased()
        return separated.split(separator: "\n").flatMap { line -> [HTTPCookie] in
            let attributes = line.split(separator: ";").dropFirst().map {
                $0.split(separator: "=", maxSplits: 1).first?.trimmingCharacters(in: .whitespaces).lowercased() ?? ""
            }
            return HTTPCookie.cookies(withResponseHeaderFields: ["Set-Cookie": String(line)], for: responseURL).filter { cookie in
                let domain = canonicalDomain(cookie.domain)
                // These first-party web sessions share parent-domain cookies. Permit
                // only the known origin/domain pairs inside the same profile; request origins
                // remain exact, and unrelated parent/sibling domains are still rejected.
                let permittedDomain = domain == host || (host == "gemini.google.com" && domain == "google.com")
                    || (host == "api.z.ai" && domain == "z.ai")
                guard permittedDomain, !cookie.name.isEmpty,
                      ![cookie.name, cookie.value].contains(where: { $0.contains(";") || $0.unicodeScalars.contains(where: { CharacterSet.controlCharacters.contains($0) }) })
                else { return false }
                if cookie.name.hasPrefix("__Secure-") && !cookie.isSecure { return false }
                if cookie.name.hasPrefix("__Host-") && (!cookie.isSecure || cookie.path != "/" || attributes.contains("domain")) { return false }
                return true
            }
        }
    }
    public static func isExpired(_ cookie: HTTPCookie, now: Date) -> Bool {
        if let age = cookie.properties?[.maximumAge] {
            if let seconds = Double(String(describing: age)), seconds <= 0 { return true }
        }
        return cookie.expiresDate.map { $0 <= now } ?? false
    }
    public static func sameKey(_ lhs: HTTPCookie, _ rhs: HTTPCookie) -> Bool {
        lhs.name == rhs.name && canonicalDomain(lhs.domain) == canonicalDomain(rhs.domain) && lhs.path == rhs.path
    }
    private static func canonicalDomain(_ domain: String) -> String {
        let lower = domain.lowercased()
        return lower.hasPrefix(".") ? String(lower.dropFirst()) : lower
    }
}
