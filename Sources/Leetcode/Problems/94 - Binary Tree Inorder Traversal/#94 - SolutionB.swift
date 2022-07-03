//  Created by Mikhail Dudarev on 03.07.2022.

import Algo

extension Problem94 {

    final class SolutionB: Problem94Solution {

        /// - Complexity: time O(N), space O(N)
        func inorderTraversal(_ root: TreeNode?) -> [Int] {
            var result = [Int]()
            let stack = Stack.Naive<TreeNode>()
            var node = root
            while node != nil || stack.peek() != nil {
                while node != nil {
                    stack.push(node!)
                    node = node?.left
                }
                node = stack.pop()
                result.append(node!.val)
                node = node?.right
            }
            return result
        }

    }

}
