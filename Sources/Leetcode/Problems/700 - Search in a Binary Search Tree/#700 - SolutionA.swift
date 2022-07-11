//   Created by Mikhail Dudarev on 11.07.2022.

import Algo

extension Problem700 {

    final class SolutionA: Problem700Solution {

        func searchBST(_ root: TreeNode?, _ val: Int) -> TreeNode? {
            let tree = BinaryTree<Int>(root: root)
            guard let node = tree.first(where: { $0.value == val }) else {
                return nil
            }
            return TreeNode(node: node)
        }

    }

}
