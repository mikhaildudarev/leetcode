//  Created by Mikhail Dudarev on 27.04.2022.

@testable import Leetcode
import XCTest

final class Problem1TwoSumTests: LeetcodeTests {
    
    func testSolutionA() {
        let solution = Problem1TwoSum.SolutionA()
        test(with: solution)
    }
    
    private func test(with solution: Problem1TwoSumSolution) {
        let result1 = solution.twoSum([2,7,11,15], 9)
        XCTAssertEqual(result1.count, 2)
        XCTAssertTrue(result1.contains(0))
        XCTAssertTrue(result1.contains(1))
        
        let result2 = solution.twoSum([3,2,4], 6)
        XCTAssertEqual(result2.count, 2)
        XCTAssertTrue(result2.contains(1))
        XCTAssertTrue(result2.contains(2))
        
        let result3 = solution.twoSum([3, 3], 6)
        XCTAssertEqual(result3.count, 2)
        XCTAssertTrue(result3.contains(0))
        XCTAssertTrue(result3.contains(1))
    }
    
}
