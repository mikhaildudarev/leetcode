//   Created by Mikhail Dudarev on 03.07.2022.

@testable import Leetcode
import XCTest

final class Problem94Tests: LeetcodeTests {
    
    typealias TreeNode = Problem94.TreeNode
    
    private var test1Input: TreeNode? {
        let root = TreeNode(1)
        var node: TreeNode? = root
        node?.left = nil
        node?.right = TreeNode(2)
        node = node?.right
        node?.left = TreeNode(3)
        return root
    }
    
    private var test2Input: TreeNode? {
        nil
    }
    
    private var test3Input: TreeNode? {
        TreeNode(1)
    }
    
    func testSolutionA() {
        let solution = Problem94.SolutionA()
        test(with: solution)
    }
    
    private func test(with solution: Problem94Solution) {
        XCTAssertEqual(solution.inorderTraversal(test1Input), [1, 3, 2])
        XCTAssertEqual(solution.inorderTraversal(test2Input), [])
        XCTAssertEqual(solution.inorderTraversal(test3Input), [1])
    }
    
}
