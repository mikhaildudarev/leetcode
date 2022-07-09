//  Created by Mikhail Dudarev on 09.07.2022.

import Algo

extension Problem144 {

    final class SolutionC: Problem144Solution {

        /// - Complexity: time O(N), space O(N)
        func preorderTraversal(_ root: TreeNode?) -> [Int] {
            let tree = BinaryTree<Int>(root: root)
            tree.iteratorType = .preOrder
            return tree.map { $0.value }
        }

    }

}
