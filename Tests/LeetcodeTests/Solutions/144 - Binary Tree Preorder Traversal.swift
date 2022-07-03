//   Created by Mikhail Dudarev on 03.07.2022.

@testable import Leetcode
import XCTest

final class Problem144Tests: LeetcodeTests {
    
    typealias TreeNode = Problem144.TreeNode
    
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
        let solution = Problem144.SolutionA()
        test(with: solution)
    }
    
    private func test(with solution: Problem144Solution) {
        XCTAssertEqual(solution.preorderTraversal(test1Input), [1, 2, 3])
        XCTAssertEqual(solution.preorderTraversal(test2Input), [])
        XCTAssertEqual(solution.preorderTraversal(test3Input), [1])
    }
    
}
