//   Created by Mikhail Dudarev on 18.07.2022.

extension Problem701 {

    final class SolutionA: Problem701Solution {

        /// - Complexity: time & space - O(log N) average case, O(N) worst case
        func insertIntoBST(_ root: TreeNode?, _ val: Int) -> TreeNode? {
            guard let root = root else {
                return TreeNode(val)
            }
            if val < root.val {
                root.left = insertIntoBST(root.left, val)
            } else {
                root.right = insertIntoBST(root.right, val)
            }
            return root
        }
    }

}
