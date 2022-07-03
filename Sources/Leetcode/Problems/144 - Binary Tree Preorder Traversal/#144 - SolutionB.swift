//   Created by Mikhail Dudarev on 03.07.2022.

import Algo

extension Problem144 {

    final class SolutionB: Problem144Solution {

        /// - Complexity: time O(N), space O(N)
        func preorderTraversal(_ root: TreeNode?) -> [Int] {
            guard let root = root else {
                return []
            }
            var result = [Int]()
            let stack = Stack.Naive<TreeNode>()
            stack.push(root)
            while let node = stack.pop() {
                result.append(node.val)
                if let right = node.right {
                    stack.push(right)
                }
                if let left = node.left {
                    stack.push(left)
                }
            }
            return result
        }

    }

}
