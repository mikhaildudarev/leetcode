//  Created by Mikhail Dudarev on 17.06.2022.

@testable import Leetcode
import XCTest

final class Problem1523CountOddNumbersInAnIntervalRangeTests: LeetcodeTests {
    
    func testSolutionA() {
        let solution = Problem1523CountOddNumbersInAnIntervalRange.SolutionA()
        test(with: solution)
    }
    
    private func test(with solution: Problem1523CountOddNumbersInAnIntervalRangeSolution) {
        XCTAssertEqual(solution.countOdds(3, 7), 3)
        XCTAssertEqual(solution.countOdds(8, 10), 1)
    }
    
}
