//   Created by Mikhail Dudarev on 24.06.2022.

@testable import Leetcode
import XCTest

final class Problem242Tests: LeetcodeTests {
    
    func testSolutionA() {
        let solution = Problem242.SolutionA()
        test(with: solution)
    }
    
    private func test(with solution: Problem242Solution) {
        XCTAssertTrue(solution.isAnagram("anagram", "nagaram"))
        XCTAssertFalse(solution.isAnagram("rat", "car"))
        XCTAssertFalse(solution.isAnagram("ab", "a"))
    }
    
}
