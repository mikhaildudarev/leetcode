//   Created by Mikhail Dudarev on 10.07.2022.

@testable import Leetcode
import XCTest

final class Problem101Tests: LeetcodeTests {
    
    typealias TreeNode = Problem101Solution.TreeNode
    
    private var test1Input: TreeNode? {
        let root = TreeNode(1)
        
        var node: TreeNode? = root
        node?.left = TreeNode(2)
        node?.right = TreeNode(2)
        
        node = root.left
        node?.left = TreeNode(3)
        node?.right = TreeNode(4)
        
        node = root.right
        node?.left = TreeNode(4)
        node?.right = TreeNode(3)
        
        return root
    }
    
    private var test2Input: TreeNode? {
        let root = TreeNode(1)
        
        var node: TreeNode? = root
        node?.left = TreeNode(2)
        node?.right = TreeNode(2)
        
        node = root.left
        node?.left = nil
        node?.right = TreeNode(3)
        
        node = root.right
        node?.left = nil
        node?.right = TreeNode(3)
        
        return root
    }
    
    private var test3Input: TreeNode? {
        let root = TreeNode(2)
        
        var node: TreeNode? = root
        node?.left = TreeNode(3)
        node?.right = TreeNode(3)
        
        node = root.left
        node?.left = TreeNode(4)
        node?.right = TreeNode(5)
        
        node = root.right
        node?.left = nil
        node?.right = TreeNode(4)
        
        return root
    }
    
    func testSolutionA() {
        let solution = Problem101.SolutionA()
        test(with: solution)
    }
    
    private func test(with solution: Problem101Solution) {
        XCTAssertTrue(solution.isSymmetric(test1Input))
        XCTAssertFalse(solution.isSymmetric(test2Input))
        XCTAssertFalse(solution.isSymmetric(test3Input))
    }
    
}
