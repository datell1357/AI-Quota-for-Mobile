import AIQuotaAuth
import AIQuotaCore
import Foundation

/// One transport per authenticated request chain. Both reads and response writes use its bound profile.
public struct WebSessionHTTPTransport: HTTPTransport {
    private let base: any HTTPTransport
    private let cookies: WebCookieSession
    private let requiresCookies: Bool
    public init(base: any HTTPTransport, cookies: WebCookieSession, requiresCookies: Bool = true) {
        self.base = base; self.cookies = cookies; self.requiresCookies = requiresCookies
    }
    public func send(_ request: URLRequest) async throws -> HTTPResult {
        do {
            guard let url = request.url else { throw AuthenticationError.invalidCredential }
            var scoped = request
            let header = try await cookies.header(for: url, allowingEmpty: !requiresCookies)
            scoped.setValue(header.isEmpty ? nil : header, forHTTPHeaderField: "Cookie")
            let result = try await base.send(scoped)
            try Task.checkCancellation()
            try await cookies.receive(headers: result.headers, from: url)
            return result
        } catch AuthenticationError.missingCredential { throw CollectorError.authenticationRequired }
        catch AuthenticationError.invalidCredential { throw CollectorError.invalidResponse }
        catch is AuthenticationError { throw CollectorError.credentialsUnavailable }
    }
}

func profileTransport(_ base: any HTTPTransport, cookies: WebCookieSession?) -> any HTTPTransport {
    if let cookies { WebSessionHTTPTransport(base: base, cookies: cookies) } else { base }
}
