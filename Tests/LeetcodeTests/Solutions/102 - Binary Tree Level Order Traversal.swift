//   Created by Mikhail Dudarev on 04.07.2022.

@testable import Leetcode
import XCTest

final class Problem102Tests: LeetcodeTests {
    
    typealias TreeNode = Problem102.TreeNode
    
    private var test1Input: TreeNode? {
        let root = TreeNode(3)
        var node: TreeNode? = root
        node?.left = TreeNode(9)
        node?.right = TreeNode(20)
        node = node?.right
        node?.left = TreeNode(15)
        node?.right = TreeNode(7)
        return root
    }
    
    private var test2Input: TreeNode? {
        TreeNode(1)
    }
    
    private var test3Input: TreeNode? {
        nil
    }
    
    func testSolutionA() {
        let solution = Problem102.SolutionA()
        test(with: solution)
    }
    
    private func test(with solution: Problem102Solution) {
        XCTAssertEqual(solution.levelOrder(test1Input), [[3],[9,20],[15,7]])
        XCTAssertEqual(solution.levelOrder(test2Input), [[1]])
        XCTAssertEqual(solution.levelOrder(test3Input), [])
    }
    
}
