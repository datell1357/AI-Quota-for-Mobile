import AIQuotaAuth
import AIQuotaCore
import Foundation

// A dedicated, random service ensures the probe never touches existing user credentials.
let vault = KeychainCredentialVault(service: "com.aiquota.macos.validation.\(UUID().uuidString)")
let reference = UUID()
var created = false
do {
    let identity = try RemoteIdentity(subject: "synthetic-probe", product: "keychain-smoke")
    let record = try CredentialRecord(accountID: UUID(), provider: .glm, identity: identity, kind: .apiKey, secret: "synthetic-keychain-roundtrip")
    try await vault.create(record, reference: reference); created = true
    let read = try await vault.read(reference)
    guard read.accountID == record.accountID, read.secret == record.secret else {
        throw AuthenticationError.invalidCredential
    }
    try await vault.remove(reference); created = false
    do { _ = try await vault.read(reference); throw AuthenticationError.invalidCredential }
    catch AuthenticationError.missingCredential { }
    print("Native Keychain create/read/remove verified with an isolated synthetic item")
} catch {
    if created {
        do { try await vault.remove(reference) }
        catch { fputs("Synthetic Keychain item cleanup needs attention\n", stderr) }
    }
    fputs("Native Keychain verification failed: \(error)\n", stderr)
    exit(1)
}
