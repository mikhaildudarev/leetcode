//   Created by Mikhail Dudarev on 24.06.2022.

@testable import Leetcode
import XCTest

final class Problem383Tests: LeetcodeTests {
    
    func testSolutionA() {
        let solution = Problem383.SolutionA()
        test(with: solution)
    }
    
    private func test(with solution: Problem383Solution) {
        XCTAssertFalse(solution.canConstruct("a", "b"))
        XCTAssertFalse(solution.canConstruct("aa", "ab"))
        XCTAssertTrue(solution.canConstruct("aa", "aab"))
    }
    
}
