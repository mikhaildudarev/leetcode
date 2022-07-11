//   Created by Mikhail Dudarev on 11.07.2022.

import Algo
@testable import Leetcode
import XCTest

final class Problem653Tests: LeetcodeTests {
    
    typealias TreeNode = BinaryTreeNode
    
    private var root1: TreeNode? {
        let tree = try! BinaryTree(levelOrderedArray: [5 ,3, 6, 2, 4, nil, 7])
        return BinaryTreeNode(tree: tree)
    }
    
    private var root2: TreeNode? {
        let tree = try! BinaryTree(levelOrderedArray: [5 ,3, 6, 2, 4, nil, 7])
        return BinaryTreeNode(tree: tree)
    }
    
    func testSolutionA() {
        let solution = Problem653.SolutionA()
        test(with: solution)
    }
    
    private func test(with solution: Problem653Solution) {
        XCTAssertTrue(solution.findTarget(root1, 9))
        XCTAssertFalse(solution.findTarget(root1, 28))
    }
    
}
