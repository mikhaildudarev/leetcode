//  Created by Mikhail Dudarev on 28.05.2022.

@testable import Leetcode
import XCTest

final class Problem268MissingNumberTests: LeetcodeTests {
    
    func testSolutionA() {
        let solution = Problem268MissingNumber.SolutionA()
        test(with: solution)
    }
    
    private func test(with solution: Problem268MissingNumberSolution) {
        XCTAssertEqual(solution.missingNumber([3, 0, 1]), 2)
        XCTAssertEqual(solution.missingNumber([0, 1]), 2)
        XCTAssertEqual(solution.missingNumber([9, 6, 4, 2, 3, 5, 7, 0, 1]), 8)
    }
    
}

