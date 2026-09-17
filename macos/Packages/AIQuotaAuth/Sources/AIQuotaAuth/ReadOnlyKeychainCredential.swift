import Foundation
import LocalAuthentication
import Security

public struct ExternalKeychainReference: Codable, Equatable, Sendable {
    public let service: String
    public let account: String
    public init(service: String, account: String) throws {
        self.service = service; self.account = account
        try validate()
    }
    public func validate() throws {
        for value in [service, account] {
            guard !value.isEmpty, value.utf8.count <= 256,
                  !value.unicodeScalars.contains(where: { CharacterSet.controlCharacters.contains($0) }) else { throw AuthenticationError.invalidCredential }
        }
    }
}

public protocol ExternalKeychainReading: Sendable {
    func read(_ reference: ExternalKeychainReference, allowInteraction: Bool) async throws -> Data
}

/// Reads exactly one selected service/account. No enumeration, copy, update, deletion or CLI fallback.
public actor ReadOnlyKeychainCredential: ExternalKeychainReading {
    public init() {}
    public func read(_ reference: ExternalKeychainReference, allowInteraction: Bool = false) throws -> Data {
        try reference.validate(); try Task.checkCancellation()
        let context = LAContext(); context.interactionNotAllowed = !allowInteraction
        let query: [String: Any] = [kSecClass as String: kSecClassGenericPassword,
            kSecAttrService as String: reference.service, kSecAttrAccount as String: reference.account,
            kSecReturnPersistentRef as String: true, kSecReturnAttributes as String: true,
            kSecMatchLimit as String: kSecMatchLimitAll, kSecUseAuthenticationContext as String: context]
        var result: CFTypeRef?
        try check(SecItemCopyMatching(query as CFDictionary, &result))
        guard let rows = result as? [[String: Any]], rows.count == 1,
              let persistent = rows[0][kSecValuePersistentRef as String] as? Data else { throw AuthenticationError.invalidCredential }
        try Task.checkCancellation()
        // macOS rejects kSecReturnData with kSecMatchLimitAll for password items.
        let selected: [String: Any] = [kSecValuePersistentRef as String: persistent,
            kSecReturnData as String: true, kSecMatchLimit as String: kSecMatchLimitOne,
            kSecUseAuthenticationContext as String: context]
        result = nil
        try check(SecItemCopyMatching(selected as CFDictionary, &result))
        try Task.checkCancellation()
        guard let data = result as? Data, !data.isEmpty, data.count <= 1_048_576 else { throw AuthenticationError.invalidCredential }
        return data
    }
    private func check(_ status: OSStatus) throws {
        switch status {
        case errSecSuccess: break
        case errSecItemNotFound: throw AuthenticationError.missingCredential
        case errSecUserCanceled: throw AuthenticationError.cancelled
        case errSecInteractionNotAllowed, errSecAuthFailed: throw AuthenticationError.interactionRequired
        default: throw AuthenticationError.storage(status)
        }
    }
}
