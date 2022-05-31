//  Created by Mikhail Dudarev on 31.05.2022.

extension Problem53MaximumSubarray {
    
    final class SolutionA: Problem53MaximumSubarraySolution {
        
        /// - Complexity: time O(N^2), space O(1)
        func maxSubArray(_ nums: [Int]) -> Int {
            var result = Int.min
            
            for subarrayLength in 1...nums.count {
                var startIndex = nums.startIndex
                var endIndex = startIndex + subarrayLength - 1
                while endIndex < nums.endIndex {
                    let candidate = nums[startIndex...endIndex].reduce(Int.zero) { $0 + $1 }
                    if candidate > result {
                        result = candidate
                    }
                    startIndex += 1
                    endIndex = startIndex + subarrayLength - 1
                }
            }
            
            return result
        }
        
    }
    
}
