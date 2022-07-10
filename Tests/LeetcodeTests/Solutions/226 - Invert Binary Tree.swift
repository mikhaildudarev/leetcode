//   Created by Mikhail Dudarev on 10.07.2022.

import Algo
@testable import Leetcode
import XCTest

final class Problem226Tests: LeetcodeTests {
    
    typealias TreeNode = BinaryTreeNode
    
    private var testRoot1: TreeNode? {
        let tree = try! BinaryTree(levelOrderedArray: [4, 2, 7, 1, 3, 6, 9])
        tree.iteratorType = .levelOrder
        return BinaryTreeNode(tree: tree)
    }
    
    private var testRoot2: TreeNode? {
        let tree = try! BinaryTree(levelOrderedArray: [2, 1, 3])
        tree.iteratorType = .levelOrder
        return BinaryTreeNode(tree: tree)
    }
    
    private var testRoot3: TreeNode? {
        nil
    }
    
    func testSolutionA() {
        let solution = Problem226.SolutionA()
        test(with: solution)
    }
    
    private func test(with solution: Problem226Solution) {
        XCTAssertEqual(
            BinaryTree(root: solution.invertTree(testRoot1), iteratorType: .levelOrder).map { $0.value },
            [4, 7, 2, 9, 6, 3, 1]
        )
        XCTAssertEqual(
            BinaryTree(root: solution.invertTree(testRoot2), iteratorType: .levelOrder).map { $0.value },
            [2, 3, 1]
        )
        XCTAssertEqual(
            BinaryTree(root: solution.invertTree(testRoot3), iteratorType: .levelOrder).map { $0.value },
            [Int]()
        )
    }
    
}
