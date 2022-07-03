//   Created by Mikhail Dudarev on 03.07.2022.

extension Problem144 {

    final class SolutionA: Problem144Solution {

        /// - Complexity: time O(N), space O(N)
        func preorderTraversal(_ root: TreeNode?) -> [Int] {
            var result = [Int]()
            traverse(node: root, result: &result)
            return result
        }
        
        private func traverse(node: TreeNode?, result: inout [Int]) {
            guard let node = node else {
                return
            }
            result.append(node.val)
            if let left = node.left {
                traverse(node: left, result: &result)
            }
            if let right = node.right {
                traverse(node: right, result: &result)
            }
        }

    }

}
