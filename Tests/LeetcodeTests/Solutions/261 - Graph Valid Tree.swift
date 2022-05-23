//  Created by Mikhail Dudarev on 23.05.2022.

@testable import Leetcode
import XCTest

final class Problem261GraphValidTreeTests: LeetcodeTests {
    
    func testSolutionA() {
        let solution = Problem261GraphValidTree.SolutionA()
        test(with: solution)
    }
    
    private func test(with solution: Problem261GraphValidTreeSolution) {
        XCTAssertTrue(solution.validTree(5, [[0, 1], [0, 2], [0, 3], [1, 4]]))
        XCTAssertFalse(solution.validTree(5, [[0, 1], [1, 2], [2, 3], [1, 3], [1, 4]]))
        XCTAssertTrue(solution.validTree(1, []))
    }
    
}
