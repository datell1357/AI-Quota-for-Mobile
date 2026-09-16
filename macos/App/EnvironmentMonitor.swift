import AppKit
import Foundation
import Network

@MainActor final class EnvironmentMonitor {
    private var observers: [NSObjectProtocol] = []
    private var monitor: NWPathMonitor?
    private var online = true
    private var awake = true
    private let changed: @MainActor @Sendable (Bool, Bool) async -> Void
    init(changed: @escaping @MainActor @Sendable (Bool, Bool) async -> Void) { self.changed = changed }
    func start() {
        guard monitor == nil else { return }
        let center = NSWorkspace.shared.notificationCenter
        observers.append(center.addObserver(forName: NSWorkspace.willSleepNotification, object: nil, queue: .main) { [weak self] _ in
            Task { @MainActor in guard let self else { return }; self.awake = false; await self.changed(self.online, self.awake) }
        })
        observers.append(center.addObserver(forName: NSWorkspace.didWakeNotification, object: nil, queue: .main) { [weak self] _ in
            Task { @MainActor in guard let self else { return }; self.awake = true; await self.changed(self.online, self.awake) }
        })
        let monitor = NWPathMonitor(); self.monitor = monitor
        monitor.pathUpdateHandler = { [weak self] path in
            Task { @MainActor in guard let self else { return }; self.online = path.status == .satisfied; await self.changed(self.online, self.awake) }
        }
        monitor.start(queue: DispatchQueue(label: "com.aiquota.macos.network", qos: .utility))
    }
    func stop() {
        monitor?.cancel(); monitor = nil
        for observer in observers { NSWorkspace.shared.notificationCenter.removeObserver(observer) }
        observers.removeAll()
    }
}
