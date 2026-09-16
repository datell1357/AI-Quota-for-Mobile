import Foundation

/// Host-only lifecycle metadata. No credential values or external application paths belong here.
public struct CredentialResource: Codable, Equatable, Identifiable, Sendable {
    public enum State: String, Codable, Sendable { case prepared, active, retired }
    public let id: UUID
    public let accountID: UUID
    public internal(set) var webProfileID: UUID?
    public internal(set) var state: State
    public internal(set) var needsInspection: Bool
}
