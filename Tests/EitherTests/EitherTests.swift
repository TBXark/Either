import XCTest
@testable import Either

final class EitherTests: XCTestCase {
    func testExample() throws {
        let d1 = Either2<String, Int>.a("Hello world")
        let raw = try JSONEncoder().encode(d1)
        let d2 = try JSONDecoder().decode(Either2<String, Int>.self, from: raw)
        XCTAssertEqual(d1, d2, "Pass")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
