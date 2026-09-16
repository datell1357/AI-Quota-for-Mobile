import CodexBarCore
import Foundation

private struct OfflineTransport: ProviderHTTPTransport {
    func data(for request: URLRequest) async throws -> (Data, URLResponse) {
        guard let url = request.url, url.host == "api.z.ai" else { throw URLError(.badURL) }
        let body = url.path.hasSuffix("/quota/limit")
            ? #"{"success":true,"code":200,"data":{"limits":[{"type":"CREDIT_LIMIT","unit":3,"number":5,"percentage":25,"usage":2000,"currentValue":500,"remaining":1500},{"type":"CREDIT_LIMIT","unit":6,"number":1,"percentage":0,"usage":10000,"currentValue":0,"remaining":10000}]}}"#
            : #"{"success":true,"code":200,"data":[]}"#
        return (Data(body.utf8), HTTPURLResponse(url: url, statusCode: 200, httpVersion: nil, headerFields: ["Content-Type": "application/json"])!)
    }
}

// Exercise the actual bundled plugin and JS engine with deterministic, credential-free transport.
do {
    let runtime = try ProviderPluginRuntime(bundledPlugin: "zai", transport: OfflineTransport())
    let snapshot = try await runtime.fetchUsage(secrets: ["Z_AI_API_KEY": "synthetic-resource-probe"])
    guard snapshot.primary?.usedPercent == 25, snapshot.secondary?.usedPercent == 0 else {
        throw NSError(domain: "AIQuotaResourceProbe", code: 1)
    }
    print("GLM bundled resource and JavaScript runtime verified")
} catch {
    fputs("GLM resource/runtime validation failed: \(error)\n", stderr)
    exit(1)
}
