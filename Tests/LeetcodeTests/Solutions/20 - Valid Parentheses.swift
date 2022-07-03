//   Created by Mikhail Dudarev on 03.07.2022.

@testable import Leetcode
import XCTest

final class Problem20Tests: LeetcodeTests {
    
    func testSolutionA() {
        let solution = Problem20.SolutionA()
        test(with: solution)
    }
    
    private func test(with solution: Problem20Solution) {
        XCTAssertTrue(solution.isValid("()"))
        XCTAssertTrue(solution.isValid("()[]{}"))
        XCTAssertFalse(solution.isValid("(]"))
    }
    
}
