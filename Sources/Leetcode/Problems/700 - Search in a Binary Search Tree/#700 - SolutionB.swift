//  Created by Mikhail Dudarev on 30.07.2022.

import Foundation

extension Problem700 {
 
    final class SolutionB: Problem700Solution {
        
        /// - Complexity: time O(logN) on average, O(N) in worst case; space O(logN) on average, O(N) in worst case, O(1) with tail-recursion optimization
        func searchBST(_ root: TreeNode?, _ val: Int) -> TreeNode? {
            guard let root = root else {
                return nil
            }
            if val == root.val {
                return root
            }
            return searchBST(val < root.val ? root.left : root.right, val)
        }
        
    }
    
}
