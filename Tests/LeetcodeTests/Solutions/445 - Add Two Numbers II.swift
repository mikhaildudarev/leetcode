//  Created by Mikhail Dudarev on 27.04.2022.

@testable import Leetcode
import XCTest

final class Problem445AddTwoNumbersIITests: LeetcodeTests {
    
    func testSolutionA() {
        let solution = Problem445AddTwoNumbersII.SolutionA()
        test(with: solution)
    }
    
    private func test(with solution: Problem445AddTwoNumbersIISolution) {
        XCTAssertEqual(solution.addTwoNumbers([7, 2, 4, 3], [5, 6, 4]), [7, 8, 0, 7])
        XCTAssertEqual(solution.addTwoNumbers([2, 4, 3], [5, 6, 4]), [8, 0, 7])
        XCTAssertEqual(solution.addTwoNumbers([0], [0]), [0])
    }
    
}
