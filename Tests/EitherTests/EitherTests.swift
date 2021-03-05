import XCTest
@testable import Either

final class EitherTests: XCTestCase {
    func testEqual() throws {
        let d1 = Either2<String, Int>.a("Hello world")
        let raw = try JSONEncoder().encode(d1)
        let d2 = try JSONDecoder().decode(Either2<String, Int>.self, from: raw)
        XCTAssertEqual(d1, d2)
    }
    
    func testNotEqual() throws {
        let d1 = Either2<Int, Int>.a(123)
        let d2 = Either2<Int, Int>.b(123)
        XCTAssertTrue(d1 != d2)
    }
    
    func test6Equal() throws {
        let d1 = Either6<String, Int, Float,  [String], [Int], [String: Int]>.a("Hello world")
        let raw = try JSONEncoder().encode(d1)
        let d2 = try JSONDecoder().decode(Either6<String, Int, Float,  [String], [Int], [String: Int]>.self, from: raw)
        XCTAssertEqual(d1, d2)
    }


    static var allTests = [
        ("testEqual", testEqual),
        ("testNotEqual", testNotEqual),
        ("test6Equal", test6Equal),

    ]
}
