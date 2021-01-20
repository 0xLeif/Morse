import XCTest
@testable import Morse

final class MorseTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(Morse().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
