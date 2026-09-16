import AppKit

private final class QuotaDesktopPanel: NSPanel {
    override var canBecomeKey: Bool { true }
    override var canBecomeMain: Bool { false }
}

/// Owns one native window. Content and collection remain owned by the existing desktop model.
@MainActor final class DesktopPanelController: NSObject, NSWindowDelegate {
    static let preparingToTerminate = Notification.Name("AIQuotaPreparingToTerminate")
    private(set) var panel: NSPanel?
    private let makeContent: () -> NSView
    private let didClose: () -> Void
    private let didChangeFrame: (DesktopPanelFrame) -> Void
    private var saveTask: Task<Void, Never>?
    private var terminating = false
    init(makeContent: @escaping () -> NSView, didClose: @escaping () -> Void,
         didChangeFrame: @escaping (DesktopPanelFrame) -> Void) {
        self.makeContent = makeContent; self.didClose = didClose; self.didChangeFrame = didChangeFrame
        super.init()
        NotificationCenter.default.addObserver(self, selector: #selector(screenParametersChanged),
                                                name: NSApplication.didChangeScreenParametersNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(prepareForTermination),
                                                name: NSApplication.willTerminateNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(prepareForTermination),
                                                name: Self.preparingToTerminate, object: nil)
    }
    func apply(visible: Bool, alwaysOnTop: Bool, title: String, savedFrame: DesktopPanelFrame?) {
        guard visible else { panel?.orderOut(nil); return }
        if panel == nil {
            let window = QuotaDesktopPanel(contentRect: CGRect(x: 0, y: 0, width: 480, height: 500),
                                          styleMask: [.titled, .closable, .resizable, .nonactivatingPanel], backing: .buffered, defer: false)
            window.identifier = NSUserInterfaceItemIdentifier("desktop.panel")
            window.isReleasedWhenClosed = false
            window.isExcludedFromWindowsMenu = false
            window.hidesOnDeactivate = false
            window.becomesKeyOnlyIfNeeded = true
            window.minSize = DesktopPanelGeometry.minimum
            window.contentView = makeContent()
            window.setFrame(DesktopPanelGeometry.restored(savedFrame, screens: NSScreen.screens.map(\.visibleFrame)), display: false)
            window.delegate = self
            panel = window
        }
        guard let panel else { return }
        panel.title = title
        panel.isFloatingPanel = alwaysOnTop
        panel.level = alwaysOnTop ? .floating : .normal
        if !panel.isVisible { panel.orderFront(nil) }
    }
    func focus() { panel?.makeKeyAndOrderFront(nil) }
    func windowDidMove(_ notification: Notification) { scheduleFrameSave() }
    func windowDidEndLiveResize(_ notification: Notification) { scheduleFrameSave() }
    func windowWillClose(_ notification: Notification) { flushFrame(); if !terminating { didClose() } }
    private func scheduleFrameSave() {
        saveTask?.cancel()
        saveTask = Task { [weak self] in
            do { try await Task.sleep(for: .milliseconds(200)) } catch { return }
            self?.flushFrame()
        }
    }
    @objc func flushFrame() {
        saveTask?.cancel(); saveTask = nil
        guard let panel else { return }
        didChangeFrame(DesktopPanelFrame(panel.frame))
    }
    @objc private func prepareForTermination() { terminating = true; flushFrame() }
    @objc private func screenParametersChanged() {
        guard let panel else { return }
        panel.setFrame(DesktopPanelGeometry.restored(DesktopPanelFrame(panel.frame), screens: NSScreen.screens.map(\.visibleFrame)), display: true)
        flushFrame()
    }
}
