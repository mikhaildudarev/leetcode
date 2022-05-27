//  Created by Mikhail Dudarev on 27.05.2022.

@testable import Leetcode
import XCTest

final class Problem1342NumberOfStepsToReduceNumberToZeroTests: LeetcodeTests {
    
    func testSolutionA() {
        let solution = Problem1342NumberOfStepsToReduceNumberToZero.SolutionA()
        test(with: solution)
    }
    
    private func test(with solution: Problem1342NumberOfStepsToReduceNumberToZeroSolution) {
        XCTAssertEqual(solution.numberOfSteps(14), 6)
        XCTAssertEqual(solution.numberOfSteps(8), 4)
    }
    
}

