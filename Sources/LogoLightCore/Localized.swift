import Foundation

/// The app's text, in the language macOS is set to or the one picked in the menu.
///
/// English is the source language, and each call passes the English text as its key: `L("Breathe")`
/// comes back as 呼吸 on a Chinese system, and as "Breathe" everywhere else — a system set to a
/// language LogoLight doesn't have, a string not translated yet, the tests, and `swift run`, which
/// run without the app's `.lproj` folders. So a missing translation shows English, never a key.
///
/// The translations are `Resources/<language>.lproj/Localizable.strings`, which
/// `scripts/build-app.sh` copies into the app (and into its Control Center extension).
public enum Localized {
    /// The bundle holding the `.lproj` folders: the app itself at run time. The tests point it at
    /// the repository's `Resources`, which has the same layout without a bundle around it.
    nonisolated(unsafe) public static var bundle: Bundle = .main

    /// The language picked in the menu (`"en"`, `"zh-Hans"`, `"zh-Hant"`), or `nil` to follow
    /// macOS's. Set on the main thread: at launch, and when the user picks another one, which then
    /// shows in the next text made — the menu and the panel are rebuilt.
    nonisolated(unsafe) public static var language: String? {
        didSet { bundles = [:] }
    }

    /// The `.lproj` bundles looked up so far, kept because `L` makes a lot of calls.
    private nonisolated(unsafe) static var bundles: [String: Bundle] = [:]

    public static func text(_ english: String) -> String {
        let bundle = language.flatMap(bundle(forLocalization:)) ?? Self.bundle
        return bundle.localizedString(forKey: english, value: english, table: "Localizable")
    }

    private static func bundle(forLocalization localization: String) -> Bundle? {
        if let found = bundles[localization] { return found }
        guard let url = bundle.url(forResource: localization, withExtension: "lproj"),
              let found = Bundle(url: url)
        else { return nil }
        bundles[localization] = found
        return found
    }
}

/// `L("Breathe")`: the text for the English `english`, translated when the system's language is one
/// LogoLight has, or the one picked in the menu (see `Localized`).
public func L(_ english: String) -> String { Localized.text(english) }
