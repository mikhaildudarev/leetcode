//   Created by Mikhail Dudarev on 18.07.2022.

import Algo

extension Problem98 {

    final class SolutionA: Problem98Solution {

        func isValidBST(_ root: TreeNode?) -> Bool {
            let tree = BinaryTree<Int>(root: root, iteratorType: .inOrder)
            return tree.map({ $0.value }).isSorted()
        }

    }

}
