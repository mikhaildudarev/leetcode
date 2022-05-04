//  Created by Mikhail Dudarev on 04.05.2022.

@testable import Leetcode
import XCTest

final class Problem1679MaxNumberOfKSumPairsTests: LeetcodeTests {
    
    func testSolutionA() {
        let solution = Problem1679MaxNumberOfKSumPairs.SolutionA()
        test(with: solution)
    }
    
    private func test(with solution: Problem1679MaxNumberOfKSumPairsSolution) {
        XCTAssertEqual(solution.maxOperations([1, 2, 3, 4], 5), 2)
        XCTAssertEqual(solution.maxOperations([3, 1, 3, 4, 3], 6), 1)
        XCTAssertEqual(solution.maxOperations([4, 4, 1, 3, 1, 3, 2, 2, 5, 5, 1, 5, 2, 1, 2, 3, 5, 4], 2), 2)
    }
    
}
