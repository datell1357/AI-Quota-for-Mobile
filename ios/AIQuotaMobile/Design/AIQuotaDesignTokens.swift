import SwiftUI

enum AppTheme: String, CaseIterable, Codable, Identifiable {
    case macOS
    case windows

    var id: String { rawValue }
}

struct AIQuotaThemeColors: Equatable {
    let theme: AppTheme
    let appBackground: UInt32
    let panel: UInt32
    let cardChrome: UInt32
    let titleBar: UInt32
    let titleText: UInt32
    let content: UInt32
    let contentAlt: UInt32
    let border: UInt32
    let borderSoft: UInt32
    let textPrimary: UInt32
    let textSecondary: UInt32
    let textMuted: UInt32
    let primary: UInt32
    let primaryActive: UInt32
    let selectedNav: UInt32
    let unselectedNav: UInt32
    let progress: UInt32
    let progressTrack: UInt32
    let shadow: UInt32
    let trafficRed: UInt32
    let trafficYellow: UInt32
    let trafficGreen: UInt32
}

enum AIQuotaDesignTokens {
    static let borderDefault: UInt32 = 0xFF1C293C
    static let textPrimary: UInt32 = 0xFF1C293C
    static let textSecondary: UInt32 = 0xCC1C293C
    static let textTertiary: UInt32 = 0x991C293C
    static let surfaceMuted: UInt32 = 0xFFFFFFFF
    static let surfaceRaised: UInt32 = 0xFFFDC800
    static let surfaceStrong: UInt32 = 0xFF432DD7
    static let windowChrome: UInt32 = 0xFFE7E4DC

    static let macOSCanvas: UInt32 = 0xFFFAF9F5
    static let macOSSurfaceSoft: UInt32 = 0xFFF5F0E8
    static let macOSSurfaceCard: UInt32 = 0xFFEFE9DE
    static let macOSSurfaceCreamStrong: UInt32 = 0xFFE8E0D2
    static let macOSPrimary: UInt32 = 0xFFCC785C
    static let macOSPrimaryActive: UInt32 = 0xFFA9583E
    static let macOSInk: UInt32 = 0xFF141413
    static let macOSBody: UInt32 = 0xFF3D3D3A
    static let macOSMuted: UInt32 = 0xFF6C6A64
    static let macOSHairline: UInt32 = 0xFFE6DFD8
    static let macOSSuccess: UInt32 = 0xFF5DB872

    static let trafficRed: UInt32 = 0xFFFF5F57
    static let trafficYellow: UInt32 = 0xFFFFBD2E
    static let trafficGreen: UInt32 = 0xFF28C840

    static let windows = AIQuotaThemeColors(
        theme: .windows,
        appBackground: surfaceMuted,
        panel: surfaceMuted,
        cardChrome: windowChrome,
        titleBar: surfaceStrong,
        titleText: surfaceMuted,
        content: surfaceMuted,
        contentAlt: surfaceMuted,
        border: borderDefault,
        borderSoft: surfaceMuted,
        textPrimary: textPrimary,
        textSecondary: textSecondary,
        textMuted: textTertiary,
        primary: surfaceStrong,
        primaryActive: 0xFF2F1FAA,
        selectedNav: surfaceRaised,
        unselectedNav: windowChrome,
        progress: surfaceStrong,
        progressTrack: windowChrome,
        shadow: borderDefault,
        trafficRed: windowChrome,
        trafficYellow: windowChrome,
        trafficGreen: windowChrome
    )

    static let macOS = AIQuotaThemeColors(
        theme: .macOS,
        appBackground: macOSCanvas,
        panel: macOSCanvas,
        cardChrome: macOSSurfaceCard,
        titleBar: macOSSurfaceSoft,
        titleText: macOSInk,
        content: macOSCanvas,
        contentAlt: macOSSurfaceSoft,
        border: macOSHairline,
        borderSoft: macOSHairline,
        textPrimary: macOSInk,
        textSecondary: macOSBody,
        textMuted: macOSMuted,
        primary: macOSPrimary,
        primaryActive: macOSPrimaryActive,
        selectedNav: macOSPrimary,
        unselectedNav: macOSSurfaceCard,
        progress: macOSPrimary,
        progressTrack: macOSSurfaceCreamStrong,
        shadow: macOSInk,
        trafficRed: trafficRed,
        trafficYellow: trafficYellow,
        trafficGreen: trafficGreen
    )

    static func colors(for theme: AppTheme) -> AIQuotaThemeColors {
        switch theme {
        case .macOS:
            return macOS
        case .windows:
            return windows
        }
    }

    static func color(_ argb: UInt32) -> Color {
        let alpha = Double((argb >> 24) & 0xFF) / 255
        let red = Double((argb >> 16) & 0xFF) / 255
        let green = Double((argb >> 8) & 0xFF) / 255
        let blue = Double(argb & 0xFF) / 255
        return Color(.sRGB, red: red, green: green, blue: blue, opacity: alpha)
    }
}
