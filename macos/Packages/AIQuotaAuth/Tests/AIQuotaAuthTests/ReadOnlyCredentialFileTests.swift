import Darwin
import Foundation
import Testing
@testable import AIQuotaAuth

private func credentialTestDirectory() throws -> URL {
    let url = FileManager.default.temporaryDirectory.resolvingSymlinksInPath().appendingPathComponent("AIQuotaCredentialFile-\(UUID())")
    try FileManager.default.createDirectory(at: url, withIntermediateDirectories: true)
    return url
}
@Test func credentialFileReadPreservesBytesAndPermissionsAndObservesAtomicReplacement() async throws {
    let url = try credentialTestDirectory().appendingPathComponent("auth.json"), reader = ReadOnlyCredentialFile()
    try Data("synthetic-first".utf8).write(to: url); try FileManager.default.setAttributes([.posixPermissions: 0o600], ofItemAtPath: url.path)
    let attributes = try FileManager.default.attributesOfItem(atPath: url.path)
    #expect(try await reader.read(path: url.path) == Data("synthetic-first".utf8))
    let after = try FileManager.default.attributesOfItem(atPath: url.path)
    #expect(attributes[.modificationDate] as? Date == after[.modificationDate] as? Date)
    #expect(attributes[.posixPermissions] as? Int == after[.posixPermissions] as? Int)
    try Data("synthetic-rotated".utf8).write(to: url, options: .atomic)
    #expect(try await reader.read(path: url.path) == Data("synthetic-rotated".utf8))
}
@Test func credentialFileReadRejectsSymlinksDirectoriesPipesAndWritableSharedFiles() async throws {
    let root = try credentialTestDirectory(), reader = ReadOnlyCredentialFile(), file = root.appendingPathComponent("auth.json")
    try Data("synthetic".utf8).write(to: file)
    let link = root.appendingPathComponent("linked.json")
    try FileManager.default.createSymbolicLink(at: link, withDestinationURL: file)
    let fifo = root.appendingPathComponent("pipe.json"); #expect(mkfifo(fifo.path, 0o600) == 0)
    for path in [link.path, root.path, fifo.path, "relative/auth.json", file.path + "\n"] {
        await #expect(throws: AuthenticationError.invalidCredential) { try await reader.read(path: path) }
    }
    try FileManager.default.setAttributes([.posixPermissions: 0o622], ofItemAtPath: file.path)
    await #expect(throws: AuthenticationError.invalidCredential) { try await reader.read(path: file.path) }
    #expect(try Data(contentsOf: file) == Data("synthetic".utf8))
}
@Test func credentialFileReadBoundsMissingEmptyAndOversizedInput() async throws {
    let file = try credentialTestDirectory().appendingPathComponent("auth.json"), reader = ReadOnlyCredentialFile()
    await #expect(throws: AuthenticationError.missingCredential) { try await reader.read(path: file.path) }
    for data in [Data(), Data(repeating: 32, count: 1_048_577)] {
        try data.write(to: file)
        await #expect(throws: AuthenticationError.invalidCredential) { try await reader.read(path: file.path) }
    }
}
