//  Created by Mikhail Dudarev on 31.05.2022.

@testable import Leetcode
import XCTest

final class Problem217ContainsDuplicateTests: LeetcodeTests {
    
    func testSolutionA() {
        let solution = Problem217ContainsDuplicate.SolutionA()
        test(with: solution)
    }
    
    private func test(with solution: Problem217ContainsDuplicateSolution) {
        XCTAssertTrue(solution.containsDuplicate([1, 2, 3, 1]))
        XCTAssertFalse(solution.containsDuplicate([1, 2, 3, 4]))
        XCTAssertTrue(solution.containsDuplicate([1, 1, 1, 3, 3, 4, 3, 2, 4, 2]))
    }
    
}
