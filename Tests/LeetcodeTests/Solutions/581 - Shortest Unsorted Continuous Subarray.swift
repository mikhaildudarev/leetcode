//  Created by Mikhail Dudarev on 03.05.2022.

@testable import Leetcode
import XCTest

final class Problem581ShortestUnsortedContinuousSubarrayTests: LeetcodeTests {
    
    func testSolutionA() {
        let solution = Problem581ShortestUnsortedContinuousSubarray.SolutionA()
        test(with: solution)
    }
    
    private func test(with solution: Problem581ShortestUnsortedContinuousSubarraySolution) {
        XCTAssertEqual(solution.findUnsortedSubarray([2, 6, 4, 8, 10, 9, 15]), 5)
        XCTAssertEqual(solution.findUnsortedSubarray([1, 2 ,3 ,4]), 0)
        XCTAssertEqual(solution.findUnsortedSubarray([1]), 0)
        XCTAssertEqual(solution.findUnsortedSubarray([2, 1]), 2)
        XCTAssertEqual(solution.findUnsortedSubarray([5, 4, 3, 2, 1]), 5)
        XCTAssertEqual(solution.findUnsortedSubarray([2, 3, 3, 2, 4]), 3)
        XCTAssertEqual(solution.findUnsortedSubarray([1, 3, 2, 4, 5]), 2)
        XCTAssertEqual(solution.findUnsortedSubarray([1, 2, 3, 5, 4]), 2)
    }
    
}
