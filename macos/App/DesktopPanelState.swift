import Foundation

struct DesktopPanelFrame: Codable, Equatable {
    var x: Double
    var y: Double
    var width: Double
    var height: Double
    init(_ rect: CGRect) { x = rect.minX; y = rect.minY; width = rect.width; height = rect.height }
    var rect: CGRect { CGRect(x: x, y: y, width: width, height: height) }
    func validate() throws {
        guard [x, y, width, height].allSatisfy(\.isFinite), width > 0, height > 0 else { throw CocoaError(.coderReadCorrupt) }
    }
}

struct DesktopPanelPreferences: Codable {
    var visible = false
    // nil follows menu-bar pins; an explicitly empty selection stays empty.
    var accountIDs: [UUID]?
    var frame: DesktopPanelFrame?
    func validate() throws {
        if let accountIDs {
            guard accountIDs.count <= 6, Set(accountIDs).count == accountIDs.count else { throw CocoaError(.coderReadCorrupt) }
        }
        try frame?.validate()
    }
}

enum DesktopPanelGeometry {
    static let minimum = CGSize(width: 360, height: 260)
    static func restored(_ saved: DesktopPanelFrame?, screens: [CGRect]) -> CGRect {
        let available = screens.filter { $0.width > 0 && $0.height > 0 }
        guard let first = available.first else { return CGRect(x: 80, y: 80, width: 480, height: 500) }
        let proposed = saved?.rect ?? CGRect(x: first.maxX - 504, y: first.maxY - 524, width: 480, height: 500)
        let screen = available.max { a, b in overlap(proposed, a) < overlap(proposed, b) } ?? first
        let destination = overlap(proposed, screen) > 0 ? screen : first
        let width = min(max(proposed.width, minimum.width), destination.width)
        let height = min(max(proposed.height, minimum.height), destination.height)
        return CGRect(x: min(max(proposed.minX, destination.minX), destination.maxX - width),
                      y: min(max(proposed.minY, destination.minY), destination.maxY - height), width: width, height: height)
    }
    private static func overlap(_ a: CGRect, _ b: CGRect) -> Double {
        let intersection = a.intersection(b)
        return intersection.isNull ? 0 : intersection.width * intersection.height
    }
}
