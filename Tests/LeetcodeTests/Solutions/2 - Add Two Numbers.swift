//  Created by Mikhail Dudarev on 27.04.2022.

@testable import Leetcode
import XCTest

final class Problem2AddTwoNumbersTests: LeetcodeTests {
    
    func testSolutionA() {
        let solution = Problem2AddTwoNumbers.SolutionA()
        test(with: solution)
    }
    
    private func test(with solution: Problem2AddTwoNumbersSolution) {
        let result1 = solution.addTwoNumbers([2, 4, 3], [5, 6, 4])
        XCTAssertEqual(result1, [7, 0, 8])
        
        let result2 = solution.addTwoNumbers([0], [0])
        XCTAssertEqual(result2, [0])
        
        let result3 = solution.addTwoNumbers([9, 9, 9, 9, 9, 9, 9], [9, 9, 9, 9])
        XCTAssertEqual(result3, [8, 9, 9, 9, 0, 0, 0, 1])
        
        let result4 = solution.addTwoNumbers(
            [1, 0 ,0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1],
            [5, 6 ,4]
        )
        XCTAssertEqual(
            result4,
            [6, 6, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1]
        )
    }
    
}
