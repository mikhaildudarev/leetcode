//   Created by Mikhail Dudarev on 10.07.2022.

import Algo

extension Problem226 {

    final class SolutionA: Problem226Solution {

        func invertTree(_ root: TreeNode?) -> TreeNode? {
            guard let root = root else {
                return nil
            }
            let queue = Queue.Naive<TreeNode>()
            queue.enqueue(root)
            while let node = queue.dequeue() {
                let tempLeft = node.left
                node.left = node.right
                node.right = tempLeft
                if let left = node.left {
                    queue.enqueue(left)
                }
                if let right = node.right {
                    queue.enqueue(right)
                }
                
            }
            return root
        }

    }

}
