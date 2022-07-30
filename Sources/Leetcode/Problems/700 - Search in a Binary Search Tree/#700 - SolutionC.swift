//  Created by Mikhail Dudarev on 30.07.2022.

import Foundation

extension Problem700 {
 
    final class SolutionC: Problem700Solution {
        
        /// - Complexity: time O(logN) on average, O(N) in worst case; space O(1)
        func searchBST(_ root: TreeNode?, _ val: Int) -> TreeNode? {
            var root: TreeNode? = root
            while let node = root, node.val != val {
                root = val < node.val ? node.left : node.right
            }
            return root
        }
        
    }
    
}
