import XCTest

import FooBarTests

var tests = [XCTestCaseEntry]()
tests += FooBarTests.allTests()
XCTMain(tests)
