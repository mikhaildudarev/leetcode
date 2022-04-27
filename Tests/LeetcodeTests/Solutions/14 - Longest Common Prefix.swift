//  Created by Mikhail Dudarev on 27.04.2022.

@testable import Leetcode
import XCTest

final class Problem14LongestCommonPrefixTests: LeetcodeTests {
    
    func testSolutionA() {
        let solution = Problem14LongestCommonPrefix.SolutionA()
        test(with: solution)
    }
    
    func testSolutionB() {
        let solution = Problem14LongestCommonPrefix.SolutionB()
        test(with: solution)
    }
    
    private func test(with solution: Problem14LongestCommonPrefixSolution) {
        XCTAssertEqual(solution.longestCommonPrefix(["flower","flow","flight"]), "fl")
        XCTAssertEqual(solution.longestCommonPrefix(["dog","racecar","car"]), "")
    }
    
}
