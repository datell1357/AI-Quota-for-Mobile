import AIQuotaCore
import Foundation
import Testing
@testable import AIQuotaAuth

@Test func externalKeychainRecordRoundTripsWithoutTokenCopyAndRetainsSchemaOneCompatibility() throws {
    let reference = try ExternalKeychainReference(service: "Claude Code-credentials", account: "synthetic-local-user")
    let identity = try RemoteIdentity(subject: "synthetic", workspace: "organization", product: "claude-subscription")
    let record = try CredentialRecord(accountID: UUID(), provider: .claude, identity: identity, kind: .externalApplication,
                                      owner: .claudeCode, externalKeychain: reference)
    let restored = try JSONDecoder().decode(CredentialRecord.self, from: JSONEncoder().encode(record))
    try restored.validate()
    #expect(restored.externalKeychain == reference && restored.externalLocator == nil)
    #expect(restored.secret == nil && restored.refreshToken == nil && restored.schemaVersion == 1)
    let old = try CredentialRecord(accountID: UUID(), provider: .codex, identity: identity, kind: .externalApplication,
                                   owner: .codexCLI, externalLocator: "/fixture/auth.json")
    var json = try #require(JSONSerialization.jsonObject(with: JSONEncoder().encode(old)) as? [String: Any])
    json.removeValue(forKey: "externalKeychain")
    let legacy = try JSONDecoder().decode(CredentialRecord.self, from: JSONSerialization.data(withJSONObject: json))
    try legacy.validate(); #expect(legacy.externalKeychain == nil && legacy.externalLocator == old.externalLocator)
}

@Test func externalKeychainRecordRejectsMixedSourcesOwnersAndSecretCopies() throws {
    let reference = try ExternalKeychainReference(service: "Claude Code-credentials", account: "synthetic")
    let identity = try RemoteIdentity(subject: "synthetic", product: "claude-subscription")
    for kind in [CredentialKind.oauth, .webSession, .apiKey] {
        #expect(throws: AuthenticationError.invalidCredential) {
            try CredentialRecord(accountID: UUID(), provider: .claude, identity: identity, kind: kind, secret: "synthetic", externalKeychain: reference)
        }
    }
    for owner in [CredentialOwner.aiQuota, .codexCLI, .browser] {
        #expect(throws: AuthenticationError.invalidCredential) {
            try CredentialRecord(accountID: UUID(), provider: .claude, identity: identity, kind: .externalApplication, owner: owner, externalKeychain: reference)
        }
    }
    #expect(throws: AuthenticationError.invalidCredential) {
        try CredentialRecord(accountID: UUID(), provider: .claude, identity: identity, kind: .externalApplication,
                             owner: .claudeCode, externalLocator: "/fixture/.credentials.json", externalKeychain: reference)
    }
    #expect(throws: AuthenticationError.invalidCredential) {
        try CredentialRecord(accountID: UUID(), provider: .claude, identity: identity, kind: .externalApplication,
                             owner: .claudeCode, secret: "synthetic-token", externalKeychain: reference)
    }
    for bad in ["", "bad\nservice", String(repeating: "x", count: 257)] {
        #expect(throws: AuthenticationError.invalidCredential) { try ExternalKeychainReference(service: bad, account: "valid") }
        #expect(throws: AuthenticationError.invalidCredential) { try ExternalKeychainReference(service: "valid", account: bad) }
    }
}
