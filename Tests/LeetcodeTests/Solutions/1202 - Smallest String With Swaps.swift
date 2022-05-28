//  Created by Mikhail Dudarev on 28.05.2022.

@testable import Leetcode
import XCTest

final class Problem1202SmallestStringWithSwapsTests: LeetcodeTests {
    
    func testSolutionA() {
        let solution = Problem1202SmallestStringWithSwaps.SolutionA()
        test(with: solution)
    }
    
    private func test(with solution: Problem1202SmallestStringWithSwapsSolution) {
        XCTAssertEqual(solution.smallestStringWithSwaps("dcab", [[0, 3], [1, 2]]), "bacd")
        XCTAssertEqual(solution.smallestStringWithSwaps("dcab", [[0, 3], [1, 2], [0, 2]]), "abcd")
        XCTAssertEqual(solution.smallestStringWithSwaps("cba", [[0, 1], [1, 2]]), "abc")
    }
    
}
