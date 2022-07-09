//  Created by Mikhail Dudarev on 09.07.2022.

import Algo

extension Problem94 {

    final class SolutionC: Problem94Solution {

        /// - Complexity: time O(N), space O(N)
        func inorderTraversal(_ root: TreeNode?) -> [Int] {
            let tree = BinaryTree<Int>(root: root)
            tree.iteratorType = .inOrder
            return tree.map { $0.value }
        }

    }

}
