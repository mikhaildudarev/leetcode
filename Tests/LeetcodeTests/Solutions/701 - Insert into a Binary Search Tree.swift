//   Created by Mikhail Dudarev on 18.07.2022.

import Algo
@testable import Leetcode
import XCTest

final class Problem701Tests: LeetcodeTests {
    
    typealias TreeNode = BinaryTreeNode
    
    private var testInput1: TreeNode? {
        TreeNode(tree: try! BinaryTree(levelOrderedArray: [4, 2, 7, 1, 3]))
    }
    
    private var testInput2: TreeNode? {
        TreeNode(tree: try! BinaryTree(levelOrderedArray: [40, 20, 60, 10, 30, 50, 70]))
    }
    
    private var testInput3: TreeNode? {
        TreeNode(tree: try! BinaryTree(levelOrderedArray: [4, 2, 7, 1, 3, nil, nil, nil, nil, nil, nil]))
    }
    
    func testSolutionA() {
        let solution = Problem701.SolutionA()
        test(with: solution)
    }
    
    private func test(with solution: Problem701Solution) {
        XCTAssertEqual(
            BinaryTree(root: solution.insertIntoBST(testInput1, 5), iteratorType: .levelOrder).map { $0.value },
            [4, 2, 7, 1, 3, 5]
        )
        XCTAssertEqual(
            BinaryTree(root: solution.insertIntoBST(testInput2, 25), iteratorType: .levelOrder).map { $0.value },
            [40, 20, 60, 10, 30, 50, 70, 25]
        )
        XCTAssertEqual(
            BinaryTree(root: solution.insertIntoBST(testInput3, 5), iteratorType: .levelOrder).map { $0.value },
            [4, 2, 7, 1, 3, 5]
        )
    }
    
}
