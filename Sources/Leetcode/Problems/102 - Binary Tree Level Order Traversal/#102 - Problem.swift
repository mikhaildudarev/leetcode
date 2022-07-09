//   Created by Mikhail Dudarev on 04.07.2022.

/**
 # [102. Binary Tree Level Order Traversal](https://leetcode.com/problems/binary-tree-level-order-traversal/)
 
 ### Description
 Given the root of a binary tree, return the level order traversal of its nodes' values. (i.e., from left to right, level by level).

 ### Example 1
 ```
 Input: root = [3,9,20,null,null,15,7]
 Output: [[3],[9,20],[15,7]]
 ```
 
 ### Example 2
 ```
 Input: root = [1]
 Output: [[1]]
 ```
 
 ### Example 2
 ```
 Input: root = []
 Output: []
 ```

 ### Constraints:
 ```
 The number of nodes in the tree is in the range [0, 2000].
 -1000 <= Node.val <= 1000
 ```
 */

struct Problem102 {
    private init() {}
}

protocol Problem102Solution {
    typealias TreeNode = BinaryTreeNode
    func levelOrder(_ root: TreeNode?) -> [[Int]]
}
