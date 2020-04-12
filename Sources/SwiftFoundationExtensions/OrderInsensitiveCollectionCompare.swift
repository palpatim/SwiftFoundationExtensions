//
// Copyright 2020-2020 Tim Schmelter
//
// SPDX-License-Identifier: Apache-2.0
//

extension Collection where Element: Equatable {
    public func elementsEqualIgnoringOrder<T>(_ other: T) -> Bool where T: Collection, T.Element == Self.Element {
        var otherValues = Array(other)
        guard count == otherValues.count else {
            return false
        }

        for value in self {
            guard let index = otherValues.firstIndex(of: value) else {
                return false
            }

            otherValues.remove(at: index)
        }

        return otherValues.isEmpty
    }
}
