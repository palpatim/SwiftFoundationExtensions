//
// Copyright 2020-2020 Tim Schmelter
//
// SPDX-License-Identifier: Apache-2.0
//

import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(ArrayTests.allTests),
        testCase(SetTests.allTests)
    ]
}
#endif
