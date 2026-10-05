import Foundation

// Model code keeps English names, which double as stable identifiers, undo names and stored raw values.
// Views translate them when shown. Xcode can't extract these runtime keys, so they are added to
// Localizable.xcstrings by hand, marked as manual.
extension String {
    var localized: String { Bundle.main.localizedString(forKey: self, value: nil, table: nil) }
}

extension RawRepresentable where RawValue == String {
    var localizedName: String { rawValue.localized }
}
