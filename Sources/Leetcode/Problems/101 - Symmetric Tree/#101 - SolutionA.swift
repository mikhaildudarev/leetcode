//   Created by Mikhail Dudarev on 10.07.2022.

extension Problem101 {

    final class SolutionA: Problem101Solution {

        func isSymmetric(_ root: TreeNode?) -> Bool {
            root?.left.isMirror(of: root?.right) == true && root?.right.isMirror(of: root?.left) == true
        }

    }

}

extension Optional where Wrapped: BinaryTreeNode {
    func isMirror(of node: BinaryTreeNode?) -> Bool {
        guard self != nil && node != nil || self == nil && node == nil else {
            return false
        }
        guard self?.val == node?.val else {
            return false
        }
        var result = true
        if self?.left != nil {
            result = result && self?.left.isMirror(of: node?.right) == true
        }
        if self?.right != nil {
            result = result && self?.right.isMirror(of: node?.left) == true
        }
        return result
    }
}
