//   Created by Mikhail Dudarev on 11.07.2022.

import Algo

extension Problem653 {

    final class SolutionA: Problem653Solution {

        func findTarget(_ root: TreeNode?, _ k: Int) -> Bool {
            var expectedComponents = Set<Int>()
            let tree = BinaryTree<Int>(root: root)
            for element in tree {
                if expectedComponents.contains(element.value) {
                    return true
                }
                expectedComponents.insert(k - element.value)
            }
            return false
        }

    }

}
