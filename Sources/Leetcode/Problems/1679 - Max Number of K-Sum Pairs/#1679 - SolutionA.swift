//  Created by Mikhail Dudarev on 04.05.2022.

extension Problem1679MaxNumberOfKSumPairs {
    
    final class SolutionA: Problem1679MaxNumberOfKSumPairsSolution {
        
        private typealias FirstComponentIndex = Int
        private typealias SecondComponent = Int
        
        /// - Complexity: time O(N), space O(N)
        func maxOperations(_ nums: [Int], _ k: Int) -> Int {
            var result = Int.zero
            
            // indices of complementary elements are stored in a dictionary, space complexity is O(N)
            var pendingFirstComponentIndices = [SecondComponent: [FirstComponentIndex]]()
            
            // single pass over nums is required, time complexity is O(N)
            for (index, num) in nums.enumerated() {
                guard let indices = pendingFirstComponentIndices[num], !indices.isEmpty else {
                    if pendingFirstComponentIndices[k - num] == nil {
                        pendingFirstComponentIndices[k - num] = [index]
                    } else {
                        pendingFirstComponentIndices[k - num]?.append(index)
                    }
                    continue
                }
                result += 1
                pendingFirstComponentIndices[num]?.removeFirst()
            }
            
            return result
        }
        
    }
    
}
