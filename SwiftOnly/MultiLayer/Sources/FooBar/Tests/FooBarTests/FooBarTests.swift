import XCTest
@testable import FooBar

final class FooBarTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(FooBar().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
