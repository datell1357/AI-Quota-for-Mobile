import Foundation
import Testing
@testable import AIQuotaAuth

private let callbackState = String(repeating: "s", count: 43)
private let callbackRedirect = URL(string: "http://127.0.0.1:54321/")!
private func callbackRequest(_ target: String? = nil, headers: String = "Host: 127.0.0.1:54321\r\n") -> Data {
    Data("GET \(target ?? "/?state=\(callbackState)&code=synthetic-code") HTTP/1.1\r\n\(headers)\r\n".utf8)
}
private func callbackSession() -> URLSession {
    let configuration = URLSessionConfiguration.ephemeral
    configuration.httpCookieStorage = nil; configuration.urlCache = nil
    configuration.connectionProxyDictionary = [:]; configuration.timeoutIntervalForRequest = 2
    return URLSession(configuration: configuration)
}

@Test func oauthProofUsesRFC7636S256AndIndependentRandomState() throws {
    let vector = try OAuthProofKey(verifier: "dBjftJeZ4CVP-mB92K27uhbUJU1p1r_wW1gFWFOEjXk", state: callbackState)
    #expect(vector.challenge == "E9Melhoa2OwvFrEMTJguCHaoeK1t8URWbuGJSstw-cM")
    let first = try OAuthProofKey(), second = try OAuthProofKey()
    #expect(first.verifier.count == 43 && first.state.count == 43 && first.challenge.count == 43)
    #expect(first.verifier != first.state && first.verifier != second.verifier && first.state != second.state)
    #expect(!String(reflecting: first).contains(first.verifier) && !String(describing: first).contains(first.state))
    for bad in ["short", String(repeating: "x", count: 129), String(repeating: "x", count: 42) + "\n"] {
        #expect(throws: AuthenticationError.invalidCredential) { try OAuthProofKey(verifier: bad, state: callbackState) }
    }
}

@Test func loopbackParserRejectsUntrustedAmbiguousOrOversizedCallbacks() throws {
    #expect(try LoopbackOAuthReceiver.parse(callbackRequest(), redirectURL: callbackRedirect, state: callbackState) == "synthetic-code")
    let badTargets = ["/?state=wrong&code=x", "/?code=x", "/other?state=\(callbackState)&code=x",
        "/?state=\(callbackState)&state=\(callbackState)&code=x", "/?state=\(callbackState)&code=x&code=y",
        "/?state=\(callbackState)&code=x&error=access_denied", "/?state=\(callbackState)&code=",
        "/?state=\(callbackState)&code=bad%0Acode", "/?state=\(callbackState)&code=x#fragment",
        "http://127.0.0.1:54321/?state=\(callbackState)&code=x"]
    for target in badTargets {
        #expect(throws: LoopbackOAuthError.invalidRequest) { try LoopbackOAuthReceiver.parse(callbackRequest(target), redirectURL: callbackRedirect, state: callbackState) }
    }
    for headers in ["Host: evil.invalid\r\n", "Host: 127.0.0.1:1\r\n", "Host: 127.0.0.1:54321\r\nHOST: evil.invalid\r\n",
                    "Host: 127.0.0.1:54321\r\nOrigin: https://evil.invalid\r\n", "Host: 127.0.0.1:54321\r\nContent-Length: 1\r\n",
                    "Host: 127.0.0.1:54321\r\nTransfer-Encoding: chunked\r\n", " Host: 127.0.0.1:54321\r\n"] {
        #expect(throws: LoopbackOAuthError.invalidRequest) { try LoopbackOAuthReceiver.parse(callbackRequest(headers: headers), redirectURL: callbackRedirect, state: callbackState) }
    }
    for bytes in [Data(repeating: 32, count: 8193), Data([0xff]), callbackRequest() + Data("body".utf8),
                  Data(String(decoding: callbackRequest(), as: UTF8.self).replacingOccurrences(of: "GET ", with: "POST ").utf8)] {
        #expect(throws: LoopbackOAuthError.invalidRequest) { try LoopbackOAuthReceiver.parse(bytes, redirectURL: callbackRedirect, state: callbackState) }
    }
}

@Test func loopbackDenialRequiresMatchingStateAndDoesNotEchoProviderErrors() throws {
    #expect(throws: LoopbackOAuthError.accessDenied) { try LoopbackOAuthReceiver.parse(callbackRequest("/?state=\(callbackState)&error=access_denied"), redirectURL: callbackRedirect, state: callbackState) }
    #expect(throws: LoopbackOAuthError.authorizationFailed) { try LoopbackOAuthReceiver.parse(callbackRequest("/?state=\(callbackState)&error=server_error"), redirectURL: callbackRedirect, state: callbackState) }
    #expect(throws: LoopbackOAuthError.invalidRequest) { try LoopbackOAuthReceiver.parse(callbackRequest("/?state=wrong&error=access_denied"), redirectURL: callbackRedirect, state: callbackState) }
}

@Test func realLoopbackCallbackSurvivesUnrelatedRequestAndIsConsumedOnlyOnce() async throws {
    let receiver = try LoopbackOAuthReceiver(state: callbackState), url = try await receiver.start()
    #expect(url.host == "127.0.0.1" && url.scheme == "http" && url.port! > 0)
    let session = callbackSession(); defer { session.invalidateAndCancel() }
    let (_, invalid) = try await session.data(from: url.appending(queryItems: [.init(name: "state", value: "wrong"), .init(name: "code", value: "x")]))
    #expect((invalid as? HTTPURLResponse)?.statusCode == 400)
    let callback = url.appending(queryItems: [.init(name: "state", value: callbackState), .init(name: "code", value: "synthetic-code")])
    let (body, response) = try await session.data(from: callback)
    #expect((response as? HTTPURLResponse)?.statusCode == 200)
    #expect((response as? HTTPURLResponse)?.value(forHTTPHeaderField: "Cache-Control") == "no-store")
    #expect(!String(decoding: body, as: UTF8.self).contains(callbackState) && !String(decoding: body, as: UTF8.self).contains("synthetic-code"))
    #expect(try await receiver.waitForCode() == "synthetic-code") // The browser may finish before the waiter starts.
    await #expect(throws: LoopbackOAuthError.alreadyStarted) { try await receiver.waitForCode() }
    await #expect(throws: LoopbackOAuthError.alreadyStarted) { try await receiver.start() }
    await #expect(throws: (any Error).self) { try await session.data(from: callback) }
}

@Test func realLoopbackCancellationClosesTheListenerAndResumesItsWaiter() async throws {
    let receiver = try LoopbackOAuthReceiver(state: callbackState), url = try await receiver.start()
    let waiter = Task { try await receiver.waitForCode() }
    waiter.cancel()
    await #expect(throws: CancellationError.self) { try await waiter.value }
    await receiver.cancel() // Idempotent explicit teardown must also close the bound socket.
    let session = callbackSession(); defer { session.invalidateAndCancel() }
    await #expect(throws: (any Error).self) { try await session.data(from: url) }
}

@Test func realLoopbackTimesOutAndRejectsInvalidLifetime() async throws {
    let receiver = try LoopbackOAuthReceiver(state: callbackState, timeout: .milliseconds(200))
    _ = try await receiver.start()
    await #expect(throws: LoopbackOAuthError.timedOut) { try await receiver.waitForCode() }
    for duration in [Duration.zero, .seconds(-1), .seconds(901)] {
        #expect(throws: LoopbackOAuthError.invalidRequest) { try LoopbackOAuthReceiver(state: callbackState, timeout: duration) }
    }
}
