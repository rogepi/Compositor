import Foundation

extension String {
    /// This string looked up in Localizable.xcstrings, for text that's kept as plain English until it's shown (an
    /// enum's raw value, an undo step's name) rather than written as a literal where it's shown. A string without a
    /// translation comes back as it is.
    nonisolated var localized: String { Bundle.main.localizedString(forKey: self, value: nil, table: nil) }
}
