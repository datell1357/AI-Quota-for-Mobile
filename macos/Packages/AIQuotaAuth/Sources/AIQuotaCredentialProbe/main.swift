import AIQuotaAuth
import AIQuotaCore
import Foundation

// A dedicated, random service ensures the probe never touches existing user credentials.
let probeService = "com.aiquota.macos.validation.\(UUID().uuidString)"
let vault = KeychainCredentialVault(service: probeService)
let reference = UUID()
var created = false
var lifecycleReferences: [UUID] = []
do {
    let identity = try RemoteIdentity(subject: "synthetic-probe", product: "keychain-smoke")
    let record = try CredentialRecord(accountID: UUID(), provider: .glm, identity: identity, kind: .apiKey, secret: "synthetic-keychain-roundtrip")
    try await vault.create(record, reference: reference); created = true
    let read = try await vault.read(reference)
    guard read.accountID == record.accountID, read.secret == record.secret else {
        throw AuthenticationError.invalidCredential
    }
    let externalReader = ReadOnlyKeychainCredential()
    let selected = try ExternalKeychainReference(service: probeService, account: reference.uuidString)
    let externalData = try await externalReader.read(selected, allowInteraction: false)
    let externalRecord = try JSONDecoder().decode(CredentialRecord.self, from: externalData)
    guard externalRecord.accountID == record.accountID, externalRecord.secret == record.secret,
          try await vault.read(reference).secret == record.secret else { throw AuthenticationError.invalidCredential }
    let missing = try ExternalKeychainReference(service: probeService, account: UUID().uuidString)
    do { _ = try await externalReader.read(missing, allowInteraction: false); throw AuthenticationError.invalidCredential }
    catch AuthenticationError.missingCredential { }
    print("Read-only exact Keychain service/account query verified; source preserved and unrelated account not substituted")
    try await vault.remove(reference); created = false
    do { _ = try await vault.read(reference); throw AuthenticationError.invalidCredential }
    catch AuthenticationError.missingCredential { }
    print("Native Keychain create/read/remove verified with an isolated synthetic item")

    let url = FileManager.default.temporaryDirectory.appendingPathComponent("AIQuotaKeychainLifecycle-\(UUID())/accounts.sqlite")
    let repository = try AccountRepository(url: url)
    let login = LoginCoordinator(repository: repository, vault: vault)
    let first = try await repository.add(provider: .codex, alias: "Synthetic first")
    let second = try await repository.add(provider: .codex, alias: "Synthetic second")
    func lifecycleRecord(_ account: Account) throws -> CredentialRecord {
        try CredentialRecord(accountID: account.id, provider: .codex,
                             identity: RemoteIdentity(subject: account.id.uuidString, product: "keychain-lifecycle-smoke"),
                             kind: .oauth, secret: "synthetic-lifecycle-token")
    }
    for account in [first, second] {
        let attempt = try await login.begin(account.id)
        lifecycleReferences.append(attempt.credentialReference)
        _ = try await login.complete(attempt, verified: lifecycleRecord(account))
    }
    try await login.removeAccount(first.id)
    guard try await login.activeCredential(second.id).accountID == second.id else { throw AuthenticationError.invalidCredential }
    let draft = try await login.begin(second.id)
    lifecycleReferences.append(draft.credentialReference)
    try await vault.create(lifecycleRecord(second), reference: draft.credentialReference)
    let restarted = LoginCoordinator(repository: try AccountRepository(url: url), vault: vault)
    try await restarted.recoverAbandonedLogins()
    guard try await restarted.retryCleanup() == 0,
          try await restarted.activeCredential(second.id).accountID == second.id else { throw AuthenticationError.invalidCredential }
    try await restarted.removeAccount(second.id)
    for reference in lifecycleReferences {
        do { _ = try await vault.read(reference); throw AuthenticationError.invalidCredential }
        catch AuthenticationError.missingCredential { }
    }
    print("Native Keychain lifecycle: account removal, other-account preservation and abandoned-draft recovery verified")
    print("Retained synthetic database: \(url.path)")
} catch {
    if created {
        do { try await vault.remove(reference) }
        catch { fputs("Synthetic Keychain item cleanup needs attention\n", stderr) }
    }
    for reference in lifecycleReferences {
        do { try await vault.remove(reference) }
        catch { fputs("Synthetic lifecycle item cleanup needs attention\n", stderr) }
    }
    fputs("Native Keychain verification failed: \(error)\n", stderr)
    exit(1)
}
