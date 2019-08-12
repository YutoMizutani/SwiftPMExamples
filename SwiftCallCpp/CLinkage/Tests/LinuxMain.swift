import XCTest

import CLinkageTests

var tests = [XCTestCaseEntry]()
tests += CLinkageTests.allTests()
XCTMain(tests)
