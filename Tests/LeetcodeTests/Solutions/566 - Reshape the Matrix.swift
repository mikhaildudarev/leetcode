//  Created by Mikhail Dudarev on 09.06.2022.

@testable import Leetcode
import XCTest

final class Problem566ReshapeTheMatrixTests: LeetcodeTests {
    
    func testSolutionA() {
        let solution = Problem566ReshapeTheMatrix.SolutionA()
        test(with: solution)
    }
    
    private func test(with solution: Problem566ReshapeTheMatrixSolution) {
        XCTAssertEqual(solution.matrixReshape([[1, 2], [3, 4]], 1, 4), [[1, 2, 3, 4]])
        XCTAssertEqual(solution.matrixReshape([[1, 2], [3, 4]], 2, 4), [[1, 2], [3, 4]])
        XCTAssertEqual(solution.matrixReshape([[1, 2, 3, 4]], 2, 2), [[1, 2], [3, 4]])
    }
    
}
