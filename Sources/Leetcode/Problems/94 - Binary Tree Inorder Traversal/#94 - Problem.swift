//   Created by Mikhail Dudarev on 03.07.2022.

import Algo

/**
 # [94. Binary Tree Inorder Traversal](https://leetcode.com/problems/binary-tree-inorder-traversal)
 
 ### Description
 Given the root of a binary tree, return the inorder traversal of its nodes' values.

 ### Example 1
 Input: root = [1,null,2,3]
 Output: [1,3,2]
 
 ### Example 2
 Input: root = []
 Output: []

 ### Example 3
 Output: [1]
 
 ### Constraints
 ```
 The number of nodes in the tree is in the range [0, 100].
 -100 <= Node.val <= 100
 ```
 
 ### Follow up
 Recursive solution is trivial, could you do it iteratively?
 */

struct Problem94 {
    private init() {}
}

protocol Problem94Solution {
    typealias TreeNode = BinaryTreeNode
    func inorderTraversal(_ root: TreeNode?) -> [Int]
}
