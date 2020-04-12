//
// Copyright 2020-2020 Tim Schmelter
//
// SPDX-License-Identifier: Apache-2.0
//

import XCTest
@testable import SwiftFoundationExtensions

final class SetTests: XCTestCase {
    func testEqual() {
        let first = Set([1, 2, 3])
        let second = Set([2, 3, 1])
        XCTAssert(first.elementsEqualIgnoringOrder(second))
    }

    func testSame() {
        let first = Set([1, 2, 3])
        let second = Set([1, 2, 3])
        XCTAssert(first.elementsEqualIgnoringOrder(second))
    }

    func testUnequalElements() {
        let first = Set([1, 2, 3])
        let second = Set([2, 3, 0])
        XCTAssertFalse(first.elementsEqualIgnoringOrder(second))
    }

    func testUnequalLengths() {
        let first = Set([1, 2, 3])
        let second = Set([2, 3, 1, 0])
        XCTAssertFalse(first.elementsEqualIgnoringOrder(second))
    }

    static var allTests = [
        ("testEqual", testEqual),
        ("testSame", testSame),
        ("testUnequalElements", testUnequalElements),
        ("testUnequalLengths", testUnequalLengths)
    ]
}
