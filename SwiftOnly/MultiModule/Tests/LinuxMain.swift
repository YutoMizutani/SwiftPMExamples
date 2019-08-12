import XCTest

import MultiModuleTests

var tests = [XCTestCaseEntry]()
tests += MultiModuleTests.allTests()
XCTMain(tests)
