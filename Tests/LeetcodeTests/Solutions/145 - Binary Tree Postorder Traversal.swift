//   Created by Mikhail Dudarev on 03.07.2022.

@testable import Leetcode
import XCTest

final class Problem145Tests: LeetcodeTests {
    
    typealias TreeNode = Problem145Solution.TreeNode
    
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
        let solution = Problem145.SolutionA()
        test(with: solution)
    }
    
    func testSolutionB() {
        let solution = Problem145.SolutionB()
        test(with: solution)
    }
    
    private func test(with solution: Problem145Solution) {
        XCTAssertEqual(solution.postorderTraversal(test1Input), [3, 2, 1])
        XCTAssertEqual(solution.postorderTraversal(test2Input), [])
        XCTAssertEqual(solution.postorderTraversal(test3Input), [1])
    }
    
}
