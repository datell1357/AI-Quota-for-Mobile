import Foundation

enum L10n {
    static func text(_ key: String) -> String {
        String(localized: String.LocalizationValue(key), bundle: bundle)
    }

    static func format(_ key: String, _ arguments: CVarArg...) -> String {
        String(format: text(key), arguments: arguments)
    }

    private static var bundle: Bundle {
        Bundle(for: L10nBundleMarker.self)
    }
}

private final class L10nBundleMarker {}
