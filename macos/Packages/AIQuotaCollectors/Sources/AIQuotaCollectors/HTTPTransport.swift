import AIQuotaCore
import Foundation

public struct HTTPResult: Sendable {
    public let status: Int
    public let headers: [String: String]
    public let body: Data
    public init(status: Int, headers: [String: String] = [:], body: Data) {
        self.status = status; self.body = body
        self.headers = headers.reduce(into: [:]) { $0[$1.key.lowercased()] = $1.value }
    }
}
public protocol HTTPTransport: Sendable {
    func send(_ request: URLRequest) async throws -> HTTPResult
}

private final class NoRedirects: NSObject, URLSessionTaskDelegate, Sendable {
    func urlSession(_ session: URLSession, task: URLSessionTask, willPerformHTTPRedirection response: HTTPURLResponse,
                    newRequest request: URLRequest, completionHandler: @escaping (URLRequest?) -> Void) {
        completionHandler(nil) // A login redirect must never receive another account's Authorization/Cookie.
    }
}

/// Ephemeral transport with explicit session credentials, no shared cookie jar, no credential UI.
public final class NativeHTTPTransport: HTTPTransport {
    private let session: URLSession
    private let allowedHosts: Set<String>
    private let maximumBytes: Int
    public init(allowedHosts: Set<String>, maximumBytes: Int = 5 * 1_024 * 1_024) {
        self.allowedHosts = Set(allowedHosts.map { $0.lowercased() }); self.maximumBytes = max(1, maximumBytes)
        let config = URLSessionConfiguration.ephemeral
        config.httpCookieStorage = nil; config.httpShouldSetCookies = false
        config.urlCredentialStorage = nil; config.urlCache = nil
        config.requestCachePolicy = .reloadIgnoringLocalCacheData
        config.timeoutIntervalForRequest = 30; config.timeoutIntervalForResource = 45
        config.waitsForConnectivity = false
        self.session = URLSession(configuration: config, delegate: NoRedirects(), delegateQueue: nil)
    }
    deinit { session.invalidateAndCancel() }

    public func send(_ request: URLRequest) async throws -> HTTPResult {
        guard let url = request.url, url.scheme == "https", url.user == nil, url.password == nil,
              url.port == nil || url.port == 443, let host = url.host?.lowercased(), allowedHosts.contains(host)
        else { throw CollectorError.invalidResponse }
        do {
            let (bytes, response) = try await session.bytes(for: request)
            guard let http = response as? HTTPURLResponse else { throw CollectorError.invalidResponse }
            guard http.expectedContentLength <= Int64(maximumBytes) else { throw CollectorError.invalidResponse }
            var data = Data()
            for try await byte in bytes {
                try Task.checkCancellation()
                guard data.count < maximumBytes else { throw CollectorError.invalidResponse }
                data.append(byte)
            }
            var headers: [String: String] = [:]
            for (key, value) in http.allHeaderFields {
                if let key = key as? String, let value = value as? String { headers[key.lowercased()] = value }
            }
            return HTTPResult(status: http.statusCode, headers: headers, body: data)
        } catch is CancellationError { throw CancellationError() }
        catch let error as CollectorError { throw error }
        catch {
            if Task.isCancelled { throw CancellationError() }
            throw CollectorError.network
        }
    }
}

public enum HTTPResponsePolicy {
    public static func body(_ result: HTTPResult, now: Date) throws -> Data {
        switch result.status {
        case 200..<300: return result.body
        case 401: throw CollectorError.authenticationRequired
        case 429:
            let until = retryDate(result.headers["retry-after"], now: now) ?? now.addingTimeInterval(60)
            throw CollectorError.rateLimited(until: until)
        case 500..<600: throw CollectorError.network
        default: throw CollectorError.invalidResponse // 403 may be a challenge/denial, not an expired session.
        }
    }
    static func retryDate(_ raw: String?, now: Date) -> Date? {
        guard let raw else { return nil }
        let trimmed = raw.trimmingCharacters(in: .whitespacesAndNewlines)
        if let seconds = Double(trimmed), seconds.isFinite, seconds >= 0 {
            let until = now.addingTimeInterval(seconds)
            guard until.timeIntervalSince1970 <= 253_402_300_799 else { return nil }
            return until
        }
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "en_US_POSIX"); formatter.timeZone = TimeZone(secondsFromGMT: 0)
        formatter.dateFormat = "EEE, dd MMM yyyy HH:mm:ss 'GMT'"
        return formatter.date(from: trimmed).map { max($0, now) }
    }
}

/// Supplied by the account-specific authentication store after checking its remote subject/workspace.
/// Never loaded from a global active account or shared cookie store.
public struct AuthenticatedSession: Sendable, CustomStringConvertible, CustomDebugStringConvertible {
    public let accountID: UUID
    public let provider: ProviderID
    public let generation: UUID
    public let sessionRevision: UInt64
    public let identity: RemoteIdentity
    public let cookieHeader: String?
    public let accessToken: String?
    public var description: String { "AuthenticatedSession(redacted)" }
    public var debugDescription: String { description }
    public init(accountID: UUID, provider: ProviderID, generation: UUID, sessionRevision: UInt64,
                identity: RemoteIdentity, cookieHeader: String? = nil, accessToken: String? = nil) {
        self.accountID = accountID; self.provider = provider; self.generation = generation
        self.sessionRevision = sessionRevision; self.identity = identity
        self.cookieHeader = cookieHeader; self.accessToken = accessToken
    }
    func validate(_ lease: CollectionLease) throws {
        guard accountID == lease.accountID, provider == lease.provider, generation == lease.generation,
              sessionRevision == lease.sessionRevision, identity == lease.identity else { throw CoreError.staleAttempt }
    }
    static func headerValue(_ value: String?) throws -> String {
        guard let value, !value.isEmpty, !value.unicodeScalars.contains(where: { CharacterSet.controlCharacters.contains($0) })
        else { throw CollectorError.authenticationRequired }
        return value
    }
}
public protocol AccountSessionSource: Sendable {
    func session(for account: Account, lease: CollectionLease) async throws -> AuthenticatedSession
}
