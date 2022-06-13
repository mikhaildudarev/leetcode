//  Created by Mikhail Dudarev on 13.06.2022.

@testable import Leetcode
import XCTest

final class Problem118PascalsTriangleTests: LeetcodeTests {
    
    func testSolutionA() {
        let solution = Problem118PascalsTriangle.SolutionA()
        test(with: solution)
    }
    
    private func test(with solution: Problem118PascalsTriangleSolution) {
        XCTAssertEqual(solution.generate(5), [[1], [1, 1], [1, 2, 1], [1, 3, 3, 1], [1, 4, 6, 4, 1]])
        XCTAssertEqual(solution.generate(1), [[1]])
    }
    
}
