//  Created by Mikhail Dudarev on 30.07.2022.

import Foundation

extension Problem701 {

    final class SolutionB: Problem701Solution {

        /// - Complexity: time O(log N) average case, O(N) worst case; space O(1)
        func insertIntoBST(_ root: TreeNode?, _ val: Int) -> TreeNode? {
            var node = root
            guard node != nil else {
                return TreeNode(val)
            }
            while let currentNode = node {
                if val < currentNode.val {
                    node = currentNode.left
                    if node == nil {
                        currentNode.left = TreeNode(val)
                    }
                } else {
                    node = currentNode.right
                    if node == nil {
                        currentNode.right = TreeNode(val)
                    }
                }
            }
            return root
        }
    }

}
