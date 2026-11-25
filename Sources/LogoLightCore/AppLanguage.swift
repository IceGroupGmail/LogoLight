import Foundation

/// The language LogoLight's text is in.
///
/// `.system` follows the language macOS is set to; the others are picked in the menu and take effect
/// at once, without relaunching (`Localized.language`, which every lookup reads first).
public enum AppLanguage: String, CaseIterable, Sendable {
    case system
    case english = "en"
    case simplifiedChinese = "zh-Hans"
    case traditionalChinese = "zh-Hant"

    /// The `.lproj` folder its text comes from, or `nil` to follow macOS.
    public var localization: String? { self == .system ? nil : rawValue }

    /// Its name in the menu. The three languages are each written in their own script, as macOS does
    /// it, so the item reads the same whichever language the app is in.
    public var title: String {
        switch self {
        case .system: L("Follow the system")
        case .english: "English"
        case .simplifiedChinese: "简体中文"
        case .traditionalChinese: "繁體中文"
        }
    }

    /// Where the choice is kept, in the app's own defaults.
    public static let defaultsKey = "Language"

    /// What was picked in the menu last time, or `.system`.
    public static var saved: AppLanguage {
        UserDefaults.standard.string(forKey: defaultsKey).flatMap(AppLanguage.init(rawValue:)) ?? .system
    }

    /// Picks `language`: remembers it, and has the app's text read from it from now on.
    public static func set(_ language: AppLanguage) {
        UserDefaults.standard.set(language.rawValue, forKey: defaultsKey)
        Localized.language = language.localization
    }

    /// Puts the saved choice in effect, before any text is made (at launch).
    public static func applySaved() {
        Localized.language = saved.localization
    }
}
