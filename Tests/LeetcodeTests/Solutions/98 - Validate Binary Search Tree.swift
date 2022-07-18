//   Created by Mikhail Dudarev on 18.07.2022.

import Algo
@testable import Leetcode
import XCTest

final class Problem98Tests: LeetcodeTests {
    
    typealias TreeNode = BinaryTreeNode
    
    private var testInput1: TreeNode? {
        let tree = try! BinaryTree(levelOrderedArray: [2, 1, 3])
        return BinaryTreeNode(tree: tree)
    }
    
    private var testInput2: TreeNode? {
        let tree = try! BinaryTree(levelOrderedArray: [5, 1, 4, nil, nil, 3, 6])
        return BinaryTreeNode(tree: tree)
    }
    
    func testSolutionA() {
        let solution = Problem98.SolutionA()
        test(with: solution)
    }
    
    private func test(with solution: Problem98Solution) {
        XCTAssertTrue(solution.isValidBST(testInput1))
        XCTAssertFalse(solution.isValidBST(testInput2))
    }
    
}
