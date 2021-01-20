import XCTest

import MorseTests

var tests = [XCTestCaseEntry]()
tests += MorseTests.allTests()
XCTMain(tests)
