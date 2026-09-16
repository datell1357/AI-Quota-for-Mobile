import AIQuotaAuth
import AppKit
import Foundation
import WebKit

// Invoke write and read as separate processes with two freshly generated, probe-only UUIDs.
// No network request is made and no existing application profile is discovered or enumerated.
let arguments = Array(CommandLine.arguments.dropFirst())
let modes = ["write", "read", "renew", "read-renewed", "expire", "read-expired"]
guard arguments.count == 3, modes.contains(arguments[0]),
      let firstID = UUID(uuidString: arguments[1]), let secondID = UUID(uuidString: arguments[2]), firstID != secondID else {
    fputs("Usage: AIQuotaWebSessionProbe \(modes.joined(separator: "|")) fresh-profile-a fresh-profile-b\n", stderr)
    exit(64)
}
@MainActor final class ProbeDelegate: NSObject, NSApplicationDelegate, WKNavigationDelegate {
    private let firstID: UUID
    private let secondID: UUID
    private let mode: String
    private let origin = URL(string: "https://cookie-probe.aiquota.invalid/")!
    private let profiles = IsolatedWebProfiles()
    private var views: [WKWebView] = []
    private var loads: [ObjectIdentifier: CheckedContinuation<Void, any Error>] = [:]
    init(firstID: UUID, secondID: UUID, mode: String) {
        self.firstID = firstID; self.secondID = secondID; self.mode = mode
    }
    func applicationDidFinishLaunching(_ notification: Notification) {
        Task {
            do {
                try await run()
                NSApplication.shared.terminate(nil)
            } catch {
                fputs("WebKit persistent cookie probe failed\n", stderr)
                exit(1)
            }
        }
    }
    private func loadProfile(_ id: UUID) async throws {
        let view = WKWebView(frame: .zero, configuration: profiles.configuration(for: id))
        view.navigationDelegate = self
        views.append(view)
        try await withCheckedThrowingContinuation { continuation in
            loads[ObjectIdentifier(view)] = continuation
            view.loadHTMLString("<!doctype html><title>Local cookie probe</title>", baseURL: nil)
        }
    }
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        loads.removeValue(forKey: ObjectIdentifier(webView))?.resume()
    }
    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: any Error) {
        loads.removeValue(forKey: ObjectIdentifier(webView))?.resume(throwing: error)
    }
    func webView(_ webView: WKWebView, didFailProvisionalNavigation navigation: WKNavigation!, withError error: any Error) {
        loads.removeValue(forKey: ObjectIdentifier(webView))?.resume(throwing: error)
    }
    private func run() async throws {
        if mode == "write" {
            // Match login's WebKit view lifecycle. Later processes intentionally create no web view.
            try await loadProfile(firstID)
            try await loadProfile(secondID)
            for (id, value) in [(firstID, "synthetic-before"), (secondID, "synthetic-other")] {
                guard let cookie = try ResponseCookiePolicy.cookies(headers: ["Set-Cookie": "session=\(value); Path=/; Secure; HttpOnly; Max-Age=3600"],
                                                                  responseURL: origin, origin: origin).first,
                      !cookie.isSessionOnly, cookie.expiresDate != nil else { throw AuthenticationError.invalidCredential }
                try await profiles.write(cookie, profileID: id)
            }
        }
        if ["write", "renew", "expire"].contains(mode) {
            let value = mode == "write" ? "synthetic-rotated" : "synthetic-renewed"
            let age = mode == "expire" ? 0 : 3600
            let session = WebCookieSession(profileID: firstID, origin: origin, store: profiles, validate: {})
            _ = try await session.header(for: origin)
            try await session.receive(headers: ["Set-Cookie": "session=\(value); Path=/; Secure; HttpOnly; Max-Age=\(age)"], from: origin)
        }
        if ["expire", "read-expired"].contains(mode) {
            guard try await profiles.cookies(profileID: firstID).isEmpty else { throw AuthenticationError.invalidCredential }
        } else {
            let expected = ["renew", "read-renewed"].contains(mode) ? "synthetic-renewed" : "synthetic-rotated"
            guard try await profiles.cookieHeader(for: origin, profileID: firstID) == "session=\(expected)"
            else { throw AuthenticationError.invalidCredential }
        }
        guard try await profiles.cookieHeader(for: origin, profileID: secondID) == "session=synthetic-other"
        else { throw AuthenticationError.invalidCredential }
        print("WebKit \(mode): expected cookie state and second profile isolation verified")
    }
}
let application = NSApplication.shared
let delegate = ProbeDelegate(firstID: firstID, secondID: secondID, mode: arguments[0])
application.delegate = delegate
application.setActivationPolicy(.prohibited)
application.run()
