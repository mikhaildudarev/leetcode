//  Created by Mikhail Dudarev on 09.07.2022.

import Algo

extension Problem145 {

    final class SolutionB: Problem145Solution {

        /// - Complexity: time O(N), space O(N)
        func postorderTraversal(_ root: TreeNode?) -> [Int] {
            let tree = BinaryTree<Int>(root: root)
            tree.iteratorType = .postOrder
            return tree.map { $0.value }
        }

    }

}
