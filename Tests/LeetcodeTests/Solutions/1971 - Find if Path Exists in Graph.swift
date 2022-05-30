//  Created by Mikhail Dudarev on 30.05.2022.

@testable import Leetcode
import XCTest

final class Problem1971FindIfPathExistsInGraphTests: LeetcodeTests {
    
    func testSolutionA() {
        let solution = Problem1971FindIfPathExistsInGraph.SolutionA()
        test(with: solution)
    }
    
    private func test(with solution: Problem1971FindIfPathExistsInGraphSolution) {
        XCTAssertTrue(solution.validPath(3, [[0, 1], [1, 2], [2, 0]], 0, 2))
        XCTAssertFalse(solution.validPath(6, [[0, 1], [0, 2], [3, 5], [5, 4], [4, 3]], 0, 5))
    }
    
}
