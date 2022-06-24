//   Created by Mikhail Dudarev on 24.06.2022.

@testable import Leetcode
import XCTest

final class Problem387Tests: LeetcodeTests {
    
    func testSolutionA() {
        let solution = Problem387.SolutionA()
        test(with: solution)
    }
    
    private func test(with solution: Problem387Solution) {
        XCTAssertEqual(solution.firstUniqChar("leetcode"), 0)
        XCTAssertEqual(solution.firstUniqChar("loveleetcode"), 2)
        XCTAssertEqual(solution.firstUniqChar("aabb"), -1)
    }
    
}
