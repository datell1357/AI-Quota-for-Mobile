import Foundation
@preconcurrency import Network

public enum LoopbackOAuthError: Error, Equatable, Sendable {
    case invalidRequest, unavailable, alreadyStarted, timedOut, accessDenied, authorizationFailed
}

/// One authorization attempt, bound only to IPv4 loopback on an OS-assigned port.
public actor LoopbackOAuthReceiver {
    private let state: String
    private let timeout: Duration
    private var listener: NWListener?
    private var ready: CheckedContinuation<URL, any Error>?
    private var waiting: CheckedContinuation<String, any Error>?
    private var result: Result<String, any Error>?
    private var started = false, waitRequested = false
    private var timer: Task<Void, Never>?
    private var redirectURL: URL?
    private struct Client { let connection: NWConnection; var bytes: Data; let timer: Task<Void, Never> }
    private var clients: [UUID: Client] = [:]
    public init(state: String, timeout: Duration = .seconds(300)) throws {
        guard (32...128).contains(state.utf8.count), state.unicodeScalars.allSatisfy({
            CharacterSet(charactersIn: "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-._~").contains($0)
        }), timeout > .zero, timeout <= .seconds(900) else { throw LoopbackOAuthError.invalidRequest }
        self.state = state; self.timeout = timeout
    }
    public func start() async throws -> URL {
        guard !started, result == nil else { throw LoopbackOAuthError.alreadyStarted }
        started = true
        try Task.checkCancellation()
        let parameters = NWParameters.tcp
        parameters.requiredLocalEndpoint = .hostPort(host: "127.0.0.1", port: .any)
        parameters.allowLocalEndpointReuse = false
        let listener: NWListener
        do { listener = try NWListener(using: parameters) }
        catch { throw LoopbackOAuthError.unavailable }
        self.listener = listener
        listener.stateUpdateHandler = { [weak self] state in Task { await self?.changed(state) } }
        listener.newConnectionHandler = { [weak self] connection in Task { await self?.accept(connection) } }
        return try await withTaskCancellationHandler {
            try await withCheckedThrowingContinuation { continuation in
                ready = continuation
                timer = Task { [weak self, timeout] in
                    do { try await Task.sleep(for: timeout) } catch { return }
                    await self?.finish(.failure(LoopbackOAuthError.timedOut))
                }
                listener.start(queue: DispatchQueue(label: "com.aiquota.oauth-loopback"))
            }
        } onCancel: { Task { await self.cancel() } }
    }
    public func waitForCode() async throws -> String {
        guard started, !waitRequested else { throw LoopbackOAuthError.alreadyStarted }
        waitRequested = true
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            if let result { return try result.get() }
            return try await withCheckedThrowingContinuation { waiting = $0 }
        } onCancel: { Task { await self.cancel() } }
    }
    public func cancel() { finish(.failure(CancellationError())) }
    private func changed(_ state: NWListener.State) {
        guard result == nil else { return }
        switch state {
        case .ready:
            guard let port = listener?.port, port.rawValue != 0 else { finish(.failure(LoopbackOAuthError.unavailable)); return }
            let url = URL(string: "http://127.0.0.1:\(port.rawValue)/")!
            redirectURL = url; ready?.resume(returning: url); ready = nil
        case .failed: finish(.failure(LoopbackOAuthError.unavailable))
        case .cancelled: finish(.failure(CancellationError()))
        default: break
        }
    }
    private func accept(_ connection: NWConnection) {
        guard result == nil, clients.count < 8 else { connection.cancel(); return }
        let id = UUID()
        let timeout = Task { [weak self] in
            do { try await Task.sleep(for: .seconds(5)) } catch { return }
            await self?.close(id)
        }
        clients[id] = Client(connection: connection, bytes: Data(), timer: timeout)
        connection.start(queue: DispatchQueue(label: "com.aiquota.oauth-loopback.connection"))
        receive(id)
    }
    private func receive(_ id: UUID) {
        clients[id]?.connection.receive(minimumIncompleteLength: 1, maximumLength: 8_192) { [weak self] data, _, complete, error in
            Task { await self?.received(id, data: data, complete: complete, failed: error != nil) }
        }
    }
    private func received(_ id: UUID, data: Data?, complete: Bool, failed: Bool) {
        guard var client = clients[id], result == nil else { close(id); return }
        if let data { client.bytes.append(data) }; clients[id] = client
        guard !failed, client.bytes.count <= 8_192 else { respond(id, status: "400 Bad Request"); return }
        if client.bytes.range(of: Data("\r\n\r\n".utf8)) != nil {
            guard let redirectURL else { close(id); return }
            do {
                let code = try Self.parse(client.bytes, redirectURL: redirectURL, state: state)
                respond(id, status: "200 OK"); finish(.success(code))
            } catch LoopbackOAuthError.accessDenied {
                respond(id, status: "200 OK"); finish(.failure(LoopbackOAuthError.accessDenied))
            } catch LoopbackOAuthError.authorizationFailed {
                respond(id, status: "200 OK"); finish(.failure(LoopbackOAuthError.authorizationFailed))
            } catch { respond(id, status: "400 Bad Request") } // An unrelated local request must not consume the real callback.
        } else if complete { respond(id, status: "400 Bad Request") }
        else { receive(id) }
    }
    private func respond(_ id: UUID, status: String) {
        guard let client = clients.removeValue(forKey: id) else { return }
        client.timer.cancel()
        let body = "<!doctype html><meta charset=utf-8><title>AI Quota</title><p>Return to AI Quota to finish connecting. You can close this window.</p><p>AI Quota로 돌아가 연결 결과를 확인하세요. 이 창은 닫아도 됩니다.</p>"
        let response = "HTTP/1.1 \(status)\r\nContent-Type: text/html; charset=utf-8\r\nContent-Length: \(body.utf8.count)\r\nCache-Control: no-store\r\nContent-Security-Policy: default-src 'none'\r\nReferrer-Policy: no-referrer\r\nConnection: close\r\n\r\n" + body
        client.connection.send(content: Data(response.utf8), completion: .contentProcessed { _ in client.connection.cancel() })
    }
    private func close(_ id: UUID) {
        guard let client = clients.removeValue(forKey: id) else { return }
        client.timer.cancel(); client.connection.cancel()
    }
    private func finish(_ result: Result<String, any Error>) {
        guard self.result == nil else { return }
        self.result = result; timer?.cancel(); timer = nil
        listener?.cancel(); listener = nil
        for id in Array(clients.keys) { close(id) }
        if let ready {
            switch result {
            case .success: ready.resume(throwing: LoopbackOAuthError.invalidRequest)
            case .failure(let error): ready.resume(throwing: error)
            }
            self.ready = nil
        }
        waiting?.resume(with: result); waiting = nil
    }
    static func parse(_ data: Data, redirectURL: URL, state: String) throws -> String {
        guard data.count <= 8_192, let text = String(data: data, encoding: .utf8), text.hasSuffix("\r\n\r\n") else { throw LoopbackOAuthError.invalidRequest }
        let lines = text.components(separatedBy: "\r\n"), first = lines[0].split(separator: " ", omittingEmptySubsequences: false)
        guard lines.count <= 36, first.count == 3, first[0] == "GET", first[2] == "HTTP/1.1",
              let target = URLComponents(string: String(first[1])), target.scheme == nil, target.host == nil,
              target.path == "/", target.fragment == nil else { throw LoopbackOAuthError.invalidRequest }
        var headers: [String: String] = [:]
        for line in lines.dropFirst().dropLast(2) {
            guard let colon = line.firstIndex(of: ":"), !line.hasPrefix(" "), !line.hasPrefix("\t") else { throw LoopbackOAuthError.invalidRequest }
            let name = String(line[..<colon]).lowercased(), value = line[line.index(after: colon)...].trimmingCharacters(in: .whitespaces)
            guard !name.isEmpty, headers[name] == nil else { throw LoopbackOAuthError.invalidRequest }; headers[name] = value
        }
        guard headers["host"] == "127.0.0.1:\(redirectURL.port ?? 0)", headers["transfer-encoding"] == nil,
              headers["content-length"] == nil || headers["content-length"] == "0", headers["origin"] == nil,
              let query = target.queryItems, query.count <= 16 else { throw LoopbackOAuthError.invalidRequest }
        func one(_ name: String) throws -> String? {
            let values = query.filter { $0.name == name }; guard values.count <= 1 else { throw LoopbackOAuthError.invalidRequest }; return values.first?.value
        }
        guard try one("state") == state else { throw LoopbackOAuthError.invalidRequest }
        let code = try one("code"), error = try one("error")
        guard code == nil || error == nil else { throw LoopbackOAuthError.invalidRequest }
        if let error { throw error == "access_denied" ? LoopbackOAuthError.accessDenied : LoopbackOAuthError.authorizationFailed }
        guard let code, (1...4_096).contains(code.utf8.count), code.unicodeScalars.allSatisfy({ (33...126).contains($0.value) }) else { throw LoopbackOAuthError.invalidRequest }
        return code
    }
}
