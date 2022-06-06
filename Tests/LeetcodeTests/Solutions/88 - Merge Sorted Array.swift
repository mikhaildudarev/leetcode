//  Created by Mikhail Dudarev on 01.06.2022.

@testable import Leetcode
import XCTest

final class Problem88MergeSortedArrayTests: LeetcodeTests {
    
    func testSolutionA() {
        let solution = Problem88MergeSortedArray.SolutionA()
        test(with: solution)
    }
    
    private func test(with solution: Problem88MergeSortedArraySolution) {
        var nums1 = [1, 2, 3, 0, 0, 0]
        solution.merge(&nums1, 3, [2, 5, 6], 3)
        XCTAssertEqual(nums1, [1, 2, 2, 3, 5, 6])
        
        var nums2 = [1]
        solution.merge(&nums2, 1, [], 0)
        XCTAssertEqual(nums2, [1])
        
        var nums3 = [0]
        solution.merge(&nums3, 0, [1], 1)
        XCTAssertEqual(nums3, [1])
    }
    
}
