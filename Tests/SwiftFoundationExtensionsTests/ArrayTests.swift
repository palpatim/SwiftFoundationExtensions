//
// Copyright 2020-2020 Tim Schmelter
//
// SPDX-License-Identifier: Apache-2.0
//

import XCTest
@testable import SwiftFoundationExtensions

final class ArrayTests: XCTestCase {
    func testEqual() {
        let first = [1, 2, 3]
        let second = [2, 3, 1]
        XCTAssert(first.elementsEqualIgnoringOrder(second))
    }

    func testSame() {
        let first = [1, 2, 3]
        let second = [1, 2, 3]
        XCTAssert(first.elementsEqualIgnoringOrder(second))
    }

    func testUnequalElements() {
        let first = [1, 2, 3]
        let second = [2, 3, 0]
        XCTAssertFalse(first.elementsEqualIgnoringOrder(second))
    }

    func testUnequalLengths() {
        let first = [1, 2, 3]
        let second = [2, 3, 1, 0]
        XCTAssertFalse(first.elementsEqualIgnoringOrder(second))
    }

    func testDuplicateValues() {
        let first = [1, 2, 3, 1]
        let second = [2, 3, 1, 1]
        XCTAssert(first.elementsEqualIgnoringOrder(second))
    }

    static var allTests = [
        ("testEqual", testEqual),
        ("testSame", testSame),
        ("testUnequalElements", testUnequalElements),
        ("testUnequalLengths", testUnequalLengths)
    ]
}
