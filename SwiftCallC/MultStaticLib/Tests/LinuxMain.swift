import XCTest

import MultStaticLibTests

var tests = [XCTestCaseEntry]()
tests += MultStaticLibTests.allTests()
XCTMain(tests)
