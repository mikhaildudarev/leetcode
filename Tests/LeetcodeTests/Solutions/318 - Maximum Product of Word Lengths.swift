//  Created by Mikhail Dudarev on 29.05.2022.

@testable import Leetcode
import XCTest

final class Problem318MaximumProductOfWordLengthsTests: LeetcodeTests {
    
    func testSolutionA() {
        let solution = Problem318MaximumProductOfWordLengths.SolutionA()
        test(with: solution)
    }
    
    private func test(with solution: Problem318MaximumProductOfWordLengthsSolution) {
        XCTAssertEqual(solution.maxProduct(["abcw", "baz", "foo", "bar", "xtfn", "abcdef"]), 16)
        XCTAssertEqual(solution.maxProduct(["a", "ab", "abc", "d", "cd", "bcd", "abcd"]), 4)
        XCTAssertEqual(solution.maxProduct(["a", "aa", "aaa", "aaaa"]), 0)
    }
    
}
