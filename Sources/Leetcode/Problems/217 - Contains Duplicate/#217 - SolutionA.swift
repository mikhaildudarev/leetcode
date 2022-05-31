//  Created by Mikhail Dudarev on 31.05.2022.

extension Problem217ContainsDuplicate {
    
    final class SolutionA: Problem217ContainsDuplicateSolution {
        
        /// - Complexity: time O(N), space O(N)
        func containsDuplicate(_ nums: [Int]) -> Bool {
            nums.count != Set(nums).count
        }
        
    }
    
}
