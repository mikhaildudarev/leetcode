//  Created by Mikhail Dudarev on 01.05.2022.

@testable import Leetcode
import XCTest

final class Problem844BackspaceStringCompareTests: LeetcodeTests {
    
    func testSolutionA() {
        let solution = Problem844BackspaceStringCompare.SolutionA()
        test(with: solution)
    }
    
    private func test(with solution: Problem844BackspaceStringCompareSolution) {
        XCTAssertTrue(solution.backspaceCompare("ab#c", "ad#c"))
        XCTAssertTrue(solution.backspaceCompare("ab##", "c#d#"))
        XCTAssertFalse(solution.backspaceCompare("a#c", "b"))
    }
    
}
