// The app's translations: that every string the code asks for has one, that both Chinese versions
// have the same keys, and that a translation keeps the format specifiers its English text has.
// The .lproj folders are read from the repository (`#filePath`), not from a built bundle.

import Foundation
import LogoLightCore

/// One language's `Localizable.strings`.
struct StringsFile {
    var keys: [String: String] = [:]

    init(path: String) throws {
        let text = try String(contentsOfFile: path, encoding: .utf8)
        for line in text.split(separator: "\n", omittingEmptySubsequences: true) {
            let trimmed = line.trimmingCharacters(in: .whitespaces)
            guard trimmed.hasPrefix("\""), let separator = trimmed.range(of: "\" = \"") else { continue }
            let key = String(trimmed[trimmed.index(after: trimmed.startIndex)..<separator.lowerBound])
            let rest = trimmed[separator.upperBound...]
            guard let end = rest.range(of: "\";", options: .backwards) else { continue }
            keys[unescaped(key)] = unescaped(String(rest[..<end.lowerBound]))
        }
    }

    /// `.strings` escapes `\"`, `\\` and `\n`; none of LogoLight's strings need more.
    private func unescaped(_ text: String) -> String {
        text.replacingOccurrences(of: "\\\"", with: "\"")
            .replacingOccurrences(of: "\\n", with: "\n")
            .replacingOccurrences(of: "\\\\", with: "\\")
    }
}

/// Every key the code asks for with `L("…")` in `file`, reading a call's literals across a `+`.
func localizationKeys(in file: String) throws -> [String] {
    let text = try String(contentsOfFile: file, encoding: .utf8)
    var keys: [String] = []
    var searchStart = text.startIndex
    while let call = text.range(of: "L(\"", range: searchStart..<text.endIndex) {
        var key = ""
        var depth = 1
        var index = text.index(before: call.upperBound) // on the opening quote
        while index < text.endIndex {
            let character = text[index]
            if character == "\"" {
                var literal = ""
                var escaped = false
                index = text.index(after: index)
                while index < text.endIndex {
                    let next = text[index]
                    if escaped { literal.append(next); escaped = false }
                    else if next == "\\" { escaped = true }
                    else if next == "\"" { break }
                    else { literal.append(next) }
                    index = text.index(after: index)
                }
                key += literal
                index = text.index(after: index) // past the closing quote
                continue
            }
            if character == "(" { depth += 1 }
            if character == ")" {
                depth -= 1
                if depth == 0 { index = text.index(after: index); break }
            }
            index = text.index(after: index)
        }
        keys.append(key)
        searchStart = index
    }
    return keys
}

/// Placeholders such as `%@` and `%d`, which a translation must keep.
func formatSpecifiers(in text: String) -> [String] {
    var found: [String] = []
    var rest = Substring(text)
    while let percent = rest.firstIndex(of: "%") {
        let after = rest.index(after: percent)
        guard after < rest.endIndex, "@dulx".contains(rest[after]) else {
            rest = rest[after...]
            continue
        }
        found.append(String(rest[percent...after]))
        rest = rest[rest.index(after: after)...]
    }
    return found
}

let repository = URL(fileURLWithPath: #filePath)
    .deletingLastPathComponent() // LogoLightTests
    .deletingLastPathComponent() // Sources
    .deletingLastPathComponent() // the repository

@MainActor
func localizationTests(_ harness: TestHarness) {
    let simplifiedPath = repository.appendingPathComponent("Resources/zh-Hans.lproj/Localizable.strings").path
    let traditionalPath = repository.appendingPathComponent("Resources/zh-Hant.lproj/Localizable.strings").path

    harness.test("every string the code asks for is translated") {
        let simplified = try StringsFile(path: simplifiedPath)
        let traditional = try StringsFile(path: traditionalPath)
        let sources = ["Sources/LogoLight", "Sources/LogoLightCore"]
        var asked: [String] = []
        for folder in sources {
            let urls = try FileManager.default.contentsOfDirectory(atPath: repository.appendingPathComponent(folder).path)
            for url in urls where url.hasSuffix(".swift") {
                asked += try localizationKeys(in: repository.appendingPathComponent("\(folder)/\(url)").path)
            }
        }
        harness.expect(asked.count > 40, "expected the app's strings, found \(asked.count)")
        let missingSimplified = Set(asked).subtracting(simplified.keys.keys)
        let missingTraditional = Set(asked).subtracting(traditional.keys.keys)
        harness.expect(missingSimplified.isEmpty, "not in zh-Hans: \(missingSimplified.sorted())")
        harness.expect(missingTraditional.isEmpty, "not in zh-Hant: \(missingTraditional.sorted())")
    }

    harness.test("the two Chinese versions have the same strings") {
        let simplified = try StringsFile(path: simplifiedPath)
        let traditional = try StringsFile(path: traditionalPath)
        harness.expectEqual(traditional.keys.count, simplified.keys.count)
        harness.expectEqual(Set(traditional.keys.keys).symmetricDifference(simplified.keys.keys), [])
        for (key, value) in simplified.keys {
            harness.expect(!value.isEmpty, "zh-Hans leaves “\(key)” empty")
            harness.expect(!traditional.keys[key]!.isEmpty, "zh-Hant leaves “\(key)” empty")
        }
    }

    harness.test("a translation keeps its placeholders") {
        let simplified = try StringsFile(path: simplifiedPath)
        let traditional = try StringsFile(path: traditionalPath)
        for (key, value) in simplified.keys {
            let english = formatSpecifiers(in: key)
            harness.expectEqual(formatSpecifiers(in: value), english)
            harness.expectEqual(formatSpecifiers(in: traditional.keys[key]!), english)
        }
    }

    harness.test("the permission prompt is translated") {
        for language in ["zh-Hans", "zh-Hant"] {
            let file = repository.appendingPathComponent("Resources/\(language).lproj/InfoPlist.strings")
            let text = try String(contentsOf: file, encoding: .utf8)
            harness.expect(text.contains("NSAudioCaptureUsageDescription"), "\(language) has no audio prompt")
            harness.expect(!text.contains("logo can glow with it"), "\(language) still has the English prompt")
        }
    }

    harness.test("without the app's .lproj folders, English comes back") {
        // The test binary has no translations, as `swift run` has none either.
        harness.expectEqual(L("Breathe"), "Breathe")
        harness.expectEqual(L("Quit LogoLight"), "Quit LogoLight")
    }
}
