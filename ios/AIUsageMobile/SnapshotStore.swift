import Foundation

@MainActor
final class SnapshotStore: ObservableObject {
    @Published private(set) var devices: [DeviceSummary] = []
    @Published private(set) var providers: [ProviderUsage] = []

    private let cache = SnapshotCache.shared

    func refreshLatestSnapshot() async {
        do {
            if let snapshot = try cache.load() {
                providers = snapshot.providers
                devices = [
                    DeviceSummary(
                        id: "cached",
                        name: "Cached PC",
                        lastSeenAt: snapshot.uploadedAt
                    )
                ]
            }
        } catch {
            providers = []
        }
    }
}
