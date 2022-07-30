//   Created by Mikhail Dudarev on 11.07.2022.

import Algo
@testable import Leetcode
import XCTest

final class Problem700Tests: LeetcodeTests {
    
    typealias TreeNode = BinaryTreeNode
    
    private var testInput: TreeNode? {
        let tree = try! BinaryTree(levelOrderedArray: [4, 2, 7, 1, 3])
        return TreeNode(tree: tree)
    }
    
    func testSolutionA() {
        test(with: Problem700.SolutionA())
    }
    
    func testSolutionB() {
        test(with: Problem700.SolutionB())
    }
    
    private func test(with solution: Problem700Solution) {
        XCTAssertEqual(
            BinaryTree(root: solution.searchBST(testInput, 2), iteratorType: .preOrder).map { $0.value },
            [2, 1, 3]
        )
        XCTAssertEqual(
            BinaryTree(root: solution.searchBST(testInput, 5), iteratorType: .preOrder).map { $0.value },
            [Int]()
        )
    }
    
}
