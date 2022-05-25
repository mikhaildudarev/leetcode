//  Created by Mikhail Dudarev on 25.05.2022.

@testable import Leetcode
import XCTest

final class Problem323NumberOfConnectedComponentsInUndirectedGraphTests: LeetcodeTests {
    
    func testSolutionA() {
        let solution = Problem323NumberOfConnectedComponentsInUndirectedGraph.SolutionA()
        test(with: solution)
    }
    
    private func test(with solution: Problem323NumberOfConnectedComponentsInUndirectedGraphSolution) {
        XCTAssertEqual(solution.countComponents(5, [[0, 1], [1, 2], [3, 4]]), 2)
        XCTAssertEqual(solution.countComponents(5, [[0, 1], [1, 2], [2, 3], [3, 4]]), 1)
    }
    
}
