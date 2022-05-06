//  Created by Mikhail Dudarev on 06.05.2022.

@testable import Leetcode
import XCTest

final class Problem547NumberOfProvincesTests: LeetcodeTests {
    
    func testSolutionA() {
        let solution = Problem547NumberOfProvinces.SolutionA()
        test(with: solution)
    }
    
    private func test(with solution: Problem547NumberOfProvincesSolution) {
        XCTAssertEqual(solution.findCircleNum([[1, 1, 0], [1, 1, 0], [0, 0, 1]]), 2)
        XCTAssertEqual(solution.findCircleNum([[1, 0, 0], [0, 1, 0], [0, 0, 1]]), 3)
    }
    
}
