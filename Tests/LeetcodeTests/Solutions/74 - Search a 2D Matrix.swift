//   Created by Mikhail Dudarev on 23.06.2022.

@testable import Leetcode
import XCTest

final class Problem74Tests: LeetcodeTests {
    
    func testSolutionA() {
        let solution = Problem74.SolutionA()
        test(with: solution)
    }
    
    private func test(with solution: Problem74Solution) {
        XCTAssertTrue(solution.searchMatrix([[1]], 1))
        XCTAssertTrue(solution.searchMatrix([[1,3]], 1))
        XCTAssertTrue(solution.searchMatrix([[1,3,5,7],[10,11,16,20],[23,30,34,60]], 3))
        XCTAssertFalse(solution.searchMatrix([[1,3,5,7],[10,11,16,20],[23,30,34,60]], 13))
    }
    
}
