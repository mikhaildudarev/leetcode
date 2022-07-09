//   Created by Mikhail Dudarev on 03.07.2022.

/**
 # [144. Binary Tree Preorder Traversal](https://leetcode.com/problems/binary-tree-preorder-traversal)
 
 ### Description
 Given the root of a binary tree, return the preorder traversal of its nodes' values.

 ### Example 1
 Input: root = [1,null,2,3]
 Output: [1,2,3]
 
 ### Example 2
 Input: root = []
 Output: []
 
 ### Example 3
 Input: root = [1]
 Output: [1]

 ### Constraints
 ```
 The number of nodes in the tree is in the range [0, 100].
 -100 <= Node.val <= 100
 ```
 
 ### Follow up
 Recursive solution is trivial, could you do it iteratively?
 */

struct Problem144 {
    private init() {}
}

protocol Problem144Solution {
    typealias TreeNode = BinaryTreeNode
    func preorderTraversal(_ root: TreeNode?) -> [Int]
}
