//   Created by Mikhail Dudarev on 03.07.2022.

extension Problem94 {

    final class SolutionA: Problem94Solution {

        /// - Complexity: time O(N), space O(N)
        func inorderTraversal(_ root: TreeNode?) -> [Int] {
            var result = [Int]()
            traverse(node: root, result: &result)
            return result
        }
        
        private func traverse(node: TreeNode?, result: inout [Int]) {
            guard let node = node else {
                return
            }
            if let left = node.left {
                traverse(node: left, result: &result)
            }
            result.append(node.val)
            if let right = node.right {
                traverse(node: right, result: &result)
            }
        }

    }

}
