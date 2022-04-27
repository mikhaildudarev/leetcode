//  Created by Mikhail Dudarev on 27.04.2022.

@testable import Leetcode
import XCTest

final class Problem1584MinCostToConnectAllPointsTests: LeetcodeTests {
    
    func testSolutionA() {
        let solution = Problem1584MinCostToConnectAllPoints.SolutionA()
        test(with: solution)
    }
    
    private func test(with solution: Problem1584MinCostToConnectAllPointsSolution) {
        XCTAssertEqual(solution.minCostConnectPoints([[0, 0],[2, 2],[3, 10],[5, 2],[7, 0]]), 20)
        XCTAssertEqual(solution.minCostConnectPoints([[3, 12],[-2, 5],[-4, 1]]), 18)
    }
    
}

