import AppKit
import Foundation

private enum Failure: Error { case assertion(String) }
private func expect(_ condition: @autoclosure () -> Bool, _ message: String) throws {
    guard condition() else { throw Failure.assertion(message) }
}

@main @MainActor struct PanelWindowProbe {
    static func main() async throws {
        _ = NSApplication.shared
        NSApp.setActivationPolicy(.accessory)
        let root = URL(fileURLWithPath: CommandLine.arguments[1], isDirectory: true)
        try FileManager.default.createDirectory(at: root, withIntermediateDirectories: true)
        let left = CGRect(x: -1440, y: 0, width: 1440, height: 875)
        let right = CGRect(x: 0, y: 0, width: 1920, height: 1055)
        let saved = DesktopPanelFrame(CGRect(x: -1200, y: 200, width: 480, height: 500))
        try expect(DesktopPanelGeometry.restored(saved, screens: [right, left]) == saved.rect, "Retain position on the second monitor")
        let rehomed = DesktopPanelGeometry.restored(saved, screens: [right])
        try expect(right.contains(rehomed), "Removed monitor restores the full panel on an available display")
        let oversized = DesktopPanelFrame(CGRect(x: 4000, y: -900, width: 8000, height: 6000))
        try expect(DesktopPanelGeometry.restored(oversized, screens: [right]) == right, "Oversized/offscreen geometry is clamped")
        let tiny = DesktopPanelFrame(CGRect(x: 100, y: 100, width: 20, height: 20))
        try expect(DesktopPanelGeometry.restored(tiny, screens: [right]).size == DesktopPanelGeometry.minimum, "Minimum usable panel size")
        let file = root.appendingPathComponent("preferences.json")
        var preferences = DesktopPreferences()
        preferences.panel = DesktopPanelPreferences(visible: true)
        var writes = 0
        var closes = 0
        var savedError: Error?
        let controller = DesktopPanelController(makeContent: { NSView() }, didClose: {
            closes += 1; preferences.panel?.visible = false
            do { try preferences.save(to: file) } catch { savedError = error }
        }, didChangeFrame: { frame in
            writes += 1; preferences.panel?.frame = frame
            do { try preferences.save(to: file) } catch { savedError = error }
        })
        controller.apply(visible: false, alwaysOnTop: false, title: "Panel probe", savedFrame: nil)
        try expect(controller.panel == nil, "Disabled feature creates no window")
        let wasActive = NSApp.isActive
        controller.apply(visible: true, alwaysOnTop: false, title: "Panel probe", savedFrame: nil)
        guard let window = controller.panel else { throw Failure.assertion("No native panel") }
        try expect(window.isVisible && !window.hidesOnDeactivate && !window.isFloatingPanel && window.level == .normal,
                   "Default native panel is visible, normal level and survives app deactivation")
        try expect(NSApp.isActive == wasActive, "Restoring the panel does not activate the app")
        controller.apply(visible: true, alwaysOnTop: true, title: "Panel probe", savedFrame: nil)
        try expect(controller.panel === window && window.level == .floating && window.isFloatingPanel, "Opt-in top level reuses one window")
        controller.apply(visible: true, alwaysOnTop: false, title: "패널 검증", savedFrame: nil)
        try expect(window.level == .normal && window.title == "패널 검증", "Turning top off returns to normal level and updates localized title")
        let visible = NSScreen.main?.visibleFrame ?? right
        let moved = DesktopPanelGeometry.restored(DesktopPanelFrame(CGRect(x: visible.minX + 70, y: visible.minY + 90, width: 520, height: 410)), screens: [visible])
        window.setFrame(moved, display: true)
        controller.windowDidMove(Notification(name: NSWindow.didMoveNotification, object: window))
        try await Task.sleep(for: .milliseconds(300))
        try expect(savedError == nil && writes > 0 && preferences.panel?.frame?.rect == moved, "Move and resize persist the actual native frame")
        window.performClose(nil)
        try expect(closes == 1 && !window.isVisible && preferences.panel?.visible == false, "Close turns off persisted visibility")
        let restored = try DesktopPreferences.load(from: file)
        try expect(restored.panel?.frame?.rect == moved && restored.panel?.visible == false, "Native close saves a restorable frame without reopening")
        let reopened = DesktopPanelController(makeContent: { NSView() }, didClose: {}, didChangeFrame: { _ in })
        reopened.apply(visible: true, alwaysOnTop: restored.panelAlwaysOnTop, title: "Restored panel", savedFrame: restored.panel?.frame)
        try expect(reopened.panel?.frame == moved, "A new native controller restores the same frame")
        reopened.panel?.performClose(nil)
        var terminationClosed = false
        let quitting = DesktopPanelController(makeContent: { NSView() }, didClose: { terminationClosed = true }, didChangeFrame: { _ in })
        quitting.apply(visible: true, alwaysOnTop: false, title: "Termination probe", savedFrame: nil)
        NotificationCenter.default.post(name: DesktopPanelController.preparingToTerminate, object: nil)
        quitting.panel?.performClose(nil)
        try expect(!terminationClosed, "Quitting the app must not turn off the saved panel visibility")
        let result: [String: Any] = ["nativeWindow": "passed", "normalAndFloatingLevels": "passed", "geometryPersistence": "passed",
                                    "monitorRecovery": "passed", "windowReuse": "passed", "activationUnchanged": "passed",
                                    "boundary": "Real AppKit controller with an empty test content view; app UI verified separately"]
        try JSONSerialization.data(withJSONObject: result, options: [.prettyPrinted, .sortedKeys]).write(to: root.appendingPathComponent("verification.json"))
        print("PASS: native NSPanel visibility/level/close/reopen, persisted frame, no activation, and monitor recovery")
        print(root.path)
    }
}
