//  Created by Mikhail Dudarev on 18.07.2022.

import Foundation

extension Problem98 {

    final class SolutionB: Problem98Solution {

        func isValidBST(_ root: TreeNode?) -> Bool {
            isValidBST(root, leftLimit: Int.min, rightLimit: Int.max)
        }
        
        func isValidBST(_ root: TreeNode?, leftLimit: Int, rightLimit: Int) -> Bool {
            guard let root = root else {
                return true
            }
            guard root.val > leftLimit && root.val < rightLimit else {
                return false
            }
            if let left = root.left, left.val >= root.val {
                return false
            }
            if let right = root.right, right.val <= root.val {
                return false
            }
            let isLeftValid = isValidBST(root.left, leftLimit: leftLimit, rightLimit: root.val)
            let isRightValid = isValidBST(root.right, leftLimit: root.val, rightLimit: rightLimit)
            return isLeftValid && isRightValid
        }

    }

}
