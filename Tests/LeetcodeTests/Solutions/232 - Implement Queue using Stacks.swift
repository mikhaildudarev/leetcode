//   Created by Mikhail Dudarev on 03.07.2022.

@testable import Leetcode
import XCTest

final class Problem232Tests: LeetcodeTests {
    
    func testSolutionA() {
        let solution = Problem232.SolutionA()
        test(with: solution)
    }
    
    private func test(with solution: Problem232Solution) {
        solution.push(1)
        solution.push(2)
        XCTAssertEqual(solution.peek(), 1)
        XCTAssertEqual(solution.pop(), 1)
        XCTAssertFalse(solution.empty())
    }
    
}
