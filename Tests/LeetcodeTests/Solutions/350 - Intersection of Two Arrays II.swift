//  Created by Mikhail Dudarev on 09.06.2022.

@testable import Leetcode
import XCTest

final class Problem350IntersectionOfTwoArraysIITests: LeetcodeTests {
    
    func testSolutionA() {
        let solution = Problem350IntersectionOfTwoArraysII.SolutionA()
        test(with: solution)
    }
    
    private func test(with solution: Problem350IntersectionOfTwoArraysIISolution) {
        XCTAssertEqual(solution.intersect([1, 2, 2, 1], [2, 2]), [2, 2])
        XCTAssertTrue([[4, 9], [9, 4]].contains(solution.intersect([4, 9, 5], [9, 4, 9, 8, 4])))
    }
    
}
