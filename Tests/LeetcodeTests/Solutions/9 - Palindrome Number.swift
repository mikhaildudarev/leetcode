//  Created by Mikhail Dudarev on 27.04.2022.

@testable import Leetcode
import XCTest

final class Problem9PalindromeNumberTests: LeetcodeTests {
 
    func testSolutionA() {
        let solution = Problem9PalindromeNumber.SolutionA()
        test(with: solution)
    }
    
    private func test(with solution: Problem9PalindromeNumberSolution) {
        XCTAssertTrue(solution.isPalindrome(121))
        XCTAssertFalse(solution.isPalindrome(-121))
        XCTAssertFalse(solution.isPalindrome(10))
        XCTAssertTrue(solution.isPalindrome(0))
        XCTAssertFalse(solution.isPalindrome(12345))
        XCTAssertTrue(solution.isPalindrome(12321))
        XCTAssertFalse(solution.isPalindrome(123456))
        XCTAssertTrue(solution.isPalindrome(123321))
    }
    
}
