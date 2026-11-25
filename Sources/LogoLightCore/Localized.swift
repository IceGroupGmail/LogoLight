import Foundation

/// The app's text, in the language macOS is set to.
///
/// English is the source language, and each call passes the English text as its key: `L("Breathe")`
/// comes back as 呼吸 on a Chinese system, and as "Breathe" everywhere else — a system set to a
/// language LogoLight doesn't have, a string not translated yet, the tests, and `swift run`, which
/// run without the app's `.lproj` folders. So a missing translation shows English, never a key.
///
/// The translations are `Resources/<language>.lproj/Localizable.strings`, which
/// `scripts/build-app.sh` copies into the app (and into its Control Center extension).
public enum Localized {
    /// The bundle holding the `.lproj` folders: the app itself at run time.
    public static let bundle: Bundle = .main

    public static func text(_ english: String) -> String {
        bundle.localizedString(forKey: english, value: english, table: "Localizable")
    }
}

/// `L("Breathe")`: the text for the English `english`, translated when the system's language is one
/// LogoLight has (see `Localized`).
public func L(_ english: String) -> String { Localized.text(english) }
