//  Created by Mikhail Dudarev on 02.05.2022.

@testable import Leetcode
import XCTest

final class Problem905SortArrayByParityTests: LeetcodeTests {
    
    func testSolutionA() {
        let solution = Problem905SortArrayByParity.SolutionA()
        test(with: solution)
    }
    
    func testSolutionB() {
        let solution = Problem905SortArrayByParity.SolutionB()
        test(with: solution)
    }
    
    private func test(with solution: Problem905SortArrayByParitySolution) {
        let result = solution.sortArrayByParity([3, 1, 2, 4])
        XCTAssertTrue([[2, 4, 3, 1], [4, 2, 3, 1], [2, 4, 1, 3], [4, 2, 1, 3]].contains(result))
        XCTAssertEqual(solution.sortArrayByParity([0]), [0])
    }
    
}
