//  Created by Mikhail Dudarev on 06.05.2022.

@testable import Leetcode
import XCTest

final class Problem1209RemoveAllAdjacentDuplicatesInStringIITests: LeetcodeTests {
    
    func testSolutionA() {
        let solution = Problem1209RemoveAllAdjacentDuplicatesInStringII.SolutionA()
        test(with: solution)
    }
    
    private func test(with solution: Problem1209RemoveAllAdjacentDuplicatesInStringIISolution) {
        XCTAssertEqual(solution.removeDuplicates("abcd", 2), "abcd")
        XCTAssertEqual(solution.removeDuplicates("deeedbbcccbdaa", 3), "aa")
        XCTAssertEqual(solution.removeDuplicates("pbbcggttciiippooaais", 2), "ps")
    }
    
}
