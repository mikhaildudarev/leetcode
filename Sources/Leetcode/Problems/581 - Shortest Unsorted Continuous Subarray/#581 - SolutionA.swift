//  Created by Mikhail Dudarev on 03.05.2022.

extension Problem581ShortestUnsortedContinuousSubarray {
    
    final class SolutionA: Problem581ShortestUnsortedContinuousSubarraySolution {
        
        /// - Complexity: time O(N), space O(N)
        func findUnsortedSubarray(_ nums: [Int]) -> Int {
            // get sorted array - time O(N*logN), space O(N)
            let sortedNums = nums.sorted()
            
            // find first element not in order - time O(N)
            var startIndex: Int?
            for index in nums.startIndex..<nums.endIndex {
                if nums[index] != sortedNums[index] {
                    startIndex = index
                    break
                }
            }
            
            // exit early if array is already sorted - time O(1)
            guard let startIndex = startIndex else {
                return .zero
            }
            
            // find last element not in order - time O(N)
            var endIndex = startIndex
            for index in (startIndex + 1..<nums.endIndex).reversed() {
                if nums[index] != sortedNums[index] {
                    endIndex = index
                    break
                }
            }
            
            return endIndex - startIndex + 1
        }
        
    }
    
}
