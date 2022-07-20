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
    
    private var testInput3: TreeNode? {
        let tree = try! BinaryTree(levelOrderedArray: [5, 4, 6, nil, nil, 3, 7])
        return BinaryTreeNode(tree: tree)
    }
    
    private var testInput4: TreeNode? {
        let tree = try! BinaryTree(levelOrderedArray: [32, 26, 47, 19, nil, nil, 56, nil, 27])
        return BinaryTreeNode(tree: tree)
    }
    
    func testSolutionA() {
        test(with: Problem98.SolutionA())
    }
    
    func testSolutionB() {
        test(with: Problem98.SolutionB())
    }
    
    private func test(with solution: Problem98Solution) {
        XCTAssertTrue(solution.isValidBST(testInput1))
        XCTAssertFalse(solution.isValidBST(testInput2))
        XCTAssertFalse(solution.isValidBST(testInput3))
        XCTAssertFalse(solution.isValidBST(testInput4))
    }
    
}
