//   Created by Mikhail Dudarev on 04.07.2022.

import Algo

extension Problem102 {

    final class SolutionA: Problem102Solution {

        /// - Complexity: time O(N), space O(N)
        func levelOrder(_ root: TreeNode?) -> [[Int]] {
            guard let root = root else {
                return []
            }
            var result = [[Int]]()
            var queue = Queue.Naive<TreeNode>()
            queue.enqueue(root)
            while queue.peek() != nil {
                var level = [Int]()
                let tempQueue = Queue.Naive<TreeNode>()
                while let node = queue.dequeue() {
                    level.append(node.val)
                    if let left = node.left {
                        tempQueue.enqueue(left)
                    }
                    if let right = node.right {
                        tempQueue.enqueue(right)
                    }
                }
                queue = tempQueue
                result.append(level)
            }
            return result
        }

    }

}
