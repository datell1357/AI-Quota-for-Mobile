import CryptoKit
import Foundation
import Security

public struct OAuthProofKey: Sendable, CustomStringConvertible, CustomDebugStringConvertible {
    public let verifier: String
    public let state: String
    public var challenge: String { Self.base64URL(Data(SHA256.hash(data: Data(verifier.utf8)))) }
    public var description: String { "OAuthProofKey(redacted)" }
    public var debugDescription: String { description }
    public init() throws {
        func random() throws -> String {
            var bytes = [UInt8](repeating: 0, count: 32)
            guard SecRandomCopyBytes(kSecRandomDefault, bytes.count, &bytes) == errSecSuccess else { throw AuthenticationError.invalidCredential }
            return Self.base64URL(Data(bytes))
        }
        try self.init(verifier: random(), state: random())
    }
    init(verifier: String, state: String) throws {
        let alphabet = CharacterSet(charactersIn: "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-._~")
        guard (43...128).contains(verifier.utf8.count), verifier.unicodeScalars.allSatisfy(alphabet.contains),
              (32...128).contains(state.utf8.count), state.unicodeScalars.allSatisfy(alphabet.contains) else { throw AuthenticationError.invalidCredential }
        self.verifier = verifier; self.state = state
    }
    private static func base64URL(_ data: Data) -> String {
        data.base64EncodedString().replacingOccurrences(of: "+", with: "-").replacingOccurrences(of: "/", with: "_").replacingOccurrences(of: "=", with: "")
    }
}
