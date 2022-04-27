//  Created by Mikhail Dudarev on 27.04.2022.

@testable import Leetcode
import XCTest

final class Problem706DesignHashMapTests: LeetcodeTests {
    
    func testSolutionA() {
        let solution = Problem706DesignHashMap.SolutionA()
        test(with: solution)
    }
    
    private func test(with solution: Problem706DesignHashMapSolution) {
        solution.put(1, 1)
        solution.put(2, 2)
        XCTAssertEqual(solution.get(1), 1)
        XCTAssertEqual(solution.get(3), -1)
        solution.put(2, 1)
        XCTAssertEqual(solution.get(2), 1)
        solution.remove(2)
        XCTAssertEqual(solution.get(2), -1)
    }
    
}
