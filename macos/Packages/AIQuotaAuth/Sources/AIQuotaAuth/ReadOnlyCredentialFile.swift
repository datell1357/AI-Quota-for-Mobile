import Darwin
import Foundation

public protocol CredentialFileReading: Sendable {
    func read(path: String) async throws -> Data
}

/// Reads one explicitly selected canonical file. Never discovers other files or writes credentials.
public struct ReadOnlyCredentialFile: CredentialFileReading {
    public init() {}
    public func read(path: String) throws -> Data {
        guard path.hasPrefix("/"), path.utf8.count <= 4096,
              !path.unicodeScalars.contains(where: { CharacterSet.controlCharacters.contains($0) }) else { throw AuthenticationError.invalidCredential }
        let url = URL(fileURLWithPath: path)
        guard url.standardizedFileURL.path == path, url.resolvingSymlinksInPath().path == path else { throw AuthenticationError.invalidCredential }
        let descriptor = open(path, O_RDONLY | O_CLOEXEC | O_NOFOLLOW | O_NONBLOCK)
        guard descriptor >= 0 else { throw errno == ENOENT ? AuthenticationError.missingCredential : AuthenticationError.invalidCredential }
        defer { close(descriptor) }
        var before = stat(), after = stat()
        guard fstat(descriptor, &before) == 0, before.st_mode & S_IFMT == S_IFREG,
              before.st_uid == geteuid(), before.st_mode & 0o022 == 0,
              before.st_size > 0, before.st_size <= 1_048_576 else { throw AuthenticationError.invalidCredential }
        let handle = FileHandle(fileDescriptor: descriptor, closeOnDealloc: false)
        let data: Data
        do { data = try handle.read(upToCount: 1_048_577) ?? Data() }
        catch { throw AuthenticationError.invalidCredential }
        guard data.count == before.st_size, fstat(descriptor, &after) == 0,
              before.st_dev == after.st_dev, before.st_ino == after.st_ino, before.st_size == after.st_size,
              before.st_mtimespec.tv_sec == after.st_mtimespec.tv_sec, before.st_mtimespec.tv_nsec == after.st_mtimespec.tv_nsec,
              before.st_ctimespec.tv_sec == after.st_ctimespec.tv_sec, before.st_ctimespec.tv_nsec == after.st_ctimespec.tv_nsec,
              url.resolvingSymlinksInPath().path == path else { throw AuthenticationError.invalidCredential }
        return data
    }
}
